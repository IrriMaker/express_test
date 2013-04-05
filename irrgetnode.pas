unit irrgetnode;

interface

uses
  Windows, Messages, SysUtils, Classes,  vcl.Graphics, Controls,  vcl.Forms,  vcl.Dialogs,
  irrndb, StdCtrls, Buttons, ExtCtrls,
  digunt,
  dglount,
  irrvar1,
  irrvar2,
  formunt,
  form2unt,
  gmenu,
  dialog, Vcl.ComCtrls;

type
  Tgetnbox = class(TForm)
    okbut: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    ll1: TLabel;
    models: TListBox;
    nozzles: TListBox;
    series: TListBox;
    Label2: TLabel;
    Panel1: TPanel;
    items: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    pbox1: TGroupBox;
    Label3: TLabel;
    prounit: TRadioButton;
    dbunit: TRadioButton;
    ppresunit: TLabel;
    flounit: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    BitBtn5: TBitBtn;
    SpeedButton1: TSpeedButton;
    klabel: TLabel;
    Label4: TLabel;
    page1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pressures: TListBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure seriesClick(Sender: TObject);
    procedure modelsClick(Sender: TObject);
    procedure nozzlesClick(Sender: TObject);
    procedure pressuresClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure itemsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbunitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     npp:string;
     seriesnam,modelnam,nozzlenam,patname : string;
     doen,pressnum : integer;
     part2 : boolean;
     aaa   : cadarctype;
     np0  : nnode;
     stdn : stdnode;
  end;

var
  getnbox: Tgetnbox;

function getsetnode(desc:string; var np:nnode) : boolean;
function newl(ss:string; ll:tlistbox):boolean;

implementation

function newpart(var ss:Shortstring; var clus:byte) : boolean; external 'mmw2.dll';

{$R *.DFM}

function getpart(ss:string):string;
var j : integer;
begin
   result:='';
   j:=pos(char(10),ss);
   if j>0 then result:=copy(ss,j+1,100);
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

procedure fillseries;
var n,j : integer;
    nn : string;
    ww : boolean;
begin
   with getnbox do
   begin
      series.clear;
      models.clear;
      nozzles.clear;
      seriesnam:='';
      with stdnodebox do
      begin
         case items.itemindex of     {set regte page in dbase vir items}
         0 : npump.checked:=true;
         1 : nsprinkler.checked:=true;
         2 : nvalve.checked:=true;
         3 : nfitting.checked:=true;
         4 : nother.checked:=true;
         5 : Nbooster.checked:=true;
         end;

         nozzles.visible:=items.itemindex=1;
         ll1.visible:=items.itemindex=1;
         //case items.itemindex of
         //1 : label3.caption:='Pressure / Radius';
         //0,1 : label3.caption:='Pressure / Flow';
         //end;

         ww:=items.itemindex<2;    //pump + sprinkler

         pbox1.visible:=ww;

         fillgrid1;
         for n:=1 to grid1.rowcount-1 do
         begin
            nn:=grid1.cells[1,n];
            if nn<>'' then
            begin
               series.items.add(nn);
               if (np0.series=nn) then
                     series.itemindex:=n-1;
            end;
         end;
      end;
      with series do
      begin
         if (itemindex<0) and (items.count>0) then itemindex:=0;
         if itemindex>=0 then
            seriesnam:=items[itemindex]
         else
            seriesnam:='';
      end;
   end;
end;

procedure fillmodel;
var n,j : integer;
    nn : string;
begin
   with getnbox do
   begin
      patname:='';
      models.clear;
      nozzles.clear;
      with stdnodebox do
      begin
         NodeDB_Reset('','');
         while not NodeDB_eof and GetNode(seriesnam,'','') do
         begin
            if newl(node.model,models) then
            begin
               models.items.add(node.model+char(10)+node.nozzle.part);
               if (np0.series=node.series) and (np0.model=node.model) then
               begin
                  patname:=node.nozzle.patname;
                  if part2 then edit1.text:=node.nozzle.part;
                  models.itemindex:=models.count-1;
               end;
               inc(j);
            end;
            NodeDB_Next;
         end;
      end;
      with models do
      begin
         if (itemindex<0) and (items.count>0) then itemindex:=0;
         if itemindex>=0 then
         begin
            modelnam:=getmodel(items[itemindex]);
            if part2 then edit1.text:=getpart(items[itemindex]);
         end
         else
            modelnam:='';
      end;
   end;
end;

procedure fillradius;

   procedure Interpol;
   var pp : double;
       f : integer;
   begin
      val(getnbox.edit2.text,pp,f);
      pp:=units.press_SI(pp,0);
      with stdnodebox do
      with getnbox do
      begin
         with stdn do
         begin
            np0.pressdes:=pp;
            np0.outflowdes:=nozzle.flow[1];
            np0.marc.straal:=nozzle.radi[1];
            for f:= 1 to 19 do
            if (pp>=nozzle.press[f]) and (pp<=nozzle.press[f+1]) then
            begin
               np0.outflowdes:=nozzle.flow[f]+(nozzle.flow[f+1]-nozzle.flow[f])/(nozzle.press[f+1]-nozzle.press[f])*(pp-nozzle.press[f]);
               np0.marc.straal:=nozzle.radi[f]+(nozzle.radi[f+1]-nozzle.radi[f])/(nozzle.press[f+1]-nozzle.press[f])*(pp-nozzle.press[f]);
               break;
            end;
         end;
      end;
   end;

begin
   with stdnodebox do
   with getnbox do
   begin
      with stdn do
      begin
         np0.marc.enda:=marc.enda;
         if (pressnum>0) and (page1.ActivePageIndex=0) then
         begin
            np0.pressdes:=nozzle.press[pressnum];
            np0.outflowdes:=nozzle.flow[pressnum];
            np0.marc.straal:=nozzle.radi[pressnum];
         end
         else
         begin
            interpol;
         end;
         //np0.loss:=stdn.marc.cenx;
      end;
      okbut.enabled:=true;
      if panel1.caption='<><>' then
      begin
         okbut.enabled:=FALSE;
         panel1.caption:='No data selected.  Select valid data  OR  check the data base';
      end;
   end;
end;

procedure fillpress;
var n,j,des : integer;
    nn : string;
    pp,pp2,_loss : double;
begin
   with getnbox do
   begin
      pressures.clear;
      _loss:=0;

      with stdnodebox do
      begin
         j:=1;
         NodeDB_Reset('','');
         if not NodeDB_eof and GetNode(seriesnam,modelnam,nozzlenam) then
         begin
            if prounit.checked then
            begin
               ppresunit.caption:=units.press(-1);
               flounit.caption:=units.flow(-1);
            end
            else
            begin
               ppresunit.caption:=units.press(node.punit);
               flounit.caption:=units.flow(node.funit);
            end;
            aaa:=node.marc;
            patname:=node.nozzle.patname;
            stdn:=node;
            _loss:=node.marc.cenx;
            getnbox.klabel.caption:=rtostr(_loss,10,2);
            with node.nozzle do
            for n:=1 to 19 do
            begin
               if press[n]<>0 then
               begin
                  if prounit.checked then
                  begin
                     pp:=units.si_press(press[n],-1);
                    // if items.itemindex=0 then  {pump}
                     pp2:=units.si_flow(flow[n],-1)
                    // else
                    //    pp2:=units.si_len(radi[n],-1);
                  end
                  else
                  begin
                     pp:=units.si_press(press[n],node.punit);
                    // if items.itemindex=0 then  {pump}
                     pp2:=units.si_flow(flow[n],node.funit);
                  end;
                  des:=2; if pp2<0.1 then des:=3;
                  pressures.items.add(r_s(pp,8,2)+' | '+r_s(pp2,8,des));
                  if (abs(np0.pressdes-press[n])<1) then
                     pressures.itemindex:=n-1;
               end;
               if np0.soort=6 then
               begin
                  np0.outflowdes:=flow[1];
               end;
            end;
            inc(j);
         end;
      end;
      with pressures do
      begin
         if (itemindex<0) and (items.count>0) then itemindex:=0;
         if itemindex>=0 then
            pressnum:=itemindex+1
         else
            pressnum:=1;
      end;
      panel1.caption:=seriesnam+'<>'+modelnam+'<>'+nozzlenam;
      np0.series:=seriesnam;
      np0.model:=modelnam;
      np0.nozzle:=nozzlenam;
      np0.marc.pen:=aaa.pen;
      np0.marc.layer:=aaa.layer;
      np0.marc.ltipe:=aaa.ltipe;
      np0.marc.enda :=aaa.Enda;
      np0.patname:=patname;
      np0.loss:=_loss;
      fillradius;
   end;
end;

procedure fillnozzle;
var n,j : integer;
    ss,nn : string;
begin
   with getnbox do
   begin
      nozzles.clear;
      with stdnodebox do
      begin
         j:=1;
         NodeDB_Reset('','');
         while not NodeDB_eof and GetNode(seriesnam,modelnam,'') do
         begin
            if newl(node.nozzle.name,nozzles) then
            begin
               nozzles.items.add(node.nozzle.name);
               if (np0.series=node.series) and (np0.model=node.model) and
                  (np0.nozzle=node.nozzle.name) then
               begin
                  nozzles.itemindex:=j-1;
                  patname:=node.nozzle.patname;
               end;
               inc(j);
            end;
            nodeDB_next;
         end;
      end;
      with nozzles do
      begin
         if (itemindex<0) and (items.count>0) then itemindex:=0;
         if itemindex>=0 then
            nozzlenam:=items[itemindex]
         else
            nozzlenam:='';
      end;
   end;
   fillpress;
end;

function getsetnode(desc:string; var np:nnode) : boolean;
label weer;
var nn1 : nnode;
    j,j1 : integer;
    ss  : Shortstring;
    clus : byte;
begin
   Application.CreateForm(Tgetnbox,getnbox);
  { nirr[Ipro].clearnp(np);}
   with getnbox do
   begin
      caption:=do_upcase(desc);
      part2:=true;
      with waarde do
      with np do
      begin
         if (series='') or (model='') or (nozzle='') then
         begin
            series:=readstring('Irri','Defseries','');
            model:=readstring('Irri','Defmodel','');
            nozzle:=readstring('Irri','Defnozzle','');
            pressdes:=readreal('Irri','Defpress',20);
         end;
      end;

     // np0:=np;
      if np.soort=0 then
         items.itemindex:=waarde.readint('Irrig','Basenode',1)-1
      else
         items.itemindex:=np.soort-1;
      np0:=np;

      weer:

     // edit1.text:=np.part;

      fillseries;
      fillmodel;
      fillnozzle;

      doen:=0;
      _dil.save(true);
      showmodal;
      case doen of
      1 : begin
             skoon24('Indicate node to get defaults from');
             if freep and nirr[Ipro].getnaastenode(j1,nn1,true) then
             begin
                items.itemindex:=nn1.soort-1;
                nn1:=nirr[Ipro].pin(blok,j1);
                np0.series:=nn1.series;
                np0.model:=nn1.model;
                np0.nozzle:=nn1.nozzle;
                np0.pressdes:=nn1.pressdes;
                np0.marc.pen:=nn1.marc.pen;
             end;
          end;
       2 : stdnodebox.showmodal;
       3 : if newpart(ss,clus) then
           begin
//              np.cluster:=clus;
              np.part1:=ss;
              edit1.text:=ss;
              part2:=false;
           end;
       end;
       if doen<>0 then goto weer;

      result:=modalresult=mrok;

      if result then
      begin
         np:=np0;
         with np do
         with waarde do
         begin
            writestring('Irri','Defseries',series);
            writestring('Irri','Defmodel',model);
            writestring('Irri','Defnozzle',nozzle);
            writereal('Irri','Defpress',pressdes);
            part1:=edit1.text;
            soort:=items.itemindex+1;  {pump,spray,valve ens}
           (* if soort=5 then
            begin
               pressdes:=nozzle.press[1];     {pak regular press in pressdes}
            end;  *)
         end;
         stdnodebox.partoglo(np.marc);
      end;
      release;
   end;
end;

procedure Tgetnbox.BitBtn3Click(Sender: TObject);
begin
   doen:=(sender as tbitbtn).tag;
   close;
end;


procedure Tgetnbox.seriesClick(Sender: TObject);
begin
   with series do seriesnam:=items[itemindex];
   fillmodel;
   fillnozzle;
end;

procedure Tgetnbox.modelsClick(Sender: TObject);
begin
   with models do
   begin
      modelnam:=getmodel(items[itemindex]);
      if part2 then edit1.text:=getpart(items[itemindex]);
   end;
   np0.model:=modelnam;
   fillnozzle;
end;

procedure Tgetnbox.nozzlesClick(Sender: TObject);
begin
   with nozzles do nozzlenam:=items[itemindex];
   fillpress;
end;

procedure Tgetnbox.pressuresClick(Sender: TObject);
begin
   pressnum:=pressures.itemindex+1;
   fillradius;
end;

procedure Tgetnbox.FormDeactivate(Sender: TObject);
begin
   waarde.writeint('Irrig','Basenode',items.itemindex+1);
   waarde.writebool('Irrig','Dbunit',dbunit.checked);

   waarde.writeint('Irrig','DbPage',page1.ActivePageIndex);
   waarde.writereal('Irrig','DbUserPress',units.press_SI(strtor(edit2.Text),0));
end;

procedure Tgetnbox.itemsClick(Sender: TObject);
begin
   if (blok>0) and (items.itemindex=5) then items.ItemIndex:=1;
   fillseries;
   fillmodel;
   fillnozzle;
end;

procedure Tgetnbox.FormActivate(Sender: TObject);
begin
   dbunit.checked:=waarde.readbool('Irrig','Dbunit',false);
   page1.ActivePageIndex:=waarde.readint('Irrig','DbPage',0);
   edit2.text:=rtostr(units.SI_press(waarde.readreal('Irrig','DbUserPress',20),0),10,2);
end;

procedure Tgetnbox.dbunitClick(Sender: TObject);
begin
   fillpress;
end;

procedure Tgetnbox.SpeedButton1Click(Sender: TObject);
begin
   edit1.text:='';
   part2:=false;
end;

procedure Tgetnbox.Edit1DblClick(Sender: TObject);
begin
   doen:=3;
   close;
end;

procedure Tgetnbox.Edit2Change(Sender: TObject);
begin
   fillradius;
end;

procedure Tgetnbox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   stdnodebox.clear0;
end;

procedure Tgetnbox.BitBtn4Click(Sender: TObject);
begin
   Application.HelpConText( (sender as tbitbtn).helpcontext);
end;

end.
