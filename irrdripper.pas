unit irrdripper;

interface

uses
  Windows, Messages, SysUtils, Classes,  vcl.Graphics, Controls,  vcl.Forms,  vcl.Dialogs,
  ExtCtrls, StdCtrls, Buttons,
  glount,
  irrvar0,
  irrvar2,
  //irrpdb,
  form2unt,
  //formunt,
  Grids, DB, tzprimds, ucommon, utzcds, utzfds, DBGrids, Vcl.Menus, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit,
  cxDropDownEdit, cxVGrid, cxInplaceContainer, cxContainer, cxListBox,
  dxNavBarStyles, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  Vcl.ComCtrls, cxLabel, cxButtons, AdvObj, BaseGrid, AdvGrid, cxCustomData,
  cxTL, cxTLdxBarBuiltInMenu;

type

   driprecord = record
      dripper,eseries,emodel,enozzle,pcode,pdiam : Shortstring;
      cost,spacing : double;
      Partn : shortstring;
   end;



  TIrrdripForm = class(TForm)
    HelpBtn: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    DripDbf: TTzDbf;
    DataSource1: TDataSource;
    dummy: TTzDbf;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    ImportCSVfile1: TMenuItem;
    Open1: TOpenDialog;
    Panel2: TPanel;
    NodeBar: TdxNavBar;
    NodeBarGroup2: TdxNavBarGroup;
    NodeBarGroup1: TdxNavBarGroup;
    NodeBarGroup3: TdxNavBarGroup;
    NodeBarItem6: TdxNavBarItem;
    NodeBarItem8: TdxNavBarItem;
    NodeBarStyleItem1: TdxNavBarStyleItem;
    nodetree: TTreeView;
    NodeWarning: TcxLabel;
    pipetree: TTreeView;
    PipeWarning: TcxLabel;
    CheckDuplicates1: TMenuItem;
    Addrip: TcxButton;
    editdrip: TcxButton;
    deletedrip: TcxButton;
    drips: TAdvStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure seriesClick(Sender: TObject);
    procedure pseriesClick(Sender: TObject);
    procedure modelsClick(Sender: TObject);
    procedure PmodelsClick(Sender: TObject);
    procedure AddripClick(Sender: TObject);
    procedure dripsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure EditDripClick(Sender: TObject);
    procedure DeleteDripClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure HelpBtnClick(Sender: TObject);
    procedure dripsDblClick(Sender: TObject);
    procedure ImportCSVfile1Click(Sender: TObject);
    procedure NodeBarItem8Click(Sender: TObject);
    procedure nodetreeClick(Sender: TObject);
    procedure pipetreeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pseriesnam,seriesnam :Shortstring;
    stdp : stdpipe;

    pfile : text;
    wat2 : integer;

    s1,s2,s3,s4,p1,p2 : Shortstring;
    procedure combine;
    procedure loaddrippers;

    procedure FillModel;
    procedure fillpress;

    procedure fillpseries;
  end;

var
  dripfile : file;
  IrrdripForm: TIrrdripForm;

function opendripfile1 : boolean;
function opendripfile2 : boolean;

procedure closedripfile;

function readdriprec(var driprec : driprecord) : boolean;

function get1dripper(dripname:Shortstring; var driprec : driprecord):boolean;

function ShowDrippers : integer;

implementation

uses irrnodeDbase,irrvar1, IrrPipeDbase;

{$R *.DFM}

function ShowDrippers : integer;
begin
   with IrrDripForm do
   begin
      wat2:=0;
      ShowModal;
      result:=wat2;
   end;
end;


function opendripfile1 : boolean;
begin
(*   assignfile(dripfile,stdnodebox.irrdrv+'\dripper.drp');
   {$i-}
      reset(dripfile,1);
    {Si+}
    result:=ioresult=0;*)
end;

function opendripfile2 : boolean;
begin
(*   assignfile(dripfile,stdnodebox.irrdrv+'\drippertmp.drp');
   {$i-}
      reset(dripfile,1);
    {Si+}
    result:=ioresult=0;*)
end;


procedure closedripfile;
begin
(*   {$i-}
   closefile(dripfile);
   {$i+}
   _ioresult;*)
end;

(*function readdriprec1(var dripr1 : driprecord1) : boolean;
begin
   result:=false;
   if eof(dripfile) then exit;
   {$i-}
      blockread(dripfile,dripr1,sizeof(dripr1));
   {$i+}
   result:=ioresult=0;
end;*)

function readdriprec(var driprec : driprecord) : boolean;
begin
   result:=false;
   if eof(dripfile) then exit;
   {$i-}
      blockread(dripfile,driprec,sizeof(driprec));
   {$i+}
   result:=ioresult=0;
end;


function get1dripper(dripname:Shortstring; var driprec : driprecord):boolean;
label skip;
begin
{   result:=false;
   if opendripfile2 then
   begin
      result:=true;
      while readdriprec2(dripr2) do
         if dripr2.dripper=dripname then goto skip;
   end;
   result:=false;

   skip:

   closedripfile;}

end;


procedure openDBF1;
begin
   with IrrdripForm.dripdbf do
   begin
      dbffilename:=irrDrive+'\Irrdripper.dbf';
      active:=true;
   end;
end;


procedure tIrrdripForm.combine;
var s : Shortstring;
   j : integer;
begin
   s1:='';
   s2:='';
   s3:='';
   s4:='';
   p1:='';
   p2:='';

   if NodeWarning.tag=0 then exit;
   if PipeWarning.tag=0 then exit;

   label5.caption:=s2+' '+s3+'  |  '+p1+' '+p2;
end;

procedure fillseries;
begin
end;

function getmodel(ss:string):string;
var j : integer;
begin
   result:=ss;
   j:=pos(char(10),ss);
   if j>0 then result:=copy(ss,1,j-1);
end;

function newl(ss:string; ll:tlistbox):boolean;
var j : integer;
begin
   result:=false;
   with ll do
   for j:=0 to items.count-1 do
      if ss=getmodel(ll.items[j]) then exit;
   result:=true;
end;

procedure TIrrDripForm.fillmodel;
begin
end;

procedure TIrrDripForm.fillpress;
begin

end;

procedure TIrrdripForm.fillpseries;
begin
end;

procedure TIrrdripForm.FormClose(Sender: TObject; var Action: TCloseAction);
var driprec : driprecord;
    j : integer;
begin
   assignfile(dripfile,irrdrive+'\drippertmp.drp');
   {$i-}
   rewrite(dripfile,1);

   dRIPDBF.alock;
   Dripdbf.zap;

   with drips do
   for j:=2 to rowcount-1 do
      if cells[1,j]<>'' then
      begin
         with DripDbf do
         begin
            append;
            FieldByName('dripper').asstring:=cells[1,j];
            FieldByName('eseries').asstring:=cells[2,j];
            FieldByName('emodel').asstring:=cells[3,j];
            FieldByName('enozzle').asstring:=cells[4,j];
            FieldByName('pcode').asstring :=cells[5,j];
            FieldByName('pdiam').asstring :=cells[6,j];
            FieldByName('spacing').asfloat:=units.len_si(strtor(cells[7,j]),-1);
            FieldByName('cost').asfloat   :=strtor(cells[8,j]);
            FieldByName('partn').asstring :=cells[9,j];
            appendrec;
         end;
         with driprec do
         begin
            dripper :=cells[1,j];
            eseries :=cells[2,j];
            emodel  :=cells[3,j];
            enozzle :=cells[4,j];
            pcode   :=cells[5,j];
            pdiam   :=cells[6,j];
            spacing :=units.len_si(strtor(cells[7,j]),-1);
            cost    :=strtor(cells[7,j]);
            partn   :=cells[9,j];
         end;
         blockwrite(dripfile,driprec,sizeof(driprec));
      end;

   closefile(dripfile);
   {$i+}
   j:=ioresult;

   DripDbf.Unlock;

   with drips do
      for j:=1 to colcount-1 do
         waarde.writeint('Irrigation','Dripbox'+inttostr(j),colwidths[j]);

   waarde.writeint('Irrigation','DripboxW',width);
   waarde.writeint('Irrigation','DripboxH',height);
end;

procedure tIrrdripForm.loaddrippers;
var    j,i : integer;
begin
   //if not opendripfile then exit;

   j:=2;
   //while readdriprec(driprec) do
   Dripdbf.first;
   while not dripdbf.eof do
      with dripDbf do
      with drips do
      begin
         cells[1,j]:=FieldByName('dripper').asstring;
         cells[2,j]:=FieldByName('eseries').asstring;
         cells[3,j]:=FieldByName('emodel').asstring;
         cells[4,j]:=FieldByName('enozzle').asstring;
         cells[5,j]:=FieldByName('pcode').asstring;
         cells[6,j]:=FieldByName('pdiam').asstring;
         cells[7,j]:=rtostr(units.si_len(FieldByName('spacing').asfloat,-1),10,3);
         cells[8,j]:=rtostr(FieldByName('cost').asfloat,10,4);
         cells[9,j]:=FieldByName('partn').asString;
         inc(j);
         dripdbf.next;
      end;
   for I := j to drips.RowCount-1 do
      drips.Cells[1,i]:='zzzzzzzzzz';
   drips.SortByColumn(1);
   for j := 2 to drips.RowCount-1 do
   begin
      if drips.Cells[1,j]='zzzzzzzzzz' then drips.Cells[1,j]:='';
      drips.Cells[0,j]:=inttostr(j-1);
   end;
   //closedripfile;
end;

procedure TIrrdripForm.FormActivate(Sender: TObject);
var j : integer;
begin

 //  width:=waarde.readint('Irrigation','DripboxW',700);
 //  height:=waarde.readint('Irrigation','DripboxH',500);


   IrrNodeForm.FillNodeTree(NodeTree,3);
   IrrPipeForm.fillPipeTree(PipeTree);

   combine;

   with drips do
   begin
      for j:=2 to rowcount-1 do cells[0,j]:=inttostr(j-1);
      cells[1,0]:='Dripper Line';
      cells[1,1]:='Name';
      cells[2,0]:='Emitter';
      cells[2,1]:='Series';
      cells[3,0]:='Emitter';
      cells[3,1]:='Model';
      cells[4,0]:='Emitter';
      cells[4,1]:='Nozzle';
      cells[5,0]:='Pipe';
      cells[5,1]:='Code';
      cells[6,0]:='Pipe';
      cells[6,1]:='Name';
      cells[7,0]:='Emitter';
      cells[7,1]:='Spacing '+units.leng(-1);
      cells[8,0]:='Cost per';
      cells[8,1]:='unit length';
      cells[9,1]:='Part No.';
   end;

   loaddrippers;
   with drips do
      for j:=1 to colcount-1 do
         colwidths[j]:=waarde.readint('Irrigation','Dripbox'+inttostr(j),80);
end;

procedure TIrrdripForm.seriesClick(Sender: TObject);
begin
  { with series do
      if itemindex>=0 then
         seriesnam:=items[itemindex]
      else
         seriesnam:='';
   fillmodel;
   combine;}
end;

procedure TIrrdripForm.pseriesClick(Sender: TObject);
begin
   fillpress;
   combine;
end;

procedure TIrrdripForm.modelsClick(Sender: TObject);
begin
   combine;
end;

procedure TIrrdripForm.NodeBarItem8Click(Sender: TObject);
begin
   wat2:=(sender as tcomponent).tag;
   close;
end;

procedure TIrrdripForm.nodetreeClick(Sender: TObject);
var tt : TtreeNode;
begin
   NodeWarning.tag:=0;
   if (nodetree.selected=nil) or nodetree.selected.HasChildren then
      NodeWarning.caption:='Please select a nozzle'
   else
   begin
      s3:=NodeTree.Selected.Text;
      tt:=NodeTree.Selected.parent;
      s2:=tt.Text;
      tt:=tt.parent;
      s1:=tt.Text;
      NodeWarning.caption:=s2+'   ('+s3+')';
      NodeWarning.tag:=1;
   end;

end;

procedure TIrrdripForm.pipetreeClick(Sender: TObject);
   var tt : TtreeNode;
begin
   PipeWarning.tag:=0;
   if (Pipetree.selected=nil) or Pipetree.selected.HasChildren then
      PipeWarning.caption:='Please select a pipe diameter'
   else
   begin
      p2:=PipeTree.Selected.Text;
      p1:=PipeTree.Selected.parent.text;
      PipeWarning.caption:=p1+'   ('+p2+')';
      PipeWarning.tag:=1;

   end;
end;

procedure TIrrdripForm.PmodelsClick(Sender: TObject);
begin
   combine;
end;

function SelectedElement : boolean;
begin
   result:=false;
   with Irrdripform do
   begin
      if Nodewarning.Tag=0 then
      begin
         MESSAGEDLG('Please select a valid emitter.',MTWARNING,[MBOK],0);
         exit;
      end;
      if Pipewarning.Tag=0 then
      begin
         MESSAGEDLG('Please select a valid pipe.',MTWARNING,[MBOK],0);
         exit;
      end;
   end;
   result:=true;
end;

procedure TIrrdripForm.AddripClick(Sender: TObject);
var j,r : integer;
begin
   if not SelectedElement then exit;


   with drips do
   begin
      r:=rowcount-1;
      for j:=rowcount-1 downto 2 do
         if cells[1,j]='' then r:=j;
      cells[1,r]:=s1;
      cells[2,r]:=s1;
      cells[3,r]:=s2;
      cells[4,r]:=s3;

      cells[5,r]:=p1;
      cells[6,r]:=p2;
      row:=r;
   end;
end;

procedure TIrrdripForm.dripsSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var j,k : integer;
    s1,s2,s3 : Shortstring;
begin
   if (acol>1) and (acol<6) then
   begin
      canselect:=false;
      drips.col:=1;
      drips.row:=arow;
      exit;
   end;
   canselect:=true;

   Nodetree.Fullcollapse;
   s1:=drips.cells[2,Arow];
   s2:=drips.cells[3,Arow];
   s3:=drips.cells[4,Arow];
   for j:=0 to nodetree.Items.Count-1 do
      if nodetree.Items[j].HasChildren=false then
         if nodetree.Items[j].Text=s3 then
            if nodetree.Items[j].parent.Text=s2 then
                if nodetree.Items[j].parent.parent.Text=s1 then
                   nodetree.Items[j].Selected:=true;
   nodetreeClick(sender);

   Pipetree.Fullcollapse;
   s1:=drips.cells[5,Arow];
   s2:=drips.cells[6,Arow];
   for j:=0 to pipetree.Items.Count-1 do
      if pipetree.Items[j].HasChildren=false then
         if pipetree.Items[j].Text=s2 then
            if pipetree.Items[j].parent.Text=s1 then
                pipetree.Items[j].Selected:=true;
   pipetreeClick(sender);
end;

procedure TIrrdripForm.EditDripClick(Sender: TObject);
begin
   if not SelectedElement then exit;
   with drips do
   begin
      if row>1 then
      begin
        cells[2,row]:=s1;
        cells[3,row]:=s2;
        cells[4,row]:=s3;

        cells[5,row]:=p1;
        cells[6,row]:=p2;
     end;
   end;
end;

procedure TIrrdripForm.DeleteDripClick(Sender: TObject);
var j,i : integer;
begin
   with drips do
      if row>0 then
      begin
         for j:=row to rowcount-1 do
            for i:=1 to colcount-1 do
               if j<rowcount-1 then
                  cells[i,j]:=cells[i,j+1]
               else
                  cells[i,j]:='';
      end;
end;

procedure TIrrdripForm.BitBtn5Click(Sender: TObject);
begin
   //panel1.visible:=false;
   //waarde.writebool('Irrigation','Dripboxmessage',not box1.checked);
end;

procedure TIrrdripForm.BitBtn6Click(Sender: TObject);
var j,i,k,s : integer;
    dup : boolean;
begin
   label5.caption:='Duplicated :';
   s:=0;
   with drips do
   for j:=2 to rowcount-1 do
   for i:=j+1 to rowcount-1 do
   begin
      dup:=true;
      for k:=2 to 6 do
         dup:=dup and ((cells[k,j]=cells[k,i]) and (cells[k,j]<>''));
      if dup then
      begin
         label5.caption:=label5.caption+' '+inttostr(j)+'&&'+inttostr(i);
         inc(s);
      end;
   end;
   if s=0 then label5.caption:='No Duplications';
end;

procedure TIrrdripForm.HelpBtnClick(Sender: TObject);
begin
   Application.HelpConText( (sender as tbitbtn).helpcontext);
end;

procedure TIrrdripForm.ImportCSVfile1Click(Sender: TObject);
var s,txt,code,s1 : string;
    i,f : integer;
    data : array[1..10] of string;
    ok : boolean;
begin
   open1.FileName:='';
   if open1.execute then
   begin
      s:=open1.FileName;

      assignfile(pfile,s);

      panel2.Visible:=true;

      reset(pfile);

      while not eof(pfile) do
      begin
         readln(pfile,txt);
         txt:=txt+',';
         code:='';

         f:=0;
         repeat
            i:=pos(',',txt);
            if i>0 then
            begin
               s:=copy(txt,1,i-1);
               txt:=copy(txt,i+1,800);
               inc(f);
               data[f]:=s;
            end;
         until (data[1]='DRIPPER') or (length(txt)<=0);
         code:=data[1];
         if (code<>'') and (code<>'DRIPPER') then
         begin
            dripdbf.First;

            while not dripdbf.Eof do
            begin
               ok:=true;
               for I := 1 to dripdbf.FieldCount do
               begin
                  s1:=trimstr(uppercase(dripdbf.fieldbyname(dripdbf.Field(i)).AsString));
                  ok:=ok and samestr(s1,uppercase(data[i]));
               end;
               dripdbf.Next;
               if ok then break;
            end;

            if not ok then
            begin
               dripdbf.first;
               dripdbf.ClearRecord;
               for I := 1 to dripdbf.FieldCount do
                  dripdbf.SetCField(dripdbf.Field(i),data[i]);

               dripdbf.Alock;
               dripdbf.appendRec;
               dripdbf.unlock;
            end;
         end;
      end;
   end;

   loaddrippers;

   panel2.Visible:=false;

end;

procedure TIrrdripForm.dripsDblClick(Sender: TObject);
var ss : shortstring;
    n : integer;
    clus : byte;
begin
   n:=drips.row;
   if drips.col=8 then
   begin
      ss:=drips.cells[8,n];
      //if newpart(ss,clus) then
        // drips.cells[8,n]:=ss;
   end
end;

end.
