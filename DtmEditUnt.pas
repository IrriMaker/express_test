unit DtmEditUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxProgressBar, Vcl.ComCtrls;

type
  TDtmForm = class(TForm)
    DtmGrid: TAdvStringGrid;
    PBar: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure DtmGridCanAddRow(Sender: TObject; var CanAdd: Boolean);
    procedure DtmGridCellChanging(Sender: TObject; OldRow, OldCol, NewRow,
      NewCol: Integer; var Allow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmForm: TDtmForm;


implementation

{$R *.dfm}

uses Dataunt,form2unt;

procedure TDtmForm.DtmGridCanAddRow(Sender: TObject; var CanAdd: Boolean);
begin
  // CanAdd:=DtmGrid.Row=Dbase.Dtms.No+1;
end;

procedure TDtmForm.DtmGridCellChanging(Sender: TObject; OldRow, OldCol, NewRow,
  NewCol: Integer; var Allow: Boolean);
begin
   Allow:=true;
   if NewRow=DtmGrid.RowCount-1 then
   begin
      DtmGrid.Cells[0,NewRow]:=inttostr(NewRow);
      DtmGrid.RowCount:=DtmGrid.RowCount+1;
   end;
end;

procedure TDtmForm.FormActivate(Sender: TObject);
var j : integer;
begin
   with DtmGrid do
   begin
      ClearAll;
      visible:=false;
      RowCount:=2;
      Pbar.Max:=Dbase.Dtms.No;
      Pbar.Visible:=true;
      colwidths[0]:=65;
      cells[1,0]:='Code';
      cells[2,0]:='Tag';
      cells[3,0]:='Y';
      cells[4,0]:='X';
      cells[5,0]:='Z';
      if Dbase.Dtms.No>0 then
         RowCount:=Dbase.Dtms.No+2;
      Row:=1;
      for j:=1 to Dbase.Dtms.No do
      begin
          Cells[0,j]:=inttostr(j);
          Cells[1,j]:=Dbase.Dtms.Dtm[j].p1.Code;
          Cells[2,j]:=Dbase.Dtms.Dtm[j].p1.Tag;
          Cells[3,j]:=rtostr(Dbase.Dtms.Dtm[j].p1.xyz.y,12,3);
          Cells[4,j]:=rtostr(Dbase.Dtms.Dtm[j].p1.xyz.x,12,3);
          Cells[5,j]:=rtostr(Dbase.Dtms.Dtm[j].p1.xyz.z,12,3);
          Pbar.Position:=j;
       end;
       visible:=true;
   end;
   Pbar.Visible:=false;
end;

procedure TDtmForm.FormClose(Sender: TObject; var Action: TCloseAction);
var j,i : integer;
    code,tag : str10;
    x,y,z    : Double;
    s : string;
begin
   Dbase.Dtms.No:=0;
   DtmGrid.Row:=1;
   Pbar.Visible:=true;
   Pbar.Max:=DtmGrid.RowCount-1;
   for j:=1 to DtmGrid.RowCount-1 do
   begin
      Pbar.Position:=j;
      s:=''; for i := 1 to 5 do s:=s+DtmGrid.Cells[i,j];
      if s<>'' then
      begin
         Code:=DtmGrid.Cells[1,j];
         Tag :=DtmGrid.Cells[2,j];
         Y:=strtor(DtmGrid.Cells[3,j]);
         X:=strtor(DtmGrid.Cells[4,j]);
         Z:=strtor(DtmGrid.Cells[5,j]);
         Dbase.Dtms.Add(Code,Tag,x,y,z);
      end;
   end;
   with DtmGrid do
   begin
      RowCount:=2;
      Clear;
   end;
   Pbar.Visible:=false;
end;

end.

