unit ActionUnt;

interface

uses system.classes, obj_insp_unt, PointUnt, ShapeUnt;

type
   ActionObj = Object
      Basetipe,BaseNo,BasePoint : integer;      //info to use when Updating Input
      procedure Click(Shift: TShiftState; x,y : double; MoveSpeedDown : boolean);
      procedure Move(Shift: TShiftState; x,y : double; MoveSpeedDown : boolean);
      procedure Stop(Escaped : boolean);

      procedure UpdateInput(InputStr : string);
   End;

var
   Actions : ActionObj;

implementation

uses irrvar1,DataUnt,Main,Glount,form2unt,UndoUnt,NodeUnt,MouseUnt, blocks_tree_unt;

procedure SetInput(InputStr : string);
begin
   MainForm.Input.Text:=InputStr;
end;

procedure ActionObj.UpdateInput(InputStr : string);   //typed input after an action took place.
var Dist,Dir,DistNew : double;
begin
   case Mouse.Mode of
   LineParallel : begin         //new parallel distance
          DistNew:=strtor(InputStr);
          case BaseTipe of
          1 : begin
                 with Dbase.Lines do
                 begin
                    LastLine.draw(0);
                    Vrb(Line[BaseNo].Lp[1].x,Line[BaseNo].Lp[1].y,LastLine.Lp[1].x,LastLine.Lp[1].y,dist,Dir);
                    Pol(Line[BaseNo].Lp[1].x,Line[BaseNo].Lp[1].y,DistNew,Dir,LastLine.Lp[1].x,LastLine.Lp[1].y);
                    Pol(Line[BaseNo].Lp[2].x,Line[BaseNo].Lp[2].y,DistNew,Dir,LastLine.Lp[2].x,LastLine.Lp[2].y);
                    LastLine.draw(0);
                 end;
              end;
          2 : begin
                 with Dbase.Circles do
                 begin
                    vrb(Circle[BaseNo].p1.x,Circle[BaseNo].p1.y,Mouse.Snap.x,Mouse.snap.y,Dist,Dir);
                    SetInput(rtostr(Dist,10,3));
                    Dbase.Circles.Add(Circle[BaseNo].p1.x,Circle[BaseNo].p1.y,0,Dist);
                    LastCircle.draw(0);
                 end;
              end;
          end;
      end;
   end;
end;

procedure MoveElements(x,y : double);
var mx,my : double;
    Ptype,Pid,Ppoint,j,a1,a2,a3,Pp : integer;

begin
   Mouse.RemoveHighLight;
   if Mouse.single then
   begin
      if mouse.Clicked=0 then   //mouse click>0 handles by OnMove;
      begin
         if Dbase.ClosePoint(x,y,mx,my,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint) then
         begin
            mouse.clicked:=1;
            Undo.StartGroup(2);
            case Mouse.ParentType of
            100 : with Dbase.Lines.line[Mouse.ParentId] do
                  begin
                     SaveUndo(Mouse.ParentId);  Pp:=abs(Mouse.ParentPoint);
                     if Mouse.ParentPoint>0 then
                        Mouse.Move(Lp[Pp].x,Lp[Pp].y)    //place mouse on selected point
                     else
                        Mouse.Move((Lp[Pp].x+Lp[Pp+1].x)/2,(Lp[Pp].y+Lp[Pp+1].y)/2);
                  end;
            end;
         end;
      end
      else
      begin    //move Parent point to snapped coordinates
         Dbase.PxPy(mouse.Snap.x,Mouse.Snap.y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);
         Mouse.Clicked:=0;    //stop
      end;
   end;

   if not Mouse.Single then
   begin
      if mouse.Clicked=0 then               //pick first elements
      begin
         if Not Dbase.Is_Selected then     //move one element
         begin
            Mouse.ParentType:=0;           //if donot remain zero, then means single element
            if Dbase.CloseShape(x,y,Ptype,Pid,Ppoint,0,0) then
            begin
               with Mouse do Move(ParentCoord.x,ParentCoord.y);    //move to anchor point on element
               Mouse.ParentType:=Ptype; Mouse.ParentId:=Pid; Mouse.ParentPoint:=ppoint;      //set so snap will ignore parent item
               Undo.StartGroup(2);
               Mouse.Clicked:=1;     //Select and activate move in one go.
               mainform.Memo1.Lines.Add('Mouse x'+r_s(mouse.x,5,0));
               mainform.Memo1.Lines.Add('Mouse Snapx'+r_s(mouse.snap.x,5,0));

               with Mouse.ShapeCc do begin Draw(3); SaveUndo(Pid); end;

             (*  case Ptype of
               100 : with Dbase.Lines.line[Pid] do begin draw(3); SaveUndo(100,Pid); end;
               200 : with Dbase.Circles.circle[Pid] do begin draw(3); SaveUndo(200,Pid); end;
               700 : Dbase.Images.Image[Pid].draw(3);
               800 : with Dbase.Areas.Area[Pid] do begin draw(3); SaveUndo(800,Pid); end;
               900 : with Dbase.Dtms.Dtm[Pid] do begin draw(3); SaveUndo(900,Pid); end;
               1000: with Dbase.Blocks.Area[Pid] do begin draw(3); SaveUndo(1000,Pid); end;
               end; *)
            end
         end
         else
         begin
            Undo.StartGroup(2);  Undo.SaveSelected;
            with Mouse do Move(Snap.x,Snap.y);
            Mouse.ParentType:=-1;                       // so snap wil not jump to select elements
         end;
         Mouse.clicked:=1;
      end
      else
      begin
         Dbase.DxDy(Mouse.Snap.x-x,Mouse.Snap.y-y,Mouse.ParentType,Mouse.ParentId);
         //if Mouse.Clicked=2 then Dbase.Select(false);  //unselecte single element that was moved
         //Mouse.clean(true,1,false);
         //end;

         if Mouse.ParentType>0 then Dbase.Select(false,false);    //single element was selected temparary
         mouse.Clicked:=0;
         Mouse.ParentType:=0;
      end;
   end;
end;


procedure ActionObj.Click(Shift: TShiftState; x,y : double; MoveSpeedDown : boolean);
var mx,my,Dist,Dir     : double;
    Ptype,Pid,Ppoint,j : integer;
    Selected           : boolean;
    Pi1,Pi2            : Pointc;
    selection : array of ShapeC;
    n : integer;

begin
   case Mouse.Mode of    //neutral mode, just to get close shape info
   Select : begin             //select element
             if (Shift<>[ssshift]) and (Shift<>[ssShift,SSleft]) then
             begin
                Mouse.RemoveHighLight;            //removehighlight color so ID can change
                Dbase.Select(false,false);
             end;

             if Dbase.CloseShape(x,y,Ptype,Pid,Ppoint,0,0) then
             begin
                Mouse.ParentType:=Ptype; Mouse.ParentId:=Pid; Mouse.ParentPoint:=ppoint;      //set so snap will ignore parent item
                Mouse.RemoveHighLight;            //removehighlight color so ID can change
                Mouse.ShapeCc.Draw(3);
                (*
                case Ptype of
                100 : Dbase.Lines.line[Pid].draw(3);
                200 : Dbase.Circles.circle[Pid].draw(3);
                700 : Dbase.Images.Image[Pid].draw(3);
                800 : Dbase.Areas.Area[Pid].draw(3);
                900 : Dbase.Dtms.Dtm[Pid].draw(3);
                1000 : Dbase.Blocks.Area[Pid].draw(3);
                end;*)
             end
             else
                Dbase.Select(false,false);

             ObjInsp.Load;
          end;

   Moving : MoveElements(x,y);

   Line2Pnt,LinePoly:                  //add 2pt and poly line
      begin
         case Mouse.Clicked of
         0 : begin
                Undo.StartGroup(1);    //set undo
                with Dbase.Lines do
                begin
                   AddPoint(-1,Mouse.Snap.x,Mouse.snap.y);  //add a new line and set
                   Line[no].SaveUndo(no);
                end;
                Mouse.ParentPoint:=1;
             end
         else
            Dbase.PxPy(Mouse.Snap.x,Mouse.Snap.y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);
         end;
         inc(mouse.Clicked);

         Mouse.ParentType:=100;
         Mouse.ParentId:=Dbase.Lines.No;
         inc(Mouse.ParentPoint);
         if (mouse.Clicked>=2) and (mouse.Mode=LinePoly) then Dbase.Lines.AddLastNode(Mouse.ParentId,Mouse.Snap.x,Mouse.Snap.y);
         if (mouse.Clicked=2) and (Mouse.Mode=Line2Pnt) then Mouse.Clean(true,Mouse.Mode,true);   //end 2 point line
      end;
   LineParallel: begin              //parallel line/circle
          if Dbase.CloseShape(x,y,BaseTipe,BaseNo,BasePoint,0,0) then
          case BaseTipe of
          100 : begin
                 with Dbase.Lines do
                 begin
                    Undo.StartGroup(1);
                    Line[BaseNo].ParallelCoords(Mouse.Snap.x,Mouse.snap.y,Pi1,Pi2,Dist);
                    SetInput(rtostr(Dist,10,3));
                    AddLine(Pi1.x,Pi1.y,Pi2.x,Pi2.y);
                    Line[no].SaveUndo(no);
                    LastLine.draw(0);
                 end;
              end;
          200 : begin
                 with Dbase.Circles do
                 begin
                    Undo.StartGroup(1);
                    vrb(Circle[BaseNo].p1.x,Circle[BaseNo].p1.y,Mouse.Snap.x,Mouse.snap.y,Dist,Dir);
                    SetInput(rtostr(Dist,10,3));
                    Dbase.Circles.Add(Circle[BaseNo].p1.x,Circle[BaseNo].p1.y,0,Dist);
                    Circle[no].SaveUndo(no);
                    LastCircle.draw(0);
                 end;
              end;
          end;
      end;
   CadNodePlus: begin              //new node on line
          with Dbase.Lines do
          if mouse.Clicked=0 then
          begin
             if Dbase.CloseShape(x,y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint,0,0) then
             begin
                if Mouse.ParentType<>100 then exit;
                Mouse.RemoveHighLight;
                Undo.StartGroup(2);
                Line[Mouse.ParentID].SaveUndo(Mouse.ParentID);
                AddInterNode(Mouse.ParentId,Mouse.ParentPoint,Mouse.Snap.x,Mouse.Snap.y);
             end
             else exit;
             Mouse.SnapOk:=2;    //switch from source to destination snap;
          end
          else
          begin
             Dbase.PxPy(Mouse.Snap.x,Mouse.Snap.y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);
             Mouse.MoveSnap;
          end;
          inc(mouse.Clicked);
          if mouse.Clicked=2 then Mouse.Clean(true,Mouse.Mode,true,1);  //back to source
        end;

   Circle1: begin                //add circle
         case Mouse.Clicked of
         0 : begin
                Dbase.Circles.Add(Mouse.Snap.x,Mouse.snap.y,0,0);
                Mouse.moveSnap;
                Undo.StartGroup(1);
                with Dbase.Circles do Circle[no].SaveUndo(no);
             end;
         1 : begin
                Dbase.Circles.Radius(-2,Mouse.snap.x,Mouse.snap.y);  //fix final radius
                Mouse.moveSnap;
             end;
         end;
         inc(mouse.Clicked);

         Mouse.ParentType:=200;
         Mouse.ParentId:=Dbase.circles.No;
         Mouse.ParentPoint:=2;

         if mouse.Clicked=2 then Mouse.Clean(true,Mouse.Mode,true);   //end of radius fix

      end;
  Circle3Pnt: begin  //add 3pnt circle
         case Mouse.Clicked of
         0 : begin
                Undo.StartGroup(1);
                Mouse.addBase(1,Mouse.Snap.x,Mouse.snap.y);
                Dbase.Lines.AddPoint(0,Mouse.Snap.x,Mouse.snap.y);
                Dbase.Circles.circle[0].radius:=0;             //start with zero
             end;
         1 : begin
                Mouse.addBase(2,Mouse.Snap.x,Mouse.snap.y);
                Dbase.PxPy(Mouse.Snap.x,Mouse.Snap.y,100,0,1);   //now it is still a line
                with Mouse do Move((Base[1].x+Base[2].x)/2+10,(Base[1].y+Base[2].y)/2+10);
             end;
         2 : begin
                Mouse.addBase(3,Mouse.Snap.x,Mouse.snap.y);
                Dbase.Circles.circle[0].draw(0);               //remove last image
                Dbase.Circles.Add3;
             end;
         end;
         inc(mouse.Clicked);

         Mouse.ParentType:=200;
         Mouse.ParentId:=Dbase.circles.No;
         Mouse.ParentPoint:=2;

         if mouse.Clicked=3 then Mouse.Clean(true,Mouse.Mode,true);   //end 3 point arc

      end;
   Area  : begin                       //area
            case Mouse.Clicked of
            0 : begin
                   Undo.StartGroup(1);
                   Dbase.Areas.AddArea(Mouse.Snap.x,Mouse.snap.y);
                   Dbase.Areas.LastArea.SaveUndo(Dbase.Areas.no);
                end;
            else
               begin
                  Dbase.PxPy(Mouse.Snap.x,Mouse.Snap.y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);
                  Dbase.Areas.Area[Mouse.ParentId].AddPoint(Mouse.Snap.x,Mouse.Snap.y);
               end;
            end;
            inc(mouse.Clicked);

            Mouse.ParentType:=800;
            Mouse.ParentId:=Dbase.Areas.No;
            with Dbase.Areas do Mouse.ParentPoint:=Area[No].No_p;

            //if mouse.Clicked=2 then Mouse.Clean(true,Mouse.Mode,true);   //end 2 point line
          end;
   DtmPnt: begin  //add dtm
          Undo.StartGroup(1);
          with Dbase.Dtms do
          begin
             Add('Cc','Tt',Mouse.Snap.x,Mouse.snap.y,0);
             Dtm[no].draw(0);
             with Dbase.dtms do dtm[no].SaveUndo(no);
          end;

         inc(mouse.Clicked);

         Mouse.ParentType:=900;
         Mouse.ParentId:=Dbase.Dtms.No;
         Mouse.ParentPoint:=1;
      end;
   Block : begin                                                  //add irrigation block
            case Mouse.Clicked of
            0 : begin
                   Undo.StartGroup(1);
                   Dbase.Blocks.AddArea(Mouse.Snap.x,Mouse.snap.y);
                   Dbase.Blocks.LastArea.SaveUndo(Dbase.Blocks.no);
                end;
            else
               begin
                  Dbase.PxPy(Mouse.Snap.x,Mouse.Snap.y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);
                  Dbase.Blocks.Block[Mouse.ParentId].AddPoint(Mouse.Snap.x,Mouse.Snap.y);
               end;
            end;
            inc(mouse.Clicked);

            Mouse.ParentType:=1000;
            Mouse.ParentId:=Dbase.Blocks.No;
            with Dbase.Blocks do Mouse.ParentPoint:=Block[No].No_p;


          end;
   IrrNode : begin                   //irrigation Node
             Undo.StartGroup(1);
             with Dbase.Blocks do
             begin
                //Blok:=0;
                with Block[Blok] do
                begin
                   AddNode(Mouse.Snap.x,Mouse.snap.y,0,10,10,'1','2','3',sprinkler);
                   Node[NoNode].draw(0);
                   //with Dbase.dtms do dtm[no].SaveUndo(900,no);
                   inc(mouse.Clicked);
                   Mouse.ParentType:=1001; Mouse.ParentId:=NoNode;  Mouse.ParentPoint:=1;
                end;
             end;
          end;
   IrrPipe : with Dbase.Blocks do
             begin
                with Block[Blok] do
                begin
                   if mouse.Clicked=0 then
                   begin
                      N:=CloseNode(Mouse.x,Mouse.y);
                      AddPipe(nil,nil);
                      Pipe[NoPipe].n1:=node[n];
                      Dbase.Lines.AddPoint(0,node[n].p1.x,node[n].p1.y); //  use line 0 as temporary rubber band
                      Mouse.ParentType:=100; Mouse.ParentId:=0;  Mouse.ParentPoint:=1;
                   end
                   else
                   begin
                      n:=CloseNode(Mouse.x,Mouse.y);
                      Pipe[NoPipe].n2:=node[n];
                    //  LastPipe.n2:=CloseNode(Mouse.x,Mouse.y);
                      Dbase.Lines.line[0].draw(-1);       //erase rubber
                      Lastpipe.draw(0);
                   end;
                   inc(mouse.Clicked);
                   if Mouse.Clicked=2 then   //start from last node again
                   begin
                      Mouse.Clicked:=1;
                      AddPipe(nil,nil);
                      Pipe[NoPipe].n1:=node[n];
                      Dbase.Lines.AddPoint(0,node[n].p1.x,node[n].p1.y); //  use line 0 as temporary rubber band
                   end;
                end;
             end;
   end;
end;


procedure ActionObj.Move(Shift: TShiftState; x,y : double; MoveSpeedDown : boolean);
var  cenx,ceny,straal,r1,r2 : double;
     n : integer;
begin
   if MoveSpeeddown then
   begin
      if Mouse.Clicked>0 then Mouse.SnapOk:=2;    //may destination snap after selection was made
      if Mouse.single then
      begin
         Dbase.PxPy(x,y,Mouse.ParentType,Mouse.ParentId,Mouse.ParentPoint);   //move coord of single element
      end
      else
         Dbase.DxDy(X-Mouse.x,Y-Mouse.y);                                     //move all selected elements
   end;

   case Mouse.Mode of
   Line2Pnt,LinePoly : if Mouse.Clicked>0 then Dbase.PxPy(x,y,100,Dbase.Lines.No,Mouse.ParentPoint);       //move p of new line
   CadNodePlus       : if Mouse.Clicked>0 then Dbase.PxPy(x,y,100,Mouse.ParentId,Mouse.ParentPoint);
   Circle1    : if Mouse.Clicked>0 then Dbase.Circles.Radius(-2,Mouse.x,Mouse.y); //change radius of new circle
   Circle3Pnt : begin                                //3pnt circle
            case Mouse.Clicked of
            1 : Dbase.PxPy(x,y,100,0,2);
            2 : begin
                   with Mouse do                   //calculate new center
                      getcenter(base[1].x,base[1].y,base[2].x,base[2].y,x,y,cenx,ceny,straal,r1,r2);
                   Dbase.PxPy(cenx,ceny,200,0,1);    //move center to coords
                   Dbase.Circles.Radius(0,Mouse.x,Mouse.y); //change radius to fit
                end;
            end;
         end;
   Area : if Mouse.Clicked>0 then Dbase.PxPy(x,y,800,Dbase.Areas.no,Dbase.Areas.area[Mouse.ParentId].No_p);
   Block: if Mouse.Clicked>0 then Dbase.PxPy(x,y,1000,Dbase.Blocks.no,Dbase.Blocks.Block[Mouse.ParentId].No_p);
   IrrPipe: if Mouse.Clicked>0 then Dbase.PxPy(x,y,100,0,2);
   end;

   Mouse.x:=X;
   Mouse.y:=Y;

   mainform.label1.Caption:='not snapped';
   if mouse.snapped then mainform.label1.Caption:='snapped';

   mainform.label2.Caption:=   'xy   '+r_s(x,5,0)+'  '+r_s(y,5,0);
   with Mouse do
      mainform.label3.Caption:='snap '+r_s(snap.x,5,0)+'  '+r_s(snap.y,5,0)+'   parentid '+r_s(mouse.ParentId,5,0);
end;

procedure ActionObj.Stop(Escaped : boolean);  //false means another action button was clicked
var n : integer;
begin

   mainform.memo1.Lines.Add('Areas '+i_s(dbase.Areas.No,5));
   mainform.memo1.Lines.Add('Blocks '+i_s(dbase.Blocks.No,5));

   case Mouse.Mode of
   Moving    : if Mouse.ParentType>0 then Dbase.Select(false,false);       //remove temp select on single element
   Line2Pnt  : ;//if mouse.clicked>0 then Dbase.Lines.Delete(-1);             //remove last added line
   LinePoly  : begin
                  if Mouse.clicked=1 then Dbase.Lines.Delete(-1)         //did not add 2nd point on polyline
                  else Dbase.Lines.DeleteLastNode(Mouse.ParentId);
               end;
  // 200  : if mouse.clicked<=2 then Dbase.Circles.LastCircle.draw(-1);   //was doen with Undo
   Circle3Pnt  : if mouse.clicked<=2 then Dbase.Circles.circle[0].draw(-1);   //remove last circle;
   Area  : if Escaped then
           with Dbase.Areas.LastArea do
           begin
              draw(-1);
              dec(no_p);
              draw(0);
           end;
   Block : if escaped then
           begin
              with Dbase.Blocks.LastArea do
              begin
                 draw(-1);
                 dec(no_p);
                 draw(0);
              end;
              BlocksTree.InitData;
           end;
   IrrPipe : if Escaped then
             begin
                Dbase.Lines.line[0].draw(-1);       //erase rubber
                with Dbase.Blocks do Block[Blok].noPipe:=Block[Blok].noPipe-1;   //remove last pipe
             end;

   end;

   mainform.memo1.Lines.Add('Areas '+i_s(dbase.Areas.No,5));
   mainform.memo1.Lines.Add('Blocks '+i_s(dbase.Blocks.No,5));

end;


end.

