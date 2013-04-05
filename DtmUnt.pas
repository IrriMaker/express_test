unit DtmUnt;

interface

uses ShapeUnt, PointUnt, GloUnt, Vcl.Graphics,system.types,system.sysUtils;

type

  dhp = array[0..6] of integer;

  dtmP = class (shapeC)
  public
     Code,Tag : str10;
     xyz      : PointC;
  end;

  dtmC = class (shapeC)
     p1 : DtmP;
     constructor Create(code,tag : str10; x1:double;y1:double;z1:double; color:TColor = clred);
  end;

  triC = class (shapeC)
  public
     dh : dhp;
     constructor Create(p0,p1,p2,p3,p4,p5,p6 : integer);
  end;
implementation

constructor DtmC.Create(code,tag : str10; x1:double;y1:double;z1:double; color:TColor = clred);
begin
   Self.p1:=Dtmp.Create;
   self.p1.Code:=code;
   self.p1.Tag:=tag;
   self.p1.xyz.x:=x1;
   self.p1.xyz.y:=y1;
   self.p1.xyz.z:=z1;
   self.pen:=color;
   self.width:=1;
   self.selected:=false;
end;

constructor TriC.Create(p0,p1,p2,p3,p4,p5,p6 : integer);
begin
   self.dh[0]:=p0; self.dh[1]:=p1; self.dh[2]:=p2; self.dh[3]:=p3;
   self.dh[4]:=p4; self.dh[5]:=p5; self.dh[6]:=p6;
   self.pen:=clgreen;
   self.width:=1;
end;

end.
