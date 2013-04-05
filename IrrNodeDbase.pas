unit IrrNodeDbase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Data.DB, tzprimds, ucommon, utzcds,
  utzfds, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxTLData, cxDBTL, cxEdit, cxVGrid, cxDBVGrid, AdvObj,
  BaseGrid, AdvGrid, cxContainer, cxLabel, dxNavBarStyles, cxGroupBox,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.TabNotBk,
  Vcl.ExtDlgs, cxImage, cxDBEdit,
  glount, Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxRadioGroup, cxCheckComboBox, cxDBCheckComboBox, dxNavBarGroupItems,
  irrvar0;

type

   NodesDbObj = object
       List : array of StdNode;
       ListNo : integer;
    end;

  TIrrNodeForm = class(TForm)
    NodeBar: TdxNavBar;
    NodeBarGroup1: TdxNavBarGroup;
    NodeBarGroup2: TdxNavBarGroup;
    NodeBarItem1: TdxNavBarItem;
    NodeBarItem2: TdxNavBarItem;
    NodeBarItem3: TdxNavBarItem;
    NodeBarItem4: TdxNavBarItem;
    HeaderLabel: TcxLabel;
    NodeBarStyleItem1: TdxNavBarStyleItem;
    Panel1: TPanel;
    Add1: TcxLabel;
    edit1: TcxLabel;
    editadd: TcxTextEdit;
    editedit: TcxTextEdit;
    editdelete: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    Image7: TImage;
    NodeBarItem5: TdxNavBarItem;
    NodeBarItem6: TdxNavBarItem;
    DataSource2: TDataSource;
    OpenPic: TOpenPictureDialog;
    ImageDbf: TTzDbf;
    DataSource1: TDataSource;
    NodeDbf: TTzDbf;
    imgLarge: TImageList;
    series: TcxLabel;
    NodeBarSeparator1: TdxNavBarSeparator;
    NodeBarItem7: TdxNavBarItem;
    NodeBarGroup3: TdxNavBarGroup;
    NodeBarItem8: TdxNavBarItem;
    Open1: TOpenDialog;
    closebut: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SeriesGrid: TAdvStringGrid;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    emitarea: TcxRadioGroup;
    PresUnit: TcxComboBox;
    FlowUnit: TcxComboBox;
    LenUnit: TcxComboBox;
    nozzle: TcxLabel;
    cxDBImage1: TcxDBImage;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    flowgroup: TcxGroupBox;
    flowgrid: TAdvStringGrid;
    utilbox: TcxGroupBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    vertgrid: TcxDBVerticalGrid;
    vertgridDBEditorRow1: TcxDBEditorRow;
    vertgridDBEditorRow2: TcxDBEditorRow;
    vertgridDBEditorRow3: TcxDBEditorRow;
    vertgridDBEditorRow4: TcxDBEditorRow;
    vertgridDBEditorRow5: TcxDBEditorRow;
    vertgridDBEditorRow6: TcxDBEditorRow;
    vertgridDBEditorRow7: TcxDBEditorRow;
    nozzlegrid: TAdvStringGrid;
    ModelGrid: TAdvStringGrid;
    BoostFormat: TRadioGroup;
    Panel7: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    kcon: TEdit;
    xcon: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Metric: TRadioButton;
    english: TRadioButton;
    Panel8: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    startR: TEdit;
    endR: TEdit;
    incR: TEdit;
    procedure NodeBarItem1Click(Sender: TObject);
    procedure SeriesGridClick(Sender: TObject);
    procedure nozzlegridClick(Sender: TObject);
    procedure ModelGridClick(Sender: TObject);
    procedure cxDBImage1DblClick(Sender: TObject);
    procedure flowgridEditChange(Sender: TObject; ACol, ARow: Integer;
      Value: string);
    procedure flowgridExit(Sender: TObject);
    procedure SeriesGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure PresUnitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ModelGridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure ModelGridEditingDone(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BoostFormatClick(Sender: TObject);
    procedure ModelGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure NodeBarItem7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Indextype,SeriesType,modeltype,nozzletype : string;
     FlowChanged,modeChanged  : boolean;
     Node0        : StdNode;
     Busy,boostactive : boolean;
     Edit_type,indexNumber : integer;

     wat2 : integer;




     procedure fillseries;
     procedure fillpump;
     procedure fillValve;
     procedure fillEmitter;
     procedure fillReg;
     procedure fillnozzle;
     procedure fillBooster;

     procedure Fill_Node_data(var node_ : StdNode);
     procedure FillGrid(index : integer);
     procedure FillFlow;
     procedure SaveFlow;
     procedure SaveUnits(punit,funit,lunit,dunit,spray : integer);

     procedure SaveModel;

     Procedure FillNodeList;
     procedure fillNodeTree(var nodeTree : TtreeView; Series_ : integer);
  end;

  function ShowNodes : integer;

var
  IrrNodeForm: TIrrNodeForm;
  NodesDbList : NodesDbObj;

implementation

{$R *.dfm}

uses form2unt;


function ShowNodes : integer;
begin
   with IrrNodeForm do
   begin
      wat2:=0;
      ShowModal;
      result:=wat2;
   end;
end;


function sameSTR(s1,s2 : string):boolean;
begin
   result:=trimSTR(s1)=trimSTR(s2);
end;

function thisrec(nt,series1,model1,nozzle1 : string):boolean;
begin
   result:=false;
   with IrrNodeFORM do
   begin
      if (nt<>'') and not samestr(uppercase(Nodedbf.getfield('index')),uppercase(nt)) then exit;
      if series1<>'' then
         if not samestr(Nodedbf.getfield('Series'),series1) then exit;
      if model1<>'' then
         if not samestr(Nodedbf.getfield('model'),model1) then exit;
      if nozzle1<>'' then
         if not sameSTR(Nodedbf.getfield('nozzle'),nozzle1) then exit;
   end;
   result:=true;
end;

procedure cleargrid(var gg:tAdvstringgrid);
var j,n:integer;
begin
   with gg do
   for j:=1 to colcount-1 do
      for n:=1 to rowcount-1 do
         cells[j,n]:='';
end;

procedure TIrrNodeForm.SaveUnits(punit,funit,lunit,dunit,spray : integer);
var found : boolean;                        //dunit lyk redundant te wees
begin
   if Nodedbf.active then
   begin
      found:=false;
      nodedbf.first;
      while not nodedbf.eof do
      begin
         if Thisrec(indextype,seriestype,'','') then
         begin
            nodedbf.edit;
            nodedbf.setRealfield('punit',punit);
            nodedbf.setRealfield('funit',funit);
            nodedbf.setRealfield('lunit',lunit);
            nodedbf.setRealfield('dunit',dunit);
            nodedbf.setrealfield('rad1_diam2',spray);
            found:=true;
         end;
         nodedbf.next;
      end;
      if not found then    //new series
      begin
         nodedbf.setCfield('index',Indextype);
         nodedbf.setCfield('series',seriestype);
         nodedbf.setRealfield('punit',punit);
         nodedbf.setRealfield('funit',funit);
         nodedbf.setRealfield('lunit',lunit);
         nodedbf.setRealfield('dunit',dunit);
         nodedbf.setrealfield('rad1_diam2',spray);
         nodedbf.setrealfield('circangle',360);
         nodedbf.append;
      end;
   end;
end;


procedure TIrrNodeForm.Fill_Node_data(var node_ : StdNode);
var j : integer;
    s : string;
begin
   fillchar(Node_,sizeof(node_),0);
   with Nodedbf do
   begin
      s:=fieldbyname('Index').asstring;

      node_.tipe:=1;
      if s='pumps'      then node_.tipe:=1;
      if s='valves'     then node_.tipe:=2;
      if s='sprinklers' then node_.tipe:=3;
      if s='fittings'   then node_.tipe:=4;
      if s='other'      then node_.tipe:=5;
      if s='booster'    then node_.tipe:=6;

      node_.series:=fieldbyname('Series').asstring;
      node_.model:=fieldbyname('Model').asstring;
      node_.nozzle:=fieldbyname('Nozzle').asstring;
      node_.cluster:=0;
      node_.part   :=fieldbyname('partname').asstring;
      node_.patname:=fieldbyname('patname').asstring;
      node_.punit          :=trunc(getRealfield('punit'));
      node_.funit          :=trunc(getRealfield('funit'));
      node_.lunit          :=trunc(getRealfield('lunit'));
      node_.dunit          :=trunc(getRealfield('dunit'));
      node_.sprayareafactor:=trunc(getrealfield('rad1_diam2'));
      node_.secloss :=getrealfield('sec_loss');
      node_.Cv      :=getrealfield('CV');
      node_.cost    :=fieldbyname('cost').asfloat;
      node_.color   :=trunc(getRealfield('color'));
      node_.EndArc  :=GetRealField('CircAngle');

      for j:=1 to 19 do
      begin
         node_.press[j]:=getrealfield('press'+inttostr(j));
         node_.flow[j] :=getrealfield('flow'+inttostr(j));
         node_.radi[j] :=getrealfield('rad'+inttostr(j));
      end;
   end;
end;

procedure MakeHeader;
begin
   with IrrNodeForm do
   begin
      Series.Caption:=SeriesType+'  /  '+ModelType;
      if indexnumber=3 then
         Series.Caption:=SeriesType+'  /  '+ModelType+'  /  '+Nozzletype;
   end;
end;

procedure TIrrNodeForm.SaveModel;
var r,flow : integer;
    s : string;
begin
   r:=ModelGrid.row;
   with NodeDbf do
   begin
      edit;
      //fieldbyname('Model').asstring:=ModelGrid.cells[1,r];
      fieldbyname('cost').AsString :=ModelGrid.cells[2,r];
      fieldbyname('color').AsString:=ModelGrid.cells[3,r];
      fieldbyname('partname').AsString:=ModelGrid.cells[4,r];
      fieldbyname('patname').AsString:=ModelGrid.cells[5,r];

      if indexnumber in [2,4] then   //valve
         Setrealfield('sec_loss',strtor(ModelGrid.cells[6,r]));

      if indexnumber in [5] then    //reg
      begin
         Setrealfield('press1',units.press_si(strtor(Modelgrid.cells[7,r]),Presunit.itemindex));
         Setrealfield('flow1',strtor(ModelGrid.cells[8,r]));     //0=all 1=main 2=mani 3=lat
      end;

      if indexnumber in [6] then    //boost
      begin
         Setrealfield('press1',units.press_si(strtor(Modelgrid.cells[7,r]),Presunit.itemindex));
         Flow:=0;
         s:=ModelGrid.cells[8,r];
         if pos('N',uppercase(s))>0 then flow:=1;
         Setrealfield('flow1',flow);  //'yse/no
      end;

      post;
   end;
end;

procedure TIrrNodeForm.SaveFlow;
var n,j,color1,d   : integer;
    r            : double;
    reeds        : boolean;
begin
   FlowChanged:=false;

   with Nodedbf do
   begin
      for j:=1 to 19 do
      begin
         setrealfield('press'+inttostr(j),units.press_si(strtor(flowgrid.cells[j,1]),Presunit.itemindex));
         setrealfield('flow'+inttostr(j),units.flow_si(strtor(flowgrid.cells[j,2]),FlowUnit.itemindex));
         r:=strtor(flowgrid.cells[j,3]); if Emitarea.itemindex=1 then r:=r/2;
         setrealfield('rad'+inttostr(j),units.len_si(r,Lenunit.ItemIndex));
     end;
     post;
  end;
end;

procedure TIrrNodeForm.fillFlow;
var n,j,color1,d   : integer;
    r            : double;
    reeds        : boolean;
begin
   cleargrid(flowgrid);
   FlowChanged:=false;

   Fill_Node_data(node0);

   Busy:=true;
   PresUnit.ItemIndex:=node0.punit;
   FlowUnit.ItemIndex:=node0.funit;
   LenUnit.ItemIndex:=node0.lunit;
   emitarea.ItemIndex :=node0.sprayareafactor;
   Busy:=false;

   if indexnumber=3 then
   begin
      FlowGroup.Caption:='Pressure / Flow / Radius';
      if emitarea.itemindex=1 then
         FlowGroup.Caption:='Pressure / Flow / Diameter';

      FlowGrid.Width:=FlowGroup.Width-utilbox.Width-20;
      Flowgrid.RowCount:=4;
   end;
   if indexnumber=1 then
   begin
      FlowGroup.Caption:='Pressure / Flow';
      FlowGrid.Width:=FlowGroup.Width-10;
      Flowgrid.RowCount:=3;
   end;

   with flowgrid do
   begin
      cells[0,1]:='Press. '+units.press(presunit.itemindex);
      cells[0,2]:='Flow '+units.flow(flowunit.itemindex);
      case emitarea.itemindex of
      0 : cells[0,3]:='Rad. '+units.leng(lenunit.itemindex);
      1 : cells[0,3]:='Diam. '+units.leng(lenunit.itemindex);
      end;
   end;

    for j:=1 to 19 do
    begin
       flowgrid.cells[j,0]:=inttostr(j);
       flowgrid.cells[j,1]:=rtostr(units.si_press(Node0.press[j],node0.punit),10,2);
       flowgrid.cells[j,2]:=rtostr(units.si_flow(Node0.flow[j],node0.funit),10,2);
       r:=Node0.radi[j]; if Emitarea.itemindex=1 then r:=r*2;
       flowgrid.cells[j,3]:=rtostr(units.len_si(r,Lenunit.ItemIndex),10,2);
   end;

(*   with node.nozzle do
      for j:=1 to 19 do     //nozzle[20]=cost
      begin
         if press[j]<>0 then cells[j,1]:=rtostr(units.si_press(press[j],node.punit),10,2);
         r:=units.si_flow(flow[j],node.funit);
         d:=2;
         if r<1 then d:=4;
         if flow[j]<>0 then cells[j,2]:=rtostr(r,10,d);
         r:=radi[j]*(sprayarea.itemindex+1);
         if r<>0 then cells[j,3]:=rtostr(units.si_len(r,node.lunit),10,1);
      end;
   lll:=node.marc;
   d:=2;
   r:=node.marc.cenx; if r<1 then d:=4;
   edit1.text:=rtostr(r,10,2);
   r:=node.marc.ceny; //if r<1 then d:=4;
   edit2.text:=rtostr(r,10,3);

   sAngle.Text:='360';
   if (node.marc.enda>0) and (node.marc.enda<=360) then
     sAngle.Text:=rtostr(node.marc.enda,10,0);

   inc(n);

   datachanged:=false;
   data.enabled:=nozzlename<>'';*)
end;

function DoubleName(var gg:TAdvstringGrid; name1:Shortstring; place:integer):boolean;
var j : integer;
    s : Shortstring;
begin
   result:=true;
   with gg do
      for j:=1 to rowcount-1 do
      begin
         s:=cells[place,j];
         if name1=s then exit;
      end;
   result:=false;
end;

procedure setnozzleunits;
var j,n : integer;
begin
   with IrrNodeForm do
   begin
      with flowgrid do
      begin
         cells[0,1]:='Press. '+units.press(presunit.itemindex);
         cells[0,2]:='Flow '+units.flow(flowunit.itemindex);
         case emitarea.itemindex of
         0 : cells[0,3]:='Rad. '+units.leng(lenunit.itemindex);
         1 : cells[0,3]:='Diam. '+units.leng(lenunit.itemindex);
         end;
      end;
{      with pump do
      begin
         n:=6;
         for j:=1 to 8 do
         begin
            cells[n,0]:=inttostr(j)+data.cells[0,1];
            cells[n+1,0]:=inttostr(j)+data.cells[0,2];
            inc(n,2);
         end;
      end;}
   end;
end;

procedure TIrrNodeForm.fillSeries;
var n     : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(SeriesGrid);   SeriesGrid.Cells[1,0]:='Name';
   setnozzleunits;
   n:=1;
   NodeDbf.first;
   seriesGrid.rowcount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if not DoubleName(SeriesGrid,Node.series,1) and (node.series<>'') then
      begin
         if n>SeriesGrid.rowcount-1 then SeriesGrid.rowcount:=N+1;
         Seriesgrid.Cells[1,n]:=node.series;
         inc(n);
      end;
      NodeDBf.Next;
   end;
   with Seriesgrid do
   begin
      SortByColumn(1);
      for n:=1 to rowcount-1 do
      begin
         Cells[0,n]:=inttostr(n);
         if (SeriesType='') and (n=1) then seriestype:=cells[1,n];
         if cells[1,n]=Seriestype then Row:=n;
      end;
   end;
end;

procedure TIrrNodeForm.fillpump;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(modelGrid);

   n:=1;

   with modelgrid do
   begin
      ColCount:=6;

      cells[1,0]:='Description'; colwidths[1]:=180;
      cells[2,0]:='Cost';        colwidths[2]:=60;
      cells[3,0]:='Pen no.';     colwidths[3]:=40;
      cells[4,0]:='Part no.';    colwidths[4]:=150;
      cells[5,0]:='Pattern name';colwidths[5]:=150;
      width:=FlowGroup.width;
   end;

   NodeDbf.first;
   Modelgrid.RowCount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if n>ModelGrid.rowcount-1 then ModelGrid.rowcount:=N+1;
      ModelGrid.cells[1,n]:=node.model;
      ModelGrid.cells[2,n]:=rtostr(node.cost,10,2);
      ModelGrid.cells[3,n]:=inttostr(node.color);
      ModelGrid.cells[4,n]:=node.part;
      ModelGrid.cells[5,n]:=node.patname;
      inc(n);
      NodeDBf.Next;
   end;
end;

procedure TIrrNodeForm.fillValve;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(modelGrid);

   n:=1;

   with modelgrid do
   begin
      ColCount:=7;

      cells[1,0]:='Model Description'; colwidths[1]:=120;
      cells[2,0]:='Cost';        colwidths[2]:=60;
      cells[3,0]:='Pen no.';     colwidths[3]:=40;
      cells[4,0]:='Part no.';    colwidths[4]:=130;
      cells[5,0]:='Pattern name';colwidths[5]:=130;
      cells[6,0]:='Secondary k'; colwidths[6]:=100;
      width:=FlowGroup.width;
   end;

   NodeDbf.first;
   Modelgrid.RowCount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if n>ModelGrid.rowcount-1 then ModelGrid.rowcount:=N+1;
      ModelGrid.cells[1,n]:=node.model;
      ModelGrid.cells[2,n]:=rtostr(node.cost,10,2);
      ModelGrid.cells[3,n]:=inttostr(node.color);
      ModelGrid.cells[4,n]:=node.part;
      ModelGrid.cells[5,n]:=node.patname;
      ModelGrid.cells[6,n]:=rtostr(node.secloss,10,3);
      inc(n);
      NodeDBf.Next;
   end;
end;

procedure TIrrNodeForm.fillReg;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(modelGrid);

   n:=1;

   with modelgrid do
   begin
      ColCount:=9;

      cells[1,0]:='Model Description'; colwidths[1]:=120;
      cells[2,0]:='Cost';        colwidths[2]:=60;
      cells[3,0]:='Pen no.';     colwidths[3]:=40;
      cells[4,0]:='Part no.';    colwidths[4]:=85;
      cells[5,0]:='Pattern name';colwidths[5]:=95;
      cells[6,0]:='Secondary k'; colwidths[6]:=90;
      cells[7,0]:='Reg. Pressure'; colwidths[7]:=95;
      cells[8,0]:='Pipe Type';    colwidths[8]:=95;

      width:=FlowGroup.width;
   end;

   NodeDbf.first;
   Modelgrid.RowCount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if n>ModelGrid.rowcount-1 then ModelGrid.rowcount:=N+1;
      ModelGrid.cells[1,n]:=node.model;
      ModelGrid.cells[2,n]:=rtostr(node.cost,10,2);
      ModelGrid.cells[3,n]:=inttostr(node.color);
      ModelGrid.cells[4,n]:=node.part;
      ModelGrid.cells[5,n]:=node.patname;
      ModelGrid.cells[6,n]:=rtostr(node.secloss,10,3);
      ModelGrid.cells[7,n]:=rtostr(units.si_press(node.press[1],presunit.itemindex),10,2);
      ModelGrid.cells[8,n]:=inttostr(trunc(node.flow[1])); //0=all 1=main 2=mani 3=lat

      inc(n);
      NodeDBf.Next;
   end;
end;

procedure TIrrNodeForm.fillBooster;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(modelGrid);

   n:=1;

   with modelgrid do
   begin
      ColCount:=9;

      cells[1,0]:='Model Description'; colwidths[1]:=120;
      cells[2,0]:='Cost';        colwidths[2]:=60;
      cells[3,0]:='Pen no.';     colwidths[3]:=40;
      cells[4,0]:='Part no.';    colwidths[4]:=85;
      cells[5,0]:='Pattern name';colwidths[5]:=95;
      cells[6,0]:='Secondary k'; colwidths[6]:=90;
      cells[7,0]:='Booster Press.'; colwidths[7]:=95;
      cells[8,0]:='Absolute?';    colwidths[8]:=85;

      width:=FlowGroup.width;
   end;

   NodeDbf.first;
   Modelgrid.RowCount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if n>ModelGrid.rowcount-1 then ModelGrid.rowcount:=N+1;
      ModelGrid.cells[1,n]:=node.model;
      ModelGrid.cells[2,n]:=rtostr(node.cost,10,2);
      ModelGrid.cells[3,n]:=inttostr(node.color);
      ModelGrid.cells[4,n]:=node.part;
      ModelGrid.cells[5,n]:=node.patname;
      ModelGrid.cells[6,n]:=rtostr(node.secloss,10,3);
      ModelGrid.cells[7,n]:=rtostr(units.si_press(node.press[1],presunit.itemindex),10,2);

      boostActive:=false;
      ModelGrid.cells[8,n]:='Yes';
      BoostFormat.ItemIndex:=0;
      if node.flow[1]=1 then
      begin
         ModelGrid.cells[8,n]:='No';
         BoostFormat.ItemIndex:=1;
      end;
      boostActive:=true;

      inc(n);
      NodeDBf.Next;
   end;
end;


procedure TIrrNodeForm.fillEmitter;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(modelGrid);

   n:=1;

   Modelgrid.RowCount:=2;
   with modelgrid do
   begin
      ColCount:=2;

      cells[1,0]:='Model Description'; colwidths[1]:=180;
      width:=270;
   end;

   NodeDbf.first;

   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if not DoubleName(ModelGrid,Node.Model,1) and (Node.model<>'') then
      begin
         if n>ModelGrid.rowcount-1 then ModelGrid.rowcount:=N+1;
         ModelGrid.cells[1,n]:=node.model;
         inc(n);
      end;
      NodeDBf.Next;
   end;
end;

procedure TIrrNodeForm.fillnozzle;
var n,j,i : integer;
    reeds : boolean;
    node  : StdNode;
begin
   cleargrid(NozzleGrid);

   if indexNumber<>3 then exit;  //only sprinklers

   n:=1;

   NozzleGrid.rowcount:=2;
   with Nozzlegrid do
   begin
      ColCount:=2;
      cells[0,0]:='';
      cells[1,0]:='Nozzle Description';
   end;

   NodeDbf.first;
   NozzleGrid.rowcount:=2;
   while not NodeDBf.eof do
   begin
      Fill_Node_data(node);
      if not DoubleName(NozzleGrid,Node.nozzle,1) and (node.nozzle<>'') then
      begin
         if n>NozzleGrid.rowcount-1 then NozzleGrid.rowcount:=N+1;
         NozzleGrid.cells[1,n]:=node.Nozzle;
         inc(n);
      end;
      NodeDBf.Next;
   end;
end;

procedure TIrrNodeForm.FillGrid(index : integer);
var  s : string;
    ok : boolean;
    j,i,tot : integer;
    ss : array[1..500] of string;

    procedure checkImage(indextype_,seriesType_:string);
    begin
       imagedbf.SetFilterTo('index='+char(39)+Indextype+CHAR(39)+' .AND. '+'series='+char(39)+seriestype+CHAR(39));
       //imagedbf.First;
       if not imagedbf.FindFirst then
       begin
        //  imagedbf.RLock;
          imagedbf.insert;
          imagedbf.FieldByName('index').AsString:=Indextype;
          imagedbf.FieldByName('series').AsString:=seriestype;
          imagedbf.Append;
          imagedbf.post;
        //  imagedbf.UnLock;
       end;
    end;

begin

   case index of       //1=series 2=model 3=nozzle
   1 : begin
          FillSeries;
       end;
   2 : case IndexNumber of
       1 : FillPump;
       2 : FillValve;
       3 : FillEmitter;
       4 : FillValve;
       5 : FillReg;
       6 : FillBooster;
       end;
   3 : FillNozzle;
   end;

   if index<3 then checkImage(indextype,seriesType);

   MakeHeader;
end;


procedure TIrrNodeForm.flowgridEditChange(Sender: TObject; ACol, ARow: Integer;
  Value: string);
begin
   FlowChanged:=true;
end;

procedure TIrrNodeForm.flowgridExit(Sender: TObject);
begin
   if flowchanged then saveFlow;
end;

procedure TIrrNodeForm.FormActivate(Sender: TObject);
begin
   NodeBarItem1Click(NodebarItem1);
end;

procedure TIrrNodeForm.FormCreate(Sender: TObject);
begin
   pagecontrol1.ActivePageIndex:=0;
(*   with waarde do
   begin
      metric.checked:=waarde.readbool('Irrig','KPX Metric',false);
      startR.text:=readstring('Irrig','StartR','5');
      endR.text:=readstring('Irrig','EndR','30');
      incR.text:=readstring('Irrig','IncR','5');
   end; *)

end;

procedure TIrrNodeForm.nozzlegridClick(Sender: TObject);
var s : string;
begin
   nodedbf.DisableControls;
   if indexNumber=3 then NozzleType:=NozzleGrid.Cells[1,Nozzlegrid.Row];  //only sprinklers
   s:='index='+char(39)+Indextype+CHAR(39)+' .AND. '+'series='+char(39)+seriestype+CHAR(39);
   s:=s+' .AND. '+'model='+char(39)+modeltype+CHAR(39);
   s:=s+' .AND. '+'nozzle='+char(39)+nozzletype+CHAR(39);
   nodedbf.SetFilterTo(s);
   MakeHeader;
   FillFlow;
   nodedbf.EnableControls;
end;

procedure TIrrNodeForm.ModelGridCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
   Canedit:=Acol>1;
end;

procedure TIrrNodeForm.ModelGridClick(Sender: TObject);
var s : string;
begin
   nodedbf.DisableControls;
   ModelType:=ModelGrid.Cells[1,Modelgrid.Row];
   s:='index='+char(39)+Indextype+CHAR(39)+' .AND. '+'series='+char(39)+seriestype+CHAR(39);
   s:=s+' .AND. '+'model='+char(39)+modeltype+CHAR(39);
   nodedbf.SetFilterTo(s);
   if Indexnumber in [1,3] then  //emitter
   begin
      FillGrid(3);
      nozzlegridClick(Sender);
   end
   else
      makeheader;
   nodedbf.EnableControls;
end;

procedure TIrrNodeForm.ModelGridEditingDone(Sender: TObject);
begin
   SaveModel;
end;

procedure TIrrNodeForm.ModelGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var  s : string;
begin
   canselect:=true;
   if (indexnumber=6) and (acol=8) then
   begin
      boostformat.Visible:=Acol=8;
      s:=ModelGrid.cells[8,Arow];
      boostactive:=false;
      if pos('N',uppercase(s))>0 then
         boostformat.itemindex:=1
         else
         boostformat.itemindex:=0;
      boostactive:=true;
      Canselect:=false;
   end;
end;

procedure TIrrNodeForm.SeriesGridClick(Sender: TObject);
begin
   nodedbf.DisableControls;
   seriesType:=SeriesGrid.Cells[1,Seriesgrid.Row];
   nodedbf.SetFilterTo('index='+char(39)+Indextype+CHAR(39)+' .AND. '+'series='+char(39)+seriestype+CHAR(39) );
   FillGrid(2);
   ModelGridClick(Sender);
   nodedbf.EnableControls;
end;


procedure TIrrNodeForm.PresUnitClick(Sender: TObject);
begin
   if busy then exit;

   SaveUnits(presUnit.ItemIndex,flowUnit.ItemIndex,LenUnit.ItemIndex,LenUnit.ItemIndex,emitarea.ItemIndex);
   SeriesGridClick(Sender);  //reload
end;


procedure TIrrNodeForm.cxDBImage1DblClick(Sender: TObject);
begin
   if openpic.Execute then
      imagedbf.FiletoBlob(openpic.FileName,'image');
end;

procedure TIrrNodeForm.NodeBarItem1Click(Sender: TObject);
var j : integer;
begin
   j:=3;   //comes from drippers
   if sender<>nil then
      j:=(sender as tcomponent).tag;

   indexNumber :=j;

   flowgroup.Visible :=j in [1,3];
   Vertgrid.Visible  :=j in [3];
   Nozzlegrid.Visible:=j in [3];
   memo1.Visible     :=j in [5];
   boostformat.Visible:=j in [6];
   utilbox.Visible    :=j in [3];

   pagecontrol1.ActivePageIndex:=0;

   seriestype:='';
   nozzletype:='';
   case j of
   1 : begin
          IndexType:='pumps';
          nozzletype:='pmp';
       end;
   2 : begin
         IndexType:='valves';
         nozzletype:='Valve';
       end;
   3 : begin
          IndexType:='sprinklers';
          flowgrid.RowCount:=4;

       end;
   4 : begin
          IndexType:='fittings';
          nozzletype:='Fitting';
       end;
   5 : begin
          IndexType:='other';
          nozzletype:='Other';
       end;
   6 : begin
          IndexType:='booster';
          nozzletype:='Booster';
       end;
   end;
   if IndexNumber=3 then
      nodedbf.SetFilterTo('index='+CHAR(39)+Indextype+CHAR(39))
   else
      nodedbf.SetFilterTo('index='+CHAR(39)+Indextype+CHAR(39)+' .AND. '+'nozzle='+char(39)+nozzletype+CHAR(39));
   case j of
   1 : headerlabel.Caption:='PUMPS';
   2 : headerlabel.Caption:='VALVES';
   3 : headerlabel.Caption:='EMITTERS';
   4 : headerlabel.Caption:='FITTINGS';
   5 : headerlabel.Caption:='REGULATORS';
   6 : headerlabel.Caption:='BOOSTERS';
   end;
   FillGrid(1);
   SeriesGridClick(Sender);
end;

procedure TIrrNodeForm.NodeBarItem7Click(Sender: TObject);
begin
   wat2:=(sender as tcomponent).Tag;
   close;
end;

procedure TIrrNodeForm.BitBtn4Click(Sender: TObject);
var rr,xx,kk,pp : double;
    n,d : integer;
begin
   panel7.visible:=false;
   //savemodel;
   xx:=strtor(xcon.text);
   kk:=strtor(kcon.text);
   with flowgrid do
      with waarde do
      for n:=1 to 19 do
      begin
         rr:=0;
         r(cells[n,1],rr,0,1e6);


         if english.checked then
         begin
            rr:=units.press_si(rr,presunit.itemindex);
            rr:=units.si_press(rr,3);         //si to psi
            rr:=kk*mag(rr,xx);                //gph
            rr:=rr/60;                        //gpm
            rr:=units.flow_si(rr,2);          //gpm to si
            rr:=units.si_flow(rr,flowunit.itemindex);     // si to funit
         end
         else
         begin
            rr:=units.press_si(rr,presunit.itemindex);
            //rr:=units.si_press(rr,3);         //si to psi
            rr:=kk*mag(rr,xx);                //l/s
            rr:=rr/60/60;                        //l/h
            rr:=units.flow_si(rr,0);          //gpm to si
            rr:=units.si_flow(rr,flowunit.itemindex);     // si to funit
         end;
         d:=2;
         if rr<1 then d:=4;
         cells[n,2]:=rtostr(rr,10,d);
      end;
   saveflow;
end;

procedure TIrrNodeForm.BitBtn5Click(Sender: TObject);
begin
   panel7.Visible:=false;
end;

procedure TIrrNodeForm.BitBtn8Click(Sender: TObject);
var s1,s2,i1 : double;
    i : integer;
begin
   panel8.visible:=false;
   s1:=strtor(startr.text);
   s2:=strtor(Endr.text);
   i1:=strtor(Incr.text);

   i:=1;

   while (i<=19) and (s1<=s2) do
   begin
      flowgrid.cells[i,1]:=rtostr(s1,10,2);
      inc(i);
      s1:=s1+i1;
   end;

   SaveFlow;

end;

procedure TIrrNodeForm.BitBtn9Click(Sender: TObject);
begin
   panel8.Visible:=false;
end;

procedure TIrrNodeForm.BoostFormatClick(Sender: TObject);
begin
   if not boostActive then exit;
   with ModelGrid do
   case BoostFormat.ItemIndex of
   0 : Modelgrid.cells[8,row]:='Yes';
   1 : Modelgrid.cells[8,row]:='No';
   end;
   SaveModel;
end;

procedure TIrrNodeForm.cxButton1Click(Sender: TObject);
begin
   panel1.Visible:=false;
end;

procedure TIrrNodeForm.cxButton2Click(Sender: TObject);
var s : string;

   function Notyet(s : string; grid : tadvStringgrid) : boolean;
   var j : integer;
       sg : string;
   begin
      result:=false;
      for j:=1 to Grid.RowCount-1 do
      begin
         sg:=grid.Cells[1,j];
         if s=sg then exit;
      end;
      result:=true;
   end;

   procedure NodeDB_Delete(Series1,Model1,Nozzle1 : Shortstring);
   begin
      if Nodedbf.active then
      begin
         Nodedbf.first;
         while not Nodedbf.eof do
         begin
            if Thisrec(indextype,series1,model1,nozzle1) then
            begin
               Nodedbf.delete;
              // Nodedbf.next;
            end
            else
               Nodedbf.next;
         end;
      end;
   end;

   procedure NodeDB_Rename(series1,model1,nozzle1,series2,model2,nozzle2:Shortstring);
   begin
      Nodedbf.first;
      while (not Nodedbf.eof) do
      begin
         if Thisrec(Indextype,series1,model1,nozzle1) then
         begin
            Nodedbf.edit;
            if series2<>'' then
               Nodedbf.setCfield('series',series2);
            if model2<>'' then
               Nodedbf.setCfield('model',model2);
            if nozzle2<>'' then
               Nodedbf.setCfield('nozzle',nozzle2);
         end;
         Nodedbf.next;
      end;
   end;


   procedure AddNew;
   begin
      Nodedbf.ClearRecord;
      Nodedbf.Alock;
      Nodedbf.setCfield('index',Indextype);
      Nodedbf.setCfield('series',seriestype);
      Nodedbf.setCfield('model',modeltype);
      Nodedbf.setCfield('nozzle',nozzletype);
      Nodedbf.setrealfield('color',5);
      Nodedbf.appendRec;
      Nodedbf.Unlock;
   end;

begin
   case (sender as tcomponent).Tag of
   1 : begin                              //add
          s:=editAdd.Text;
          nodedbf.SetFilterTo('index='+CHAR(39)+Indextype+CHAR(39));
          case edit_type of
          1 : begin
                 if NotYet(s,Seriesgrid) then
                 begin
                    seriestype:=S;
                    Modeltype:='Model';
                    Nozzletype:='Nozzle';
                    AddNew;
                    FillGrid(1);
                    SeriesgridClick(sender);
                 end;
              end;
          2 : begin
                 if NotYet(s,Modelgrid) then
                 begin
                    Modeltype:=s;
                    Nozzletype:='Nozzle';
                    AddNew;
                    SeriesgridClick(sender);
                 end;
              end;
          3 : begin
                 if NotYet(s,Nozzlegrid) then
                 begin
                    Nozzletype:=s;
                    AddNew;
                    ModelGridClick(sender);
                 end;
              end;
          end;
       end;
   2 : begin                              //Edit
          s:=editEdit.Text;
          nodedbf.SetFilterTo('index='+CHAR(39)+Indextype+CHAR(39));
          case edit_type of
          1 : begin
                 if NotYet(s,Seriesgrid) then
                 begin
                    NodeDb_Rename(seriestype,'','',S,'','');
                    Seriestype:=S;
                    FillGrid(1);
                    SeriesgridClick(sender);
                 end;
              end;
          2 : begin
                 if NotYet(s,Modelgrid) then
                 begin
                    NodeDb_Rename(seriestype,modeltype,'',seriestype,S,'');
                    ModelType:=S;
                    SeriesgridClick(sender);
                 end;
              end;
          3 : begin
                 if NotYet(s,Nozzlegrid) then
                 begin
                    NodeDb_Rename(seriestype,modeltype,nozzletype,seriestype,modeltype,S);
                    NozzleType:=S;
                    ModelGridClick(sender);
                 end;
              end;
          end;
       end;
   3 : begin                              //Delete
          nodedbf.SetFilterTo('index='+CHAR(39)+Indextype+CHAR(39));
          case edit_type of
          1 : begin
                 NodeDB_Delete(seriestype,'','');
                 FillGrid(1);
                 SeriesgridClick(sender);
              end;
          2 : begin
                 NodeDB_Delete(seriestype,modeltype,'');
                 SeriesgridClick(sender);
              end;
          3 : begin
                 NodeDB_Delete(seriestype,modeltype,nozzletype);
                 ModelGridClick(sender);
              end;
          end;
       end;
   end;
   panel1.Visible:=false;
end;

procedure TIrrNodeForm.cxButton4Click(Sender: TObject);
begin
   panel8.Visible:=true;
end;

procedure TIrrNodeForm.cxButton5Click(Sender: TObject);
begin
   panel7.Visible:=true;
end;

procedure TIrrNodeForm.SeriesGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var l,t : integer;
begin
   if Shift = [ssRight] then
   begin
      l:=pagecontrol1.Left;
      t:=pagecontrol1.top;
      edit_type:=(sender as tcomponent).tag;
      case Edit_type of
      1 : begin
             panel1.Left:=Seriesgrid.Left+l;
             panel1.Top:=Seriesgrid.Top+seriesgrid.Height+t;
             editedit.Text:=Seriestype;
             add1.Caption:='Add new Series';
          end;
      2 : begin
             panel1.Left:=Modelgrid.Left+l;
             panel1.Top:=Modelgrid.Top+Modelgrid.Height+t;
             editedit.Text:=Modeltype;
             add1.Caption:='Add new Model';
          end;
      3 : begin
             panel1.Left:=Nozzlegrid.Left+l;
             panel1.Top:=Nozzlegrid.Top+Nozzlegrid.Height+t;
             editedit.Text:=Nozzletype;
             add1.Caption:='Add new Nozzle';
          end;
      end;
      panel1.Top:=flowgroup.Top-5;
      panel1.Visible:=true;
      editadd.Text:='';
      editdelete.Caption:=editedit.Text;
   end;
end;


Procedure TIrrNodeForm.FillNodeList;
begin
   with NodesDbList do
   begin
      Setlength(List,100);
      ListNo:=0;
      NodeDbf.First;
      while not NodeDbf.eof do
      begin
         inc(ListNo);
         if high(List)<ListNo+1 then Setlength(List,ListNo+10);
         Fill_Node_data(List[ListNo]);
         NodeDbf.Next;
      end;
   end;
end;

procedure TIrrNodeForm.fillNodeTree(var nodeTree : TtreeView; Series_ : integer);
var j,k : integer;
  I,n,I1,I2: Integer;
  indexN,seriesN,Modeln,nozzleN : TtreeNode;
  Series : string;

  function FirstSeries(index,No : integer) : boolean;
  var j : integer;
      s : string;
  begin
     with NodesDbList do
     begin
        s:=list[No].series;
        result:=false;
        for j:=1 to No-1 do
           if (list[j].tipe=index) and (list[j].series=s) then exit;
        result:=true;
     end;
  end;
  function FirstModel(index,No,Model : integer) : boolean;
  var j : integer;
      s,m : string;
  begin
     with NodesDbList do
     begin
        s:=list[No].series;
        m:=list[Model].model;

        result:=false;
        for j:=1 to Model-1 do
           if (list[j].tipe=index) and (list[j].series=s) and (list[j].model=m) then exit;
        result:=true;
     end;
  end;
  function FirstNozzle(index,No,Model : integer) : boolean;
  var j : integer;
      s,m : string;
  begin
     with NodesDbList do
     begin
        s:=list[No].series;
        m:=list[Model].model;

        result:=false;
        for j:=1 to Model-1 do
           if (list[j].tipe=index) and (list[j].series=s) and (list[j].model=m) then exit;
        result:=true;
     end;
  end;

begin

   NodeDbf.SetFilterTo('');

   FillNodeList;     //fill Nodedb into list;

   NodeTree.Items.Clear;

   I1:=6; I2:=1;
   if Series_<>0 then          //fill only with emitters - for drip lines
   begin
      I1:=series_;
      I2:=Series_;
   end;

   for I:=I1 downto I2 do
   begin
      if I1=6 then   //Add headers when all nodes are listed
      case i of
      1 : indexn:=nodetree.Items.AddFirst(nil,'Pumps');
      2 : indexn:=nodetree.Items.AddFirst(nil,'Valves');
      3 : indexn:=nodetree.Items.AddFirst(nil,'Emitters');
      4 : indexn:=nodetree.Items.AddFirst(nil,'Fittings');
      5 : indexn:=nodetree.Items.AddFirst(nil,'Regulators');
      6 : indexn:=nodetree.Items.AddFirst(nil,'Boosters');
      end;
      seriesN:=nil;
      with NodesDbList do
      for j:=1 to listNo do
         if (list[j].tipe=I) and FirstSeries(I,j) then
         begin
            if I1=6 then
               Seriesn:=Nodetree.Items.AddChild(IndexN,List[j].series)
            else
               Seriesn:=Nodetree.Items.Addfirst(nil,List[j].series);
            for n:=j to listNo do
               if (list[j].tipe=I) and (list[j].series=list[n].series) and FirstModel(I,j,N) then
               begin
                  Modeln:=Nodetree.Items.AddChild(SeriesN,List[n].model);
                  if I=3 then  //emitters
                     for k:=j to listNo do
                        if (list[k].tipe=I) and (list[k].series=list[j].series) and (list[k].model=list[j].model) then
                        begin
                           Nozzlen:=Nodetree.Items.AddChild(ModelN,List[k].nozzle);
                        end;
               end;

         end;
   end;
end;



end.
