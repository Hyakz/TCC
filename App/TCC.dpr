program TCC;

uses
  Vcl.Forms,
  DTUtil in '..\Utils\DTUtil.pas',
  DTUtil.Mensagem in '..\Utils\DTUtil.Mensagem.pas',
  DTUtil.Validacao in '..\Utils\DTUtil.Validacao.pas',
  uBase in '..\Inheritance\uBase.pas' {frmBase},
  uCadBase in '..\Inheritance\uCadBase.pas' {frmCadBase},
  uPsqBase in '..\Inheritance\uPsqBase.pas' {frmPsqBase},
  uPrincipal in '..\Principal\uPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
