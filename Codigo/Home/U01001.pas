unit U01001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DBGridBeleza,
  Vcl.ExtCtrls, EditBeleza, Vcl.StdCtrls, Vcl.ComCtrls, udatamodule, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.Tabs, dxBarBuiltInMenu, Vcl.Menus, cxPC, cxImage,
  dxCameraControl, cxBlobEdit, Vcl.DdeMan, cxCheckBox, cxGroupBox, cxLabel,
  cxRadioGroup, cxButtons, DateUtils, cxMemo, Math, DBEditBeleza,
  Vcl.Samples.Spin, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppCtrls, ppPrnabl, frxClass,
  frxDBSet;

type
  TF01001 = class(TFBase)
    cxPageControl1: TcxPageControl;
    pag1: TcxTabSheet;
    pag2: TcxTabSheet;
    pag3: TcxTabSheet;
    pagMensalidades: TcxTabSheet;
    cxDBImage1: TcxDBImage;
    btnFoto: TSpeedButton;
    camera: TdxCameraControl;
    btnMudarCamera: TSpeedButton;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label9: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label11: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label6: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label12: TLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    Label13: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    Label14: TLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBMaskEdit5: TcxDBMaskEdit;
    cxGroupBox2: TcxGroupBox;
    Label5: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label19: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    Label20: TLabel;
    Label21: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxDBSpinEdit7: TcxDBSpinEdit;
    cxDBMaskEdit6: TcxDBMaskEdit;
    FDQuery1idAluno: TIntegerField;
    FDQuery1nomeAluno: TStringField;
    FDQuery1idade: TIntegerField;
    FDQuery1dataNascimento: TDateField;
    FDQuery1email: TStringField;
    FDQuery1sexo: TStringField;
    FDQuery1cidade: TStringField;
    FDQuery1bairro: TStringField;
    FDQuery1rua: TStringField;
    FDQuery1numero: TIntegerField;
    FDQuery1cep: TIntegerField;
    FDQuery1tel1: TStringField;
    FDQuery1tel2: TStringField;
    FDQuery1nomeResponsavel: TStringField;
    FDQuery1parentescoResponsavel: TStringField;
    FDQuery1telResponsavel: TStringField;
    FDQuery1peso: TSingleField;
    FDQuery1altura: TSingleField;
    FDQuery1frequenciaAtividadeFisica: TIntegerField;
    FDQuery1qtdRefeicoesDia: TIntegerField;
    FDQuery1qtdHorasSono: TIntegerField;
    FDQuery1suplementacao: TBooleanField;
    FDQuery1dieta: TBooleanField;
    FDQuery1fumante: TBooleanField;
    FDQuery1consomeBebidaAlcoolica: TBooleanField;
    FDQuery1dataCadastro: TDateField;
    FDQuery1ativo: TBooleanField;
    FDQuery1cpf: TStringField;
    FDQuery1foto: TBlobField;
    FDQuery1informacaoAdicional: TStringField;
    FDQuery1idObjetivo: TIntegerField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1nomeAluno: TStringField;
    ClientDataSet1idade: TIntegerField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1email: TStringField;
    ClientDataSet1sexo: TStringField;
    ClientDataSet1cidade: TStringField;
    ClientDataSet1bairro: TStringField;
    ClientDataSet1rua: TStringField;
    ClientDataSet1numero: TIntegerField;
    ClientDataSet1cep: TIntegerField;
    ClientDataSet1tel1: TStringField;
    ClientDataSet1tel2: TStringField;
    ClientDataSet1nomeResponsavel: TStringField;
    ClientDataSet1parentescoResponsavel: TStringField;
    ClientDataSet1telResponsavel: TStringField;
    ClientDataSet1peso: TSingleField;
    ClientDataSet1altura: TSingleField;
    ClientDataSet1frequenciaAtividadeFisica: TIntegerField;
    ClientDataSet1qtdRefeicoesDia: TIntegerField;
    ClientDataSet1qtdHorasSono: TIntegerField;
    ClientDataSet1suplementacao: TBooleanField;
    ClientDataSet1dieta: TBooleanField;
    ClientDataSet1fumante: TBooleanField;
    ClientDataSet1consomeBebidaAlcoolica: TBooleanField;
    ClientDataSet1dataCadastro: TDateField;
    ClientDataSet1ativo: TBooleanField;
    ClientDataSet1cpf: TStringField;
    ClientDataSet1foto: TBlobField;
    ClientDataSet1informacaoAdicional: TStringField;
    ClientDataSet1idObjetivo: TIntegerField;
    FDQuery1DESCRICAOOBJETIVO: TStringField;
    ClientDataSet1DESCRICAOOBJETIVO: TStringField;
    ClientDataSet1IMC: TFloatField;
    DBEdit2: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    DSPAtologia: TDataSource;
    cdsPatologia: TClientDataSet;
    provPatologia: TDataSetProvider;
    QPATOLOGIA: TFDQuery;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    EditBeleza1: TEditBeleza;
    Panel3: TPanel;
    BTNALTERAR: TSpeedButton;
    BTNCANCELAR: TSpeedButton;
    QPATOLOGIAidAluno: TIntegerField;
    QPATOLOGIAidPatologia: TIntegerField;
    QPATOLOGIAobservacaoMedica: TStringField;
    QPATOLOGIANOMEPATOLOGIA: TStringField;
    cdsPatologiaidAluno: TIntegerField;
    cdsPatologiaidPatologia: TIntegerField;
    cdsPatologiaobservacaoMedica: TStringField;
    cdsPatologiaNOMEPATOLOGIA: TStringField;
    DBGridBeleza2: TDBGridBeleza;
    cxDBMemo2: TcxDBMemo;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    qSerie: TFDQuery;
    pSerie: TDataSetProvider;
    CDSSerie: TClientDataSet;
    DSSerie: TDataSource;
    FDQuery1dataComposicaoFicha: TDateField;
    ClientDataSet1dataComposicaoFicha: TDateField;
    qSerieidAluno: TIntegerField;
    qSerieidTreino: TIntegerField;
    qSerieidExercicio: TIntegerField;
    qSerieqtdSerie: TIntegerField;
    qSerieqtdRepeticao: TIntegerField;
    qSeriedescricaoTreino: TStringField;
    qSerienomeExercicio: TStringField;
    CDSSerieidAluno: TIntegerField;
    CDSSerieidTreino: TIntegerField;
    CDSSerieidExercicio: TIntegerField;
    CDSSerieqtdSerie: TIntegerField;
    CDSSerieqtdRepeticao: TIntegerField;
    CDSSeriedescricaoTreino: TStringField;
    CDSSerienomeExercicio: TStringField;
    qTreino: TFDQuery;
    pTreino: TDataSetProvider;
    CDSTreino: TClientDataSet;
    qTreinoidTreino: TIntegerField;
    qTreinodescricaoTreino: TStringField;
    CDSTreinoidTreino: TIntegerField;
    CDSTreinodescricaoTreino: TStringField;
    cxGroupBox10: TcxGroupBox;
    DBGridBeleza3: TDBGridBeleza;
    qSerieidgrupoExercicio: TIntegerField;
    qSeriedescricaoGrupoExercicio: TStringField;
    CDSSerieidgrupoExercicio: TIntegerField;
    CDSSeriedescricaoGrupoExercicio: TStringField;
    DSTreino: TDataSource;
    SpeedButton2: TSpeedButton;
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
    pag4: TcxTabSheet;
    cxGroupBox11: TcxGroupBox;
    cxGroupBox12: TcxGroupBox;
    cxGroupBox13: TcxGroupBox;
    SpeedButton3: TSpeedButton;
    DBGridBeleza4: TDBGridBeleza;
    DSModalidade: TDataSource;
    cdsModalidade: TClientDataSet;
    pModalidade: TDataSetProvider;
    QMODALIDADE: TFDQuery;
    QMODALIDADEidAluno: TIntegerField;
    QMODALIDADEidmodalidade: TIntegerField;
    QMODALIDADEdataInscrição: TDateField;
    QMODALIDADEdiavencimento: TIntegerField;
    QMODALIDADEDESCRICAOMODALIDADE: TStringField;
    cdsModalidadeidAluno: TIntegerField;
    cdsModalidadeidmodalidade: TIntegerField;
    cdsModalidadedataInscrição: TDateField;
    cdsModalidadediavencimento: TIntegerField;
    cdsModalidadeDESCRICAOMODALIDADE: TStringField;
    QMODALIDADEvalor: TSingleField;
    cdsModalidadevalor: TSingleField;
    Label27: TLabel;
    EditModalidade: TEdit;
    editBModalidade: TEditBeleza;
    Panel4: TPanel;
    btnCancelaMatricula: TSpeedButton;
    cxGroupBox14: TcxGroupBox;
    cxGroupBox15: TcxGroupBox;
    cxGroupBox16: TcxGroupBox;
    DBGridBeleza5: TDBGridBeleza;
    Panel5: TPanel;
    btnPagamento: TSpeedButton;
    pPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    DSPagamento: TDataSource;
    qPagamento: TFDQuery;
    qPagamentoidPagamento: TIntegerField;
    qPagamentoidAluno: TIntegerField;
    qPagamentoidmodalidade: TIntegerField;
    qPagamentovalorModalidade: TSingleField;
    qPagamentovalorCobrado: TSingleField;
    qPagamentodataVencimento: TDateField;
    qPagamentodataPagamento: TDateField;
    qPagamentoidstatusPagamento: TIntegerField;
    qPagamentoLOGUsuarioResponsavel: TStringField;
    qPagamentodescricaoStatusPagamento: TStringField;
    cdsPagamentoidPagamento: TIntegerField;
    cdsPagamentoidAluno: TIntegerField;
    cdsPagamentoidmodalidade: TIntegerField;
    cdsPagamentovalorModalidade: TSingleField;
    cdsPagamentovalorCobrado: TSingleField;
    cdsPagamentodataVencimento: TDateField;
    cdsPagamentodataPagamento: TDateField;
    cdsPagamentoidstatusPagamento: TIntegerField;
    cdsPagamentoLOGUsuarioResponsavel: TStringField;
    cdsPagamentodescricaoStatusPagamento: TStringField;
    qPagamentodescricaoModalidade: TStringField;
    cdsPagamentodescricaoModalidade: TStringField;
    btnIsencao: TSpeedButton;
    btnCancelarPI: TSpeedButton;
    Panel6: TPanel;
    btnImprimirFicha: TSpeedButton;
    btnLimparFicha: TSpeedButton;
    btnImportarFicha: TSpeedButton;
    procedure btnFotoClick(Sender: TObject);
    procedure btnMudarCameraClick(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure cxDBImage1PropertiesAssignPicture(Sender: TObject;
      const Picture: TPicture);
    procedure BSalvarClick(Sender: TObject);
    procedure cxDBDateEdit1PropertiesChange(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsPatologiaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsPatologiaAfterCancel(DataSet: TDataSet);
    procedure cdsPatologiaAfterDelete(DataSet: TDataSet);
    procedure cdsPatologiaAfterPost(DataSet: TDataSet);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure BTNALTERARClick(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CDSSerieAfterCancel(DataSet: TDataSet);
    procedure CDSSerieAfterDelete(DataSet: TDataSet);
    procedure CDSSerieAfterPost(DataSet: TDataSet);
    procedure EditgrupoChange(Sender: TObject);
    procedure EditBExercicioButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure DBGridBeleza3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BCancelarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure editBModalidadeButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure cdsModalidadeAfterCancel(DataSet: TDataSet);
    procedure cdsModalidadeAfterDelete(DataSet: TDataSet);
    procedure cdsModalidadeAfterPost(DataSet: TDataSet);
    procedure btnCancelaMatriculaClick(Sender: TObject);
    procedure cdsPagamentoAfterCancel(DataSet: TDataSet);
    procedure cdsPagamentoAfterDelete(DataSet: TDataSet);
    procedure cdsPagamentoAfterPost(DataSet: TDataSet);
    procedure cdsPagamentoAfterInsert(DataSet: TDataSet);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnIsencaoClick(Sender: TObject);
    procedure DSPagamentoDataChange(Sender: TObject; Field: TField);
    procedure btnCancelarPIClick(Sender: TObject);
    procedure DBGridBeleza5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirFichaClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure btnLimparFichaClick(Sender: TObject);
    procedure DSSerieDataChange(Sender: TObject; Field: TField);
    procedure DSModalidadeDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth, newHeight: Integer);
    procedure CriarForm(Tela, Desc: String);
    function MsgDlgButtonPersonal(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; Captions: array of string): Integer;

  end;

var
  F01001: TF01001;

const
  MinGraphicSize = 44;

implementation

{$R *.dfm}

uses
vcl.themes, vcl.styles, U01010,
{IMAGENS BLOB}
{ SysUtils, Classes, Graphics, }GIFImg, JPEG, PngImage, U01011, u_relatorios;


procedure TF01001.BCancelarClick(Sender: TObject);
begin
  inherited;

  //limpa campos da ficha;
  Edittreino.Clear;
  EditBTreino.Clear;
  Editgrupo.Clear;
  EditBGrupo.Clear;
  Editexercicio.Clear;
  EditBExercicio.Clear;
  editSerie.Clear;
  editRepeticoes.Clear;

end;

procedure TF01001.bRelatorioClick(Sender: TObject);
var
  q: TFDQuery;
begin
  inherited;

  if NOT(Ds.DataSet.IsEmpty)then
  begin
      frelatorios := tfrelatorios.Create(self);
      with frelatorios do
      begin
          try
              visible := false;
              //Assimila_Relat_q(Screen.ActiveForm.Name, 0, DS.DataSet, DSSerie.DataSet, 'idAluno', 'idAluno');

              Assimila3Datasets(Screen.ActiveForm.Name, DS.DataSet, DSModalidade.DataSet, DSSerie.DataSet,'idAluno', 'idAluno', 'idAluno');
              ShowModal;
          finally
              Relatorios_sis.close;
              relats_usur.close;
              Free;
          end;
      end;
  end else
  begin
    ShowMessage('Relatório necessita de pesquisa');
  end;
end;

procedure TF01001.BSalvarClick(Sender: TObject);
VAR
  aDest : TBitmap;
begin
  //
  IF((ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert))THEN
  BEGIN
    aDest:= tbitmap.create;
    aDest.Width := 200;
    aDest.Height := 113;
    aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), cxDBImage1.Picture.Bitmap);
    //ClientDataSet1foto.Assign(camera.CapturedBitmap);
    ClientDataSet1foto.Assign(aDest);
  END;

  inherited;

  //PREVINE QUE O USUARIO ESQUEÇA DE SALVAR A ULTIMA ALTERAÇÃO EM CXDBMEMO2 (OBSERVAÇÕES MEDICAS)
  IF(cdsPatologia.State = dsEdit)THEN
  begin
      cdsPatologia.Post;
  end;

  //limpa campos da ficha;
  Edittreino.Clear;
  EditBTreino.Clear;
  Editgrupo.Clear;
  EditBGrupo.Clear;
  Editexercicio.Clear;
  EditBExercicio.Clear;
  editSerie.Clear;
  editRepeticoes.Clear;

end;

procedure TF01001.BTNALTERARClick(Sender: TObject);
begin
  inherited;
  BTNCANCELAR.Enabled := TRUE;

  IF(BTNALTERAR.Caption = 'ALTERAR')THEN
  BEGIN
      BTNALTERAR.Caption := 'SALVAR';

      //COLOCA EM MODO DE EDIÇÃO
      if DSPAtologia.DataSet.Active then
      begin
        if not DSPAtologia.DataSet.IsEmpty then
        begin
          DSPAtologia.DataSet.Edit;
          CXDBMEMO2.Properties.ReadOnly := FALSE;
        end else
           ShowMessage('Não Há Registros para Alteração.');
      end;

  END ELSE
  BEGIN
      IF(BTNALTERAR.Caption = 'SALVAR')THEN
      BEGIN
        BTNALTERAR.Caption := 'ALTERAR';
        BTNCANCELAR.Enabled := FALSE;
        CXDBMEMO2.Properties.ReadOnly := TRUE;
        //SALVA
        cdsPatologiaobservacaoMedica.AsString := CXDBMemo2.Text;
        DSPAtologia.DataSet.Post;
      END;
  END;
end;

procedure TF01001.BTNCANCELARClick(Sender: TObject);
begin
  inherited;

  BTNCANCELAR.Enabled := FALSE;
  BTNALTERAR.Caption := 'ALTERAR';

  //CANCELA ALTERAÇÕES
  DSPAtologia.DataSet.Cancel;
  cdsPatologia.CancelUpdates;


end;

procedure TF01001.btnCancelarPIClick(Sender: TObject);
begin
  inherited;
  if NOT(DS.DataSet.IsEmpty) then
  begin
      DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
      '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:IDA AND PA.idmodalidade =:IDM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
      DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
      DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.Open;

      IF(cdsPagamentoidPagamento.AsInteger = DModule.qAux.FieldByName('IDPAGAMENTO').AsInteger)THEN
      BEGIN
          if (Application.MessageBox('Confirma Cancelar Pagamento/Isenção?', 'CANCELAMENTO', MB_YESNO + MB_ICONQUESTION) = id_yes) then
          begin
                  TRY
                      cdsPagamento.Edit;
                      cdsPagamentoidstatusPagamento.AsInteger := 1;
                      cdsPagamentovalorCobrado.Clear;
                      cdsPagamentodataPagamento.Clear;
                      cdsPagamento.Post;
                      cdsPagamento.Refresh;

                  except
                    ON E: Exception DO
                    BEGIN
                        ShowMessage('OCORREU UM ERRO DURANTE O CANCELAMENTO. CONSULTE SUPORTE!' + #13 + E.Message);
                    END;

                  END;
          end;


      END ELSE
      BEGIN
          ShowMessage('O ITEM SELECIONADO POSSUI REGISTROS POSTERIORES A ELE.'
          + #13 + 'EXCLUSÃO NÃO CONCLUÍDA.'
          );
      END;

  end ELSE
  BEGIN
    ShowMessage('Nenhum Registro Selecionado');
  END;
end;

procedure TF01001.btnImprimirFichaClick(Sender: TObject);
begin
  inherited;
  //


end;

procedure TF01001.btnFotoClick(Sender: TObject);
var
aDest : TBitmap;
begin
  inherited;
  camera.Capture;
  //imgAluno.Picture.Assign(camera.CapturedBitmap);
  cxDBImage1.Picture.Assign(camera.CapturedBitmap);

  aDest:= tbitmap.create;
  aDest.Width := 200;
  aDest.Height := 113;
  aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), camera.CapturedBitmap);

  //ClientDataSet1foto.Assign(camera.CapturedBitmap);
  ClientDataSet1foto.Assign(aDest);

end;

procedure TF01001.btnIsencaoClick(Sender: TObject);
begin
  inherited;
  // VERIFICA SE HÁ PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
  DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
  DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
  DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
  DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
  DModule.qAux.ParamByName('vData').AsDateTime := cdsPagamentodataVencimento.AsDateTime;
  DModule.qAux.Close;
  DModule.qAux.Open;

  if(DModule.qAux.RecordCount = 0)then
  begin
      //EFETUA PAGAMENTO
      With TF01010.Create(self, cdsPagamentoidPagamento.AsInteger, 2) do  // 1 =Pagamento, 2=Isenção
      Begin
        ShowModal;
        Free;
      End;
      cdsPagamento.Refresh;
  end else
  begin
      if(DModule.qAux.RecordCount > 0)then
      begin
          //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, NÃO É POSSÍVEL CONCLUIR.
          ShowMessage('PAGAMENTO ANTERIOR EM ABERTO. NÃO É POSSÍVEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
      end;
  end;
end;

procedure TF01001.btnMudarCameraClick(Sender: TObject);
begin
  inherited;
  camera.DeviceIndex := 1 - camera.DeviceIndex;
end;



procedure TF01001.cdsModalidadeAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.CancelUpdates;
end;

procedure TF01001.cdsModalidadeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.ApplyUpdates(-1);
end;

procedure TF01001.cdsModalidadeAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsModalidade.ApplyUpdates(-1);
end;

procedure TF01001.cdsPagamentoAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.CancelUpdates;
end;

procedure TF01001.cdsPagamentoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.ApplyUpdates(-1);
end;

procedure TF01001.cdsPagamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPagamentoidPagamento.AsInteger := DModule.buscaProximoParametro('pagamento');
end;

procedure TF01001.cdsPagamentoAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsPagamento.ApplyUpdates(-1);
end;

procedure TF01001.cdsPatologiaAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsPatologia.CancelUpdates;
end;

procedure TF01001.cdsPatologiaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsPatologia.ApplyUpdates(-1);
end;

procedure TF01001.cdsPatologiaAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsPatologia.ApplyUpdates(-1);
end;

procedure TF01001.cdsPatologiaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TF01001.CDSSerieAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSSerie.CancelUpdates;
end;

procedure TF01001.CDSSerieAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSSerie.ApplyUpdates(-1);
end;

procedure TF01001.CDSSerieAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSSerie.ApplyUpdates(-1);
end;

procedure TF01001.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idAluno.AsInteger := DModule.buscaProximoParametro('aluno');
end;

procedure TF01001.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TF01001.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  inherited;
  //

  if NOT(ClientDataSet1peso.IsNull) and NOT(ClientDataSet1altura.IsNull) then
  begin
    ClientDataSet1IMC.AsFloat := ClientDataSet1peso.AsFloat/ (ClientDataSet1altura.AsFloat * ClientDataSet1altura.AsFloat) ;
  end;

end;

procedure TF01001.CriarForm(Tela, Desc: String);
var
  PClass : TPersistentClass;
begin
  PClass := GetClass('T' + trim(Tela));
  if (PCLass <> nil) then
  begin
    with tFormClass(PClass).Create(Application) do
      try
        Name := Tela;
        Caption := Tela + ' - ' + Desc;
        //Mostra

        ShowModal;
      finally
        Free;
        tFormClass(PClass) := nil;
      end;
   end;
end;


procedure TF01001.cxDBDateEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  IF((ClientDataSet1.State = dsEdit) OR (ClientDataSet1.State = dsInsert))THEN
  BEGIN
    ClientDataSet1idade.AsInteger := (DateUtils.YearsBetween(DATE, cxDBDateEdit1.Date));
  END;
end;

procedure TF01001.cxDBImage1PropertiesAssignPicture(Sender: TObject;
  const Picture: TPicture);
VAR
  aDest : TBitmap;
begin
  inherited;
  //
    {
  IF((ClientDataSet1.State = dsEdit))THEN
  BEGIN
    aDest:= tbitmap.create;
    aDest.Width := 200;
    aDest.Height := 113;
    aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), Picture.Bitmap);

    //ClientDataSet1foto.Assign(camera.CapturedBitmap);
    ClientDataSet1foto.Assign(aDest);

    ShowMessage('ok');
  END;
             }
end;

procedure TF01001.DBGridBeleza3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Batida
  begin
    if MessageDlg('Deseja Apagar Item [' + CDSSerienomeExercicio.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        CDSSerie.Delete;
     end;
  end;
end;

procedure TF01001.DBGridBeleza5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if(column.Title.Caption = 'SITUAÇÃO')then
  begin
      if(cdsPagamentodataVencimento.AsDateTime < DModule.datahoje ) AND (cdsPagamentoidstatusPagamento.AsInteger = 1)then
      begin
          DBGridBeleza5.Canvas.Font.Color:= $0000008C; //PAGAMENTO ATRASADO = VERMELHO
          DBGridBeleza5.Canvas.FillRect(Rect);
          DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end else
      begin
          if(cdsPagamentoidstatusPagamento.AsInteger = 1)then
          begin
              DBGridBeleza5.Canvas.Font.Color:= $0000B0B0; //PAGAMENTO EM ABERTO = AMARELO
              DBGridBeleza5.Canvas.FillRect(Rect);
              DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end else
          begin
                if(cdsPagamentoidstatusPagamento.AsInteger = 2)then
                begin
                    DBGridBeleza5.Canvas.Font.Color:= $00007D00; //PAGAMENTO RECEBIDO = VERDE
                    DBGridBeleza5.Canvas.FillRect(Rect);
                    DBGridBeleza5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                end else
                begin

                end;
          end;
      end;
  end;
end;

procedure TF01001.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  //PESQUISA DE PATOLOGIAS
  QPATOLOGIA.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSPAtologia.DataSet.Close;
  DSPAtologia.DataSet.Open;
  if cdsPatologia.RecNo > 0 then
  BEGIN
    BTNALTERAR.Enabled := TRUE;
  END ELSE
    BTNALTERAR.Enabled := FALSE;

  //PESQUISA FICHA DE EXERCICIO
  qSerie.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSSerie.DataSet.close;
  DSSerie.DataSet.open;
  

  //PESQUISA Modalidade
  QMODALIDADE.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSModalidade.DataSet.close;
  DSModalidade.DataSet.open;

  //PESQUISA Pagamento
  qPagamento.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSPagamento.DataSet.close;
  DSPagamento.DataSet.open;

end;

procedure TF01001.DSModalidadeDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(cdsModalidade.RecordCount > 0)THEN
  BEGIN
      btnCancelaMatricula.Enabled := TRUE;
  END ELSE
  BEGIN
      btnCancelaMatricula.Enabled := FALSE;
  END;
end;

procedure TF01001.DSPagamentoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(cdsPagamentoidstatusPagamento.AsInteger = 1)THEN
  BEGIN
      btnPagamento.Enabled := TRUE;
      btnIsencao.Enabled := TRUE;
      btnCancelarPI.Enabled := false;
  END ELSE
  BEGIN
      btnPagamento.Enabled := FALSE;
      btnIsencao.Enabled := FALSE;
      btnCancelarPI.Enabled := TRUE;
  END;
end;

procedure TF01001.DSSerieDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSSerie.RecordCount > 0)THEN
  BEGIN
      btnImprimirFicha.Enabled := TRUE;
      btnLimparFicha.Enabled := TRUE;
      btnImportarFicha.Enabled := FALSE;
  END ELSE
  BEGIN
      btnImprimirFicha.Enabled := FALSE;
      btnLimparFicha.Enabled := FALSE;
      btnImportarFicha.Enabled := TRUE;
  END;
end;

procedure TF01001.EditBExercicioButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idG').Value := strtoint(Editgrupo.Text);
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.editBModalidadeButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.EditgrupoChange(Sender: TObject);
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

function TF01001.MsgDlgButtonPersonal(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; Captions: array of string): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Criar o dialogo }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  CaptionIndex := 0;
  { Faz um loop varrendo os objetos do dialogo }
  for i := 0 to pred(aMsgDlg.ComponentCount) do
  begin
    if (aMsgDlg.Components[i] is TButton) then
    begin
      { Apenas entra na condição se o objeto for um button }
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then //Captura o Index dos captions dos buttons criado no array
         Break;
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
      //dlgButton.
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

procedure TF01001.QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth,
  newHeight: Integer);
var
xIni, xFin, yIni, yFin, xSalt, ySalt: Double;
X, Y, pX, pY, tpX: Integer;
R, G, B: Integer;
pxColor: TColor;
begin
    bmpDest.Width := newWidth;
    bmpDest.Height := newHeight;

    xSalt := bmpOrig.Width / newWidth;
    ySalt := bmpOrig.Height / newHeight;

    yFin := 0;
    for Y := 0 to pred(newHeight) do
    begin
    yIni := yFin;
    yFin := yIni + ySalt;
    if yFin >= bmpOrig.Height then
    yFin := pred(bmpOrig.Height);

    xFin := 0;
    for X := 0 to pred(newWidth) do
    begin
    xIni := xFin;
    xFin := xIni + xSalt;
    if xFin >= bmpOrig.Width then
    xFin := pred(bmpOrig.Width);

    R := 0;
    G := 0;
    B := 0;
    tpX := 0;

    for pY := Round(yIni) to Round(yFin) do
    for pX := Round(xIni) to Round(xFin) do
    begin
        Inc(tpX);
        pxColor := ColorToRGB(bmpOrig.Canvas.Pixels[pX, pY]);
        R := R + GetRValue(pxColor);
        G := G + GetGValue(pxColor);
        B := B + GetBValue(pxColor);
    end;

    bmpDest.Canvas.Pixels[X,Y] := RGB(Round(R/tpX),Round(G/tpX),Round(B/tpX));
    end;
    end;
end;

procedure TF01001.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  // ADCIONAR NOVA PATOLOGIA
  if not DSPAtologia.DataSet.Active then
    DSPAtologia.DataSet.Open;

  DSPAtologia.DataSet.Append;
  cdsPatologiaidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
  cdsPatologiaidPatologia.AsInteger := STRTOINT(Edit1.Text);
  DSPAtologia.DataSet.Post;
  //cdsPatologia.ApplyUpdates(-1);

  QPATOLOGIA.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSPAtologia.DataSet.Close;
  DSPAtologia.DataSet.Open;


end;

procedure TF01001.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if not DSSerie.DataSet.Active then
  DSSerie.DataSet.Open;

  DSSerie.DataSet.Append;
  CDSSerieidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
  IF trim(Edittreino.Text ) <> '' THEN
  BEGIN
    CDSSerieidTreino.AsInteger := strtoint(Edittreino.Text);
    IF trim(Editexercicio.Text ) <> '' THEN
    BEGIN
      IF (trim(editSerie.Text ) <> '') AND (trim(editRepeticoes.Text ) <> '') THEN
      BEGIN
          CDSSerieidExercicio.AsInteger := strtoint(Editexercicio.Text);
          CDSSerieqtdSerie.AsInteger := strtoint(editSerie.Text);
          CDSSerieqtdRepeticao.AsInteger := strtoint(editRepeticoes.Text);

          CDSSerie.Post;
          qSerie.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
          DSSerie.DataSet.close;
          DSSerie.DataSet.open;
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

procedure TF01001.SpeedButton3Click(Sender: TObject);
var
  I: INTEGER;
  valorMensalidade : Double;
  DATA_VENCIMENTO_ULTIMO_PAGAMENTO : TDATETIME;
begin
    inherited;

    if not DSModalidade.DataSet.Active then DSModalidade.DataSet.Open;

    IF trim(EditModalidade.Text ) <> '' THEN
    BEGIN
        //verifica se não há mensalidades já pagas
        DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
        '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:idA AND PA.idmodalidade =:idM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
        DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
        DModule.qAux.ParamByName('idM').AsInteger := strtoint(editmodalidade.Text);
        DModule.qAux.close;
        DModule.qAux.open;

        //SE HÁ MENSALIDADES JA PAGAS, MATRÍCULA SÓ PODE SER REALIZADA SE "DATA_HOJE > (DATAVENCIMENTO_DA_ULTIMA_MENSALIDADE_PAGA_OU_ISENTA + 30_DIAS)"
        DATA_VENCIMENTO_ULTIMO_PAGAMENTO := DModule.qAux.FieldByName('dataVencimento').AsDateTime;

        if(   DModule.datahoje  > ( IncMonth(DATA_VENCIMENTO_ULTIMO_PAGAMENTO,1))      )
        or(DATA_VENCIMENTO_ULTIMO_PAGAMENTO = NULL)  then   {null caso não tenha nenhum registro anterior}
        begin

              //INCLUI MODALIDADE
              DSModalidade.DataSet.Append;
              CDSModalidadeidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
              cdsModalidadeidmodalidade.AsInteger := strtoint(EditModalidade.Text);
              cdsModalidadedataInscrição.AsDateTime := DMODULE.datahoje;
              cdsModalidadediavencimento.AsInteger := DayOf(cdsModalidadedataInscrição.AsDateTime);
              CDSModalidade.Post;

              //GERA PAGAMENTOS DOS PROXIMOS 12 MESES
              if not DSPagamento.DataSet.Active then
                DSPagamento.DataSet.Open;

              //CONSULTA Valor Modalidade
              DModule.qAux.SQL.Text := 'select VALOR FROM MODALIDADE WHERE IDMODALIDADE =:IDM ';
              DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
              DModule.qAux.Close;
              DModule.qAux.Open;
              valorMensalidade := DModule.qAux.FieldByName('VALOR').Asfloat;

              For I := 0 to 11 do
              BEGIN
                  DSPagamento.DataSet.Append;

                  //idAluno
                  cdsPagamentoidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;

                  //idModalidade
                  cdsPagamentoidmodalidade.AsInteger := cdsModalidadeidmodalidade.AsInteger;

                  //valorModalidade
                  cdsPagamentovalorModalidade.AsFloat := valorMensalidade;

                  // DATA VENCIMENTO
                  cdsPagamentodataVencimento.AsDateTime := IncMonth(DModule.datahoje, I);

                  //STATUS PAGAMENTO
                  cdsPagamentoidstatusPagamento.AsInteger := 1;  // 1 = EM ABERTO

                  //LOG
                  cdsPagamentoLOGUsuarioResponsavel.AsString := 'GERADO POR: ' + DModule.NOMEUSUARIO +' em '+ DateToStr(DMODULE.datahoje);

                  DSPagamento.DataSet.Post;

              END;

              //ATUALIZA DBGRID MODALIDADE
              qMODALIDADE.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
              DSModalidade.DataSet.close;
              DSModalidade.DataSet.open;

              //ATUALIZA DBGRID PEGAMENTO
              qPagamento.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
              DSPagamento.DataSet.close;
              DSPagamento.DataSet.open;

              //LIMPA EDITS MODALIDADEE
              editBModalidade.Clear;
              EditModalidade.Clear;

        end else
        begin
            ShowMessage('Aluno possui mensalidade isenta ou quitada até '+ datetostr(IncMonth(DATA_VENCIMENTO_ULTIMO_PAGAMENTO,1)) +
            '. Matrícula só poderá ser realizada após esta data.');
        end;

    END ELSE
    BEGIN
        ShowMessage('SELECIONE UMA MODALIDADE');
    END;

end;

procedure TF01001.btnLimparFichaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('DESEJA APAGAR FICHA DE EXERCÍCIOS ATUAL DO ALUNO?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      TRY
        DModule.qAux.SQL.Text := 'DELETE FROM SERIE WHERE IDALUNO =:IDA';
        DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
        DModule.qAux.Close;
        DModule.qAux.ExecSQL;

        //PESQUISA FICHA DE EXERCICIO
        qSerie.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
        DSSerie.DataSet.close;
        DSSerie.DataSet.open;

      EXCEPT
        ON E: EXCEPTION DO
        BEGIN
          ShowMessage(E.Message);
        END;
      END;
  end;
end;

procedure TF01001.btnCancelaMatriculaClick(Sender: TObject);
VAR
    DATA_VENCIMENTO_ULTIMO_PAGAMENTO: TDATETIME;
    StrX: string;
    iMensagem: Integer;
begin
  inherited;
  if NOT(DSModalidade.DataSet.IsEmpty) then
  begin
      if MessageDlg('DESEJA CANCELAR MATRÍCULA ['+ cdsModalidadeDESCRICAOMODALIDADE.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

        //verifica se não há mensalidades EM ABERTO e DATA DE HOJE > DATA DE VENCIMENTO dela
        DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P.idAluno=:idA AND P.idmodalidade =:idM AND P.idstatusPagamento = 1 AND CURDATE() > P.DATAVENCIMENTO;';
        DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
        DModule.qAux.ParamByName('idM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
        DModule.qAux.close;
        DModule.qAux.open;

        if(DModule.qAux.RecordCount>0)then
        begin
            //EMITE AVISO DAS MENSALIDADES EM ABERTO
            With TF01011.Create(self, ClientDataSet1idAluno.AsInteger, cdsModalidadeidmodalidade.AsInteger) do  // 1 =Pagamento, 2=Isenção
            Begin
                  if(ShowModal = mrOk)then
                  begin
                        //// APAGA MENSALIDADES EM ABERTO
                        DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
                        DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
                        DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
                        DModule.qAux.Close;
                        DModule.qAux.ExecSQL;
                        cdsModalidade.Delete;
                        cdsPagamento.Refresh
                  end else
                  begin
                        //ShowMessage('Funfô não mano');
                  end;
                  Free;
            End;


            {
            VAR iMensagem: Integer;
            iMensagem := MsgDlgButtonPersonal('Aluno possui ' + inttostr(DModule.qAux.RecordCount) + ' mensalidade(s) em atraso. Essas mensalidades serão excluidas automaticamente pelo sistema.', mtConfirmation, [mbYes,mbNo,mbOK],
            ['VISUALIZAR','CANCELAR', 'OK']);
            case iMensagem of
               6: //ShowMessage('VISUALIZAR');
               7: //ShowMessage('CANCELAR');
               1: // ShowMessage('OK');
            end;}

        end else
        begin
            // APAGA MENSALIDADES EM ABERTO
              DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
              DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
              DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
              DModule.qAux.Close;
              DModule.qAux.ExecSQL;
              cdsModalidade.Delete;
              cdsPagamento.Refresh
        end;

      end;    {

            // Trata Mensalidades já vencidas
            Case MessageBox (Application.Handle, Pchar ('APAGAR MENSALIDADES EM ATRASO?'), 'EXCLUSÃO', MB_YESNOCANCEL+MB_DEFBUTTON2) of
                  idYes:
                        begin
                            // APAGA TODAS AS MENSALIDADES EM ABERTO
                            DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
                            DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
                            DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
                            DModule.qAux.Close;
                            DModule.qAux.ExecSQL;
                            cdsModalidade.Delete;
                            cdsPagamento.Refresh;
                        end;

                  idNo:
                        begin
                            ;
                        end;

            end;

                 }

  end ELSE
  BEGIN
    ShowMessage('Nenhuma Modalidade Selecionada.');
  END;

end;

procedure TF01001.btnPagamentoClick(Sender: TObject);
begin
  inherited;
  // VERIFICA SE HÁ PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
  DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
  DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
  DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
  DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
  DModule.qAux.ParamByName('vData').AsDateTime := cdsPagamentodataVencimento.AsDateTime;
  DModule.qAux.Close;
  DModule.qAux.Open;

  if(DModule.qAux.RecordCount = 0)then
  begin
      //EFETUA PAGAMENTO
      With TF01010.Create(self, cdsPagamentoidPagamento.AsInteger, 1) do  // 1 =Pagamento, 2=Isenção
      Begin
        ShowModal;
        Free;
      End;
      cdsPagamento.Refresh;
  end else
  begin
      if(DModule.qAux.RecordCount > 0)then
      begin
          //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, NÃO É POSSÍVEL CONCLUIR.
          ShowMessage('PAGAMENTO ANTERIOR EM ABERTO. NÃO É POSSÍVEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
      end;
  end;
end;

initialization
  RegisterClass(TF01001);
Finalization
  UnRegisterClass(TF01001);
end.
