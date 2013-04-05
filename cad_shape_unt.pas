unit cad_shape_unt;

// Comment check Github

// nog iets
interface

uses shapeunt,
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
Vcl.Graphics, layer_unt;

type

CadShapeC = class(ShapeC)

  private
  // Different constructor

  published
    constructor Create( color:TColor = clblack; width:integer = 1);
    function get_oi_value(_type:string):double;

    function get_pen_color:TColor;
    function get_pen_width:double;
    function get_layer:string; Override;

  public
  // Public declarations
  pen_width : integer;
  pen_color : TColor;
  layer     : string;

end;

implementation

uses obj_insp_unt;

// Create Circle
constructor CadShapeC.Create( color:TColor; width:integer);
begin

   self.pen_width := width;
   self.pen_color := color;
   self.layer := 'Base';

   // Create a Parent Shape
   inherited Create();
   //self.active := false;

end;

function CadShapeC.get_pen_width:double;
var j : integer;
begin
   result := pen_width;
end;

function CadShapeC.get_pen_color:TColor;
var j : integer;
begin
   result := pen_color;
end;

function CadShapeC.get_layer:string;
var j : integer;
_layer : LayerC;
begin
   result := self.layer; //.get_place_by_name(layer, true);
end;

// Show shape info
function CadShapeC.get_oi_value(_type:string):double;
var
   value : double;
   _layer : LayerC;
begin

   if _type = 'Pen Width' then
      value := self.pen_width;

   if _type = 'Pen Color' then
      value := self.pen_width;

   if _type = 'Layer' then
      value := _layer.get_place_by_name(self.layer, true);;

   if length(ObjInsp._ss) = 1 then
      result := value
   else
      result := 0;

end;

end.
