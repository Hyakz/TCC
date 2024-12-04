program TCC;

uses
  Vcl.Forms,
  uBase in '..\Heran�a\uBase.pas' {frmBase},
  uCadBase in '..\Heran�a\uCadBase.pas' {frmCadBase},
  uPsqBase in '..\Heran�a\uPsqBase.pas' {frmPsqBase},
  DTUtil in '..\Utils\DTUtil.pas',
  DTUtil.Mensagem in '..\Utils\DTUtil.Mensagem.pas',
  DTUtil.Validacao in '..\Utils\DTUtil.Validacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmCadBase, frmCadBase);
  Application.CreateForm(TfrmPsqBase, frmPsqBase);
  Application.Run;
end.
