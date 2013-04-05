unit ImageUnt;

interface

uses ShapeUnt, PointUnt;

type
  ImageC = class(shapeC)
  public
     p0,p1,p2 : PointC;
     Name : ShortString;
  published
     constructor Create(x1,y1,x2,y2:double; Name : shortstring);
  end;

implementation

constructor ImageC.Create(x1,y1,x2,y2:double; Name : Shortstring);
begin
   self.p1.x:=x1;
   self.p1.y:=y1;
   self.p2.x:=x2;
   self.p2.y:=y2;
   self.p0.x:=(x1+x2)/2;
   self.p0.y:=(y1+y2)/2;
   self.Name:=Name;
end;

end.
