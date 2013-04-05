unit CircleUnt;

interface

uses ShapeUnt, Vcl.Graphics,system.types,system.sysUtils, PointUnt,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu, cad_shape_unt,
  form2unt;

type

  circC = class(CadShapeC)
  public
     p1     : PointC;
     Radius : double;
     StartA : double;     //start Angle
     EndA   : double;     //End angle
     Inode  : boolean;    //true if circle is base shape of an irrigation node
  published
     constructor Create(x1,y1,z1,r1:double;color:TColor = clblack; width:integer=1; StartA:double=0; EndA:double=360);

     function get_property_value(_type:string):string;  Override;
     procedure set_property_value(_property : string; _value : TcxCustomEditorRowProperties);  Override;

     function get_circumferance:double;

     procedure set_radius(_value:double);
     procedure set_circumferance(_value:double);

  end;

implementation

constructor Circc.Create(x1,y1,z1,r1:double;color:TColor = clblack; width:integer=1; StartA:double=0; EndA:double=360);
begin
   self.p1.x:=x1;
   self.p1.y:=y1;
   self.radius:=r1;
   self.pen:=color;
   self.width:=width;
   self.selected:=false;
   self.layer := 'rooi lyne';
   // Create a Parent Shape
   inherited Create;

end;


// Show circle info
function Circc.get_property_value(_type:string):string;
var value : string;
begin

   if _type = 'Title' then
      value := 'Circle';

   if _type = 'Radius' then
      value := rtostr(radius,10,2);

   if _type = 'Circumferance' then
      value := rtostr(get_circumferance,10,2);

   if _type = 'Pen Width' then
      value := rtostr(self.width,10,2); // get_pen_width;

   if _type = 'Pen Color' then
      value := inttostr(self.pen); // get_pen_color;

   if _type = 'Layer' then
      value := layer;

   result := value;

end;

// Change circle's property value
procedure Circc.set_property_value(_property : string; _value : TcxCustomEditorRowProperties);
begin

   if _property = 'Radius' then
      set_radius(_value.values[0]);

   if _property = 'Circumferance' then
      set_circumferance(_value.values[0]);

   if _property = 'Pen Width' then
      width := _value.values[0];

   if _property = 'Pen Color' then
      pen := _value.values[0];

   if _property = 'Layer' then
      layer := _value.values[0];

end;

// Set Radius
procedure CircC.set_radius(_value:double);
begin
   self.radius := _value;
end;

// Set Circumferance
procedure CircC.set_circumferance(_value:double);
begin
   //result := 3.14 * (2 * self.radius);
   self.radius := _value / 3.14 / 2;
end;

// Get Circumferance
function CircC.get_circumferance:double;
begin
   result := 3.14 * (2 * radius);
end;

end.
