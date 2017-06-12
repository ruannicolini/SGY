unit UPrincipal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    editPort: TEdit;
    btnIniciar: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ServerContainerUnit1;

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  //
  if btnIniciar.Caption = 'INICIAR' then
  begin
    ServerContainer1.DSTCPServerTransport1.Port := StrToInt(editPort.Text);
    ServerContainer1.DSServer1.Start;
    //SE FOR CONECTADO, MUDA O CAPTION DO BTNINICIAR
    if ServerContainer1.DSServer1.Started then btnIniciar.Caption := 'PARAR';
  end else
  begin
    ServerContainer1.DSServer1.Stop;
    if not ServerContainer1.DSServer1.Started then btnIniciar.Caption := 'INICIAR';
  end;
end;

end.

