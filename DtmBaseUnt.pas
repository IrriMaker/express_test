unit DtmBaseUnt;

interface

uses ShapeUnt;

type

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

end.
