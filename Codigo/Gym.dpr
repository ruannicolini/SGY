program Gym;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FLogin},
  UBase in 'UBase.pas' {FBase},
  Vcl.Themes,
  Vcl.Styles,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  U01001 in 'Home\U01001.pas' {F01001},
  UDataModule in 'UDataModule.pas' {Dmodule: TDataModule},
  U01002 in 'Home\U01002.pas' {F01002},
  U01003 in 'Home\U01003.pas' {F01003},
  U01004 in 'Home\U01004.pas' {F01004},
  U01007 in 'Home\U01007.pas' {F01007},
  U01006 in 'Home\U01006.pas' {F01006},
  U01008 in 'Home\U01008.pas' {F01008},
  U01010 in 'Home\U01010.pas' {F01010},
  U01011 in 'Home\U01011.pas' {F01011},
  U01009 in 'Home\U01009.pas' {F01009},
  u_relatorios in 'u_relatorios.pas' {FRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmodule, Dmodule);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFBase, FBase);
  Application.CreateForm(TFRelatorios, FRelatorios);
  Application.Run;
end.
