unit irrvar1;

interface

//uses glount,DataUnt, CircleUnt,graphics,areaunt;

const
   maxnode=20000;     {aantal nodes in 1 blok}
   maxblok=100;       {aantal blokke in projek}
   maxbshift=1;       {aantal shifts waarin blok kan opereer}
   maxbloknodes=50;   {aantal peri punte om blok}
   maxshift=50;       {totale aantal shifts}     //also in irrdef
   maxPump =1;        {pumps in main}
   IProMax =50;       //250


type                   {records nodig vir network calcs}

   //-------------------

   IproObj = object

      defchanged : boolean;

//      Iblock      : array[0..maxblok] of  blkrec;

      Block      : integer;    //current block
//      Noblock    : integer;    //number of blocks
      //the boundary of the block is held in Dbase.Blocks

      Sourcenode : integer;     {main water originator}
      irrstat        : integer;   //status
      prodesc        : array[1..3] of Shortstring;
      changed,zerror : boolean;

       Procedure Newblock(x,y : double);
     //  Procedure Addblocknode(x,y : double);
     //  Procedure MoveLastPnode(x,y:double);

   (*
       function ProData(Ii:integer; var TotNode : integer) : boolean;
       function Data : boolean;
       procedure ClearAll;
       procedure irrimax(var minx,maxx,miny,maxy:double);
       procedure SetGhost(Ipro_,n:integer);
       procedure SetSaveStatus(diskfout:boolean);
       procedure delete_pack;
       procedure MovePack(xx2,yy2,dx,dy,dhoek:double);
       function blank(to_the_End:boolean) : integer;
       function copy1(n1,n2 : integer) : integer; *)
    end;


    var
    Ipro  : IproObj;

implementation



Procedure IproObj.Newblock(x,y : double);
begin
{   inc(noBlock);
   block:=noBlock;
   Dbase.Blocks.AddArea(x,y);}
end;

end.

