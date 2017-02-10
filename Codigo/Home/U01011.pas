unit U01011;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udatamodule, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, Datasnap.DBClient, DBGridBeleza,
  Vcl.Buttons;

type
  TF01011 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QUERY: TFDQuery;
    PROVIDER: TDataSetProvider;
    DATASET: TClientDataSet;
    QUERYidPagamento: TIntegerField;
    QUERYidAluno: TIntegerField;
    QUERYidmodalidade: TIntegerField;
    QUERYvalorModalidade: TSingleField;
    QUERYvalorCobrado: TSingleField;
    QUERYdataVencimento: TDateField;
    QUERYdataPagamento: TDateField;
    QUERYidstatusPagamento: TIntegerField;
    QUERYLOGUsuarioResponsavel: TStringField;
    QUERYDESCRICAOMODALIDADE: TStringField;
    QUERYDESCRICAOSTATUSPAGAMENTO: TStringField;
    DATASETidPagamento: TIntegerField;
    DATASETidAluno: TIntegerField;
    DATASETidmodalidade: TIntegerField;
    DATASETvalorModalidade: TSingleField;
    DATASETvalorCobrado: TSingleField;
    DATASETdataVencimento: TDateField;
    DATASETdataPagamento: TDateField;
    DATASETidstatusPagamento: TIntegerField;
    DATASETLOGUsuarioResponsavel: TStringField;
    DATASETDESCRICAOMODALIDADE: TStringField;
    DATASETDESCRICAOSTATUSPAGAMENTO: TStringField;
    DATASOURCE: TDataSource;
    BTNOK: TSpeedButton;
    PanelStatus: TPanel;
    btnCANCELAR: TSpeedButton;
    Panel3: TPanel;
    DBGridBeleza1: TDBGridBeleza;
    procedure btnCANCELARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; IDA,IDM: INTEGER);
  end;

var
  F01011: TF01011;

implementation

{$R *.dfm}

{ TF01011 }


{ TF01011 }

procedure TF01011.BTNOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

constructor TF01011.Create(AOwner: TComponent; IDA, IDM: INTEGER);
begin
  //
  inherited Create(AOwner);
  QUERY.ParamByName('idA').AsInteger := IDA;
  QUERY.ParamByName('idM').AsInteger := IDM;
  DATASOURCE.DataSet.Close;
  DATASOURCE.DataSet.Open;
end;

procedure TF01011.FormShow(Sender: TObject);
begin
  PANEL3.Caption := '    ALUNO POSSUI MENSALIDADE(S) EM ATRASO.' +
  ' ESSAS MENSALIDADES SERÃO EXCLUÍDAS AUTOMATICAMENTE.';
end;

procedure TF01011.btnCANCELARClick(Sender: TObject);
begin

  ModalResult := mrCancel;
  //CLOSE;
end;

initialization
  RegisterClass(TF01011);
Finalization
  UnRegisterClass(TF01011);
end.
