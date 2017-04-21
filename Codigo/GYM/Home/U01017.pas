unit U01017;

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
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxSpinEdit, Math;

type
  TF01017 = class(TFBase)
    FDQuery1idAvaliacaoFisica: TIntegerField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1dataAvaliacaoFisica: TDateField;
    FDQuery1nomeAvaliador: TStringField;
    FDQuery1med_peso_cm: TSingleField;
    FDQuery1med_altura_cm: TSingleField;
    FDQuery1med_cervical_cm: TSingleField;
    FDQuery1med_torax_cm: TSingleField;
    FDQuery1med_quadril_cm: TSingleField;
    FDQuery1med_cintura_cm: TSingleField;
    FDQuery1med_abdomen_cm: TSingleField;
    FDQuery1med_bracoDireitoContraido_cm: TSingleField;
    FDQuery1med_bracoDireitoRelaxado_cm: TSingleField;
    FDQuery1med_antibracoDireito_cm: TSingleField;
    FDQuery1med_coxaDireita_cm: TSingleField;
    FDQuery1med_panturrilhaDireita_cm: TSingleField;
    FDQuery1med_bracoEsquerdoContraido_cm: TSingleField;
    FDQuery1med_bracoEsquerdoRelaxado_cm: TSingleField;
    FDQuery1med_antibracoEsquerdo_cm: TSingleField;
    FDQuery1med_coxaEsquerda_cm: TSingleField;
    FDQuery1med_panturrilhaEsquerda_cm: TSingleField;
    FDQuery1dobra_triciptal_mm: TSingleField;
    FDQuery1dobra_subescapular_mm: TSingleField;
    FDQuery1dobra_axiliar_mm: TSingleField;
    FDQuery1dobra_abdominal_mm: TSingleField;
    FDQuery1dobra_coxa_mm: TSingleField;
    FDQuery1dobra_panturrilha_mm: TSingleField;
    FDQuery1dobra_biciptal_mm: TSingleField;
    FDQuery1dobra_peitoral_mm: TSingleField;
    FDQuery1dobra_suprailiac_mm: TSingleField;
    FDQuery1tipoProtocolo: TStringField;
    FDQuery1NOMEALUNO: TStringField;
    ClientDataSet1idAvaliacaoFisica: TIntegerField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1dataAvaliacaoFisica: TDateField;
    ClientDataSet1nomeAvaliador: TStringField;
    ClientDataSet1med_peso_cm: TSingleField;
    ClientDataSet1med_altura_cm: TSingleField;
    ClientDataSet1med_cervical_cm: TSingleField;
    ClientDataSet1med_torax_cm: TSingleField;
    ClientDataSet1med_quadril_cm: TSingleField;
    ClientDataSet1med_cintura_cm: TSingleField;
    ClientDataSet1med_abdomen_cm: TSingleField;
    ClientDataSet1med_bracoDireitoContraido_cm: TSingleField;
    ClientDataSet1med_bracoDireitoRelaxado_cm: TSingleField;
    ClientDataSet1med_antibracoDireito_cm: TSingleField;
    ClientDataSet1med_coxaDireita_cm: TSingleField;
    ClientDataSet1med_panturrilhaDireita_cm: TSingleField;
    ClientDataSet1med_bracoEsquerdoContraido_cm: TSingleField;
    ClientDataSet1med_bracoEsquerdoRelaxado_cm: TSingleField;
    ClientDataSet1med_antibracoEsquerdo_cm: TSingleField;
    ClientDataSet1med_coxaEsquerda_cm: TSingleField;
    ClientDataSet1med_panturrilhaEsquerda_cm: TSingleField;
    ClientDataSet1dobra_triciptal_mm: TSingleField;
    ClientDataSet1dobra_subescapular_mm: TSingleField;
    ClientDataSet1dobra_axiliar_mm: TSingleField;
    ClientDataSet1dobra_abdominal_mm: TSingleField;
    ClientDataSet1dobra_coxa_mm: TSingleField;
    ClientDataSet1dobra_panturrilha_mm: TSingleField;
    ClientDataSet1dobra_biciptal_mm: TSingleField;
    ClientDataSet1dobra_peitoral_mm: TSingleField;
    ClientDataSet1dobra_suprailiac_mm: TSingleField;
    ClientDataSet1tipoProtocolo: TStringField;
    ClientDataSet1NOMEALUNO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    ClientDataSet1IMC: TFloatField;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    GroupBox3: TGroupBox;
    FDQuery1flex_colunaCervicalFlexaoLateral_grau: TIntegerField;
    FDQuery1flex_troncoFlexao_grau: TIntegerField;
    FDQuery1flex_ombroDireitoAbducao_grau: TIntegerField;
    FDQuery1flex_ombroEsquerdoAbducao_grau: TIntegerField;
    FDQuery1flex_quadrilDireitoFlexao_grau: TIntegerField;
    FDQuery1flex_quadrilEsquerdoFlexao_grau: TIntegerField;
    FDQuery1flex_quadrilAbducao_grau: TIntegerField;
    ClientDataSet1flex_colunaCervicalFlexaoLateral_grau: TIntegerField;
    ClientDataSet1flex_troncoFlexao_grau: TIntegerField;
    ClientDataSet1flex_ombroDireitoAbducao_grau: TIntegerField;
    ClientDataSet1flex_ombroEsquerdoAbducao_grau: TIntegerField;
    ClientDataSet1flex_quadrilDireitoFlexao_grau: TIntegerField;
    ClientDataSet1flex_quadrilEsquerdoFlexao_grau: TIntegerField;
    ClientDataSet1flex_quadrilAbducao_grau: TIntegerField;
    Label30: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label31: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label32: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label33: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label34: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    Label35: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label36: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    cxDBMaskEdit6: TcxDBMaskEdit;
    cxDBSpinEdit8: TcxDBSpinEdit;
    cxDBSpinEdit9: TcxDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateCONSULTA(AOwner: TComponent; IDAVAF: INTEGER);
    constructor CreateNOVO(AOwner: TComponent; IDA: INTEGER; NOMEALUNO:STRING);
  end;

var
  F01017: TF01017;
  IDALUNO : INTEGER;
  IDAVALIACAOFISICA : INTEGER;
  NOMEALUNOF : STRING;

implementation

{$R *.dfm}

uses UDataModule;

{ TF01017 }

procedure TF01017.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idAvaliacaoFisica.AsInteger := DModule.buscaProximoParametro('avaliacaofisica');
end;

procedure TF01017.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  inherited;
  //CALCULA IMC
  if NOT(ClientDataSet1med_peso_cm.IsNull) and NOT(ClientDataSet1med_altura_cm.IsNull) then
  begin
    ClientDataSet1IMC.AsFloat := ClientDataSet1med_peso_cm.AsFloat/ (ClientDataSet1med_altura_cm.AsFloat * ClientDataSet1med_altura_cm.AsFloat) ;
    ClientDataSet1IMC.AsFloat := RoundTo(ClientDataSet1IMC.AsFloat, -2);
  end;
end;

constructor TF01017.CreateCONSULTA(AOwner: TComponent; IDAVAF: INTEGER);
begin
  //
  inherited Create(AOwner);

  IDAVALIACAOFISICA := IDAVAF;
  BInserir.Visible := FALSE;
  BInserir.ENABLED := FALSE;
  BPesquisar.Visible := FALSE;
  BPesquisar.ENABLED := FALSE;
  FDQuery1.SQL.Text :=
  'SELECT AVF.*, A.NOMEALUNO FROM AVALIACAOFISICA AVF '+
  'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AVF.IDALUNO '+
  'WHERE AVF.IDAVALIACAOFISICA = ' + INTTOSTR(IDAVAF);

  DS.DataSet.Close;
  DS.DataSet.Open;
end;

constructor TF01017.CreateNOVO(AOwner: TComponent; IDA: INTEGER;
  NOMEALUNO: STRING);
begin
  //
  inherited Create(AOwner);

  FDQuery1.SQL.Text :=
  'SELECT AVF.*, A.NOMEALUNO FROM AVALIACAOFISICA AVF '+
  'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AVF.IDALUNO '+
  'WHERE AVF.IDALUNO = ' + INTTOSTR(IDA);
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

procedure TF01017.DSStateChange(Sender: TObject);
begin
  inherited;
  if (ds.DataSet.State = dsInsert) then
  begin
    //IdAluno
    ClientDataSet1idAluno.AsInteger := IDALUNO;

    //NomeAluno
    ClientDataSet1NOMEALUNO.AsString := NOMEALUNOF;

    //DataComposicao
    ClientDataSet1dataAvaliacaoFisica.AsDateTime := DModule.datahoje;

    //NOMEAVALIADOR
    ClientDataSet1nomeAvaliador.AsString := DModule.nomeusuario;

  end;
end;

procedure TF01017.FormShow(Sender: TObject);
begin
  inherited;
  //Enconde aba Filtros
  tbFiltros.TabVisible := false;
end;

initialization
  RegisterClass(TF01017);
Finalization
  UnRegisterClass(TF01017);
end.
