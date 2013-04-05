program MMExpress;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  DataUnt in 'DataUnt.pas',
  GloUnt in 'GloUnt.pas',
  plotUnt in 'plotUnt.pas',
  MouseUnt in 'MouseUnt.pas',
  irrdripper in 'irrdripper.pas' {IrrdripForm},
  IrrPipeDbase in 'IrrPipeDbase.pas' {IrrPipeForm},
  IrrNodeDbase in 'IrrNodeDbase.pas' {IrrNodeForm},
  ActionUnt in 'ActionUnt.pas',
  UndoUnt in 'UndoUnt.pas',
  FirstUnt in 'FirstUnt.pas',
  DtmEditUnt in 'DtmEditUnt.pas' {DtmForm},
  TriUnt in 'TriUnt.pas',
  obj_insp_unt in 'obj_insp_unt.pas',
  DtmUnt in 'DtmUnt.pas',
  AreaUnt in 'AreaUnt.pas',
  CircleUnt in 'CircleUnt.pas',
  ImageUnt in 'ImageUnt.pas',
  PointUnt in 'PointUnt.pas',
  cad_shape_unt in 'cad_shape_unt.pas',
  layer_unt in 'layer_unt.pas',
  layers_unt in 'layers_unt.pas',
  PipeUnt in 'PipeUnt.pas',
  BlockUnt in 'BlockUnt.pas',
  NodeUnt in 'NodeUnt.pas',
  blocks_tree_unt in 'blocks_tree_unt.pas';

//TriUnt in 'TriUnt.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  MakeDrives;

 // Paps_Start:=true;
  Application.CreateForm(TMainForm, MainForm);
  // Paps_Start:=false;
  Application.CreateForm(TIrrdripForm, IrrdripForm);
  Application.CreateForm(TIrrPipeForm, IrrPipeForm);
  Application.CreateForm(TIrrNodeForm, IrrNodeForm);
  Application.CreateForm(TDtmForm, DtmForm);
  Application.Run;
end.
