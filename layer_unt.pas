unit layer_unt;

interface

uses graphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu;

type

LayerC = class

  function  _get(_id:integer; _active:boolean):LayerC;
  procedure _set(_id:integer);
 // procedure delete(); Override;
  function  get_by_name(_name:string; _active:boolean):LayerC;
  function  get_place_by_name(_name:string; _active:boolean):integer;

  procedure  delete;
  function check_delete : integer;

  published
  constructor Create(_name : string);

  public
  // Public declarations
  name : string;
  active : boolean;
  id : integer;

end;

implementation

uses layers_unt;

// Create Circle
constructor LayerC.Create(_name : string);
begin

    self.name := _name;
    self._set(-1);

end;

function LayerC.check_delete : integer;
begin


end;

procedure  LayerC.delete;
var j : integer;
layer : LayerC;
begin

   //if self.id=-1 then number:=Layers.total;

   for j:=self.id to Layers.total-1 do
      Layers.list[j]:=Layers.list[j+1];

   dec(Layers.total);

end;

// Put Circle in Circles Array
procedure LayerC._set(_id:integer);
begin
   if _id=-1 then
   begin
      inc(Layers.total);
      id:=Layers.total;
   end;
   if high(Layers.list)<_id+1 then
   begin
      setlength(Layers.list,_id+5000);
   end;
   self.id:=id;
   Layers.list[Layers.total]:=self;
end;

//Read from Layers Array
function  LayerC._get(_id:integer; _active:boolean):LayerC;
begin
    if (_active) and (Layers.list[_id].active) then
       result := Layers.list[_id]
    else if not _active then
       result := Layers.list[_id];
    //else
    //   result := nil;
end;

function  LayerC.get_by_name(_name:string; _active:boolean):LayerC;
var j : integer;
layer : LayerC;
begin

   for j:=1 to Layers.total do
   begin
      if _name = Layers.list[j].name then
      begin
         result := Layers.list[j];
         exit;
      end;
   end;

end;

function  LayerC.get_place_by_name(_name:string; _active:boolean):integer;
var j : integer;
layer : LayerC;
begin

   for j:=1 to Layers.total do
   begin
      if _name = Layers.list[j].name then
      begin
         result := j;
         exit;
      end;
   end;

end;

end.
