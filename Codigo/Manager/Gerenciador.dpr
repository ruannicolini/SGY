program Gerenciador;

uses
  Vcl.Forms,
  uFrmLogin in 'uFrmLogin.pas' {frmLogin},
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFuncao in 'uFuncao.pas',
  UHPI in 'UHPI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
