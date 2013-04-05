unit BlockUnt;

interface

Uses NodeUnt,PipeUnt,AreaUnt,glount,graphics,system.SysUtils;

type

  blkRecInfo = Record
      LatPercentAbove,LatPercentBelow : double;
      LatMeterAbove,LatMeterBelow     : double;
      ManPercentAbove,ManPercentBelow : double;
      ManMeterAbove,ManMeterBelow     : double;
      LatVeloc,ManVeloc               : double;
      EUN1,EUCV1                      : double;

      LatMaxPipe,ManMaxPipe  : integer;
      LatAuto                : boolean;
   end;

   blkRecPlant = record
       Pspas,RSpas : double;
   end;

   shiftrec=record
       No                   : integer;      {on in this shift}
       flowavail,pressavail : double;         {available flow and pressure}
   end;

   BlockC=Class(AreaC)
   Public
     name,desc    : str20;
     info         : BlkRecInfo;
     status       : integer;         {design has changed since last calc}
     {0=new  1=calced  2=calced/changed}
     demand,pressdes : double;         {requered demand and pressure}
     regulatein   : double;            {regulator ?  11/03 now used to hold tramline spacing}
     color        : integer;
     displayy     : integer;            //5/2003 now holds the EU value  old {0=none 1=fill color 2=}

     shift             : shiftrec;        {shift nommers waarin blok aan geskakel is}
     sdrnode           : NodeC;
     hspas,vspas,angl  : double;
     micro,stagg       : boolean;
     kortstop          : double;
     ShiftColor        : integer;
     BlokPlant         : blkRecPlant;

     node    : array of NodeC;
     nonode  : Integer;

     Pipe    : array of PipeC;
     noPipe  : Integer;

     procedure AddNode(x,y,z,PresD,FlowD : double; Series_,Model_,Nozzle_ : str30; NType : NodeType);
     procedure AddPipe(n1_,n2_ : NodeC);
     function CloseNode(x,y : double) : integer;
     function LastPipe : PipeC;
     function CountNodeType(_type : NodeType) : integer; // Count number of _type nodes in block
     procedure Flash;
     procedure Zoom;
     procedure Node_Pipes_draw(Node : NodeC; Grip : integer);    //draw all the pipes connected to Node
     function Node_Number(Node_ : NodeC) : integer;              //get node index number - saving of pipes to file
     function Number_Node(Num : integer) : NodeC;                //get node based on index number - loading of pipes to file
   end;


implementation

uses MouseUnt,plotunt,DataUnt;

function BlockC.CountNodeType(_type : NodeType) : integer;
var count, i : integer;
begin

   count := 0;
   for i:=1 to NoNode do
   begin
      if Node[i].soort = _type then inc(count);
   end;

   result := count;

end;

procedure BlockC.AddPipe(n1_,n2_ : NodeC);
begin
   inc(NoPipe);
   if length(Pipe)<NoPipe+1 then SetLength(Pipe,NoPipe+1);

   Fillchar(pipe[NoPipe],Sizeof(PipeC),0);
   Pipe[NoPipe]:=PipeC.Create;
   with Pipe[NoPipe] do
   begin
      n1:=@n1_;
      n2:=@n2_;
   end;
end;

procedure BlockC.AddNode(x,y,z,PresD,FlowD : double; Series_,Model_,Nozzle_ : str30; NType : NodeType);
begin
   inc(NoNode);
   if length(node)<NoNode+1 then SetLength(node,NoNode+1);

   Fillchar(node[NoNode],Sizeof(NodeC),0);
   node[NoNode]:=NodeC.Create(x,y,z,10,clgreen,1,0,360);
   with node[NoNode] do
   begin
      Inode     :=true;    //tell circle it is a node
      PressDes  :=PresD;
      OutflowDes:=FlowD;
      Series:=Series_; Model:=Model_; Nozzle:=Nozzle_;
      Soort:=Ntype;
   end;
end;

procedure BlockC.Flash;
var j,i : integer;
begin
  // with BlockC(self) do
  // begin
      for I:=1 to NoNode do Node[i].draw(-1);
      for j:=1 to 10 do
      begin
         draw(-1);
         sleep(10);
         mouse.sendmessage_;
         draw(0);
      end;
      for I:=1 to NoNode do Node[i].draw(0);
  // end;
end;

procedure BlockC.Zoom;
var x1,y1,x2,y2 : double;
begin
   Limits(x1,y1,x2,y2);
   Wind.Data.SetMaxlimits(x1-1,x2+1,y1-1,y2+1);
   Wind.screen.SetMaxLimits(x1-1,x2+1,y1-1,y2+1);
   Dbase.Draw;
end;

function BlockC.CloseNode(x,y : double) : integer;
var dist,ref : double;
    j : integer;
begin
   result:=1;
   ref:=1e6;
   with BlockC(self) do
      for J:=1 to NoNode do
      begin
         Dist:=potago(x,y,Node[j].p1.x,Node[j].p1.y);
         if dist<Ref then
         begin
            ref:=dist;
            result:=j;   //:=Node[j];
         end;
      end;
end;

function BlockC.LastPipe : PipeC;
begin
   result:=Pipe[nopipe];
end;

procedure BlockC.Node_Pipes_draw(Node : NodeC; Grip : integer);
var j : integer;
begin
   for j:=1 to NoPipe do
      if (Pipe[j].n1=Node) or (Pipe[j].n2=Node) then Pipe[j].draw(Grip);
end;

function BlockC.Node_Number(Node_ : NodeC) : integer;
var j : integer;
begin
   result:=1;
   for j:=1 to NoNode do if Node[j]=Node_ then result:=j;
end;

function BlockC.Number_Node(Num : integer) : NodeC;                //get node based on index number - loading of pipes to file
begin
   result:=Node[num];
end;

end.

