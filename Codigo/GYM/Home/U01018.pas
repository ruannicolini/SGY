unit U01018;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TF01018 = class(TForm)
    Panel2: TPanel;
    PanelStatus: TPanel;
    JvComboBox1: TJvComboBox;
    LBTREINO: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; IDFA: integer);
  end;

var
  F01018: TF01018;
  resposta : string;

implementation

{$R *.dfm}

uses UDataModule;

procedure TF01018.Button1Click(Sender: TObject);
begin
    //RESULT
    IF(JvComboBox1.ItemIndex <> -1)THEN   //-1 É QUANDO NENHUM ITEM FOI SELECIONADO
    BEGIN
      resposta := JvComboBox1.GetItemText(JvComboBox1.ItemIndex) ;
      ModalResult := mrOk;
    END ELSE
    BEGIN
        SHOWMESSAGE('SELECIONE UM ITEM');
    END;

end;

constructor TF01018.Create(AOwner: TComponent; IDFA: integer);
var
texto: string;
begin
  //
  inherited Create(AOwner);
  DModule.qAux.SQL.Text :=
  'SELECT SFA.IDTREINO, T.descricaoTreino FROM seriefichaaluno SFA '+
  'LEFT OUTER JOIN FICHAALUNO FA ON FA.idFichaAluno = SFA.idFichaAluno '+
  'LEFT OUTER JOIN TREINO T ON T.idTreino = SFA.idTreino '+
  'WHERE FA.idFichaAluno =:IDFA GROUP BY SFA.idTreino';
  DModule.qAux.ParamByName('IDFA').AsInteger := idfa;
  DModule.qAux.Close;
  DModule.qAux.Open;

  IF(DModule.qAux.RecordCount > 0)then
  begin
      JvComboBox1.Items.Clear;
      while not(DModule.qAux.Eof)do
      begin
        JvComboBox1.Items.Add(DModule.qAux.FieldByName('descricaoTreino').AsString);
        DModule.qAux.Next;
      end;
      JvComboBox1.Items.Add('COMPLETO');
      JvComboBox1.ItemIndex := 0;   //SELECIONA O PRIMEIRO ITEM DA LISTA
  end;

end;

initialization
  RegisterClass(TF01018);
Finalization
  UnRegisterClass(TF01018);
end.
