unit IrrPipeDbase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGroupBox, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Data.DB, tzprimds, ucommon,
  utzcds, utzfds,glount, Vcl.Menus, cxButtons, Vcl.ComCtrls, dxNavBarStyles,
  dxNavBarGroupItems, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  irrvar2;

type

    PipeDbObj = object
       List : array of StdPipe;
       ListNo : integer;
    end;


  TIrrPipeForm = class(TForm)
    PipeBox2: TGroupBox;
    gb2: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    PresUnitPipe: TcxComboBox;
    DiamUnitPipe: TcxComboBox;
    LenUnitPipe: TcxComboBox;
    PipeGrid: TAdvStringGrid;
    PipeDbf: TTzDbf;
    DataSource3: TDataSource;
    Label5: TLabel;
    ptype: TcxComboBox;
    Label12: TLabel;
    Label13: TLabel;
    cxLabel1: TcxLabel;
    pfric: TcxComboBox;
    dfric: TcxComboBox;
    diamgrid: TAdvStringGrid;
    SaveBut: TcxButton;
    editbox: TcxGroupBox;
    EditBoxPage: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    changec: TcxTextEdit;
    changep_: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    SpeedButton1: TSpeedButton;
    cxButton2: TcxButton;
    del1: TcxLabel;
    del2: TcxLabel;
    start1: TcxTextEdit;
    start2: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxButton3: TcxButton;
    NodeBar: TdxNavBar;
    NodeBarGroup1: TdxNavBarGroup;
    NodeBarGroup2: TdxNavBarGroup;
    NodeBarGroup3: TdxNavBarGroup;
    NodeBarItem6: TdxNavBarItem;
    NodeBarItem8: TdxNavBarItem;
    NodeBarStyleItem1: TdxNavBarStyleItem;
    procedure DiamGridCanClickCell(Sender: TObject; ARow, ACol: Integer;
      var Allow: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PipeGridClick(Sender: TObject);
    procedure PresUnitPipePropertiesChange(Sender: TObject);
    procedure diamgridEditChange(Sender: TObject; ACol, ARow: Integer;
      Value: string);
    procedure PipeGridEnter(Sender: TObject);
    procedure SaveButClick(Sender: TObject);
    procedure PipeGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure diamgridExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NodeBarItem6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pipe1 : stdpipe;
    busy,changed : boolean;
    wat2 : integer;
    procedure fillPipeGroup;
    procedure filldiam;

    procedure Fill_Pipe_one(var Pipe1 : stdPipe);
    procedure Fill_Pipe_data(Code_,Name_:string; var Pipe1 : stdPipe);
    procedure Save_Pipe_data;

    procedure updatePipeHeaders;
    procedure ShowChanged(didChange:boolean);

    Procedure FillPipeList;
    procedure fillPipeTree(var PipeTree : TtreeView);

  end;

  function ShowPipes : integer;

var

  PipeDbList : PipeDbObj;
  IrrPipeForm: TIrrPipeForm;

implementation

{$R *.dfm}

uses form2unt,irrVar0, IrrNodeDbase;

function ShowPipes : integer;
begin
   with IrrPipeForm do
   begin
      wat2:=0;
      ShowModal;
      result:=wat2;
   end;
end;

function trimstr(s:string):string;
var j,l : integer;
begin

   l:=0;   //length(s);
   for j:=1 to length(s) do
      if (s[j]<>' ') then l:=j;
   result:='';
   if l>0 then result:=copy(s,1,l);
end;

function sameSTR(s1,s2 : string):boolean;
begin
   result:=trimSTR(s1)=trimSTR(s2);
end;

function thisrec(code,name : string):boolean;
begin
   result:=false;
   //if (code<>'') and (name<>'') then
      if not samestr(IrrPipeform.pipedbf.getfield('code'),code) and
         not samestr(IrrPipeform.pipedbf.getfield('name'),name) then exit;
   result:=true;
end;

procedure TIrrPipeForm.updatePipeHeaders;
begin
   busy:=true;
   pfric.Text:=rtostr(pipe1.head.hw,10,2);
   dfric.Text:=rtostr(pipe1.head.dw,10,3);
   presunitPipe.itemindex:=pipe1.punit;
   diamunitPipe.itemindex:=pipe1.dunit;
   lenunitPipe.itemindex:=pipe1.lunit;
   ptype.text:=pipe1.head.Tipe;

   Pipebox2.Caption:='Pipe Diameters  ';
   diamgrid.cells[2,1]:='('+units.diam(pipe1.dunit)+')';
   diamgrid.cells[3,1]:='('+units.diam(pipe1.dunit)+')';
   diamgrid.cells[4,1]:='('+units.press(pipe1.punit)+')';
   diamgrid.cells[5,1]:='per '+units.press(pipe1.lunit);
   busy:=false;
end;

procedure TIrrPipeForm.ShowChanged(didChange:boolean);
begin
   Savebut.Visible:=didchange;
   changed:=DidChange;

   if Didchange then
       gb2.Top:=8 else gb2.Top:=pipegrid.Top;
end;

procedure TIrrPipeForm.SpeedButton1Click(Sender: TObject);
begin
   editbox.Visible:=false;
end;

procedure TIrrPipeForm.Fill_Pipe_one(var Pipe1 : stdPipe);
var j : integer;
begin
   fillchar(pipe1,sizeof(pipe1),0);

   with pipe1 do
   begin
      head.code:=Pipedbf.fieldbyname('code').asstring;
      head.name:=Pipedbf.fieldbyname('name').asstring;
      head.tipe:=Pipedbf.fieldbyname('type').asstring;

      punit:=trunc(Pipedbf.getRealfield('punit'));
      lunit:=trunc(Pipedbf.getRealfield('lunit'));
      dunit:=trunc(Pipedbf.getRealfield('dunit'));

      head.dw:=Pipedbf.getrealfield('darcyw');
      head.hw:=Pipedbf.getrealfield('hazenw');

      if head.hw=0 then head.hw:=130;

      j:=1;

      while (Pipedbf.active) and (not Pipedbf.eof) do
      begin
         lll[j].pen  :=trunc(Pipedbf.getrealfield('pen'));
         lll[j].ltipe:=trunc(Pipedbf.getrealfield('linetype'));
         classn[j]   :=Pipedbf.fieldbyname('classname').asstring;
         partn[j]    :=Pipedbf.fieldbyname('partnumber').asstring;
         id[j]    :=Pipedbf.getrealfield('ID');
         maxp[j]  :=Pipedbf.getrealfield('Maxpress');
         cost[j]  :=Pipedbf.getrealfield('cost');
         od[j]    :=Pipedbf.getrealfield('od');
         hw[j]    :=Pipedbf.getrealfield('hazenw');

         if (id[j]>0) and (hw[j]=0) then hw[j]:=head.hw;

         kd[j]    :=Pipedbf.getrealfield('KD');
         inc(j);
         Pipedbf.next;
      end;
   end;
end;

procedure TIrrPipeForm.Fill_Pipe_data(Code_,Name_:string; var Pipe1 : stdPipe);
begin
   pipedbf.SetFilterTo('code='+char(39)+code_+CHAR(39)+' .AND. '+'name='+char(39)+name_+CHAR(39));
   PipeDbf.First;
   Showchanged(false);

   Fill_Pipe_one(pipe1);
end;

procedure TIrrPipeForm.PresUnitPipePropertiesChange(Sender: TObject);
begin
   if busy then exit;

   Showchanged(true);
   pipe1.punit:=presunitPipe.itemindex;
   pipe1.dunit:=diamunitPipe.itemindex;
   pipe1.lunit:=lenunitPipe.itemindex;
   pipe1.head.dw  :=strtor(dfric.text);
   pipe1.head.hw  :=strtor(pfric.text);
   pipe1.head.Tipe:=ptype.text;
   filldiam;
   UpdatePipeheaders;
end;

function DoubleName(var gg:TAdvstringGrid; name1,name2:Shortstring):boolean;
var j : integer;
    s1,s2 : Shortstring;
begin
   result:=true;
   with gg do
      for j:=1 to rowcount-1 do
      begin
         s1:=cells[1,j];
         s2:=cells[2,j];
         if (name1=s1) and (name2=s2) then exit;
      end;
   result:=false;
end;


procedure TIrrPipeForm.Save_Pipe_data;
var j : integer;


   procedure PipeDB_Delete(code,name : Shortstring);
   begin
      pipedbf.first;
      while not pipedbf.eof do
      begin
         if Thisrec(code,name) then
         begin
            pipedbf.deleteRec;     //must be in exclusive mode!!!
         end
         else
            pipedbf.next;
      end;
   end;

   procedure PipeDB_Adddata(code,naam,tipe,classn,PartN : Shortstring; punit,lunit,dunit,id,maxp,cost,od,hw,dw,pen,ltipe,kd:double);
   begin
      pipedbf.setcfield('code',code);
      pipedbf.setCfield('name',naam);
      pipedbf.setCfield('type',tipe);

      pipedbf.setRealfield('punit',punit);
      pipedbf.setRealfield('lunit',lunit);
      pipedbf.setRealfield('dunit',dunit);

      pipedbf.setrealfield('darcyw',dw);
      pipedbf.setrealfield('hazenw',hw);

      pipedbf.setrealfield('pen',pen);
      pipedbf.setrealfield('linetype',ltipe);

      pipedbf.setCfield('classname',classn);
      pipedbf.setCfield('partnumber',partn);

      pipedbf.setrealfield('ID',id);
      pipedbf.setrealfield('Maxpress',maxp);
      pipedbf.setrealfield('cost',cost);
      pipedbf.setrealfield('od',od);
      pipedbf.setrealfield('kd',kd);

      pipedbf.appendRec;
   end;

begin
   PipeDB_Delete(pipe1.head.code,pipe1.head.name);
   with pipe1 do
   for j:=1 to maxpipe do
      if (classn[j]<>'') and (id[j]<>0) then
      PipeDB_Adddata(head.code,head.name,head.tipe,classn[j],partn[j],punit,lunit,dunit,
                    id[j],maxp[j],cost[j],od[j],hw[j],head.dw,lll[j].pen,lll[j].ltipe,kd[j]);
end;

procedure TIrrPipeForm.fillPipeGroup;
var s1,s2 : string;
     n : integer;
begin
   pipedbf.SetFilterTo('');
   pipegrid.Clear;
   pipegrid.cells[1,0]:='Group code';
   pipegrid.cells[2,0]:='Group name';
   pipegrid.RowCount:=2;
   pipedbf.first;
   n:=1;

   while not Pipedbf.eof do
   begin
      s1:=pipedbf.Fieldbyname('code').asstring;
      s2:=pipedbf.Fieldbyname('name').asstring;
      if not DoubleName(pipeGrid,s1,s2) then //and (Node.model<>'') then
      begin
         if n>PipeGrid.rowcount-1 then PipeGrid.rowcount:=N+1;
         PipeGrid.cells[1,n]:=s1;
         PipeGrid.cells[2,n]:=s2;
         inc(n);
      end;
      pipeDBf.Next;
   end;

   pipegrid.SortByColumn(1);

   with PipeGrid do
      if RowCount>1 then
      begin
         Row:=1;
         Fill_Pipe_data(cells[1,row],cells[2,row],Pipe1);
      end;
end;

procedure TIrrPipeForm.filldiam;
var n,j : integer;
begin
   with pipe1 do
   with diamgrid do
   for n:=1 to maxpipe do
   begin
      cells[1,n+1]:=classn[n];
      cells[2,n+1]:=rtostr_(units.si_diam(Od[n],dunit),10,3);
      cells[3,n+1]:=rtostr_(units.si_diam(id[n],dunit),10,3);
      cells[4,n+1]:=rtostr_(units.si_press(maxp[n],punit),10,2);
      cells[5,n+1]:=rtostr(units.len_si(cost[n],lunit),10,2);    //save cost as price / meter
      cells[6,n+1]:=rtostr_(hw[n],10,2);    //save cost as price / meter
      cells[7,n+1]:=rtostr_(units.si_diam(kd[n],dunit),10,3);
      cells[8,n+1]:=inttostr(lll[n].pen);
      cells[9,n+1]:=PartN[n];
   end;
end;

procedure TIrrPipeForm.SaveButClick(Sender: TObject);
var n,j,f : integer;
    s20 : str20;
    rr : double;
    idSame : boolean;
    lyne : cadlinetype;
begin
   ShowChanged(false);
   with Diamgrid do
   begin
      with pipe1 do
      begin
         for j:=1 to maxpipe do
             if lll[j].pen<1 then lll[j].pen:=1;
         with waarde do
         begin
            punit:=presunitPipe.itemindex;
            dunit:=diamunitPipe.itemindex;
            lunit:=lenunitPipe.itemindex;
            with head do
            begin
               //name:=pname.text;
               //code:=pcode.text;  fixed edited
               tipe:=ptype.text;
               r(dfric.text,dw,0,1e20);
               r(pfric.text,hw,0,1e20);
               od:=0;
               //r(pod.text,OD,0,1e6);
               //od:=units.Diam_SI(od,dunit);
            end;

            for n:=1 to rowcount-2 do
            begin
               classn[n]:=cells[1,n+1];

               r(cells[2,n+1],Od[n],0,1e6);
               od[n]:=abs(units.diam_SI(Od[n],dunit));

               r(cells[3,n+1],id[n],0,1e6);
               id[n]:=abs(units.diam_SI(id[n],dunit));

               r(cells[4,n+1],maxp[n],0,1e6);
               maxp[n]:=units.press_si(maxp[n],punit);

               r(cells[5,n+1],cost[n],0,1e6);
               cost[n]:=units.si_len(cost[n],lunit); //save cost as /meter

               r(cells[6,n+1],hw[n],0,1e6);

               r(cells[7,n+1],kd[n],0,1e6);
               kd[n]:=abs(units.diam_SI(kd[n],dunit));

               if (cells[8,n+1]='') or (cells[8,n+1]='0') then cells[8,n+1]:=inttostr(n);

               Partn[n]:=cells[9,n+1];

               lll[n].pen:=n;

               val(cells[8,n+1],lll[n].pen,f);

            end;
            for n:=1 to maxpipe do
            begin
               if id[n]=0 then id[n]:=1e6;
               if od[n]=0 then od[n]:=1e6;
            end;

            idSame:=false;

            for n:=1 to maxpipe do
               for j:=n+1 to maxpipe do
               begin
                  if (id[n]=id[j]) and (id[n]<>1e6) then idSame:=true;
                  if (od[n]>od[j]) or ( (od[n]=od[j]) and (id[n]>id[j])) then
                  begin
                     lyne:=lll[n];   lll[n]:=lll[j];       lll[j]:=lyne;
                     s20:=classn[n]; classn[n]:=classn[j]; classn[j]:=s20;
                     s20:=partn[n]; partn[n]:=partn[j]; partn[j]:=s20;

                     rr:=ID[n];      id[n]:=id[j];         id[j]:=rr;
                     rr:=oD[n];      od[n]:=od[j];         od[j]:=rr;
                     rr:=Maxp[n];    maxp[n]:=maxp[j];     maxp[j]:=rr;
                     rr:=cost[n];    cost[n]:=cost[j];     cost[j]:=rr;
                     rr:=hw[n];      hw[n]:=hw[j];         hw[j]:=rr;
                     rr:=KD[n];      KD[n]:=KD[j];         KD[j]:=rr;
                  end;
               end;

            for n:=1 to maxpipe do if id[n]=1e6 then id[n]:=0;
         end;
      end;
      save_pipe_data;
   end;
end;

procedure TIrrPipeForm.cxButton1Click(Sender: TObject);
begin
   waarde.writeint('Pipe','Editbox',editboxPage.ActivePageIndex);
   if not MESSAGEDLG('Continue to delete the pipe group and diameters? .',MTWARNING,[MBOK,MBCancel],0)=MRok then
   begin
      editbox.Visible:=false;
      exit;
   end;

   editbox.Visible:=false;

   pipedbf.first;
   while not pipedbf.eof do
   begin
      if Thisrec(del1.caption,del2.caption) then
      begin
         pipedbf.deleteRec;     //must be in exclusive mode!!!
      end
      else
         pipedbf.next;
   end;
   FormActivate(sender);   //refresh all
end;

procedure TIrrPipeForm.cxButton2Click(Sender: TObject);
var s1,s2 : string;
begin

   with pipegrid do
   begin
      s1:=cells[1,row];
      s2:=cells[2,row];
      if (changec.Text<>'') and (changep_.Text<>'') then
      begin
         pipedbf.setfilterto('');
         pipedbf.first;
         while (not pipedbf.eof) do
         begin
            if Thisrec(s1,s2) then
            begin
               Pipedbf.edit;
               Pipedbf.setCfield('code',changec.Text);
               Pipedbf.setCfield('name',changep_.Text);
            end;
            Pipedbf.next;
         end;
         cells[1,row]:=changec.Text;
         cells[2,row]:=changep_.Text;
      end;
   end;
   waarde.writeint('Pipe','Editbox',editboxPage.ActivePageIndex);
   editbox.Visible:=false;
end;

procedure TIrrPipeForm.cxButton3Click(Sender: TObject);
var j : integer;
begin
   fillchar(pipe1,sizeof(pipe1),0);
   with pipe1 do
   begin
      head.code:=start1.Text;
      head.name:=start2.Text;
      head.tipe:=ptype.Text;


      punit:=presunitPipe.ItemIndex;
      lunit:=lenunitPipe.ItemIndex;
      dunit:=diamunitPipe.itemindex;

      head.hw:=strtor(pfric.Text);
      head.dw:=strtor(dfric.Text);

      if head.hw=0 then head.hw:=130;
      if head.dw=0 then head.hw:=0.3;

      classn[1]:='Pipe';
      id[1]:=10;
      od[1]:=10;
      hw[1]:=head.hw;
      maxp[1]:=10;

   end;
   editbox.Visible:=false;
   pipedbf.SetFilterTo('');
   save_pipe_data;
   fillPipeGroup;
   for j:=1 to pipegrid.RowCount-1 do
      if pipegrid.Cells[1,j]=start1.text then pipegrid.Row:=j;

   waarde.writeint('Pipe','Editbox',editboxPage.ActivePageIndex);
end;

procedure TIrrPipeForm.DiamGridCanClickCell(Sender: TObject; ARow, ACol: Integer;
  var Allow: Boolean);
begin
  { case acol of
   1 : PIPEHINT.Caption:='Enter the pipe name';
   2 : pipehint.Caption:='Outside diameter';
   3 : pipehint.Caption:='Inside diameter';
   else
      pipehint.Caption:='';
   end;}
end;

procedure TIrrPipeForm.diamgridEditChange(Sender: TObject; ACol, ARow: Integer;
  Value: string);
begin
   Showchanged(true);
end;

procedure TIrrPipeForm.diamgridExit(Sender: TObject);
begin
   if changed then SaveButclick(sender);
end;

procedure TIrrPipeForm.FormActivate(Sender: TObject);
begin
   fillPipeGroup;
   pipegrid.Row:=1;
   PipeGridClick(Sender);
end;

procedure TIrrPipeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if changed then SaveButclick(sender);
end;

procedure TIrrPipeForm.FormCreate(Sender: TObject);
var j : integer;
begin
   pipegrid.cells[1,0]:='Group code';
   pipegrid.cells[2,0]:='Group name';

   with diamgrid do
   begin
      rowcount:=maxpipe+2;

      for j:=2 to rowcount-1 do cells[0,j]:=inttostr(j-1);
      cells[0,0]:='#';
      colwidths[0]:=20;
      colwidths[1]:=100;
      colwidths[2]:=70;
      colwidths[3]:=70;
      colwidths[4]:=75;
      colwidths[5]:=70;
      colwidths[6]:=60;
      colwidths[7]:=60;
      colwidths[8]:=55;
      colwidths[9]:=115;


      cells[1,0]:='Name';
      cells[2,0]:='OD';
      cells[3,0]:='ID';
      cells[4,0]:='Max press';
      cells[5,0]:='Cost';
      cells[6,0]:='Ch';
      cells[7,0]:='KD';
      cells[8,0]:='Color';
      cells[9,0]:='PartNumber';
   end;

end;

procedure TIrrPipeForm.NodeBarItem6Click(Sender: TObject);
begin
   wat2:=(sender as tcomponent).tag;
   close;
end;

procedure TIrrPipeForm.PipeGridClick(Sender: TObject);
var s1,s2 : string;
begin
   with Pipegrid do
   begin
      s1:=cells[1,row];
      s2:=cells[2,row];
      Fill_Pipe_data(s1,s2,Pipe1);
      UpdatePipeHeaders;
   end;
   FillDiam;
end;

procedure TIrrPipeForm.PipeGridEnter(Sender: TObject);
begin
   if changed then SaveButclick(sender);
end;

procedure TIrrPipeForm.PipeGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if shift = [ssRight] then
   with pipegrid do
   begin
      EditBoxpage.ActivePageIndex:=waarde.Readint('Pipe','Editbox',1);
      changec.Text:=cells[1,row];
      changep_.Text:=cells[2,row];

      del1.caption:=changec.Text;
      del2.caption:=changep_.Text;

      editbox.visible:=true;
   end;
end;

Procedure TIrrPipeForm.FillPipeList;
var j     : integer;
    Pipe1 : stdPipe;
begin
   FillPipeGroup;
   with PipeDbList do
   begin
      Setlength(List,100);
      ListNo:=0;
      for j:=1 to PipeGrid.rowcount-1 do
      begin
         inc(ListNo);
         if high(List)<ListNo+1 then Setlength(List,ListNo+10);
         Fill_Pipe_data(PipeGrid.cells[1,j],PipeGrid.cells[2,j],List[ListNo]);
      end;
   end;
end;

procedure TIrrPipeForm.fillPipeTree(var PipeTree : TtreeView);
var j,k : integer;
  I,n: Integer;
  CodeN,DiameterN : TtreeNode;

  function FirstCode(No : integer) : boolean;
  var j : integer;
      s : string;
  begin
     with PipeDbList do
     begin
        s:=list[No].head.name+list[No].head.code;
        result:=false;
        for j:=1 to No-1 do
           if (list[j].head.name+list[No].head.code=s) then exit;
        result:=true;
     end;
  end;

begin

   PipeDbF.setfilterto('');
   FillPipeList;

   PipeTree.Items.Clear;

   CodeN:=nil;
   with PipeDbList do
   for j:=1 to listNo do
      begin
         Coden:=Pipetree.Items.AddFirst(Nil,List[j].head.Code+' / '+List[j].head.name);
         for n:=1 to MaxPipe do
         if List[j].od[n]>0 then
            Diametern:=Pipetree.Items.AddChild(CodeN,List[j].classn[n]+' : '+rtostr_(units.si_diam(List[j].Od[n],List[j].dunit),10,3));
      end;
end;



end.

