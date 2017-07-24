program Musc;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDataModule in 'UDataModule.pas' {DModule: TDataModule},
  U01015 in 'U01015.pas' {F01015},
  ULogin in 'ULogin.pas' {FLogin},
  UMetodosServidor in 'UMetodosServidor.pas',
  U01018 in 'U01018.pas' {F01018};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDModule, DModule);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TF01018, F01018);
  Application.Run;
end.
