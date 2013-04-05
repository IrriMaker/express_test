unit plotUnt;

interface

Uses DataUnt,Vcl.Graphics, AreaUnt, PointUnt;

type

   GhostObj = Object
      Garea : AreaC;
      Shape : integer;   //1=line 2=rect
      Drawn : boolean;   //was it last drawn or erased
      Dragged  : boolean;   //was shape dragged since Init
      procedure Init(x1,y1,x2,y2 : double; Shape_ : integer);
      procedure MovePoint(x,y : double);
      function Draw(Erase : boolean) : boolean;
      function InArea(p1 : pointC) : boolean;
   End;

   LimitsObj = Object
      minx,miny,maxx,maxy : double; //world coordinates
      X_x,Y_y             : double; //world coordinate width and height
      Midx,Midy           : double; //canvas world mid coordinates
      procedure SetMaxLimits(x1,x2,y1,y2 : double);
      procedure Demag(factor : double);
      procedure Center(wx,wy : double);                  //set limits around this center
      function InScreen(p1 : pointC) : boolean;
   end;

   WindowObj = object
      Data,Screen     : LimitsObj;
      CanvasW,CanvasH : integer;
      North           : boolean;             //south ot north

      function PixelTometer(pixval : integer) : double;
      procedure world_screen(wx,wy : double; var xcrt,ycrt : integer);
      procedure screen_world(xcrt,ycrt : integer; var wx,wy : double);
      procedure NormalLimits;                            //all on screen limits
      procedure CanvasLimits(w,h : integer);             //set canvas size
   end;

var Wind   : WindowObj;
    Ghost  : GhostObj;

procedure movetoX(x,y : double);
procedure LinetoX(x,y : double);
procedure SetmLineStyle(PenNo,PenColor : integer; mmWidth:double);

implementation

uses GloUnt,main,form2unt;

procedure SetmLineStyle(PenNo,PenColor : integer; mmWidth:double);
var PixWidth         : integer;  {lyn wydte in pixels}
begin
   PixWidth:=1;

   if mmWidth>0.2 then PixWidth:=2;
   if mmWidth>0.4 then PixWidth:=3;
   if mmWidth>0.8 then PixWidth:=4;
   if mmWidth>1.6 then PixWidth:=5;


   with kanvas.pen do
   begin
      width:=PixWidth;
      Color:=PenColor;
      (*
      if linetype<7 then
         case linetype of
         0 : style:=pssolid;
         1 : style:=psdot;
         2 : style:=psdash;
         3 : style:=psdashdot;
         4 : style:=psdashdotdot;
         else
             style:=psdot;
         end;
      *)
      style:=pssolid;
   end;
end;

procedure movetoX(x,y : double);
var xcrt,ycrt : integer;
begin
   Wind.World_Screen(x,y,xcrt,ycrt);
   with kanvas do moveto(xcrt,ycrt);
end;

procedure LinetoX(x,y : double);
var xcrt,ycrt : integer;
begin
   Wind.World_Screen(x,y,xcrt,ycrt);
   with kanvas do Lineto(xcrt,ycrt);
end;

procedure LimitsObj.SetMaxLimits(x1,x2,y1,y2 : double);
var ratio1,ratio2 : double;
begin
   if x1=x2 then x2:=x1+200;
   if y1=y2 then y2:=y1+200;

   with LimitsObj(self) do
   begin
      if wind.North then
      begin
         ratio1:=(x2-x1)/Wind.Canvasw;
         ratio2:=(y2-y1)/Wind.Canvash;
      end
      else
      begin
         ratio1:=(y2-y1)/Wind.Canvasw;
         ratio2:=(x2-x1)/Wind.Canvash;
      end;

      if ratio1>ratio2 then
      begin
         ratio2:=ratio1/ratio2;
         ratio1:=1;
      end
      else
      begin
         ratio1:=ratio2/ratio1;
         ratio2:=1;
      end;

     // ratio1:=1; ratio2:=1;

      Midx:=(x1+x2)/2; Midy:=(y1+y2)/2;

      if wind.North then
      begin
         X_x:=(x2-x1)*ratio1;
         Y_y:=(y2-y1)*ratio2;
      end
      else
      begin
         X_x:=(x2-x1)*ratio2;
         Y_y:=(y2-y1)*ratio1;
      end;

      Minx:=Midx-X_x/2; Maxx:=Midx+X_x/2;
      Miny:=Midy-Y_y/2; Maxy:=Midy+Y_y/2;

   end;
end;

procedure LimitsObj.Center(wx,wy : double);
begin
   with LimitsObj(self) do
   begin
      Midx:=wx;
      Midy:=wy;
      Minx:=Midx-X_x/2; Maxx:=Midx+X_x/2;
      Miny:=Midy-Y_y/2; Maxy:=Midy+Y_y/2;
   end;
end;

function LimitsObj.InScreen(p1 : pointC) : boolean;
begin
   result:=(p1.x>=minx) and (p1.x<=maxx) and (p1.y>=miny) and (p1.y<=maxy);
end;

procedure LimitsObj.Demag(factor : double);
var ww,hh : double;
begin
   ww:=Maxx-Minx; hh:=Maxy-Miny;
   SetMaxLimits(Midx-ww/2*factor,Midx+ww/2*factor,Midy-hh/2*factor,Midy+hh/2*factor);
end;

procedure GhostObj.Init(x1,y1,x2,y2 : double; Shape_ : integer);
begin
   if Garea<>nil then Garea.Free;
   Garea:=AreaC.Create(x1,y1,0,x1,y1,0,clred,1);
   Shape:=Shape_;
   Drawn:=false;
   Dragged :=false;
end;

procedure GhostObj.MovePoint(x,y : double);
begin
   If Drawn then Draw(false);
   Garea.Ap[2].x:=x;
   Garea.Ap[2].y:=y;
   Draw(false);
   Dragged:=true;
end;

function GhostObj.InArea(p1 : pointC) : boolean;
var x1,x2,y1,y2 : double;
begin
   with Garea do
   begin
      x1:=Ap[1].x; x2:=Ap[2].x;
      if x2<x1 then begin x1:=Ap[2].x; x2:=Ap[1].x; end;
      y1:=Ap[1].y; y2:=Ap[2].y;
      if y2<y1 then begin y1:=Ap[2].y; y2:=Ap[1].y; end;
   end;
   result:=(p1.x>=x1) and (p1.x<=x2) and (p1.y>=y1) and (p1.y<=y2);
end;

function GhostObj.Draw(Erase : boolean) : boolean;
begin
   result:=Dragged;
   kanvas.Pen.Width:=1;
   kanvas.Pen.Mode:=PmNotXor;
   if Erase and not Drawn then exit;    //last ghost not visible anymore
   case Shape of
   1 : begin
          MovetoX(Garea.Ap[1].x,Garea.Ap[1].y);
          LinetoX(Garea.Ap[2].x,Garea.Ap[2].y);
       end;
   2 : begin
          MovetoX(Garea.Ap[1].x,Garea.Ap[1].y);
          LinetoX(Garea.Ap[2].x,Garea.Ap[1].y);
          LinetoX(Garea.Ap[2].x,Garea.Ap[2].y);
          LinetoX(Garea.Ap[1].x,Garea.Ap[2].y);
          LinetoX(Garea.Ap[1].x,Garea.Ap[1].y);
       end;
   end;
   Drawn:=not Drawn;
end;

procedure WindowObj.world_screen(wx,wy : double; var xcrt,ycrt : integer);
var dx : double;
begin
   Xcrt:=0; Ycrt:=0;
   //dx:=wx; wx:=-wy; wy:=-dx;
   with Screen do
   begin
      if North then
      begin
         if X_x>0 then Xcrt:=trunc((wx-Minx)/X_x*CanvasW);
         if Y_y>0 then Ycrt:=CanvasH-trunc((Maxy-wy)/Y_y*CanvasH);
      end
      else
      begin       //south
         if Y_y>0 then Xcrt:=CanvasW-trunc((wy-Miny)/Y_y*CanvasW);
         if X_x>0 then Ycrt:=trunc((wx-Minx)/X_x*CanvasH);
      end;
   end;
end;

procedure WindowObj.screen_world(xcrt,ycrt : integer; var wx,wy : double);
begin
   Wx:=0; Wy:=0;
   with Screen do
   begin
      if North then
      begin
         wx:=Xcrt/CanvasW*X_x+Minx;
         wy:=Maxy-(CanvasH-Ycrt)/CanvasH*Y_y;
      end
      else
      begin       //south
         wy:=-(Xcrt-CanvasW)/CanvasW*Y_y+Miny;
         wx:=Ycrt/CanvasH*X_x+Minx;
      end;
   end;
end;

function WindowObj.PixelTometer(pixval : integer) : double;
begin
   result:=Screen.X_x/CanvasH*Pixval;    //world width/canvas width
end;

procedure WindowObj.CanvasLimits(w,h : integer);
begin
   CanvasW:=w;
   CanvasH:=h;
end;

procedure WindowObj.NormalLimits;
var j,i : integer;
    minx,miny,maxx,maxy : double;

    procedure Maxval(x,y : double);
    begin
       if x<minx then minx:=x;
       if y<miny then miny:=y;
       if x>maxx then maxx:=x;
       if y>maxy then maxy:=y;
    end;

begin
   North:=false;

   minx:=1e9; miny:=1e9;
   maxx:=-1e9; maxy:=-1e9;

   with Dbase do
   begin
      with Lines do
         for j:=1 to No do
            with line[j] do
            begin
               maxval(Lp[1].x,Lp[1].y);
               maxval(Lp[2].x,Lp[2].y);
            end;
      with Circles do
      for j:=1 to No do
         with Circle[j] do
         begin
            maxval(p1.x+radius,p1.y+radius);
            maxval(p1.x-radius,p1.y-radius);
         end;

      with Dtms do
      for j:=1 to No do
         with Dtm[j] do
            maxval(p1.xyz.x,p1.xyz.y);

      with Areas do
      for j:=1 to No do
         with Area[j] do
            for i:=1 to no_p do
               maxval(Ap[i].x,Ap[i].y);

      with Blocks do
      for j:=No downto 1 do
         with block[j] do
            for i:=1 to no_p do
               maxval(Ap[i].x,Ap[i].y);
   end;
   if minx=1e9 then
   begin
      minx:=0; miny:=0;
      maxx:=1000; maxy:=1000;
   end;


   Data.SetMaxlimits(minx,maxx,miny,maxy);
   Screen.SetMaxlimits(minx,maxx,miny,maxy);
end;





end.
