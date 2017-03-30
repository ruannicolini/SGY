unit U01014;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DBGridBeleza,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Mask,
  Vcl.DBCtrls, DBEditBeleza, Vcl.Samples.Spin, EditBeleza, cxGroupBox;

type
  TF01014 = class(TFBase)
    FDQuery1idFichaAluno: TIntegerField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1dataComposicao: TDateField;
    FDQuery1nomeInstrutor: TStringField;
    FDQuery1NOMEALUNO: TStringField;
    ClientDataSet1idFichaAluno: TIntegerField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1dataComposicao: TDateField;
    ClientDataSet1nomeInstrutor: TStringField;
    ClientDataSet1NOMEALUNO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxGroupBox10: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    btnAddExercicio: TSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Edittreino: TEdit;
    EditBTreino: TEditBeleza;
    editSerie: TSpinEdit;
    Editgrupo: TEdit;
    EditBGrupo: TEditBeleza;
    Editexercicio: TEdit;
    EditBExercicio: TEditBeleza;
    editRepeticoes: TSpinEdit;
    DBGridBeleza3: TDBGridBeleza;
    Panel6: TPanel;
    btnLimparFicha: TSpeedButton;
    btnImportarFicha: TSpeedButton;
    FDQuery1dataVencimento: TDateField;
    ClientDataSet1dataVencimento: TDateField;
    qserieFichaAluno: TFDQuery;
    pserieFichaAluno: TDataSetProvider;
    CDSserieFichaAluno: TClientDataSet;
    DSserieFichaAluno: TDataSource;
    qserieFichaAlunoidFichaAluno: TIntegerField;
    qserieFichaAlunoidTreino: TIntegerField;
    qserieFichaAlunoidExercicio: TIntegerField;
    qserieFichaAlunoqtdSerie: TIntegerField;
    qserieFichaAlunoqtdRepeticao: TIntegerField;
    qserieFichaAlunodescricaoTreino: TStringField;
    qserieFichaAlunonomeExercicio: TStringField;
    qserieFichaAlunoidgrupoExercicio: TIntegerField;
    qserieFichaAlunodescricaoGrupoExercicio: TStringField;
    qserieFichaAlunoidequipamento: TIntegerField;
    qserieFichaAlunodescricaoequipamento: TStringField;
    CDSserieFichaAlunoidFichaAluno: TIntegerField;
    CDSserieFichaAlunoidTreino: TIntegerField;
    CDSserieFichaAlunoidExercicio: TIntegerField;
    CDSserieFichaAlunoqtdSerie: TIntegerField;
    CDSserieFichaAlunoqtdRepeticao: TIntegerField;
    CDSserieFichaAlunodescricaoTreino: TStringField;
    CDSserieFichaAlunonomeExercicio: TStringField;
    CDSserieFichaAlunoidgrupoExercicio: TIntegerField;
    CDSserieFichaAlunodescricaoGrupoExercicio: TStringField;
    CDSserieFichaAlunoidequipamento: TIntegerField;
    CDSserieFichaAlunodescricaoequipamento: TStringField;
    procedure BSalvarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSserieFichaAlunoDataChange(Sender: TObject; Field: TField);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure EditBTreinoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddExercicioClick(Sender: TObject);
    procedure EditgrupoChange(Sender: TObject);
    procedure EditBExercicioButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure CDSserieFichaAlunoAfterCancel(DataSet: TDataSet);
    procedure CDSserieFichaAlunoAfterDelete(DataSet: TDataSet);
    procedure CDSserieFichaAlunoAfterPost(DataSet: TDataSet);
    procedure EdittreinoChange(Sender: TObject);
    procedure DBGridBeleza3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure BExcluirClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure btnImportarFichaClick(Sender: TObject);
    procedure btnLimparFichaClick(Sender: TObject);
    procedure CDSserieFichaAlunoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure Button1Click(Sender: TObject);
    procedure EditBExercicioDepoisPesquisa(Sender: TObject;
      var query_result: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateCONSULTA(AOwner: TComponent; IDFA: INTEGER);
    constructor CreateNOVO(AOwner: TComponent; IDA: INTEGER;NOMEALUNO:STRING);
  end;

var
  F01014: TF01014;
  IDFICHAALUNO : INTEGER;
  IDALUNO : INTEGER;
  NOMEALUNOF : STRING;

implementation

{$R *.dfm}

uses UDataModule, U01013;

{ TF01014 }

procedure TF01014.Action5Execute(Sender: TObject);
begin
  inherited;

  if(ds.State = dsInsert)then
  begin
    //apaga registro subordinado SERIE
      DModule.qAux.SQL.Text := 'DELETE FROM SERIEFICHAALUNO WHERE idFICHAALUNO =:IDFA';
      DModule.qAux.ParamByName('IDFA').AsInteger := ClientDataSet1idFICHAAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;

    //Cuida para que não vá para o modo de consulta, apenas de inserção
    ds.DataSet.Close;
  end;
end;

procedure TF01014.BCancelarClick(Sender: TObject);
begin
  inherited;

  BFirst.Visible := FALSE;
  BPrior.Visible := FALSE;
  BNext.Visible := FALSE;
  BLast.Visible := FALSE;
  bRelatorio.Visible := FALSE;
  tbFiltros.TabVisible := false;
end;

procedure TF01014.BExcluirClick(Sender: TObject);
begin
  inherited;
  tbFiltros.TabVisible := false;
end;

procedure TF01014.BPesquisarClick(Sender: TObject);
begin
  inherited;
  tbFiltros.TabVisible := false;
end;

procedure TF01014.BSalvarClick(Sender: TObject);
begin
  IF(CDSserieFichaAluno.RecordCount > 0)THEN
  BEGIN

      if(ds.State = dsInsert)then
      begin
        inherited;
        close;
      end else
      begin
        if(ds.State = dsEdit)then
        begin
            inherited;
        end;
      end;

      BFirst.Visible := FALSE;
      BPrior.Visible := FALSE;
      BNext.Visible := FALSE;
      BLast.Visible := FALSE;
      bRelatorio.Visible := FALSE;
      tbFiltros.TabVisible := false;

  END ELSE
  BEGIN
    ShowMessage('INFORME OS EXERCÍCIOS DA FICHA');
  END;


end;

procedure TF01014.btnAddExercicioClick(Sender: TObject);
begin
  inherited;

  IF trim(Edittreino.Text ) <> '' THEN
  BEGIN
    IF trim(Editexercicio.Text ) <> '' THEN
    BEGIN
      IF (trim(editSerie.Text ) <> '') AND (trim(editRepeticoes.Text ) <> '') THEN
      BEGIN

          //INCLUI REGISTRO
          DSserieFichaAluno.DataSet.Append;
          CDSserieFichaAlunoidFichaAluno .AsInteger := ClientDataSet1idFichaAluno.AsInteger;
          CDSserieFichaAlunoidTreino.AsInteger := strtoint(Edittreino.Text);

          CDSserieFichaAlunoidExercicio.AsInteger := strtoint(Editexercicio.Text);

          IF(editSerie.Enabled = FALSE)THEN
          BEGIN
            //NESSE CASO É UM EXERCICIO COM UNIDADE "TEMPO"
            CDSserieFichaAlunoqtdSerie.AsInteger := 1;
          END ELSE
          BEGIN
            CDSserieFichaAlunoqtdSerie.AsInteger := strtoint(editSerie.Text);
          END;
          CDSserieFichaAlunoqtdRepeticao.AsInteger := strtoint(editRepeticoes.Text);

          //Limpa EditBelezaExercicio
          Editexercicio.Clear;
          EditBexercicio.Clear;

          //Grava Dados
          CDSserieFichaAluno.Post;

          CDSserieFichaAluno.Close;
          CDSserieFichaAluno.Open;
          editSerie.Enabled := TRUE;

      END ELSE
      BEGIN
          ShowMessage('INFORME QUANTIDADE DE SÉRIES E REPETIÇÕES');
      END;

    END ELSE
    BEGIN
        ShowMessage('SELECIONE UM EXERCÍCIO');
    END;

  END ELSE
  BEGIN
      ShowMessage('SELECIONE UMA OPÇÃO DE TREINO');
  END;

end;

procedure TF01014.btnImportarFichaClick(Sender: TObject);
begin
  inherited;
  //IMPORTA OS REGISTROS DA SÉRIE DE UAM FICHA PRÉ CADASTRADA
  With TF01013.Create(self, ClientDataSet1idFichaAluno.AsInteger) do
  Begin
        if(ShowModal = mrOk)then
        begin
              //ShowMessage('Deu Certo! Aleluia.');
        end else
        begin
              //ShowMessage('Funfô não mano');
        end;
        Free;
  End;

  CDSserieFichaAluno.Close;
  CDSserieFichaAluno.Open;;


end;

procedure TF01014.btnLimparFichaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('DESEJA APAGAR TODOS OS EXERCÍCIOS DA FICHA?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

      TRY
          DModule.qAux.SQL.Text := 'DELETE FROM SERIEFICHAALUNO WHERE IDFICHAALUNO =:IDFA';
          DModule.qAux.ParamByName('IDFA').AsInteger := ClientDataSet1idFichaAluno.AsInteger;
          DModule.qAux.Close;
          DModule.qAux.ExecSQL;

          //PESQUISA FICHA DE EXERCICIO
          qserieFichaAluno.Params[0].AsInteger := ClientDataSet1idFichaAluno.AsInteger;
          DSserieFichaAluno.DataSet.close;
          DSserieFichaAluno.DataSet.open;
      EXCEPT
        ON E: EXCEPTION DO
        BEGIN
          ShowMessage(E.Message);
        END;
      END;

  end;
end;

procedure TF01014.Button1Click(Sender: TObject);
begin
  inherited;
  DSserieFichaAluno.DataSet.close;
  //PESQUISA FICHA DE EXERCICIO
  qserieFichaAluno.Params[0].AsInteger := ClientDataSet1idfichaAluno.AsInteger;
  DSserieFichaAluno.DataSet.close;
  DSserieFichaAluno.DataSet.open;

end;

procedure TF01014.CDSserieFichaAlunoAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSserieFichaAluno.CancelUpdates;
end;

procedure TF01014.CDSserieFichaAlunoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSserieFichaAluno.ApplyUpdates(-1);
end;

procedure TF01014.CDSserieFichaAlunoAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    CDSserieFichaAluno.ApplyUpdates(-1);
  except
    on E:exception do
    begin
      ShowMessage(e.Message);
    end;

  end;
end;

procedure TF01014.CDSserieFichaAlunoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TF01014.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idFichaAluno.AsInteger := DModule.buscaProximoParametro('idFichaAluno');
end;

constructor TF01014.CreateCONSULTA(AOwner: TComponent; IDFA: INTEGER);
begin
  //
  inherited Create(AOwner);

  //CONFIGURAÇÕES DE TELA
  BorderStyle := BSNONE;
  Height := 647;
  Width := 835;

  IDFICHAALUNO := IDFA;
  BInserir.Visible := FALSE;
  BInserir.ENABLED := FALSE;
  BPesquisar.Visible := FALSE;
  BPesquisar.ENABLED := FALSE;
  FDQuery1.SQL.Text := 'SELECT FA.*, A.NOMEALUNO FROM FICHAALUNO FA LEFT OUTER JOIN ALUNO A ON A.IDALUNO = FA.IDALUNO WHERE FA.IDFICHAALUNO = ' + INTTOSTR(IDFA);
  DS.DataSet.Close;
  DS.DataSet.Open;

end;

constructor TF01014.CreateNOVO(AOwner: TComponent; IDA: INTEGER; NOMEALUNO:STRING);
begin
  inherited Create(AOwner);

  //CONFIGURAÇÕES DE TELA
  BorderStyle := BSNONE;
  Height := 647;
  Width := 835;

  FDQuery1.SQL.Text := 'SELECT FA.*, A.NOMEALUNO FROM FICHAALUNO FA LEFT OUTER JOIN ALUNO A ON A.IDALUNO = FA.IDALUNO WHERE FA.IDALUNO = ' + INTTOSTR(IDA);
  //DS.DataSet.Close;
  //DS.DataSet.Open;

  IDALUNO := IDA;
  NOMEALUNOF := NOMEALUNO;

  BSALVAR.Visible := TRUE;
  BSALVAR.ENABLED := TRUE;
  BCANCELAR.Visible := TRUE;
  BCANCELAR.ENABLED := TRUE;

  BInserir.Visible := TRUE;
  BInserir.ENABLED := TRUE;
  BPesquisar.Visible := FALSE;
  BPesquisar.ENABLED := FALSE;
  BEditar.Visible := FALSE;
  BEditar.ENABLED := FALSE;
  BExcluir.Visible := FALSE;
  BExcluir.ENABLED := FALSE;

end;

procedure TF01014.DBGridBeleza3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Exercício da série
  begin
    if MessageDlg('Deseja Apagar Item [' + CDSserieFichaAlunonomeExercicio.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        CDSserieFichaAluno.Delete;
    end;
  end;
end;

procedure TF01014.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   DSserieFichaAluno.DataSet.close;
  //PESQUISA FICHA DE EXERCICIO
  qserieFichaAluno.Params[0].AsInteger := ClientDataSet1idfichaAluno.AsInteger;
  DSserieFichaAluno.DataSet.close;
  DSserieFichaAluno.DataSet.open;

end;

procedure TF01014.DSserieFichaAlunoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  //Controle dos botões
  IF(CDSserieFichaAluno.RecordCount > 0)THEN
  BEGIN
      btnLimparFicha.Enabled := TRUE;
      btnImportarFicha.Enabled := FALSE;
  END ELSE
  BEGIN
      btnLimparFicha.Enabled := FALSE;
      btnImportarFicha.Enabled := TRUE;
  END;
end;

procedure TF01014.DSStateChange(Sender: TObject);
begin
  inherited;
  IF(DS.DataSet.State = dsInsert)THEN
  BEGIN
    //IdAluno
    ClientDataSet1idAluno.AsInteger := IDALUNO;

    //NomeAluno
    ClientDataSet1NOMEALUNO.AsString := NOMEALUNOF;

    //DataComposicao
    ClientDataSet1dataComposicao.AsDateTime := DModule.datahoje;

    //DataVencimento
    DModule.qAux.SQL.Text := 'SELECT VALOR FROM PARAMETROS WHERE PARAMETRO = "DURACAOFICHAEMMESES" ';
    DModule.qAux.Close;
    DModule.qAux.Open;
    ClientDataSet1dataVencimento.AsDateTime := IncMonth(DModule.datahoje, DModule.qAux.FieldByName('VALOR').AsINTEGER);

    //NomeInstrutor
    ClientDataSet1nomeInstrutor.AsString := DModule.nomeusuario;

  END;
end;

procedure TF01014.EditBExercicioButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idG').Value := strtoint(Editgrupo.Text);
  query_result.ParamByName('idFA').Value := (ClientDataSet1idFichaAluno.AsInteger);
  query_result.ParamByName('idT').Value := strtoint(Edittreino.Text);
end;

procedure TF01014.EditBExercicioDepoisPesquisa(Sender: TObject;
  var query_result: TDataSet);
begin
  inherited;

  // CONTROLE DE EDITSERIE
  IF( query_result.FieldByName('tipomedida').AsString = 'U')THEN
  BEGIN
    editSerie.Enabled := TRUE;
  END ELSE
  BEGIN
    editSerie.Enabled := FALSE;
  END;
end;

procedure TF01014.EditBTreinoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;

end;

procedure TF01014.EditgrupoChange(Sender: TObject);
begin
  inherited;
  //FAZ CONTROLE ENTRE EDITBGRUPO E EDITBEXERCICIO
  IF TRIM(Editgrupo.Text) <> '' THEN
  BEGIN
    EditBExercicio.Enabled := TRUE;
    Editexercicio.Enabled := TRUE;
    EditBExercicio.Clear;
    Editexercicio.Clear;
  END ELSE
  BEGIN
    EditBExercicio.Enabled := FALSE;
    Editexercicio.Enabled := FALSE;
    EditBExercicio.Clear;
    Editexercicio.Clear;
  END;
end;

procedure TF01014.EdittreinoChange(Sender: TObject);
begin
  inherited;
  IF TRIM(Edittreino.Text) <> '' THEN
  BEGIN
    EditBExercicio.Enabled := TRUE;
    Editexercicio.Enabled := TRUE;
    EditBExercicio.Clear;
    Editexercicio.Clear;
  END ELSE
  BEGIN
    EditBExercicio.Enabled := FALSE;
    Editexercicio.Enabled := FALSE;
    EditBExercicio.Clear;
    Editexercicio.Clear;
  END;
end;

procedure TF01014.FormShow(Sender: TObject);
begin
  inherited;

  //Enconde aba Filtros
  tbFiltros.TabVisible := false;
end;

initialization
  RegisterClass(TF01014);
Finalization
  UnRegisterClass(TF01014);
end.
