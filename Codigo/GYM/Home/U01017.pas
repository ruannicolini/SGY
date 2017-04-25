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
  cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxSpinEdit, Math,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart;

type
  TF01017 = class(TFBase)
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
    cxDBMaskEdit6: TcxDBMaskEdit;
    cxDBSpinEdit8: TcxDBSpinEdit;
    cxDBSpinEdit9: TcxDBSpinEdit;
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
    FDQuery1do_BIESTILOIDE_cm: TSingleField;
    FDQuery1do_BIEPICONDILIANO_cm: TSingleField;
    FDQuery1do_BICONDILIANO_cm: TSingleField;
    FDQuery1do_BIMALEOLAR_cm: TSingleField;
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
    ClientDataSet1do_BIESTILOIDE_cm: TSingleField;
    ClientDataSet1do_BIEPICONDILIANO_cm: TSingleField;
    ClientDataSet1do_BICONDILIANO_cm: TSingleField;
    ClientDataSet1do_BIMALEOLAR_cm: TSingleField;
    ClientDataSet1NOMEALUNO: TStringField;
    GroupBox3: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure BSalvarClick(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
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

procedure TF01017.Action5Execute(Sender: TObject);
var
corDefault: TColor;
begin
  inherited;
  //destaca Campos Obrigatórios
  corDefault := clblack;
  Label21.font.Color := corDefault;  //dobra tricipal
  Label22.font.Color := corDefault; //dobra subscapular
  Label29.font.Color := corDefault; //dobra supra iliac
  Label25.font.Color := corDefault; //dobra coxa
  Label24.font.Color := corDefault; //dobra abdominal
  Label28.font.Color := corDefault; //dobra peitoral
  Label23.font.Color := corDefault; //dobra axiliar

  Label3.font.Color := corDefault;  //MED peso
  Label4.font.Color := corDefault;  //MED altura
  Label11.font.Color := corDefault; //MED braço direito relaxado
  Label13.font.Color := corDefault; //MED coxa direita

  Label30.font.Color := corDefault; //DIAMETRO BIEPICÔNDILIANO - C (cm)
  Label32.font.Color := corDefault; //DIAMETRO BICÔNDILIANO - J (cm)

end;

procedure TF01017.BSalvarClick(Sender: TObject);
var
corDefault: TColor;
begin

  // verificação campos obrigatórios
  if not (ClientDataSet1dobra_triciptal_mm.IsNull)then
  begin
    if not (ClientDataSet1dobra_subescapular_mm.IsNull)then
    begin
        if not (ClientDataSet1dobra_coxa_mm.IsNull)then
        begin
            if not (ClientDataSet1dobra_abdominal_mm.IsNull)then
            begin
                if not (ClientDataSet1dobra_peitoral_mm.IsNull)then
                begin
                    if not (ClientDataSet1dobra_axiliar_mm.IsNull)then
                    begin
                        if not (ClientDataSet1med_peso_cm.IsNull)then
                        begin
                            if not (ClientDataSet1med_altura_cm.IsNull)then
                            begin
                                if not (ClientDataSet1med_bracoDireitoRelaxado_cm.IsNull)then
                                begin
                                    if not (ClientDataSet1med_coxaDireita_cm.IsNull)then
                                    begin
                                        if not (ClientDataSet1do_BIEPICONDILIANO_cm.IsNull)then
                                        begin
                                            if not (ClientDataSet1do_BICONDILIANO_cm.IsNull)then
                                            begin

                                                inherited;
                                                //destaca Campos Obrigatórios
                                                corDefault := clblack;
                                                Label21.font.Color := corDefault;  //dobra tricipal
                                                Label22.font.Color := corDefault; //dobra subscapular
                                                Label29.font.Color := corDefault; //dobra supra iliac
                                                Label25.font.Color := corDefault; //dobra coxa
                                                Label24.font.Color := corDefault; //dobra abdominal
                                                Label28.font.Color := corDefault; //dobra peitoral
                                                Label23.font.Color := corDefault; //dobra axiliar

                                                Label3.font.Color := corDefault;  //MED peso
                                                Label4.font.Color := corDefault;  //MED altura
                                                Label11.font.Color := corDefault; //MED braço direito relaxado
                                                Label13.font.Color := corDefault; //MED coxa direita

                                                Label30.font.Color := corDefault; //DIAMETRO BIEPICÔNDILIANO - C (cm)
                                                Label32.font.Color := corDefault; //DIAMETRO BICÔNDILIANO - J (cm)


                                            end else
                                            begin
                                              showmessage('Informe Medida do BICONDILIANO.');
                                            end;
                                        end else
                                        begin
                                          showmessage('Informe Medida do BIEPICONDILIANO.');
                                        end;


                                    end else
                                    begin
                                      showmessage('Informe Medida da Coxa Direita.');
                                    end;
                                end else
                                begin
                                  showmessage('Informe Medida do Braço Direito.');
                                end;
                            end else
                            begin
                              showmessage('Informe a Altura do Aluno.');
                            end;
                        end else
                        begin
                          showmessage('Informe o Peso do Aluno.');
                        end;
                    end else
                    begin
                      showmessage('Informe Valor da Dobra  Axiliar.');
                    end;
                end else
                begin
                  showmessage('Informe Valor da Dobra Peitoral.');
                end;
            end else
            begin
              showmessage('Informe Valor da Dobra Abdominal.');
            end;
        end else
        begin
          showmessage('Informe Valor da Dobra Coxa.');
        end;
    end else
    begin
      showmessage('Informe Valor da Dobra Subescapular.');
    end;
  end else
  begin
    showmessage('Informe Valor da Dobra Tricipal.');
  end;

end;

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

procedure TF01017.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  showmessage(e.Message);
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

procedure TF01017.DSDataChange(Sender: TObject; Field: TField);
var
corDefault : Tcolor;
begin
  inherited;
  {
  if ((ds.DataSet.State = dsInsert) or (ds.DataSet.State = dsEdit)) then
  begin
      corDefault := $000069D2;
      Label21.font.Color := corDefault;  //dobra tricipal
      Label22.font.Color := corDefault; //dobra subscapular
      Label29.font.Color := corDefault; //dobra supra iliac
      Label25.font.Color := corDefault; //dobra coxa
      Label24.font.Color := corDefault; //dobra abdominal
      Label28.font.Color := corDefault; //dobra peitoral
      Label23.font.Color := corDefault; //dobra axiliar

      Label3.font.Color := corDefault;  //MED peso
      Label4.font.Color := corDefault;  //MED altura
      Label11.font.Color := corDefault; //MED braço direito relaxado
      Label13.font.Color := corDefault; //MED coxa direita

      Label37.font.Color := corDefault; //DIAMETRO BIEPICÔNDILIANO - C (cm)
      Label39.font.Color := corDefault; //DIAMETRO BICÔNDILIANO - J (cm)

  end ELSE
  BEGIN
    if ((ds.DataSet.State = dsInsert) or (ds.DataSet.State = dsEdit)) then
    begin
        corDefault := clBLACK;
        Label21.font.Color := corDefault;  //dobra tricipal
        Label22.font.Color := corDefault; //dobra subscapular
        Label29.font.Color := corDefault; //dobra supra iliac
        Label25.font.Color := corDefault; //dobra coxa
        Label24.font.Color := corDefault; //dobra abdominal
        Label28.font.Color := corDefault; //dobra peitoral
        Label23.font.Color := corDefault; //dobra axiliar

        Label3.font.Color := corDefault;  //MED peso
        Label4.font.Color := corDefault;  //MED altura
        Label11.font.Color := corDefault; //MED braço direito relaxado
        Label13.font.Color := corDefault; //MED coxa direita

        Label37.font.Color := corDefault; //DIAMETRO BIEPICÔNDILIANO - C (cm)
        Label39.font.Color := corDefault; //DIAMETRO BICÔNDILIANO - J (cm)
    end;

  END;
  }
end;

procedure TF01017.DSStateChange(Sender: TObject);
var
corDefault : TColor;
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

  //destaca Campos Obrigatórios
  if ((ds.DataSet.State = dsInsert) or (ds.DataSet.State = dsEdit)) then
  begin
      corDefault := $000069D2;
      Label21.font.Color := corDefault;  //dobra tricipal
      Label22.font.Color := corDefault; //dobra subscapular
      Label29.font.Color := corDefault; //dobra supra iliac
      Label25.font.Color := corDefault; //dobra coxa
      Label24.font.Color := corDefault; //dobra abdominal
      Label28.font.Color := corDefault; //dobra peitoral
      Label23.font.Color := corDefault; //dobra axiliar

      Label3.font.Color := corDefault;  //MED peso
      Label4.font.Color := corDefault;  //MED altura
      Label11.font.Color := corDefault; //MED braço direito relaxado
      Label13.font.Color := corDefault; //MED coxa direita

      Label30.font.Color := corDefault; //DIAMETRO BIEPICÔNDILIANO - C (cm)
      Label32.font.Color := corDefault; //DIAMETRO BICÔNDILIANO - J (cm)
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
