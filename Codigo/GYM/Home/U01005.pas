unit U01005;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udatamodule, UBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Samples.Spin, EditBeleza, cxGroupBox;

type
  TF01005 = class(TFBase)
    FDQuery1idFichaPreDefinida: TIntegerField;
    FDQuery1descricaoFicha: TStringField;
    FDQuery1dataComposicao: TDateField;
    ClientDataSet1idFichaPreDefinida: TIntegerField;
    ClientDataSet1descricaoFicha: TStringField;
    ClientDataSet1dataComposicao: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qSerieFicha: TFDQuery;
    pSerieFicha: TDataSetProvider;
    CDSSerieFicha: TClientDataSet;
    DsSerieFicha: TDataSource;
    cxGroupBox10: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
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
    DBGridBeleza3: TDBGridBeleza;
    Panel6: TPanel;
    btnImprimirFicha: TSpeedButton;
    btnLimparFicha: TSpeedButton;
    qSerieFichaidFichaPreDefinida: TIntegerField;
    qSerieFichaidTreino: TIntegerField;
    qSerieFichaidExercicio: TIntegerField;
    qSerieFichaqtdSerie: TIntegerField;
    qSerieFichaqtdRepeticao: TIntegerField;
    qSerieFichadescricaoTreino: TStringField;
    qSerieFichanomeExercicio: TStringField;
    qSerieFichaidgrupoExercicio: TIntegerField;
    qSerieFichadescricaoGrupoExercicio: TStringField;
    qSerieFichaidequipamento: TIntegerField;
    qSerieFichadescricaoequipamento: TStringField;
    CDSSerieFichaidFichaPreDefinida: TIntegerField;
    CDSSerieFichaidTreino: TIntegerField;
    CDSSerieFichaidExercicio: TIntegerField;
    CDSSerieFichaqtdSerie: TIntegerField;
    CDSSerieFichaqtdRepeticao: TIntegerField;
    CDSSerieFichadescricaoTreino: TStringField;
    CDSSerieFichanomeExercicio: TStringField;
    CDSSerieFichaidgrupoExercicio: TIntegerField;
    CDSSerieFichadescricaoGrupoExercicio: TStringField;
    CDSSerieFichaidequipamento: TIntegerField;
    CDSSerieFichadescricaoequipamento: TStringField;
    cbxPesqDescricao: TCheckBox;
    EditPesqDescricao: TEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure CDSSerieFichaAfterCancel(DataSet: TDataSet);
    procedure CDSSerieFichaAfterDelete(DataSet: TDataSet);
    procedure CDSSerieFichaAfterPost(DataSet: TDataSet);
    procedure CDSSerieFichaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure EditBExercicioButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure EditgrupoChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnLimparFichaClick(Sender: TObject);
    procedure EditBTreinoKeyPress(Sender: TObject; var Key: Char);
    procedure BSalvarClick(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure DsSerieFichaDataChange(Sender: TObject; Field: TField);
    procedure EditPesqDescricaoChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01005: TF01005;

implementation

{$R *.dfm}

uses u_relatorios;

procedure TF01005.Action5Execute(Sender: TObject);
begin
  inherited;
  //APAGA REGISTROS DA EXERCICIO DA FICHA
  IF(DS.DataSet.State = dsInsert)THEN
  BEGIN
    DModule.qAux.SQL.Text := 'DELETE FROM FichaPreDefinidaSerie WHERE idFichaPreDefinida =:IDF';
    DModule.qAux.ParamByName('IDF').AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
    DModule.qAux.Close;
    DModule.qAux.ExecSQL;
  END;
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

procedure TF01005.bRelatorioClick(Sender: TObject);
begin
  inherited;
  if NOT(Ds.DataSet.IsEmpty)then
  begin
      frelatorios := tfrelatorios.Create(self);
      with frelatorios do
      begin
          try
              visible := false;
              Assimila_Relat_q(Screen.ActiveForm.Name, 0, DS.DataSet, DsSerieFicha.DataSet, 'idFichaPreDefinida', 'idFichaPreDefinida');

              //Assimila3Datasets(Screen.ActiveForm.Name, DS.DataSet, DsSerieFicha.DataSet, DSSerie.DataSet,'idAluno', 'idAluno', 'idAluno');
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

procedure TF01005.BSalvarClick(Sender: TObject);
begin
  if TRIM(DBEdit2.Text) <> '' then
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
  end else
  begin
    ShowMessage('INFORME DESCRIÇÃO');
  end;
  
end;

procedure TF01005.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  FDQuery1.SQL.Text := 'select * from fichaPreDefinida where 1=1 ';
  if(cbxPesqDescricao.Checked = true)then
  begin
    FDQuery1.SQL.Add(' and descricaoficha like "%' + EditPesqDescricao.Text +'%"');
  end;
  FDQuery1.Open;
  BPesquisar.Click;

end;

procedure TF01005.btnLimparFichaClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('DESEJA APAGAR TODOS OS EXERCÍCIOS DA FICHA?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      TRY
        DModule.qAux.SQL.Text := 'DELETE FROM FichaPreDefinidaSerie WHERE idFichaPreDefinida =:IDF';
        DModule.qAux.ParamByName('IDF').AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
        DModule.qAux.Close;
        DModule.qAux.ExecSQL;

        //PESQUISA FICHA DE EXERCICIO
        qSerieFicha.Params[0].AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
        DsSerieFicha.DataSet.close;
        DsSerieFicha.DataSet.open;

      EXCEPT
        ON E: EXCEPTION DO
        BEGIN
          ShowMessage(E.Message);
        END;
      END;
  end;
end;

procedure TF01005.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'select * from fichaPreDefinida ';
  FDQuery1.Open;
  BPesquisar.Click;
end;

procedure TF01005.CDSSerieFichaAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSSerieFicha.CancelUpdates;
end;

procedure TF01005.CDSSerieFichaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSSerieFicha.ApplyUpdates(-1);
end;

procedure TF01005.CDSSerieFichaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSSerieFicha.ApplyUpdates(-1);
end;

procedure TF01005.CDSSerieFichaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TF01005.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  //
  ClientDataSet1idFichaPreDefinida.AsInteger := DModule.buscaProximoParametro('fichaPreDefinida');
end;

procedure TF01005.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //REFRESH
  qSerieFicha.Params[0].AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
  DsSerieFicha.DataSet.close;
  DsSerieFicha.DataSet.open;
end;

procedure TF01005.DsSerieFichaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSSerieFicha.RecordCount > 0)THEN
  BEGIN
      btnImprimirFicha.Enabled := TRUE;
      btnLimparFicha.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirFicha.Enabled := FALSE;
      btnLimparFicha.Enabled := FALSE;
  END;
end;

procedure TF01005.EditBExercicioButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idG').Value := strtoint(Editgrupo.Text);
  //query_result.ParamByName('idT').Value := strtoint(Edittreino.Text);
  query_result.ParamByName('idF').Value := (ClientDataSet1idFichaPreDefinida.AsInteger);
end;

procedure TF01005.EditBTreinoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01005.EditgrupoChange(Sender: TObject);
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

procedure TF01005.EditPesqDescricaoChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqDescricao.Text) <> '')then
  begin
    cbxPesqDescricao.Checked := true;
  end else
    cbxPesqDescricao.Checked := false;
end;

procedure TF01005.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if not DsSerieFicha.DataSet.Active then
  DsSerieFicha.DataSet.Open;

  IF trim(Edittreino.Text ) <> '' THEN
  BEGIN
    IF trim(Editexercicio.Text ) <> '' THEN
    BEGIN
      IF (trim(editSerie.Text ) <> '') AND (trim(editRepeticoes.Text ) <> '') THEN
      BEGIN
          // SE APAGOU TODOS OS REGISTROS
          IF(DsSerieFicha.DataSet.RecordCount = 0)THEN
          BEGIN
            if((ds.DataSet.State = dsInsert))then
            begin
                   ClientDataSet1dataComposicao.AsDateTime := DModule.datahoje;
            end else
            begin
                if (ds.DataSet.State = dsEdit) then
                begin
                    //SET DATA DE COMPOSIÇÃO DA FICHA
                    DModule.qAux.SQL.Text := 'UPDATE FichaPreDefinida SET dataComposicao=:idData where idFichaPreDefinida =:idF';
                    DModule.qAux.ParamByName('idF').AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
                    DModule.qAux.ParamByName('idData').AsDate := DModule.datahoje;
                    DModule.qAux.Close;
                    DModule.qAux.ExecSQL;
                end;
            end;
          END;

          //INCLUI REGISTRO
          DsSerieFicha.DataSet.Append;
          CDSSerieFichaidFichaPreDefinida.AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
          CDSSerieFichaidTreino.AsInteger := strtoint(Edittreino.Text);
          CDSSerieFichaidExercicio.AsInteger := strtoint(Editexercicio.Text);
          CDSSerieFichaqtdSerie.AsInteger := strtoint(editSerie.Text);
          CDSSerieFichaqtdRepeticao.AsInteger := strtoint(editRepeticoes.Text);
          CDSSerieFicha.Post;

          //REFRESH
          qSerieFicha.Params[0].AsInteger := ClientDataSet1idFichaPreDefinida.AsInteger;
          DsSerieFicha.DataSet.close;
          DsSerieFicha.DataSet.open;
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

initialization
  RegisterClass(TF01005);
Finalization
  UnRegisterClass(TF01005);
end.
