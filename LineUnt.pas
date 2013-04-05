unit LineUnt;

interface

uses ShapeUnt, Vcl.Graphics,system.types,system.sysUtils, PointUnt,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu, cad_shape_unt;

type

  lineC = class (CadShapeC)
  public
     Lp : Array of PointC;
     No_p : integer;
  published
     constructor Create(x1:double;y1:double;z1:double;x2:double;y2:double;z2:double;color:TColor = clblack; width:integer=1);
     procedure ParallelCoords(Mx,My : double; var Pi1,Pi2 : Pointc; var Distance : double);

     function get_property_value(_type:string):string;  Override;
     procedure set_property_value(_property : string; _value : TcxCustomEditorRowProperties);  Override;

     function get_length:double;
     function get_angle:double;

     procedure set_angle(_value : double);
     procedure set_length(_value:double);

  end;

implementation
uses GloUnt,PlotUnt,MouseUnt,Main,Irrvar1,UndoUnt,form2unt, obj_insp_unt, dataunt;

//----------LINES------------------------
constructor Linec.Create(x1:double;y1:double;z1:double;x2:double;y2:double;z2:double;color:TColor = clblack; width:integer=1);
begin
   setlength(Lp,3);
   self.Lp[1].x:=x1;
   self.Lp[1].y:=y1;
   self.Lp[2].x:=x2;
   self.Lp[2].y:=y2;
   self.pen:=color;
   self.width:=width;
   self.selected:=false;
   self.No_p:=2;
   self.layer := 'rooi lyne';
   // Create a Parent Shape
   inherited Create;

end;

procedure Linec.ParallelCoords(Mx,My : double; var Pi1,Pi2 : Pointc; var Distance : double);
var Dist,Dir,DistI,DirI,Xp,Yp : double;
begin
   with Self do
   begin
      vrb(Lp[1].x,Lp[1].y,Lp[2].x,Lp[2].y,Dist,Dir);
      intersek(Lp[1].x,Lp[1].y,Mx,My,Dir,Dir+90,Xp,Yp);
      vrb(Xp,Yp,Mx,My,DistI,DirI);
      Pol(Lp[1].x,Lp[1].y,DistI,DirI,Pi1.x,Pi1.y);
      Pol(Lp[2].x,Lp[2].y,DistI,DirI,Pi2.x,Pi2.y);
      Distance:=DistI;
   end;
end;


// Show line info
function LineC.get_property_value(_type:string):string;
var value : string;
begin

   if _type = 'Title' then
      value := 'Line';

   if _type = 'Angle' then
      value := rtostr(get_angle, 10,2);

   if _type = 'Length' then
      value := rtostr(get_length, 10,2);


   if _type = 'Pen Width' then
      value := rtostr(self.width, 10,2); // get_pen_width;

   if _type = 'Pen Color' then
      value := inttostr(self.pen); // get_pen_color;

   if _type = 'Layer' then
      value :=  layer;

   result := value;

end;

// Change line's property value
procedure LineC.set_property_value(_property : string; _value : TcxCustomEditorRowProperties);
begin

   if _property = 'Angle' then
      set_angle(_value.values[0]);

   if _property = 'Length' then
      set_length(_value.values[0]);

   if _property = 'Pen Width' then
      width := _value.values[0];

   if _property = 'Pen Color' then
      pen := _value.values[0];

   if _property = 'Layer' then
      layer := _value.values[0];

end;

// Set Angle
procedure LineC.set_angle(_value:double);
var new_x, new_y, angle, length, middle_x, middle_y : double;
    next, node : integer;
    CurAngle : double;
begin
   length  :=self.get_length;
   CurAngle:=self.Get_Angle;
 (*  node := Mouse.parentPoint;

   // middle point of line
   if node < 0 then
   begin
      node := abs(node);
      next := node + 1;

      middle_x := (self.LP[node].x+self.LP[next].x)/2;
      middle_y := (self.LP[node].y+self.LP[next].y)/2;

      {
      _value := swap_angle(_value);
      pol(middle_x,middle_y, length/2, _value  ,new_x, new_y );
      self.LP[node].x := new_x;
      self.LP[node].y := new_y;

      _value := swap_angle(_value);
      pol(middle_x,middle_y, length/2, _value  ,new_x, new_y );
      self.LP[next].x := new_x;
      self.LP[next].y := new_y;
      exit;      }
   end
   else
   begin
      middle_x := self.LP[node].x;
      middle_y := self.LP[node].y;
   end;       *)

   //Dbase.Rotate(middle_x,middle_y,_value-CurAngle,false);

   middle_x :=Mouse.ParentCoord.x;             //These are already the last shape anchor point
   middle_y :=Mouse.ParentCoord.y;             //just rotate around that
   Self.Rotate(middle_x,middle_y,_value-CurAngle); //To end with fixed angle, send to Rotate the difference.

   {pol(self.LP[node].x,self.LP[node].y, length, _value  ,new_x, new_y );
   self.LP[next].x := new_x;
   self.LP[next].y := new_y;  }

end;

// Set Length
procedure LineC.set_length(_value:double);
var new_x, new_y, angle, middle_x, middle_y : double;
next, node : integer;
begin

   {angle := self.get_angle;
   node := MouseObj.drag_node.id;

   // middle point of line
   if node = -1 then
   begin
      node := 0;
      next := 1;
      middle_x := (self._points[node].x+self._points[next].x)/2;
      middle_y := (self._points[node].y+self._points[next].y)/2;

      pol(middle_x,middle_y, _value/2, angle  ,new_x, new_y );
      self._points[node].x := new_x;
      self._points[node].y := new_y;

      angle := swap_angle(angle);
      pol(middle_x,middle_y, _value/2, angle  ,new_x, new_y );
      self._points[next].x := new_x;
      self._points[next].y := new_y;
      exit;
   end;

   // edge of line
   next := 1;
   if node = 1 then
   begin
      next := 0;
      angle := swap_angle(angle);
   end;

   pol(self._points[node].x,self._points[node].y, _value, angle  ,new_x, new_y );
   self._points[next].x := new_x;
   self._points[next].y := new_y; }

end;

// Get Length
function LineC.get_length:double;
var i : integer;
afst_line, rigt_line, total_afst : double;
begin

   total_afst := 0;

   for i:=1 to high(self.LP)-1 do
   begin
      // Get length and direction of first segment
      vrb(self.LP[i].x,self.LP[i].y,self.LP[i+1].x,self.LP[i+1].y,afst_line,rigt_line);
      total_afst := total_afst + afst_line;
   end;

   result := total_afst;

end;

// Get Angle
function LineC.get_angle:double;
var last : integer;
    afst_line, rigt_line, total_afst : double;
    Node : integer;
begin
   node := abs(Mouse.parentPoint);      //selfde as by set angle

   if node=length(self.LP)-1 then node:=node-1;    //if last node, then use last segment
   vrb(self.LP[node].x,self.LP[node].y,self.LP[Node+1].x,self.LP[Node+1].y,afst_line,rigt_line);

{   last := length(self.LP);
   // Get length and direction of first segment
   vrb(self.LP[1].x,self.LP[1].y,self.LP[last-1].x,self.LP[last-1].y,afst_line,rigt_line)}
   result := rigt_line;

end;

end.
