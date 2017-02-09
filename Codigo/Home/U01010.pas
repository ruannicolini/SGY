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
    qPagamentoLOGUsuarioResponsavel: TStringField;
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
    cdsPagamentoLOGUsuarioResponsavel: TStringField;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsPagamentoAfterCancel(DataSet: TDataSet);
    procedure cdsPagamentoAfterDelete(DataSet: TDataSet);
    procedure cdsPagamentoAfterPost(DataSet: TDataSet);
    procedure BTNPAGAMENTOISENCAOClick(Sender: TObject);
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
