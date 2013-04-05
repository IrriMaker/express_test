unit obj_insp_unt;

interface
uses
  graphics,
  System.SysUtils, System.Types, System.UITypes, System.TypInfo, System.Classes, System.Variants,
  //FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Objects, FMX.ListBox,
  //base_point_unt, node_unt,
  Winapi.Windows, Winapi.Messages,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxButtonEdit,  cxCheckBox, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu,
  //main_unt,shape_unt, plot_unt,
  cxColorComboBox, cxSpinEdit, cxDropDownEdit, dataunt,
  ShapeUnt, CircleUnt, LineUnt,
  layers_unt, layer_unt;


 type

   // Define a Node object
   MObjInsp = object
      procedure Setup;
      procedure Build;
      procedure Load;   //(ss : array of ShapeC);
      procedure AddRow(var ACat: TcxCategoryRow; var AEditor : TcxEditorRow; _type : string;
      row_caption, cat_caption : string; _class : tcxcustomeditpropertiesclass);

      procedure Change(props: TcxCustomEditorRowProperties);
      function getClass(name : string):tcxcustomeditpropertiesclass;
      procedure constructClass(name : string; props : TcxComboBoxProperties);
      procedure Clear;
      public
      _ss : array of ShapeC;
   type

   _element = record
      name : string;
   end;

  _property = record
      name : string;
      category : string;
      show : boolean;
      list : array[0..14] of _element;
   end;

   var
   // property category element array
   pce : array[0..14] of _property;

const
    //pce[0].list[0].list[0].
    properties : array[0..14] of string  =
    (
       // Basic
      'Id',

      //Specific
      'Length', 'Angle',
      'Radius','Circumferance',

      //Cad
      'Pen Width', 'Pen Color', 'Layer',

      //Dtm
      'X', 'Y', 'Z',

      //Irrigation
      'Pressure', 'Flow',
      'Pressure_', 'Flow_'
    ) ;

end;

var ObjInsp : MObjInsp;

implementation

uses main;

procedure MObjInsp.Clear;
var
  basic_info, cad_info, dtm_info, myCat: TcxCategoryRow;
  myRow : TcxEditorRow;
begin
   mainform.main_oi.ClearRows;
end;

procedure MObjInsp.Change(props: TcxCustomEditorRowProperties);
var s : integer;
    value : double;
    caption : string;
begin

//   value := props.values[0];
   caption := props.Caption;

   for s := 0 to length(_ss) - 2 do
   begin
      _ss[s].draw(-1);
      _ss[s].set_property_value(caption, props);
      _ss[s].draw(0);
   end;


   //PlotObj.MakePlot;
   //Dbase.draw;

end;

procedure MObjInsp.AddRow(var ACat: TcxCategoryRow; var AEditor : TcxEditorRow; _type : string;
                              row_caption, cat_caption : string; _class : tcxcustomeditpropertiesclass);
var cn : string;
    i : integer;
begin

   if _type = 'cat' then
   begin
      ACat := mainform.main_oi.Add( TcxCategoryRow ) as TcxCategoryRow;
      ACat.Properties.Caption := cat_caption;
   end;

   if _type = 'editor' then
   begin
      AEditor := mainform.main_oi.AddChild(ACat, TcxEditorRow ) as TcxEditorRow;
      AEditor.Properties.Caption := row_caption;
      AEditor.Properties.EditPropertiesClass := _class;
      AEditor.Properties.EditProperties.ImmediatePost := true;

      if row_caption = 'Layer' then
      begin
         for i := 1 to Layers.total do
         begin
            TcxComboboxProperties(AEditor.Properties.EditProperties).Items.Add(Layers.list[i].name);
         end;
      end;

      // Use Category to distinguish between Actual and Designed
      //if (cat_caption = 'Actual') or (cat_caption = 'Designed') then row_caption := cat_caption +'_'+ row_caption;

      AEditor.Properties.value := _ss[0].get_property_value(row_caption);

   end;
end;

procedure MObjInsp.constructClass(name : string; props : TcxComboBoxProperties);
var colorcombo :  TcxColorComboBoxProperties;
begin

   props.Items;

end;

procedure MObjInsp.Load;  //(ss : array of ShapeC);
var j, p, total,i : integer;
    tmp : circc;
    ts : string;
begin

     for p := 0 to length(properties) - 1 do
     begin
        pce[p].name := properties[p];
     end;

     pce[0].category := 'Basic';
     pce[0].list[0].name := 'PointC';
     pce[0].list[1].name := 'LineC';
     pce[0].list[2].name := 'CircC';
     pce[0].list[3].name := 'NodeC';

     pce[1].category := 'Specific';  //Angle
     pce[1].list[0].name := 'LineC';

     pce[2].category := 'Specific';  // Length
     pce[2].list[0].name := 'LineC';

     pce[3].category := 'Specific';
     pce[3].list[0].name := 'CircC'; // Radius

     pce[4].category := 'Specific';
     pce[4].list[0].name := 'CircC'; // Circumference

     pce[5].category := 'Cad';
     pce[5].list[0].name := 'LineC';
     pce[5].list[1].name := 'CircC';

     pce[6].category := 'Cad';
     pce[6].list[0].name := 'LineC';
     pce[6].list[1].name := 'CircC';

     pce[7].category := 'Cad';
     pce[7].list[0].name := 'LineC';
     pce[7].list[1].name := 'CircC';

     pce[8].category := 'Dtm';
     pce[8].list[0].name := 'PointC';

     pce[9].category := 'Dtm';
     pce[9].list[0].name := 'PointC';

     pce[10].category := 'Dtm';
     pce[10].list[0].name := 'PointC';

     pce[11].category := 'Designed';
     pce[11].list[0].name := 'NodeC';

     pce[12].category := 'Designed';
     pce[12].list[0].name := 'NodeC';

     pce[13].category := 'Actual';
     pce[13].list[0].name := 'NodeC';

     pce[14].category := 'Actual';
     pce[14].list[0].name := 'NodeC';

   setlength(_ss,1);
   total := 0;

   for j:=1 to Dbase.Circles.No do
   begin
      if Dbase.Circles.circle[j].selected then
      begin
         _ss[total] :=  Dbase.Circles.circle[j];
         inc(total);
         setlength(_ss,total+1);
      end;
   end;

   for j:=1 to Dbase.Lines.No do
   begin
      if Dbase.Lines.line[j].selected then
      begin
         _ss[total] :=  Dbase.Lines.line[j];
         inc(total);
         setlength(_ss,total+1);
      end;
   end;


   //------ Irrigation-------------
   with dbase.Blocks do
   begin
      for j:=0 to dbase.Blocks.No do
      begin
         for i:=1 to Block[j].nonode do
         if Block[j].node[i].selected then
         begin
            _ss[total] := Block[j].node[i];
            inc(total);
            setlength(_ss,total+1);
         end;
      end;
   end;

   if total > 0 then
   begin
      Setup;
      Build;
   end
   else
      mainform.main_oi.ClearRows;

end;

// Setup the pce array
procedure MObjInsp.Setup;
var temp : ShapeC;
j, lg, p, c, e: integer;
type_name : string;
in_array : boolean;

begin
   for p := 0 to length(properties) - 1 do
   begin
      pce[p].show := true;
   end;

   for j := 0 to length(_ss) - 1 do
   begin
      temp := _ss[j];
      if assigned(temp) then
      begin

        for p := 0 to length(pce) - 1 do
        begin

              in_array := false;
              for e := 0 to length(pce[p].list) - 1 do
              begin
                 if (temp.ClassNameIs( pce[p].list[e].name)) and (pce[p].show <> false) then
                 in_array := true;
              end;

              if in_array then
                 pce[p].show := true
              else
                 pce[p].show := false;

        end;
      end;
   end;
end;

procedure MObjInsp.Build;
var I: Integer;
  basic_info, cad_info, dtm_info, myCat: TcxCategoryRow;
  myRow : TcxEditorRow;
  p,c,e, cat_count : integer;
  cat : string;
  _class : tcxcustomeditpropertiesclass;
begin

  mainform.main_oi.ClearRows;
  cat := '';

      // Show selection heading
      myCat := mainform.main_oi.Add( TcxCategoryRow ) as TcxCategoryRow;

      if length(_ss) = 2 then
         myCat.Properties.caption := _ss[0].get_property_value('Title') + ' Info'
      else
         myCat.Properties.caption := inttostr(length(_ss) - 1) + ' items selected';

        for p := 0 to length(pce) - 1 do
        begin

              // Dont show Id on multi-select
              if (pce[p].category = 'Basic') and (length(ObjInsp._ss) <> 1) then
                 pce[p].show := false;

              if pce[p].show = true then
              begin

                 if pce[p].category <> cat then
                    addRow(myCat, myRow, 'cat', '',pce[p].category, nil);

                 _class := getClass(pce[p].name);

                 addRow(myCat, myRow, 'editor', pce[p].name, pce[p].category, _class);
                 cat := pce[p].category;

              end;
        end;

end;

function MObjInsp.getClass(name : string):tcxcustomeditpropertiesclass;
var colorcombo :  TcxColorComboBoxProperties;
 combo : TcxComboBoxProperties;
begin

  //TcxComboBoxProperties *pComboBox = (TcxComboBoxProperties*)(pViewColumn2->Properties);
  result := TcxTextEditProperties;

  if name = 'Pen Color' then
     result := TcxColorComboBoxProperties;

  //combo.Items

  if name = 'Layer' then
     result := TcxComboBoxProperties;


 {with TcxComboBoxPropertiesAccess(TcxEditorRow(TcxRTTIInspector(Sender).FocusedRow).Properties.EditProperties) do

    begin

      for I := 0 to Table1.FieldCount - 1 do

        Items.Add(Table1.Fields[I].FieldName);

      OnEditValueChanged := TcxCustomEditPropertiesAccess(AProperties).OnEditValueChanged;

    end;   }



end;

end.
