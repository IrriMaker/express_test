unit layers_unt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu,
  layer_unt, dataunt;

 type

   MLayers = object

      procedure InitData;
      procedure ReloadData;
      procedure ProcessChildren(N: TcxTreeListNode; Recurse: Boolean);
      procedure CheckChanged(Sender: TcxCustomTreeList;
                ANode: TcxTreeListNode; AState: TcxCheckBoxState);
      public
      { Public declarations }
         list : array of LayerC;
         total : integer;
         selected : LayerC;
   end;

var Layers : MLayers;

implementation

uses Main;

function AddNode(AParent: TcxTreeListNode; const AValues: Array of Variant; AImageIndex: Integer; enabled : boolean; checked : boolean): TcxTreeListNode;
begin
   Result := mainform.tlLayers.AddChild(AParent);
   Result.AssignValues(AValues);
   Result.CheckGroupType := ncgCheckGroup;
   //Result.Imageindex := AImageIndex;
   Result.CheckGroupType := ncgCheckGroup;
   Result.Expanded := true;
   Result.Expand(true);

   Result.Enabled := enabled;
   Result.Checked := checked;
end;


procedure MLayers.CheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
var s : string;
   sTemp :string;
   nTemp : integer;
   layer : LayerC;
   layer_n, j : integer;

begin

   layer_n := 0;
   {if not busy_create then
   begin  }

      if (ANode.Texts[0] <> '') and (ANode.Texts[0] <> 'Layers') then
      begin
        layer_n := layer.get_place_by_name(ANode.Texts[0], true);
        layer := list[layer_n];
        layer.active := AState = Cbschecked;

         for j:=1 to dbase.Lines.no do
            dbase.lines.line[j].switch_active(Dbase.Lines.active);

         for j:=1 to dbase.circles.no do
            dbase.circles.circle[j].switch_active(Dbase.circles.active);

      end;

end;

procedure MLayers.InitData;
var
  ARootNode, AChildNode, ASalesMarketingNode: TcxTreeListNode;
  ANode: TcxTreeListNode;
  AValues: Array of Variant;
  node, childnode : TcxTreeListNode;
  i, line_total, points_total : integer;
  sTitle: String;
  grp: TcxTreeListNode;
begin

  mainform.tlLayers.Clear;

  //ARootNode  := AddNode(nil, ['Layers'], 8, true, true);

  for i := 1 to Layers.total do
  begin
     AChildNode := AddNode(nil, [Layers.list[i].name], 1, true, true);
  end;

  mainform.tlLayers.FullCollapse;
  mainform.tlLayers.Root[0].Expanded := True;

end;

procedure MLayers.ProcessChildren(N: TcxTreeListNode; Recurse: Boolean);
var I: Integer;
 val : array of variant;
 s : string;
begin

  s := N.Texts[0];

  for I := 0 to N.Count - 1 do
  begin
    // ... To do something
    if Recurse and N.HasChildren then
      ProcessChildren(N[I], Recurse);
  end;

end;

procedure MLayers.ReloadData;
var I: Integer;
begin

  with mainform.tlLayers do
    for I := 0 to Count - 1 do
    begin
      // ... To do something
      ProcessChildren(Items[I], True);
    end;

end;

end.
