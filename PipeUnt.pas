unit PipeUnt;

interface

uses NodeUnt,graphics,shapeUnt;

type

   PipeC=class(ShapeC)
   public
      n1,n2 : NodeC;
      Num1,Num2 : integer;  //node index numbers. Needed when saving data
   End;

implementation

uses plotunt,glount;

end.

