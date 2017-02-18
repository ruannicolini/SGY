unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, dxStatusBar, Vcl.ComCtrls, Vcl.Buttons,
  System.Actions, Vcl.ActnList;

type
  TFLogin = class(TForm)
    Image1: TImage;
    lbUsername: TLabel;
    Edit_USERNAME: TEdit;
    lbSenha: TLabel;
    Edit_Senha: TEdit;
    PanelEntrar: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    mostrarConfig: TAction;
    panelConfig: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    procedure PanelEntrarClick(Sender: TObject);
    procedure mostrarConfigExecute(Sender: TObject);
    procedure Edit_SenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses UPrincipal, Ubase;

procedure TFLogin.Edit_SenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key = 13)then
  begin
     PanelEntrar.OnClick(sender);
  end;

end;

procedure TFLogin.mostrarConfigExecute(Sender: TObject);
begin
  if(panelConfig.Visible = true) then
  begin

       lbUsername.Visible := true;
       lbSenha.Visible := true;
       Edit_USERNAME.Visible := true;
       Edit_Senha.Visible := true;

       panelConfig.Visible := false;
  end else
  begin

    lbUsername.Visible := false;
    lbSenha.Visible := false;
    Edit_USERNAME.Visible := false;
    Edit_Senha.Visible := false;

    panelConfig.Visible := true;
  end;
end;

procedure TFLogin.PanelEntrarClick(Sender: TObject);
begin
  //ShowMessage('ENTROU!');
  FPrincipal.Show;

end;

end.
