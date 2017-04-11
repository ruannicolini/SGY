unit U01010;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udatamodule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.Buttons;

type
  TF01010 = class(TForm)
    qPagamento: TFDQuery;
    pPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    PanelStatus: TPanel;
    Panel2: TPanel;
    qPagamentoidPagamento: TIntegerField;
    qPagamentoidAluno: TIntegerField;
    qPagamentoidmodalidade: TIntegerField;
    qPagamentovalorModalidade: TSingleField;
    qPagamentovalorCobrado: TSingleField;
    qPagamentodataVencimento: TDateField;
    qPagamentodataPagamento: TDateField;
    qPagamentoidstatusPagamento: TIntegerField;
    qPagamentodescricaoModalidade: TStringField;
    qPagamentodescricaoStatusPagamento: TStringField;
    cdsPagamentoidPagamento: TIntegerField;
    cdsPagamentoidAluno: TIntegerField;
    cdsPagamentoidmodalidade: TIntegerField;
    cdsPagamentovalorModalidade: TSingleField;
    cdsPagamentovalorCobrado: TSingleField;
    cdsPagamentodataVencimento: TDateField;
    cdsPagamentodataPagamento: TDateField;
    cdsPagamentoidstatusPagamento: TIntegerField;
    cdsPagamentodescricaoModalidade: TStringField;
    cdsPagamentodescricaoStatusPagamento: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label6: TLabel;
    BTNPAGAMENTOISENCAO: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    dsPagamento: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    qPagamentoLOGUsuarioResponsavel: TStringField;
    cdsPagamentoLOGUsuarioResponsavel: TStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsPagamentoAfterCancel(DataSet: TDataSet);
    procedure cdsPagamentoAfterDelete(DataSet: TDataSet);
    procedure cdsPagamentoAfterPost(DataSet: TDataSet);
    procedure BTNPAGAMENTOISENCAOClick(Sender: TObject);
    procedure pPagamentoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pParm1, pParm2: integer);
  end;

var
  F01010: TF01010;

implementation

{$R *.dfm}

Uses DBCommon;

{ TF01010 }

procedure TF01010.cdsPagamentoAfterCancel(DataSet: TDataSet);
begin
cdsPagamento.CancelUpdates;
end;

procedure TF01010.cdsPagamentoAfterDelete(DataSet: TDataSet);
begin
cdsPagamento.ApplyUpdates(-1);
end;

procedure TF01010.cdsPagamentoAfterPost(DataSet: TDataSet);
begin
cdsPagamento.ApplyUpdates(-1);
end;

constructor TF01010.Create(AOwner: TComponent; pParm1, pParm2: integer);
begin
  //
  inherited Create(AOwner);

  qPagamento.ParamByName('idP').AsInteger := pParm1;
  dsPagamento.DataSet.Close;
  dsPagamento.DataSet.Open;

  cdsPagamento.Edit;
  if(pParm2 = 1)then // pParm2 = 1 == Pago
  begin
    cdsPagamentoidstatusPagamento.AsInteger := 2; //no banco o id 2 é PAGO
    cdsPagamentovalorCobrado.AsFloat := cdsPagamentovalorModalidade.AsFloat;
    cdsPagamentodataPagamento.AsDateTime := DModule.datahoje;
    PanelStatus.Caption := ' PAGAMENTO';
    BTNPAGAMENTOISENCAO.Caption := 'CONCLUIR PAGAMENTO';

  end else
  begin
    if(pParm2 = 2)then // pParm2 = 2 == Isento
    begin
      cdsPagamentoidstatusPagamento.AsInteger := 3; //no banco o id 3 é ISENTO
      cdsPagamentovalorCobrado.AsFloat := 0;
      cdsPagamentodataPagamento.AsDateTime := DModule.datahoje;
      PanelStatus.Caption := ' ISENÇÃO';
      cxDBSpinEdit1.Properties.ReadOnly := TRUE;
      BTNPAGAMENTOISENCAO.Caption := 'CONCLUIR ISENÇÃO';
    end;
  end;



end;

procedure TF01010.pPagamentoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  tipoCRUD, novoValor, AntigoValor : string;
  idRegistro, idRegistro2: integer;
  duasChavesPrimarias :boolean;
  I : integer;
begin
  //INICIALIZAÇÃO DE VARIÁVEIS
  idRegistro := 0;
  idRegistro2 := 0;
  duasChavesPrimarias := false;

  // INSERÇÃO NA TABELA LOGSISTEMA
  if not DModule.cdsLog.Active then
          DModule.cdsLog.Open;
  DModule.cdsLog.Append;

  //TIPO DA OPERAÇÃO
  Case UpdateKind of
  ukModify :
            begin
              tipoCRUD := 'modify';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to cdsPagamento.FieldCount-1 do  //*
              begin
                  if (pfInKey in cdsPagamento.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := cdsPagamento.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := cdsPagamento.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (cdsPagamento.Fields[I].OldValue) <> (cdsPagamento.Fields[I].NewValue))then //*
                begin

                  //idcampoLog := 0;
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

                end;
              end;

            end;
  ukInsert :
            begin
              tipoCRUD := 'insert';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  novovalor := VarToStr(DeltaDS.Fields[I].NewValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalornovo.AsString := novoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  ukDelete :
            begin
              tipoCRUD := 'delete';

              //DESCOBRE OS CAMPOS ID
              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  if (pfInKey in DeltaDS.fields[i].ProviderFlags) then
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := DeltaDS.Fields[I].AsInteger;
                    end else
                    begin
                      idRegistro2 := DeltaDS.Fields[I].AsInteger;
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                  antigoValor := VarToStr(DeltaDS.Fields[I].OldValue);

                  //REGISTRO CAMPOLOG
                  if not DModule.cdsCampoLog.Active then DModule.cdsCampoLog.Open;
                  DModule.cdsCampoLog.Append;
                  DModule.cdsCampoLognomeField.AsString := DeltaDS.Fields[I].FieldName;
                  DModule.cdsCampoLogvalorAntigo.AsString := AntigoValor;
                  DModule.cdsCampoLogidLogSistema.AsInteger := DModule.cdsLogidlogSistema.AsInteger;
                  DModule.cdsCampoLog.Post

              end;

            end;
  end;

  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qPagamento.SQL.Text)); //*
  DModule.cdsLogdataLog.AsDateTime := DModule.datahoje;
  DModule.cdsLoghoraLog.AsDateTime := now();
  DModule.cdsLognomeUsuario.AsString := DModule.nomeusuario;
  DModule.cdsLogidUsuario.AsInteger := DModule.idusuario;
  DModule.cdsLogdescricaoInterface.asstring := Screen.ActiveForm.Name;
  DModule.cdsLogidPkRegistro.AsInteger := idRegistro;
  DModule.cdsLogtipoCRUD.AsString := tipoCRUD;
  IF(duasChavesPrimarias = true)THEN
  BEGIN
    DModule.cdsLogidPkRegistro2.AsInteger := idRegistro2;
  end;

  DModule.cdsLog.Post;

end;

procedure TF01010.BTNPAGAMENTOISENCAOClick(Sender: TObject);
begin
  IF NOT(cdsPagamentodataPagamento.IsNull)THEN
  BEGIN
      IF NOT(cdsPagamentovalorCobrado.IsNull)THEN
      BEGIN
          TRY
              IF(cdsPagamentoidstatusPagamento.AsInteger = 2)THEN
              BEGIN
                cdsPagamentoLOGUsuarioResponsavel.AsString := 'PAGAMENTO RECEBIDO POR: ' + DModule.nomeusuario + ' EM ' + cdsPagamentodataPagamento.AsString;
                cdsPagamento.Post;
                //ShowMessage('PAGAMENTO EFETUADO COM SUCESSO');
              END ELSE
              BEGIN
                  IF(cdsPagamentoidstatusPagamento.AsInteger = 3)THEN
                  BEGIN
                    cdsPagamentoLOGUsuarioResponsavel.AsString := 'ISENÇÃO CONCEDIDA POR: ' + DModule.nomeusuario + ' EM '+ cdsPagamentodataPagamento.AsString;
                    cdsPagamento.Post;
                    //ShowMessage('ISENÇÃO EFETUADA COM SUCESSO');
                  END;
              END;
              CLOSE; //FECHA FORM
          Except
            on E: Exception do
            BEGIN
              SHOWMESSAGE('ERRO AO CONCLUIR OPERAÇÃO:' + #13 + e.Message);
              cdsPagamento.CancelUpdates;
            END;
          END;

      END ELSE
        ShowMessage('INFORME O VALOR COBRADO');
  END ELSE
    ShowMessage('INFORME A DATA DE PAGAMENTO');
end;

procedure TF01010.SpeedButton2Click(Sender: TObject);
begin
  cdsPagamento.Cancel;
  Close;
end;

initialization
  RegisterClass(TF01010);
Finalization
  UnRegisterClass(TF01010);
end.
