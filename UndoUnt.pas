unit UndoUnt;

interface

uses DataUnt, ShapeUnt, LineUnt,CircleUnt,ImageUnt,AreaUnt,Dtmunt,blockunt;

const UndoMax = 10;

type

UndoIndexRec = record
   Place  : integer;   //place in UndoFile where shapes for this group starts
   Action : integer;   //what happened
   Index  : integer;   //undo number to be used by redo
end;

UndoObj = object
   UndoFile  : file;
   IndexUndoFile : file of UndoIndexRec;

   RedoFile  : file;
   IndexRedoFile : file of UndoIndexRec;

   LastUndoIndex   : integer;   //Undo Index so related Redo can be done.
   UndoIndexCount  : integer;   //New index number for next Undo
   GroupUndoAction : integer;   //add edit delete
   GroupRedoAction : integer;   //add edit delete

   procedure Init;                          //create files
   Procedure StartGroup(Action : integer);  //place a marker
   Procedure SaveUndo(Shape : ShapeC; ShapeID : integer); //save a shape
   Procedure SaveSelected;                                //save all selected shapes
   Procedure Undo;                                        //do an undo
   Procedure Redo;                                        //do an Redo

   procedure DoMainAction(var UFile : file; GroupStop : integer; Index : UndoIndexRec; Undo_ : boolean);   //used by undo and redo

   function StartRedoGroup(Action,UIndex : integer) : boolean;       //Start of new Redo Group if not new
   Procedure SaveRedo(Shape : ShapeC; ShapeType,ShapeID : integer); //save a shape
end;

Var
   Undo : UndoObj;

implementation

uses main,form2unt,Glount;


Procedure UndoObj.Init;                               // open the files were undo will sit
var j : integer;
begin
   {$i-}
   closefile(UndoFile);
   closefile(IndexUndoFile);

   assignfile(UndoFile,tmpDrive+'Undo.tmp');
   rewrite(UndoFile,1);
   assignfile(IndexUndoFile,tmpDrive+'UndoIndex.tmp');
   rewrite(IndexUndoFile);

   closefile(RedoFile);
   closefile(IndexRedoFile);

   assignfile(RedoFile,tmpDrive+'Redo.tmp');
   rewrite(RedoFile,1);
   assignfile(IndexRedoFile,tmpDrive+'RedoIndex.tmp');
   rewrite(IndexRedoFile);
   {$i+}
   j:=ioresult;

   LastUndoIndex:=0;                                      //reset the counters.
   UndoIndexCount:=0;

end;

Procedure UndoObj.StartGroup(Action : integer);   //Start of new Undo Group
var j      : integer;                             //Action 1=add  2=edit  3=delete
    Index  : UndoIndexRec;
begin
   J:=filesize(UndoFile);
   seek(UndoFile,J);

   inc(UndoIndexCount);            //number of Undo groups
   LastUndoIndex:=UndoIndexCount;  //This Undo

   seek(IndexUndoFile,filesize(IndexUndoFile));
   Index.Place     :=J;
   Index.Action    :=Action;
   Index.Index     :=LastUndoIndex;
   write(IndexUndoFile,Index);        //write detail to index file

   GroupUndoAction:=Action;
end;

Procedure UndoObj.SaveUndo(shape : ShapeC; ShapeID : integer);
var St : TClass;
begin
   St:=Shape.ClassType;
   blockwrite(UndoFile,St,sizeof(Shape.ClassType));    //Shape type
   blockwrite(UndoFile,ShapeID,sizeof(integer));      //Shape Id in array

   if GroupUndoAction=1 then exit;   //Was set in StartGroup    // Add - Easy to just delete again

   Shape.WriteToFile(UndoFile);      //write shape info to file
end;

Procedure UndoObj.SaveSelected;       //if action is done on selected elements, save all in one go.
var j,n : integer;
begin
   with Dbase do
   begin
      for j:=1 to Lines.No   do if Lines.line[j].Selected     then Lines.line[j].SaveUndo(j);
      for j:=1 to Circles.No do if Circles.Circle[j].Selected then Circles.Circle[j].SaveUndo(j);
      for j:=1 to Areas.No   do if Areas.Area[j].Selected     then Areas.Area[j].SaveUndo(j);
      for j:=1 to Dtms.No    do if Dtms.Dtm[j].Selected       then Dtms.Dtm[j].SaveUndo(j);
      for j:=1 to Blocks.No  do
      with Blocks.Block[j] do
      begin
         if Selected then SaveUndo(j);
         for n:=1 to NoNode do
            if Node[n].selected then Node[n].SaveUndo(n);   //must change to also save the block number
      end;
   end;
end;

procedure UndoObj.DoMainAction(var UFile : file; GroupStop : integer; Index : UndoIndexRec; Undo_:boolean);
var  ShapeType,ShapeId,j : integer;         //this is shared by Undo and Redo.
     St : TClass;
begin                                       //if Undo, check if redo counterpart exists otherwise save redo first
   While not Eof(UFile) do
   begin
      blockread(UFile,St,sizeof(St));
      blockRead(UFile,ShapeID,sizeof(integer));
      if St=LineC then
      begin
           if Undo_ then SaveRedo(Dbase.Lines.Line[ShapeId],ShapeType,ShapeId);   //backup the undo
           case Index.Action of   //edited / moved
           1 : begin
                  Dbase.Lines.delete(ShapeID);       //was added, so delete
               end;
           2 : begin                                 //line was edited
                  Dbase.Lines.Line[ShapeID].draw(-1); //erase on plot;
                  Dbase.Lines.Line[ShapeID].ReadFromFile(UFile);
                  Dbase.Lines.Line[ShapeID].draw(-1);  //redraw on new pos
               end;
           3 : begin                                 //was deleted so add again
                  inc(Dbase.Lines.No);
                  Dbase.Lines.Line[Dbase.Lines.No].ReadFromFile(UFile);
                  Dbase.Lines.Line[Dbase.Lines.No].draw(-1);  //redraw on new pos
               end;
           end;
        end;
      if St=CircC then with Dbase.Circles do
            begin
              if Undo_ then SaveRedo(Circle[ShapeId],ShapeType,ShapeId);   //backup the undo
              case Index.Action of   //edited / moved
              1 : Delete(ShapeID);       //was added, so delete
              2 : begin
                     Circle[ShapeID].draw(-1); //erase on plot;
                     Circle[ShapeID].ReadFromFile(UFile);
                     Circle[ShapeID].draw(-1);  //redraw on new pos
                  end;
              3 : begin             //deleted
                     inc(No);
                     Circle[No].ReadFromFile(UFile);
                     Circle[No].draw(0);  //redraw on new pos
                  end;
              end;
           end;
      if St=AreaC then
            begin
              case Index.Action of   //edited / moved
              1 : Dbase.Areas.delete(ShapeID);
              2 : begin                                 //line was edited
                     Dbase.Areas.Area[ShapeID].draw(-1); //erase on plot;
                     Dbase.Areas.Area[ShapeID].ReadFromFile(UFile);
                     Dbase.Areas.Area[ShapeID].draw(0);  //redraw on new pos
                  end;
              3 : begin     //deleted
                     inc(Dbase.Areas.No);
                     Dbase.Areas.Area[Dbase.Areas.No].ReadFromFile(UFile);
                     Dbase.Areas.Area[Dbase.Areas.No].draw(0);  //redraw on new pos
                  end;
              end;
           end;
      if St=DtmC then
           begin
              case Index.Action of   //edited / moved
              1 : Dbase.Dtms.delete(ShapeID);
              2 : begin                                 //line was edited
                     Dbase.Dtms.dtm[ShapeID].draw(-1); //erase on plot;
                     Dbase.Dtms.dtm[ShapeID].ReadFromFile(UFile);
                     Dbase.Dtms.dtm[ShapeID].draw(0);  //redraw on new pos
                  end;
              3 : begin     //deleted
                     inc(Dbase.Dtms.No);
                     Dbase.Dtms.dtm[Dbase.Dtms.No].ReadFromFile(UFile);
                     Dbase.Dtms.dtm[Dbase.Dtms.No].draw(0);  //redraw on new pos
                  end;
              end;
           end;

     if St=BlockC then with Dbase.Blocks do
            begin
              case Index.Action of   //edited / moved
              1 : Delete(ShapeID);
              2 : begin                                 //line was edited
                     block[ShapeID].draw(-1); //erase on plot;
                     block[ShapeID].ReadFromFile(UFile);
                     block[ShapeID].draw(0);  //redraw on new pos
                  end;
              3 : begin     //deleted
                     inc(No);
                     block[No].ReadFromFile(UFile);
                     block[No].draw(0);  //redraw on new pos
                  end;
              end;
      end;
      j:=filepos(UFile);
      if j>=GroupStop then break;
   end;
end;

Procedure UndoObj.Undo;
var IndexPos : integer;
    Index  : UndoIndexRec;
    GroupStop : integer;
begin
   IndexPos:=filepos(IndexUndoFile);
   if IndexPos<=0 then exit;               //at start no more undo

   GroupStop:=FileSize(UndoFile);          //assume this is first undo  (last entries in Undo File)
   if IndexPos<FileSize(IndexUndoFile) then    // not last record
   begin
      Seek(IndexUndoFile,IndexPos);
      read(IndexUndoFile,Index);
      GroupStop:=Index.Place-1;
   end;

   if IndexPos<=0 then exit;

   //Seek(IndexRedoFile,IndexPos);   //move Redo one back also

   Seek(IndexUndoFile,IndexPos-1);
   read(IndexUndoFile,Index);
   Seek(IndexUndoFile,IndexPos-1);     //leave pointer at this position so next undo read prevoius rec

   Seek(UndoFile,Index.Place);
   LastUndoIndex:=Index.Index;         //set last undo so Redo can start here

   DoMainAction(UndoFile,GroupStop,Index,Not StartRedoGroup(Index.Action,Index.Index));
end;

 //Redo  -----------------------------------

function UndoObj.StartRedoGroup(Action,UIndex : integer) : boolean; //Start of new Redo Group
var j      : integer;                                      //UndoAction 1=add  2=edit  3=delete
    Index  : UndoIndexRec;
begin
   result:=true;       //assume Uindex already exist

   Reset(IndexRedoFile);
   while not eof(IndexRedoFile) do
   begin
      Read(IndexRedoFile,Index);
      if Index.Index=Uindex then exit;
   end;

   Result:=false;

   J:=filesize(RedoFile);
   seek(RedoFile,J);

   seek(IndexRedoFile,filesize(IndexRedoFile));
   Index.Place     :=J;

   //the invert of action for Redo
   //Undo=1(add)    Redo=3(Delete)
   //Undo=2(Edit)   Redo=2(Edit)
   //Undo=3(Delete) Redo=1(Add)
   Case Action of
   1 : Action:=3;
   2 : ;//
   3 : Action:=1;
   end;

   Index.Action   :=Action;
   Index.Index    :=Uindex;       //parent Undo number
   write(IndexRedoFile,Index);

   GroupRedoAction:=Action;
end;

Procedure UndoObj.SaveRedo(shape : ShapeC; ShapeType,ShapeID : integer);
var St : TClass;
begin
   St:=Shape.ClassType;
   blockwrite(RedoFile,St,sizeof(St));    //Shape type
   blockwrite(RedoFile,ShapeID,sizeof(integer));      //Shape Id in array

   if GroupRedoAction=1 then exit;   //Was set in StartGroup    // Add - Easy to just delete again

   Shape.WriteToFile(RedoFile);
end;

Procedure UndoObj.Redo;
var IndexPos,ICount : integer;
    Index  : UndoIndexRec;
    j,GroupStop : integer;
    UndoLine : LineC;
begin

   if LastUndoIndex=0 then exit;   //did all redos

   Reset(IndexRedoFile);
   IndexPos:=0;
   ICount:=0;
   GroupStop:=FileSize(RedoFile);    //assume end is at last record
   While not Eof(IndexRedoFile) do
   begin
      read(IndexRedoFile,Index);
      Inc(ICount);
      if Index.Index=LastUndoIndex then
      begin
         if not Eof(IndexRedoFile) then GroupStop:=Index.Place-1;

         IndexPos:=ICount;
         Break;
      end;
   end;

   if IndexPos<=0 then exit;

   Reset(IndexUndoFile);
   While not Eof(IndexUndoFile) do
   begin
      read(IndexUndoFile,Index);
      if Index.Index=LastUndoIndex then break;
   end;

   if Index.Index<>LastUndoIndex then exit;   // there is no Undo or redo anymore;

   Seek(IndexRedoFile,IndexPos-1);
   read(IndexRedoFile,Index);
   Seek(IndexRedoFile,IndexPos-1);     //leave pointer at this position so next undo read prevoius rec

   inc(LastUndoIndex);     //move to next

   Seek(RedoFile,Index.Place);

   DoMainAction(RedoFile,GroupStop,Index,False);

   if LastUndoIndex>UndoIndexCount then LastUndoIndex:=0;    //last one done
end;


end.

