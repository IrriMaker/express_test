unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  dxBar, cxClasses, Vcl.Menus, cxPC, dxDockControl, dxDockPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGroupBox, cxButtons, cxListBox, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, Vcl.ComCtrls, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid,Undount, cxVGrid, LineUnt, CircleUnt, PointUnt, ImageUnt,
  dxStatusBar, cxTextEdit, Vcl.ToolWin, cxMaskEdit, cxSpinEdit,
  dxRibbonMiniToolbar;

type


  TMainForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Snap: TCheckBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    BarManager: TdxBarManager;
    MoveSpeed: TdxBarButton;
    SelectSpeed: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    LineAdd: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    Memo1: TMemo;
    dxBarButton2: TdxBarButton;
    BarManagerBar1: TdxBar;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    DataBase1: TMenuItem;
    dxBarButton5: TdxBarButton;
    highLight: TCheckBox;
    Input: TEdit;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    SelectAll1: TMenuItem;
    DeSelect1: TMenuItem;
    BarManagerBar2: TdxBar;
    UndoButton: TdxBarButton;
    Save1: TMenuItem;
    LoadDial: TOpenDialog;
    SaveDial: TSaveDialog;
    Open1: TMenuItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    OpenTotfile1: TMenuItem;
    New1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Redo: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Dtm1: TMenuItem;
    DisplayLabel: TLabel;
    N3: TMenuItem;
    CreateTriangles1: TMenuItem;
    dxDockPanel1: TdxDockPanel;
    main_oi: TcxVerticalGrid;
    shape_info_heading: TcxCategoryRow;
    shape_info_row1: TcxEditorRow;
    shape_info_row2: TcxEditorRow;
    shape_info_row3: TcxEditorRow;
    main_oiCategoryRow1: TcxCategoryRow;
    shape_info_row4: TcxEditorRow;
    shape_info_row5: TcxEditorRow;
    shape_info_row6: TcxEditorRow;
    shape_info_row7: TcxEditorRow;
    dtm: TCheckBox;
    main_panel_site: TdxDockSite;
    main_panel: TdxDockPanel;
    ScrollBox1: TScrollBox;
    status_bar: TdxStatusBar;
    pbox: TImage;
    dxDockSite1: TdxDockSite;
    tool_panel_site: TdxDockSite;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    tool_dock_panel: TdxDockPanel;
    tlStructure: TcxTreeList;
    tlPlanetsColumn1: TcxTreeListColumn;
    dxDockPanel2: TdxDockPanel;
    tlLayers: TcxTreeList;
    cxTreeList1Column1: TcxTreeListColumn;
    N4: TMenuItem;
    Close1: TMenuItem;
    BarManagerBar3: TdxBar;
    dxBarButton10: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ToolBar1: TToolBar;
    Button2: TButton;
    Button3: TButton;
    dxBarButton11: TdxBarButton;
    dxDockSite2: TdxDockSite;
    dxDockPanel4: TdxDockPanel;
    ToolBar2: TToolBar;
    Button1: TButton;
    Button4: TButton;
    tlBlocks: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxDockSite3: TdxDockSite;
    dxDockPanel5: TdxDockPanel;
    dxLayoutDockSite5: TdxLayoutDockSite;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    nodetree: TTreeView;
    TabSheet2: TTabSheet;
    PipeTree: TTreeView;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    ToolBar3: TToolBar;
    dxLayoutDockSite2: TdxLayoutDockSite;
    Button5: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure PBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure PBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PBox1Paint(Sender: TObject);
    procedure SelectSpeedClick(Sender: TObject);
    procedure DataBase1Click(Sender: TObject);
    procedure nodetreeClick(Sender: TObject);
    procedure PipeTreeClick(Sender: TObject);
    procedure PpanelExit(Sender: TObject);
    procedure SnapClick(Sender: TObject);
    procedure InputKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Delete1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure New1Click(Sender: TObject);
    procedure pboxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Dtm1Click(Sender: TObject);
    procedure CreateTriangles1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure main_oiEdited(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
    procedure main_oiEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
    procedure Close1Click(Sender: TObject);
    procedure tlStructureNodeCheckChanged(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AState: TcxCheckBoxState);
    procedure tlLayersNodeCheckChanged(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AState: TcxCheckBoxState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tlLayersCanSelectNode(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure ablockEditing(Sender: TObject; var CanEdit: Boolean);
    procedure ablockClick(Sender: TObject);
    procedure tlBlocksNodeCheckChanged(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AState: TcxCheckBoxState);
    procedure tlBlocksClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure tlBlocksDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Busy : boolean;  //prevent double moves
     tx,ty : integer;
  end;

  //keytip   1st character sets it as an active element command (means only one can be down)
  //         2nd character sets if the command uses snap


var
  MainForm: TMainForm;
  busy_create : boolean;
  Paps_Start : boolean;

implementation

{$R *.dfm}

uses GloUnt,DataUnt,PlotUnt,MouseUnt,IrrDripper,Irrnodedbase,irrpipedbase,Obj_insp_Unt,
     inifileunt,irrvar0,irrvar1,ActionUnt,form2unt, DtmUnt, TriUnt, DtmEditUnt,
     structure_unt, layers_unt, layer_unt,blockunt, blocks_tree_unt;

procedure MemoLines;
var j : integer;
    s : string;
begin
   with Mainform do
   begin
      memo1.Clear;
      for j:=1 to Dbase.Lines.No do
      with Dbase.Lines.line[j] do
      begin
         s:=r_s(Lp[1].x,5,0)+r_s(Lp[1].y,5,0)+r_s(Lp[2].x,5,0)+r_s(Lp[2].y,5,0);
         memo1.Lines.Add(s);
      end;
   end;
end;

procedure TMainForm.SelectAll1Click(Sender: TObject);
begin
   Dbase.Select((sender as tcomponent).Tag=1,false);
end;

procedure TMainForm.SelectSpeedClick(Sender: TObject);
var MaySnap : boolean;
begin
   Actions.Stop(false);
   with Sender as TdxBarButton do
   begin
      MaySnap:=false;
      if (length(keytip)>1) and (copy(keytip,2,1)='1') then MaySnap:=true;
      Mouse.Clean(down,Tag_ActionType(tag),MaySnap,2);     //keytip=2 means snap may be active

      Mouse.SnapDtype:=1;     //destination snap on AnyPoint

      if tag=102 then
      begin
         Mouse.SnapOk:=1;     //source snap on
         Mouse.SnapSType:=4;  //only end and mid point
      end;
   end;
end;

procedure TMainForm.SnapClick(Sender: TObject);
begin
   if mouse.Snapped then
   begin
      Mouse.Snap.grip(old);
      Mouse.Snapped:=false;
   end;
   Mouse.SnapDType:=1;     //anypoint
end;

procedure TMainForm.tlBlocksClick(Sender: TObject);
begin
   Dbase.Blocks.Blok:=strtoint(tlBlocks.FocusedNode.Texts[0]);
   with Dbase.Blocks do Block[blok].Flash;
end;

procedure TMainForm.tlBlocksDblClick(Sender: TObject);
begin
   with Dbase.Blocks do Block[blok].Zoom;
end;

procedure TMainForm.tlBlocksNodeCheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
begin
   BlocksTree.CheckChanged(Sender,ANode,AState);
end;

procedure TMainForm.tlLayersCanSelectNode(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; var Allow: Boolean);
var layer_name : string;
    layer : LayerC;
begin
   Layers.selected := layer.get_by_name(ANode.Texts[0], true);
end;

procedure TMainForm.tlLayersNodeCheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
begin
   Layers.CheckChanged(Sender,ANode,AState);
end;

procedure TMainForm.tlStructureNodeCheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
begin
   Structure.CheckChanged(Sender,ANode,AState);
end;

procedure TMainForm.UndoButtonClick(Sender: TObject);
begin
   case (sender as Tcomponent).Tag of
   1 : Undo.Undo;
   2 : Undo.Redo;
   end;
end;

Procedure FillTrees;
begin
   IrrNodeForm.FillNodeTree(Mainform.NodeTree,0);
   IrrPipeForm.fillPipeTree(Mainform.PipeTree);
end;

// Delete Layer
procedure TMainForm.Button2Click(Sender: TObject);
var on_layer, buttonSelected : integer;
begin

   // Check how many elements on layer
   on_layer := dbase.count_on_layer(Layers.selected.name);

   if on_layer > 0 then
   begin

      buttonSelected := MessageDlg('There are ' + inttostr(on_layer) + ' elemensts on this layer. Delete elements too?',mtCustom,
                              [mbYes,mbNo,mbCancel], 0);

      // Yes - Delete Elements and Layer
      if buttonSelected = 6    then
      begin
         dbase.delete_on_layer(Layers.selected.name);
         Layers.selected.delete;
      end;

      // No - Delete only Layer
      if buttonSelected = 7 then
      begin
         dbase.edit_on_layer(Layers.selected.name, 'Base');
         Layers.selected.delete;
      end;

   end
   // Empty Layer - Delete only Layer
   else Layers.selected.delete;

   // Reload Layers
   Layers.InitData;

end;

// Add Layer
procedure TMainForm.Button3Click(Sender: TObject);
var layer_n : integer;
    layer : LayerC;
    layer_name : string;
begin

   layer_name := InputBox('New Layer Name', 'Please enter a layer name.', 'New');
   LayerC.Create(layer_name);
   Layers.InitData;

end;

procedure TMainForm.Button5Click(Sender: TObject);
var MaySnap : boolean;
begin

      MaySnap:=true;
      Mouse.Clean(true,Tag_ActionType(1010),MaySnap,2);     //keytip=2 means snap may be active

      Mouse.SnapDtype:=1;     //destination snap on AnyPoint

      if tag=102 then
      begin
         Mouse.SnapOk:=1;     //source snap on
         Mouse.SnapSType:=4;  //only end and mid point
      end;

end;

procedure TMainForm.Close1Click(Sender: TObject);
begin
   Close;
end;

procedure TMainForm.CreateTriangles1Click(Sender: TObject);
begin
   Qsearch;
   TriSides.MakeSides;
   Wind.NormalLimits;
   Dbase.Draw;
end;

procedure TMainForm.DataBase1Click(Sender: TObject);
var wat : integer;
begin
 // ShowDrippers;
 // exit;

   wat:=1;
   repeat
      case wat of
      1 : wat:=ShowNodes;
      2 : wat:=ShowPipes;
      3 : wat:=ShowDrippers;
      end;
   until wat=0;
   FillTrees;
end;

procedure TMainForm.Delete1Click(Sender: TObject);
begin
   Dbase.DeleteSelected(false);
end;

procedure TMainForm.Dtm1Click(Sender: TObject);
begin
   DtmForm.ShowModal;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  { if Paps_Start then exit;
   FillTrees;

   wind.Data.SetMaxLimits(0,500,0,500);
   wind.Screen.SetMaxLimits(0,500,0,500);

   Dbase.Load(1,'data.mex');
   Structure.ReloadData;
   Wind.NormalLimits;
   Dbase.draw;}
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  dbase.Lines.active := true;
  dbase.circles.active := true;

   LayerC.Create('Base');
   busy_create := true;
   kanvas:=pbox.Canvas;

   DoubleBuffered:=true;

   Wind.CanvasLimits(Pbox.width,Pbox.height);

   CreateWAARDE10;

   //create 0 index items;
   Dbase.lines.line[0]:=lineC.Create(0,0,0,1,1,0,clred,1);
   Dbase.circles.circle[0]:=circC.Create(0,0,0,0,clyellow,1);
   Dbase.Blocks.block[0]:=blockc.Create(1,1,1,1,1,1);

   Undo.Init;
   Structure.InitData;
   Layers.InitData;
   busy_create := false;

   //----------must be in activate
{ FillTrees;

   wind.Data.SetMaxLimits(0,500,0,500);
   wind.Screen.SetMaxLimits(0,500,0,500);

   Dbase.Load(1,'data.mex');
   Structure.ReloadData;
   Wind.NormalLimits;
   Dbase.draw;}


   //==============================
 //  kanvas.Brush.Color:=clgreen;
 //  pbox.Canvas.fillrect(rect(1,1,300,300));

end;

procedure TMainForm.FormShow(Sender: TObject);
begin
   FillTrees;

   wind.Data.SetMaxLimits(0,500,0,500);
   wind.Screen.SetMaxLimits(0,500,0,500);

   Dbase.Load(1,'data.mex');
   Structure.ReloadData;
   BlocksTree.InitData;
   Wind.NormalLimits;
   Dbase.draw;
end;



procedure TMainForm.InputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then Actions.UpdateInput(Input.Text);
end;

procedure TMainForm.main_oiEdited(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
begin
   main_oi.HideEdit;

   Undo.StartGroup(2);   //start an Edit undo
   Undo.SaveSelected;    //Record all the selected element for undo
   ObjInsp.Change(ARowProperties);
end;

procedure TMainForm.main_oiEditValueChanged(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
begin
   main_oi.HideEdit;
   ObjInsp.Change(ARowProperties);
end;

procedure TMainForm.New1Click(Sender: TObject);
begin
   Dbase.DeleteSelected(true);
   Wind.NormalLimits;
end;

procedure TMainForm.nodetreeClick(Sender: TObject);
var s : string;
    tt : ttreenode;
begin
   s:=nodetree.Selected.Text;
   tt:=nodetree.Selected.Parent;
   while (tt<>nil) and (tt.Parent<>nil) do
   begin
      s:=tt.Text+' '+s;
      tt:=tt.Parent;
   end;

   label2.Caption:=s;
end;

function LoadFile(tipe : integer) : boolean;
begin
   with Mainform do
   begin
      case tipe of
      1 : begin
             LoadDial.Filter:='Express|*.Mex';
             LoadDial.DefaultExt:='mex';
          end;
      2 : begin
             LoadDial.Filter:='Model Maker tot|*.tot';
             LoadDial.DefaultExt:='tot';
          end;
      end;
      result:=LoadDial.Execute;
   end;
end;

procedure TMainForm.Save1Click(Sender: TObject);
var act : integer;
begin
   act:=(Sender as tcomponent).tag;
   case act of
   1 : if SaveDial.Execute then Dbase.Save(SaveDial.FileName);
   2 : if Loadfile(1) then Dbase.Load(1,LoadDial.FileName) else act:=0;
   3 : if LoadFile(2) then Dbase.Load(2,LoadDial.FileName) else act:=0;
   end;
   if act in [2,3] then
   begin
      TriSides.MakeSides;
      Wind.NormalLimits;
      Dbase.draw;
   end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var v,h,nou,Rot : integer;
    Home : boolean;
begin
   Rot:=0;
   h := 0;
   v := 0;
   Home:=Key=36;
   case Key of
   33: Rot:=-1;
   34: Rot:=+1;
   37, 38, 39, 40: { arrows }
      begin
         nou := 1;
         if Shift = [ssshift] then nou := 5;
         case Key of
         37: h := -1;
         39: h := 1;
         38: v := -1;   //up
         40: v := 1;
         end;
      end;
   end;
   if (Mouse.Mode=Moving) and (Mouse.clicked>0) then
   begin
      if (rot<>0) or Home then Dbase.Rotate(mouse.x,mouse.y,Rot,Home,True);    //rotate the elements that are being moved
      if (h<>0) or (v<>0) then
      begin
      //   Dbase.dxdy(v,-h);   //not working correctly, disable for now
      //   with Mouse do Move(x+v,y-h);
      end;
   end;
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
var Clean : Action_Type;
begin

   Mouse.KeyPress:=true;
   if Mouse.Busy then exit;    //busy plotting, do not do other stuff except stop plot

   if ord(key)=27 then
   begin
      Mouse.RemoveHighLight;
      if mouse.Clicked>0 then
      begin
         Undo.Undo;
         Clean:=Mouse.Mode; if Clean<>Select then Clean:=Neutral;    //neutral all except Select
         Mouse.Clean(true,Clean,false);
         exit;
      end;
      if Mouse.Mode=Neutral then
      begin
         Dbase.Select(false,false);
      end;
      Clean:=Mouse.Mode;
      if Clean<>Select then
         Clean:=Neutral                //neutral all except Select
      else
         dbase.select(false,false);    //unselect all
      Mouse.Clean(true,Clean,false);
      //if Clean=0 then
      SelectSpeed.Down:=true;          //keep Select active
      Mouse.Mode:=Select;
   end;
end;

procedure TMainForm.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
   Mouse.KeyPress:=true;
   if Mouse.Busy then exit;    //busy plotting, do not do other stuff except stop plot

   if wheelDelta>0 then
      wind.Screen.Demag(0.85)
   else
      wind.Screen.Demag(1.15);
   handled:=true;
   dbase.draw;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin

  pbox.Picture.Bitmap.Width := main_panel.Width;
  pbox.Picture.Bitmap.Height := main_panel.Height - 45;

  //pbox.Refresh;
  //pbox.AutoSize:=true;

  Wind.CanvasLimits(Pbox.width,Pbox.height);
  Dbase.Draw;
 
end;


procedure TMainForm.PBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Clean : Action_Type;
    wx,wy : double;

    function Remove_Last : boolean;
    begin
       result:=true;
       case mouse.mode of              //block area and polylines   do not delete last
       LinePoly,Area,DtmPnt,Block : result:=false;
       end;
    end;

begin
   Mouse.KeyPress:=true;
   if Mouse.Busy then exit;    //busy plotting, do not do other stuff except stop plot

   Mouse.Down:=false;

   Mouse.Cx:=x;
   Mouse.Cy:=y;

   if Shift = [ssShift,ssMiddle] then
   begin
      Wind.NormalLimits;
      Dbase.Draw;
      exit;
   end;

   if (Button = mbMiddle) then
   begin
      wind.screen_world(X,Y,wx,wy);
      wind.Screen.Center(wx,wy);
      dbase.draw;
      exit;
   end;

   if (Button = mbRight) then        //stop areas and polylines
   begin
      memo1.lines.add('Clicked '+inttostr(mouse.clicked));
      if (mouse.Clicked>0) then
      begin
         if Remove_Last then Undo.Undo;
         Clean:=Mouse.Mode; if Clean<>Select then Clean:=Neutral;    //neutral all except Select
         Mouse.Clean(true,Clean,false);
      end;
      exit;
   end;

   Mouse.Down:=true;
   Mouse.Moved:=false;

   if Mouse.Snapped then
   begin
      Mouse.Snap.grip(old);
      Mouse.Snapped:=false;
    //  Mouse.Move(Mouse.Snap.x,mouse.Snap.y);
   end;
   wind.screen_world(x,y,wx,wy);
   Mouse.x:=wX;
   Mouse.y:=wY;

   Ghost.Init(wX,wY,wX,wY,2);   //set ghost if move is going to happen with button down

   if not Mouse.Snapped then
   begin
//      Mouse.Snap.x:=wX;
 //     Mouse.Snap.y:=wY;
   end;

   Mouse.Snapped:=false;

   if Mouse.clicked=0 then
      Mouse.single:=(Shift=[ssalt]) or (Shift=[ssleft,ssalt]);  //otherwise a single is replaced by second click on move
end;

procedure TMainForm.PBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var j,a1,a2,a3 : integer;
    Mx,My  : double;
    wx,wy,Z  : double;
begin

 

   wind.screen_world(x,y,wx,wy);

   Z:=0;
   if Dtm.Checked then z:=DtmZ(wx,wy);

   //coordinates.caption:='Y '+rtostr(wy,12,1)+'  X '+rtostr(wx,12,1)+'   Z '+rtostr(Z,12,1);

   //status_bar.Panels[0].Text := 'mX: '+floattostr(x);
   //status_bar.Panels[1].Text := 'mY: '+floattostr(y);

   status_bar.Panels[2].Text := 'X: '+rtostr(wx,12,1);
   status_bar.Panels[3].Text := 'Y: '+rtostr(wy,12,1);

   Mouse.Moved:=(abs(mouse.Cx-x)>20) or (abs(mouse.Cy-y)>20);

   if mouse.down and Mouse.Moved then
   begin
      Ghost.MovePoint(wx,wy);
   end
   else
   begin
      if (Mouse.Mode=Moving) and (Mouse.Clicked>0) then     //do not show highlight during move
      //
      else Mouse.highlight(Wx,Wy,highLight.Checked);

      if not mouse.down then                           //do no snapping if mouse is not released
      if (Snap.checked and (Mouse.SnapOk=2)) or (Mouse.SnapOk=1) then
      begin
         a1:=0; a2:=0; a3:=0;
         Dbase.ClosePoint(Wx,Wy,Mx,My,a1,a2,a3);
         if Not Mouse.Snapped or Not SameXY(Mx,My,Mouse.snap.x,Mouse.snap.y) then
         with Mouse do
         begin
            if Snapped then Snap.grip(old);
            Snap.x:=Mx; Snap.y:=My;
            Snap.grip(Mouse.GripShape);
            Snapped:=true;
         end;
      end
      else
      begin
         Mouse.Snap.x:=Wx; Mouse.Snap.y:=Wy;
      end;

      if Mouse.mode=Moving then
         if Mouse.clicked=0 then exit;     //no move action yet

      actions.Move(Shift,Wx,Wy,MoveSpeed.Down);
   end;
end;

procedure TMainForm.pboxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin                                           //wx,wy
   if Ghost.Draw(true) then         //erase ghost image and see if it was used
   begin
      dbase.Select(true,true);
      ObjInsp.Load;
   end;

   if (button<>MbRight) and (button<>MbMiddle) then
      if not Mouse.Moved then Actions.Click(Shift,mouse.x,mouse.y,MoveSpeed.Down);

   Mouse.Down:=false;
   Structure.ReloadData;
end;

procedure TMainForm.PBox1Paint(Sender: TObject);
begin
   //dbase.draw;
end;


procedure TMainForm.PipeTreeClick(Sender: TObject);
begin
   //
end;

procedure TMainForm.PpanelExit(Sender: TObject);
begin
  // if mouse.Snapped then Mouse.Snap.grip;

end;

procedure TMainForm.ablockClick(Sender: TObject);
var j : integer;
begin
  // Dbase.Blocks.Blok:=Ablock.Value;
  // with Dbase.Blocks do Block[blok].Flash;
end;

procedure TMainForm.ablockEditing(Sender: TObject; var CanEdit: Boolean);
begin
   //Ablock.Value:=Dbase.Blocks.Blok;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
var j : integer;
    p1,p2 : pointc;
    rad : double;
begin
   Dbase.Lines.No:=3;

   for j:=1 to Dbase.lines.no do
   begin
      p1.y:=10+j*5; p1.x:=j*5; p1.z:=0;
      p2.y:=random(100)+j*10; p2.x:=100+j*40+random(200); p2.z:=0;

      Dbase.lines.line[j]:=lineC.Create(p1.x,p1.y,0,p2.x,p2.y,0,clred,1);
      Dbase.lines.line[j].draw(0);
   end;

   Dbase.Circles.No:=3;

   for j:=1 to Dbase.Circles.no do
   begin
      p1.y:=random(100)+j*10; p1.x:=100+j*40+random(200); rad:=50;

      Dbase.circles.circle[j]:=circC.Create(p1.x,p1.y,0,rad,clyellow,1);
      Dbase.circles.circle[j].draw(0);
   end;

   Dbase.Images.No:=1;
   Dbase.Images.Image[1]:=ImageC.Create(40,40,300,300,'negatief.bmp');
   Dbase.Images.Image[1].draw(0);

end;

end.
