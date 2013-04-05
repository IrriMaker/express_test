unit maintest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses IrrNodeDbase,IrrPipeDbase,IrrDripper,IniFileUnt;

procedure TForm2.BitBtn1Click(Sender: TObject);
var wat : integer;
begin
   wat:=1;
   repeat
      case wat of
      1 : wat:=ShowNodes;
      2 : wat:=ShowPipes;
      3 : wat:=ShowDrippers;
      end;
   until wat=0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   CreateWAARDE10;
end;

end.

