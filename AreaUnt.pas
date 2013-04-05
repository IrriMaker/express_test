unit AreaUnt;

interface

uses ShapeUnt, Vcl.Graphics,system.types,system.sysUtils, PointUnt;

type
  AreaC = class (shapeC)
  public
     Ap : array of PointC;
     No_p : integer;     //number of nodes on this area
  published
     constructor Create(x1:double;y1:double;z1:double;x2:double;y2:double;z2:double;color:TColor = clblack; width:integer=1);
     procedure AddPoint(x,y : double);
     procedure Limits(var x1,y1,x2,y2 : double);   //return the left,top and right bottom limits - to zoom to area
  end;

implementation

uses dataUnt;

//-------------AREA-------------
constructor Areac.Create(x1:double;y1:double;z1:double;x2:double;y2:double;z2:double;color:TColor = clblack; width:integer=1);
begin
   setlength(Self.Ap,3);
   self.ap[1].x:=x1;
   self.ap[1].y:=y1;
   self.ap[2].x:=x2;
   self.ap[2].y:=y2;
   self.pen:=color;
   self.width:=width;
   self.selected:=false;
   self.No_p:=2;
end;

procedure Areac.AddPoint(x,y : double);
begin
   inc(Self.No_p);
   setlength(Self.Ap,Self.No_p+1);
  { if Self.No_p>1 then
      if gelyk(x,self.ap[Self.No_p-1].x) and
         gelyk(y,self.ap[Self.No_p-1].y) then
         begin
            x:=x+1;
            y:=y+1;
         end;}

   self.ap[Self.No_p].x:=x;
   self.ap[Self.No_p].y:=y;
end;

procedure AreaC.Limits(var x1,y1,x2,y2 : double);
var j : integer;
begin
   x1:=1e12; y1:=1e12;
   x2:=-1e12; y2:=-1e12;
   for j:=1 to No_p do
   begin
      if ap[j].x<x1 then x1:=ap[j].x;
      if ap[j].y<y1 then y1:=ap[j].y;
      if ap[j].x>x2 then x2:=ap[j].x;
      if ap[j].y>y2 then y2:=ap[j].y;
   end;
end;

end.
