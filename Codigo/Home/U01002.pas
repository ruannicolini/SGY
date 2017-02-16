unit U01002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DBGridBeleza,
  Vcl.StdCtrls, Vcl.ExtCtrls, uDataModule, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit,
  cxSpinEdit, DBEditBeleza, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  Edit_Calendario, cxDBExtLookupComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImageComboBox, Vcl.FileCtrl, Vcl.Menus, cxButtons,
  EditBeleza, dxCore, cxDateUtils;

type
  TF01002 = class(TFBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    valorM: TDBEdit;
    Label7: TLabel;
    valorC: TDBEdit;
    Label8: TLabel;
    dataPag: TcxDBDateEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    DBEditBeleza2: TDBEditBeleza;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    FDQuery1idPagamento: TIntegerField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1idmodalidade: TIntegerField;
    FDQuery1valorModalidade: TSingleField;
    FDQuery1valorCobrado: TSingleField;
    FDQuery1dataVencimento: TDateField;
    FDQuery1dataPagamento: TDateField;
    FDQuery1idstatusPagamento: TIntegerField;
    FDQuery1LOGUsuarioResponsavel: TStringField;
    FDQuery1nomeAluno: TStringField;
    FDQuery1descricaoModalidade: TStringField;
    ClientDataSet1idPagamento: TIntegerField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1idmodalidade: TIntegerField;
    ClientDataSet1valorModalidade: TSingleField;
    ClientDataSet1valorCobrado: TSingleField;
    ClientDataSet1dataVencimento: TDateField;
    ClientDataSet1dataPagamento: TDateField;
    ClientDataSet1idstatusPagamento: TIntegerField;
    ClientDataSet1LOGUsuarioResponsavel: TStringField;
    ClientDataSet1nomeAluno: TStringField;
    ClientDataSet1descricaoModalidade: TStringField;
    Label4: TLabel;
    dataVenc: TcxDBDateEdit;
    DBMemo1: TDBMemo;
    FDQuery1descricaostatusPagamento: TStringField;
    ClientDataSet1descricaostatusPagamento: TStringField;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEditBeleza3: TDBEditBeleza;
    FDQuery1CPF: TStringField;
    ClientDataSet1CPF: TStringField;
    Panel5: TPanel;
    btnPagamento: TcxButton;
    btnisencao: TcxButton;
    btnCancelar: TcxButton;
    EditPESQSITUAÇÃO: TEditBeleza;
    EditIDSituacao: TEdit;
    cbxPesqSituacao: TCheckBox;
    cbxPesqAluno: TCheckBox;
    EditPesqIDAluno: TEdit;
    EditPesqAluno: TEditBeleza;
    cbxPesqModalidade: TCheckBox;
    editPesqidModalidade: TEdit;
    EditPesqModalidade: TEditBeleza;
    cbxPesqDataVencimento: TCheckBox;
    dataPesqVencimentoInicio: TcxDateEdit;
    dataPesqVencimentoFim: TcxDateEdit;
    cbxPesqDataPagamento: TCheckBox;
    dataPesqPagamentoInicio: TcxDateEdit;
    dataPesqPagamentoFim: TcxDateEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DBEdit6Change(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnisencaoClick(Sender: TObject);
    procedure DBGridBeleza1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCancelarClick(Sender: TObject);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
    procedure BExcluirClick(Sender: TObject);
    procedure EditPESQSITUAÇÃOChange(Sender: TObject);
    procedure EditPesqModalidadeChange(Sender: TObject);
    procedure EditPesqAlunoChange(Sender: TObject);
    procedure dataPesqVencimentoInicioPropertiesChange(Sender: TObject);
    procedure dataPesqPagamentoInicioPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function VerificaData( Texto : String) : Boolean;
  end;

var
  F01002: TF01002;

implementation

{$R *.dfm}

uses U01010;

procedure TF01002.BExcluirClick(Sender: TObject);
begin
  //inherited;
  ShowMessage('FUNÇÃO NÃO PERMITIDA.')
end;

procedure TF01002.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if NOT(DS.DataSet.IsEmpty) then
  begin
      DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
      '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:IDA AND PA.idmodalidade =:IDM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.ParamByName('IDM').AsInteger := ClientDataSet1idmodalidade.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.Open;

      IF(ClientDataSet1idPagamento.AsInteger = DModule.qAux.FieldByName('IDPAGAMENTO').AsInteger)THEN
      BEGIN
          if (Application.MessageBox('Confirma Cancelar Pagamento/Isenção?', 'CANCELAMENTO', MB_YESNO + MB_ICONQUESTION) = id_yes) then
          begin
                  TRY
                      DModule.qAux.SQL.Text := 'UPDATE PAGAMENTO SET VALORCOBRADO = NULL, DATAPAGAMENTO = NULL, IDSTATUSPAGAMENTO = 1 WHERE IDPAGAMENTO =:IDP';
                      DModule.qAux.ParamByName('IDP').AsInteger := ClientDataSet1idPagamento.AsInteger;
                      DModule.qAux.Close;
                      DModule.qAux.ExecSQL;
                      ClientDataSet1.Refresh;
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

procedure TF01002.btnisencaoClick(Sender: TObject);
begin
  inherited;

  if not(ds.DataSet.IsEmpty)then
  begin
    // VERIFICA SE HÁ PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
      DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
      DModule.qAux.ParamByName('IDM').AsInteger := ClientDataSet1idmodalidade.AsInteger;
      DModule.qAux.ParamByName('vData').AsDateTime := ClientDataSet1dataVencimento.AsDateTime;
      DModule.qAux.Close;
      DModule.qAux.Open;

      if(DModule.qAux.RecordCount = 0)then
      begin
          //EFETUA PAGAMENTO
          With TF01010.Create(self, ClientDataSet1idPagamento.AsInteger, 2) do  // 1 =Pagamento, 2=Isenção
          Begin
            ShowModal;
            Free;
          End;
          ClientDataSet1.Refresh;
      end else
      begin
          if(DModule.qAux.RecordCount > 0)then
          begin
              //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, NÃO É POSSÍVEL CONCLUIR.
             ShowMessage('ALUNO POSSUI PAGAMENTO ANTERIOR EM ABERTO PARA ESTA MODALIDADE. NÃO É POSSÍVEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
          end;
      end;
  end;


end;

procedure TF01002.btnPagamentoClick(Sender: TObject);
begin
  inherited;
  if not(ds.DataSet.IsEmpty)then
  begin
    // VERIFICA SE HÁ PAGAMENTOS ANTERIORES AO ITEM SELECIONADO, EM ABERTO.
      DModule.qAux.SQL.Text := 'select p.* from pagamento p where p.idAluno =:idA and p.idModalidade =:idM and p.idStatusPagamento =:idS and (SELECT DATEDIFF(p.dataVencimento, :vdata)) < 0 ';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.ParamByName('IDS').AsInteger := 1;   // 1 = Em aberto no banco
      DModule.qAux.ParamByName('IDM').AsInteger := ClientDataSet1idmodalidade.AsInteger;
      DModule.qAux.ParamByName('vData').AsDateTime := ClientDataSet1dataVencimento.AsDateTime;
      DModule.qAux.Close;
      DModule.qAux.Open;

      if(DModule.qAux.RecordCount = 0)then
      begin
          //EFETUA PAGAMENTO
          With TF01010.Create(self, ClientDataSet1idPagamento.AsInteger, 1) do  // 1 =Pagamento, 2=Isenção
          Begin
            ShowModal;
            Free;
          End;
          ClientDataSet1.Refresh;
      end else
      begin
          if(DModule.qAux.RecordCount > 0)then
          begin
              //EXISTEM PAGAMENTOS ANTERIORES EM ATRASO, NÃO É POSSÍVEL CONCLUIR.
              ShowMessage('ALUNO POSSUI PAGAMENTO ANTERIOR EM ABERTO PARA ESTA MODALIDADE. NÃO É POSSÍVEL CONCLUIR. (' + inttostr( DModule.qAux.RecordCount ) + ')');
          end;
      end;
  end;

end;


procedure TF01002.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idPagamento.AsInteger := DModule.buscaProximoParametro('pagamento');
end;

procedure TF01002.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TF01002.dataPesqPagamentoInicioPropertiesChange(Sender: TObject);
begin
  inherited;
  if (VerificaData(dataPesqPagamentoInicio.Text) = TRUE) AND
  (VerificaData(dataPesqPagamentoFim.Text)= TRUE) then
  begin
      cbxPesqDataPagamento.Checked := TRUE;
  end ELSE
  BEGIN
      cbxPesqDataPagamento.Checked := FALSE;
  END;
end;

procedure TF01002.dataPesqVencimentoInicioPropertiesChange(Sender: TObject);
begin
  inherited;
  if (VerificaData(dataPesqVencimentoInicio.Text) = TRUE) AND
  (VerificaData(dataPesqVencimentoFIM.Text)= TRUE) then
  begin
      cbxPesqDataVencimento.Checked := TRUE;
  end ELSE
  BEGIN
      cbxPesqDataVencimento.Checked := FALSE;
  END;
end;

procedure TF01002.DBEdit6Change(Sender: TObject);
begin
  inherited;
  if(DBEdit6.Text = '1')then
  begin
    valorc.Clear;
    dataPag.Clear;
    dataPag.Enabled:= false;
    valorC.Enabled := false;
  end else
  begin
      if(DBEdit6.Text = '2')then
      begin
        dataPag.Enabled:= true;
        valorC.Enabled := true;
      end else
      begin
          if(DBEdit6.Text = '3')then
          begin
            valorC.Clear;
            dataPag.Enabled:= false;
            valorC.Enabled := false;
          end;
      end;
  end;
end;

procedure TF01002.DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //SILENCIA O BARULHO DO WIDOWS AL CLICAR NO ENTER
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01002.DBGridBeleza1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  if(column.Title.Caption = 'SITUAÇÃO')then
  begin
      if(ClientDataSet1dataVencimento.AsDateTime < DModule.datahoje ) AND (ClientDataSet1idstatusPagamento.AsInteger = 1)then
      begin
          DBGridBeleza1.Canvas.Font.Color:= $0000008C; //PAGAMENTO ATRASADO = VERMELHO
          DBGridBeleza1.Canvas.FillRect(Rect);
          DBGridBeleza1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end else
      begin
          if(ClientDataSet1idstatusPagamento.AsInteger = 1)then
          begin
              DBGridBeleza1.Canvas.Font.Color:= $0000B0B0; //PAGAMENTO EM ABERTO = AMARELO
              DBGridBeleza1.Canvas.FillRect(Rect);
              DBGridBeleza1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end else
          begin
                if(ClientDataSet1idstatusPagamento.AsInteger = 2)then
                begin
                    DBGridBeleza1.Canvas.Font.Color:= $00007D00; //PAGAMENTO RECEBIDO = VERDE
                    DBGridBeleza1.Canvas.FillRect(Rect);
                    DBGridBeleza1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                end else
                begin

                end;
          end;
      end;
  end;


end;

procedure TF01002.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(ClientDataSet1idstatusPagamento.AsInteger = 1)THEN
  BEGIN
      btnPagamento.Enabled := TRUE;
      btnIsencao.Enabled := TRUE;
      btnCancelar.Enabled := false;
  END ELSE
  BEGIN
      btnPagamento.Enabled := FALSE;
      btnIsencao.Enabled := FALSE;
      btnCancelar.Enabled := true;
  END;
end;

procedure TF01002.EditPesqAlunoChange(Sender: TObject);
begin
  inherited;
  if((EditPesqAluno.Text = '')or (EditPesqAluno.Text = ' '))then
  begin
    cbxPesqAluno.Checked := false;
    EditPesqIDAluno.Clear;
  end else
    cbxPesqAluno.Checked := true;
end;

procedure TF01002.EditPesqModalidadeChange(Sender: TObject);
begin
  inherited;
  if((EditPesqModalidade.Text = '')or (EditPesqModalidade.Text = ' '))then
  begin
    cbxPesqModalidade.Checked := false;
    editPesqidModalidade.Clear;
  end else
    cbxPesqModalidade.Checked := true;
end;


procedure TF01002.EditPESQSITUAÇÃOChange(Sender: TObject);
begin
  inherited;
  if((EditPESQSITUAÇÃO.Text = '')or (EditPESQSITUAÇÃO.Text = ' '))then
  begin
    cbxPesqSituacao.Checked := false;
    EditIDSituacao.Clear;
  end else
    cbxPesqSituacao.Checked := true;
end;

function TF01002.VerificaData(Texto: String): Boolean;
var
   Data : String;
begin
    Data := TEXTO;
    try
      {IF(Length(TEXTO)=10)THEN
      BEGIN
        StrToDate(Data);
        Result := True;
      END ELSE
      BEGIN
        Result := False;
      END; }
      StrToDate(Data);
      Result := True;

    except
       Result := False;
    end;
end;

Initialization
  RegisterClass(TF01002);
Finalization
  UnRegisterClass(TF01002);
end.
