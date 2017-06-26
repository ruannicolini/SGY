unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls,
  Vcl.Buttons, cxLabel, XiButton, cxSpinEdit;

type
  TFLogin = class(TForm)
    PanelBackground: TPanel;
    PanelLOGIN: TPanel;
    Image1: TImage;
    Label1: TLabel;
    btnEntrar: TXiButton;
    textCodAluno: TcxTextEdit;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure textCodAlunoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses UPrincipal, UDataModule;

procedure TFLogin.FormActivate(Sender: TObject);
begin
  textCodAluno.SetFocus;
end;

procedure TFLogin.textCodAlunoKeyPress(Sender: TObject; var Key: Char);
begin

  if not( key in['0'..'9',#08,#13,#27] ) then
  begin
    key:=#0;
  end;

  if (key = #13) then
  begin
      key := #0;
      btnEntrar.OnClick(sender);
  end else
  begin
      if key =#27 then   //Apertei 'ESC'
      begin
        textCodAluno.Clear;
      end;
  end;



end;

procedure TFLogin.btnEntrarClick(Sender: TObject);
begin
  //
  DMODULE.qAux.SQL.Text := 'SELECT * FROM ALUNO WHERE IDALUNO =:IDA';
  DMODULE.qAux.ParamByName('IDA').AsInteger := STRTOINT(textCodAluno.Text);
  DMODULE.qAux.CLOSE;
  DMODULE.qAux.OPEN;

  IF( DMODULE.qAux.RecordCount > 0 )THEN
  BEGIN

      With TFPRINCIPAL.CreateALUNO(FLOGIN, STRTOINT(textCodAluno.Text) ) do
      Begin
          WindowState := wsMaximized;
          SHOWMODAL;
          textCodAluno.Clear;
          textCodAluno.SetFocus;
      End;

  END ELSE
  BEGIN
      SHOWMESSAGE('CÓDIGO NÃO ENCONTRADO');
  END;



end;

end.
