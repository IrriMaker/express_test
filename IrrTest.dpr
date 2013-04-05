program IrrTest;

uses
  Vcl.Forms,
  IrrNodeDbase in 'IrrNodeDbase.pas' {IrrDbForm},
  irrvar0 in 'irrvar0.pas',
  IrrPipeDbase in 'IrrPipeDbase.pas' {IrrPipeForm},
  maintest in 'maintest.pas' {Form2},
  irrvar2 in 'irrvar2.pas',
  irrvar1 in 'irrvar1.pas',
  irrdripper in 'irrdripper.pas' {IrrdripForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TIrrDbForm, IrrDbForm);
  Application.CreateForm(TIrrPipeForm, IrrPipeForm);
  Application.CreateForm(TIrrdripForm, IrrdripForm);
  Application.Run;
end.
