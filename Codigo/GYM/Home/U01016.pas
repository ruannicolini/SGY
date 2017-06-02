unit U01016;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Udatamodule, UBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Mask, Vcl.DBCtrls,
  EditBeleza, cxCheckBox, cxDropDownEdit, cxCheckComboBox, DBEditBeleza;

type
  TF01016 = class(TFBase)
    FDQuery1idAnamnese: TIntegerField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1frequenciaSemanalTreino: TIntegerField;
    FDQuery1peso: TSingleField;
    FDQuery1altura: TSingleField;
    FDQuery1qtdHorasSono: TIntegerField;
    C: TIntegerField;
    FDQuery1dieta: TBooleanField;
    FDQuery1suplementacao: TBooleanField;
    FDQuery1dataAnamnese: TDateField;
    ClientDataSet1idAnamnese: TIntegerField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1frequenciaSemanalTreino: TIntegerField;
    ClientDataSet1peso: TSingleField;
    ClientDataSet1altura: TSingleField;
    ClientDataSet1qtdHorasSono: TIntegerField;
    ClientDataSet1qtdRefeicoesDia: TIntegerField;
    ClientDataSet1dieta: TBooleanField;
    ClientDataSet1suplementacao: TBooleanField;
    ClientDataSet1dataAnamnese: TDateField;
    qPatologiaAnam: TFDQuery;
    pPatologiaAnam: TDataSetProvider;
    CDSPatologiaAnam: TClientDataSet;
    DSPatologiaAnam: TDataSource;
    ScrollBox1: TScrollBox;
    FDQuery1NOMEALUNO: TStringField;
    ClientDataSet1NOMEALUNO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    FDQuery1consumoAlcoolico: TBooleanField;
    ClientDataSet1consumoAlcoolico: TBooleanField;
    FDQuery1fuma: TBooleanField;
    ClientDataSet1fuma: TBooleanField;
    GroupBox6: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    EditBeleza1: TEditBeleza;
    GroupBox4: TGroupBox;
    DBGridBeleza2: TDBGridBeleza;
    GroupBox5: TGroupBox;
    cxDBMemo2: TDBMemo;
    Panel3: TPanel;
    BTNALTERAR: TSpeedButton;
    BTNCANCELAR: TSpeedButton;
    GroupBox_PAnamnese: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cxDBMaskEdit6: TcxDBMaskEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxDBSpinEdit7: TcxDBSpinEdit;
    DBEdit3: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    DBMemo1: TDBMemo;
    DBckbDIETA: TDBCheckBox;
    DBCkBSUPLEMENTACAO: TDBCheckBox;
    DBCKBFUMANTE: TDBCheckBox;
    DBckbBebidaAlcoolica: TDBCheckBox;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    ClientDataSet1IMC: TFloatField;
    qPatologiaAnamidAnamnese: TIntegerField;
    qPatologiaAnamidPatologia: TIntegerField;
    qPatologiaAnamobservacaoMedica: TStringField;
    qPatologiaAnamNOMEPATOLOGIA: TStringField;
    CDSPatologiaAnamidAnamnese: TIntegerField;
    CDSPatologiaAnamidPatologia: TIntegerField;
    CDSPatologiaAnamobservacaoMedica: TStringField;
    CDSPatologiaAnamNOMEPATOLOGIA: TStringField;
    FDQuery1informacaoAdicional: TStringField;
    ClientDataSet1informacaoAdicional: TStringField;
    FDQuery1idObjetivo: TIntegerField;
    FDQuery1DESCRICAOOBJETIVO: TStringField;
    ClientDataSet1idObjetivo: TIntegerField;
    ClientDataSet1DESCRICAOOBJETIVO: TStringField;
    SpeedButton1: TSpeedButton;
    FDQuery1nomeAvaliador: TStringField;
    ClientDataSet1nomeAvaliador: TStringField;
    SpeedButton2: TSpeedButton;
    DataSource1: TDataSource;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridBeleza2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure BTNALTERARClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure DSPatologiaAnamDataChange(Sender: TObject; Field: TField);
    procedure EditBeleza1ButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure CDSPatologiaAnamAfterCancel(DataSet: TDataSet);
    procedure CDSPatologiaAnamAfterDelete(DataSet: TDataSet);
    procedure CDSPatologiaAnamAfterPost(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateCONSULTA(AOwner: TComponent; IDANAM: INTEGER; NOMEALUNO:STRING);
    constructor CreateNOVO(AOwner: TComponent; IDA: INTEGER; NOMEALUNO:STRING);
  end;

var
  F01016: TF01016;
  IDALUNO : INTEGER;
  IDANAMNESE : INTEGER;
  NOMEALUNOF : STRING;

implementation

{$R *.dfm}

uses UPrincipal, U01007;

procedure TF01016.Action5Execute(Sender: TObject);
begin
  inherited;
  if(ds.State = dsInsert)then
  begin
      while not(CDSPatologiaAnam.eof)do
      begin
      CDSPatologiaAnam.Delete;
      end;

  end;
end;

procedure TF01016.BSalvarClick(Sender: TObject);
begin

  //PREVINE QUE O USUARIO ESQUEÇA DE SALVAR A ULTIMA ALTERAÇÃO EM CXDBMEMO2 (OBSERVAÇÕES MEDICAS)
  IF(CDSPatologiaAnam.State = dsEdit)THEN
  begin
      CDSPatologiaAnam.Post;
  end;
  BTNCANCELAR.Enabled := FALSE;
  BTNALTERAR.Caption := 'ALTERAR';
  cxDBMemo2.ReadOnly:= TRUE;

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

end;

procedure TF01016.BTNALTERARClick(Sender: TObject);
begin
  inherited;
  BTNCANCELAR.Enabled := TRUE;

  IF(BTNALTERAR.Caption = 'ALTERAR')THEN
  BEGIN
      BTNALTERAR.Caption := 'SALVAR';

      //COLOCA EM MODO DE EDIÇÃO
      if DSPatologiaAnam.DataSet.Active then
      begin
        if not DSPatologiaAnam.DataSet.IsEmpty then
        begin
          DSPatologiaAnam.DataSet.Edit;
          CXDBMEMO2.ReadOnly := FALSE;
        end else
           ShowMessage('Não Há Registros para Alteração.');
      end;

  END ELSE
  BEGIN
      IF(BTNALTERAR.Caption = 'SALVAR')THEN
      BEGIN
        BTNALTERAR.Caption := 'ALTERAR';
        BTNCANCELAR.Enabled := FALSE;
        CXDBMEMO2.ReadOnly := TRUE;
        //SALVA
        CDSPatologiaAnamobservacaoMedica.AsString := CXDBMemo2.Text;
        DSPatologiaAnam.DataSet.Post;
      END;
  END;
end;

procedure TF01016.BTNCANCELARClick(Sender: TObject);
begin
  inherited;
  BTNCANCELAR.Enabled := FALSE;
  BTNALTERAR.Caption := 'ALTERAR';
  cxDBMemo2.ReadOnly:= TRUE;

  //CANCELA ALTERAÇÕES
  DSPatologiaAnam.DataSet.Cancel;
  CDSPatologiaAnam.CancelUpdates;

end;

procedure TF01016.CDSPatologiaAnamAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSPatologiaAnam.CancelUpdates;
end;

procedure TF01016.CDSPatologiaAnamAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSPatologiaAnam.ApplyUpdates(-1);
end;

procedure TF01016.CDSPatologiaAnamAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPatologiaAnam.ApplyUpdates(-1);
end;

procedure TF01016.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idAnamnese.AsInteger := DModule.buscaProximoParametro('anamnese');
end;

procedure TF01016.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  inherited;
  //CALCULA IMC
  if NOT(ClientDataSet1peso.IsNull) and NOT(ClientDataSet1altura.IsNull) then
  begin
    ClientDataSet1IMC.AsFloat := ClientDataSet1peso.AsFloat/ (ClientDataSet1altura.AsFloat * ClientDataSet1altura.AsFloat) ;
  end;

end;

procedure TF01016.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  //ShowMessage(E.Message);
end;

constructor TF01016.CreateCONSULTA(AOwner: TComponent; IDANAM: INTEGER; NOMEALUNO:STRING);
begin
  //
  inherited Create(AOwner);

  IDANAMNESE := IDANAM;
  BInserir.Visible := FALSE;
  BInserir.ENABLED := FALSE;
  BPesquisar.Visible := FALSE;
  BPesquisar.ENABLED := FALSE;
  FDQuery1.SQL.Text :=
  'SELECT ANAM.*, A.NOMEALUNO, O.DESCRICAOOBJETIVO FROM ANAMNESE ANAM '+
  'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = ANAM.IDALUNO '+
  'LEFT OUTER JOIN OBJETIVO O ON O.IDOBJETIVO = ANAM.IDOBJETIVO '+
  'WHERE ANAM.IDANAMNESE = ' + INTTOSTR(IDANAM);

  DS.DataSet.Close;
  DS.DataSet.Open;

  ClientDataSet1.Edit;
  ClientDataSet1NOMEALUNO.AsString := NOMEALUNO;
  ClientDataSet1.Post;

end;

constructor TF01016.CreateNOVO(AOwner: TComponent; IDA: INTEGER;
  NOMEALUNO: STRING);
begin
  //
  inherited Create(AOwner);

  FDQuery1.SQL.Text :=
  'SELECT ANAM.*, A.NOMEALUNO, O.DESCRICAOOBJETIVO FROM ANAMNESE ANAM '+
  'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = ANAM.IDALUNO '+
  'LEFT OUTER JOIN OBJETIVO O ON O.IDOBJETIVO = ANAM.IDOBJETIVO '+
  'WHERE ANAM.IDALUNO = ' + INTTOSTR(IDA);
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

procedure TF01016.DBGridBeleza2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta PATOLOGIA
  begin
    if MessageDlg('Deseja Apagar Item [' + CDSPatologiaAnamNOMEPATOLOGIA.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        CDSPatologiaAnam.Delete;
     end;
  end;
end;

procedure TF01016.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //PESQUISA DE PATOLOGIAS
  qPatologiaAnam.Params[0].AsInteger := ClientDataSet1idAnamnese.AsInteger;
  DSPatologiaAnam.DataSet.Close;
  DSPatologiaAnam.DataSet.Open;

  if CDSPatologiaAnam.RecNo > 0 then
  BEGIN
    BTNALTERAR.Enabled := TRUE;
  END ELSE
    BTNALTERAR.Enabled := FALSE;

end;

procedure TF01016.DSPatologiaAnamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSPatologiaAnam.RecordCount > 0)THEN
  BEGIN
    BTNALTERAR.Enabled := TRUE;
  END ELSE
  BEGIN
    BTNALTERAR.Enabled := FALSE;
  END;
end;

procedure TF01016.DSStateChange(Sender: TObject);
begin
  inherited;
  if (ds.DataSet.State = dsInsert) then
  begin
    //IdAluno
    ClientDataSet1idAluno.AsInteger := IDALUNO;

    //NomeAluno
    ClientDataSet1NOMEALUNO.AsString := NOMEALUNOF;

    //DataComposicao
    ClientDataSet1dataAnamnese.AsDateTime := DModule.datahoje;

    //NOMEAVALIADOR
    ClientDataSet1nomeAvaliador.AsString := DModule.nomeusuario;

    //DBCkBSUPLEMENTACAO.Checked := FALSE;
    ClientDataSet1suplementacao.AsBoolean:= false;

    //DBckbDIETA.Checked := FALSE;
    ClientDataSet1dieta.AsBoolean:= false;

    //DBCKBFUMANTE.Checked := FALSE;
    ClientDataSet1fuma.AsBoolean:= false;

    //DBckbBebidaAlcoolica.Checked := FALSE;
    ClientDataSet1consumoAlcoolico.AsBoolean:= false;

    DBCkBSUPLEMENTACAO.Checked := false;
    DBckbDIETA.Checked := false;
    DBCKBFUMANTE.Checked := false;
    DBckbBebidaAlcoolica.Checked := false;
  end;
end;

procedure TF01016.EditBeleza1ButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAnamnese.AsInteger);
end;

procedure TF01016.FormShow(Sender: TObject);
begin
  inherited;
  //Enconde aba Filtros
  tbFiltros.TabVisible := false;
end;

procedure TF01016.SpeedButton1Click(Sender: TObject);
begin
  inherited;
    // ADCIONAR NOVA PATOLOGIA
  if not DSPatologiaAnam.DataSet.Active then
    DSPatologiaAnam.DataSet.Open;

  if TRIM(Edit1.Text) <> '' then
  begin
      DSPatologiaAnam.DataSet.Append;
      CDSPatologiaAnamidAnamnese.AsInteger := ClientDataSet1idAnamnese.AsInteger;
      CDSPatologiaAnamidPatologia.AsInteger := STRTOINT(Edit1.Text);
      DSPatologiaAnam.DataSet.Post;
      //cdsPatologia.ApplyUpdates(-1);

      qPatologiaAnam.Params[0].AsInteger := ClientDataSet1idAnamnese.AsInteger;
      DSPatologiaAnam.DataSet.Close;
      DSPatologiaAnam.DataSet.Open;

      edit1.Clear;
      EditBeleza1.Clear;
  end else
  begin
      SHOWMESSAGE('INFORME PATOLOGIA');
  end;
end;

procedure TF01016.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  With TF01007.Create(self) do
  Begin
    WIDTH := 610;
    Height := 460;
    ShowModal;

    Free;
  End;

end;

initialization
  RegisterClass(TF01016);
Finalization
  UnRegisterClass(TF01016);
end.
