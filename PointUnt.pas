unit PointUnt;

interface
uses Vcl.Graphics,system.types,system.sysUtils;

type
  GripShapeVal = (old,square,cross,dot);    //old=what ever was the previous one


  pointC = object
     y,x,z : double;
     LastGripShape : GripShapeVal;

     procedure grip(ShapeVal : GripShapeVal);    //0=last form (to erase last) 1=square 2=cross 3=dot
     procedure change(dx,dy : double; How : integer);
  end;


implementation
uses GloUnt,PlotUnt,MouseUnt,Irrvar1,UndoUnt,form2unt, obj_insp_unt,main;

//-----POINTC----------------------------------
procedure pointC.grip(ShapeVal : GripShapeVal);    //draw grip image
var b,pp : tcolor;
   ww,xcrt,ycrt : integer;
   mm : tpenMode;
   ThisShape : GripShapeVal;
begin
   pp:=kanvas.Pen.color;
   ww:=kanvas.Pen.width;
   mm:=kanvas.Pen.Mode;

   kanvas.Pen.Mode:=pmXor;
   kanvas.Pen.color:=clwhite;
   kanvas.Pen.width:=1;

   wind.world_screen(x,y,xcrt,ycrt);

   ThisShape:=ShapeVal; if ShapeVal=old then ThisShape:=LastGripShape;    //show grip in last shape if OLD is specified

   case ThisShape of
   square : begin
               kanvas.MoveTo(xcrt-3,ycrt-3);
               kanvas.lineTo(xcrt+3,ycrt-3);
               kanvas.lineTo(xcrt+3,ycrt+3);
               kanvas.lineTo(xcrt-3,ycrt+3);
               kanvas.lineTo(xcrt-3,ycrt-3);
            end;
   Dot    : begin
               kanvas.MoveTo(xcrt-2,ycrt);
               kanvas.lineTo(xcrt+2,ycrt);
               kanvas.lineTo(xcrt,ycrt+2);
               kanvas.lineTo(xcrt,ycrt-2);
            end;
   end;
   kanvas.Pen.color:=pp; kanvas.Pen.width:=ww; kanvas.Pen.Mode:=mm;

   LastGripShape:=ShapeVal;

end;

procedure PointC.Change(dx,dy : double; How : integer);  //-1=deduct 0=set 1=add
begin
   with self do
   case How of
   -1 : begin
           x:=x-dx;
           y:=y-dy;
        end;
   0 :  begin
           x:=dx;
           y:=dy;
        end;
   1 :  begin
           x:=x+dx;
           y:=y+dy;
        end;
   end;
end;

end.
