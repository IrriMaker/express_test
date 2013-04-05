unit structure_unt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu,
  dataunt;

 type

   // Define a Node object
   MStructure = object

      procedure InitData;
      procedure ReloadData;
      procedure ProcessChildren(N: TcxTreeListNode; Recurse: Boolean);
      procedure CheckChanged(Sender: TcxCustomTreeList;
                ANode: TcxTreeListNode; AState: TcxCheckBoxState);
   end;

var Structure : MStructure;

implementation

uses Main, nodeunt;

function AddNode(AParent: TcxTreeListNode; const AValues: Array of Variant; AImageIndex: Integer; enabled : boolean; checked : boolean): TcxTreeListNode;
begin
   Result := mainform.tlStructure.AddChild(AParent);
   Result.AssignValues(AValues);
   Result.CheckGroupType := ncgCheckGroup;
   //Result.Imageindex := AImageIndex;
   Result.CheckGroupType := ncgCheckGroup;
   Result.Expanded := true;
   Result.Expand(true);

   Result.Enabled := enabled;
   Result.Checked := checked;
end;

procedure MStructure.CheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
var s : string;
j,n : integer;
begin

  // if ANode = mainform.tlStructure.FocusedNode then
  // begin


   if not busy_create then
   begin
      s := ANode.Texts[0];

      {if Pos('Cad', s) > 0 then
         Dbase.cad_active := AState = cbsChecked;  }

      if Pos('Lines', s) > 0 then
      begin
         Dbase.Lines.active := AState = cbsChecked;
         for j:=1 to dbase.Lines.no do
            dbase.lines.line[j].switch_active(Dbase.Lines.active);
      end;

      if Pos('Circles', s) > 0 then
      begin
         Dbase.Circles.active := AState = cbsChecked;//true
         for j:=1 to dbase.circles.no do
            dbase.circles.circle[j].switch_active(Dbase.circles.active);
      end;

      if Pos('Sprinklers', s) > 0 then
      begin
         Dbase.Blocks.display_nodes[1] := AState = cbsChecked;//true

         for j:=0 to Dbase.Blocks.No do
            for n:=1 to Dbase.Blocks.Block[j].nonode do
            with Dbase.Blocks.Block[j].node[n] do
               switch_active(Dbase.Blocks.display_nodes[1]);

      end;

      {if Pos('Points', s) > 0 then
      begin

         if AState = cbsChecked then
            Dbase.Points.show
         else
            Dbase.Points.hide;
      end; }

         //Dbase.draw;
   end;


   //end;


end;

procedure MStructure.InitData;
var
  ARootNode, ATempNode, AChildNode, ASalesMarketingNode: TcxTreeListNode;
  ANode: TcxTreeListNode;
  AValues: Array of Variant;
  node, childnode : TcxTreeListNode;
  i, line_total, points_total : integer;
  sTitle: String;
  grp: TcxTreeListNode;
begin

  mainform.tlStructure.Clear;

  ARootNode  := AddNode(nil, ['Dtm'], 8, true, true);
  AChildNode := AddNode(ARootNode, ['Points'], 1, true, true);
  AChildNode := AddNode(ARootNode, ['Triangles'], 1, false, true);
  AChildNode := AddNode(ARootNode, ['Contours'], 1, false, true);

  ARootNode  := AddNode(nil, ['Cad'], 8, true, true);
  AChildNode := AddNode(ARootNode, ['Lines'], 1, true, true);
  AChildNode := AddNode(ARootNode, ['Circles'], 1, true, true);
  AChildNode := AddNode(ARootNode, ['Patterns'], 1, false, true);

  ARootNode  := AddNode(nil, ['Irrigation'], 8, true, true);

  ATempNode := AddNode(ARootNode, ['Pipes'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Mainline'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Laterals'], 1, true, true);

  ATempNode := AddNode(ARootNode, ['Emitters'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Pumps'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Sprinklers'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Valves'], 1, true, true);
  AChildNode := AddNode(ATempNode, ['Fittings'], 1, true, true);
  //AChildNode := AddNode(ATempNode, ['Regulators'], 1, true, true);
  //AChildNode := AddNode(ATempNode, ['Boosters'], 1, true, true);

  mainform.tlStructure.FullCollapse;
  mainform.tlStructure.Root[0].Expanded := True;
  mainform.tlStructure.Root[1].Expanded := True;
  mainform.tlStructure.Root[2].Expanded := True;

  ATempNode := mainform.tlStructure.Root[2].getFirstChild;
  ATempNode.Expanded := True;
  ATempNode.getNextSibling.Expanded := True;

end;

procedure MStructure.ProcessChildren(N: TcxTreeListNode; Recurse: Boolean);
var I: Integer;
 val : array of variant;
 s : string;
begin

  s := N.Texts[0];

  {if Pos('Dtm', s) > 0 then
      N.Texts[0] := 'Dtm ' + '('+inttostr(Dtm.getTotal)+')';
  if Pos('Points', s) > 0 then
      N.Texts[0] := 'Points ' + '('+inttostr(Shapes.Points.total)+')';
  }

  {if Pos('Triangles', s) > 0 then
      N.Texts[0] := 'Triangles ' + '('+inttostr(Points.total)+')';
  if Pos('Contours', s) > 0 then
      N.Texts[0] := 'Contours ' + '('+inttostr(Points.total)+')';   }


  {if Pos('Cad', s) > 0 then
      N.Texts[0] := 'Cad ' + '('+inttostr(Cad.getTotal)+')';
      }
  if Pos('Lines', s) > 0 then
      N.Texts[0] := 'Lines ' + '('+inttostr(dbase.Lines.no)+')';
  if Pos('Circles', s) > 0 then
      N.Texts[0] := 'Circles ' + '('+inttostr(dbase.Circles.no)+')';

  if Pos('Sprinklers', s) > 0 then
      N.Texts[0] := 'Sprinklers ' + '('+inttostr(dbase.Blocks.CountAllNodeType(sprinkler))+')';

  {if Pos('Patterns', s) > 0 then
      N.Texts[0] := 'Patterns ' + '('+inttostr(Circles.total)+')';

  if Pos('Irrigation', s) > 0 then
      N.Texts[0] := 'Irrigation ' + '('+inttostr(Irrigation.getTotal)+')';
  if Pos('Pipes', s) > 0 then
      N.Texts[0] := 'Pipes ' + '('+inttostr(Circles.total)+')';
  if Pos('Emitters', s) > 0 then
      N.Texts[0] := 'Emitters ' + '('+inttostr(Circles.total)+')';    }


  for I := 0 to N.Count - 1 do
  begin
    // ... To do something
    if Recurse and N.HasChildren then
      ProcessChildren(N[I], Recurse);
  end;

end;

procedure MStructure.ReloadData;
var I: Integer;
begin

  with mainform.tlStructure do
    for I := 0 to Count - 1 do
    begin
      // ... To do something
      ProcessChildren(Items[I], True);
    end;

end;

end.
