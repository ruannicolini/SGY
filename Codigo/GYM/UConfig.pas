unit UConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Udatamodule, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls, cxCheckBox,
  Vcl.Mask;

type
  TFConfig = class(TForm)
    Panel1: TPanel;
    PanelBtns: TPanel;
    panelConfig: TPanel;
    btnCancelar: TButton;
    btnAltSalv: TButton;
    qConfig: TFDQuery;
    pConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    GroupBox1: TGroupBox;
    dsConfig: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    qConfigidConfiguracaoUnidade: TIntegerField;
    qConfigcnpj: TStringField;
    qConfigrazaoSocial: TStringField;
    qConfignomeFantasia: TStringField;
    qConfigtelefone: TStringField;
    qConfigvencimentoFicha: TIntegerField;
    qConfigvideoYoutube: TBooleanField;
    qConfigavaAnamnese: TBooleanField;
    qConfigavaFisica: TBooleanField;
    qConfigavaPostural: TBooleanField;
    qConfigavaDadosClinicos: TBooleanField;
    cdsConfigidConfiguracaoUnidade: TIntegerField;
    cdsConfigcnpj: TStringField;
    cdsConfigrazaoSocial: TStringField;
    cdsConfignomeFantasia: TStringField;
    cdsConfigtelefone: TStringField;
    cdsConfigvencimentoFicha: TIntegerField;
    cdsConfigvideoYoutube: TBooleanField;
    cdsConfigavaAnamnese: TBooleanField;
    cdsConfigavaFisica: TBooleanField;
    cdsConfigavaPostural: TBooleanField;
    cdsConfigavaDadosClinicos: TBooleanField;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAltSalvClick(Sender: TObject);
    procedure cdsConfigReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsConfigAfterCancel(DataSet: TDataSet);
    procedure cdsConfigAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfig: TFConfig;

implementation

{$R *.dfm}

//uses U01001;

procedure TFConfig.btnAltSalvClick(Sender: TObject);
begin
  if(btnAltSalv.Caption = 'ALTERAR')then
  begin

    cdsConfig.Edit;
    btnAltSalv.Caption := 'SALVAR';
    panelConfig.Enabled:= TRUE;
    cxDBTextEdit1.SetFocus;
    btnCancelar.Caption := 'CANCELAR';

  end ELSE
  BEGIN

      If(btnAltSalv.Caption = 'SALVAR')then
      begin

        IF ( TRIM(cdsConfignomeFantasia.AsString) <> '' ) THEN
        BEGIN

          IF ( TRIM(cdsConfigcnpj.AsString) <> '' ) THEN
          BEGIN

            IF ( TRIM(cdsConfigrazaoSocial.AsString) <> '' ) THEN
            BEGIN

              IF ( TRIM(cdsConfigvencimentoFicha.AsString) <> '' ) THEN
              BEGIN

                cdsConfig.Post;
                btnAltSalv.Caption := 'ALTERAR';
                btnCancelar.CAPTION := 'FECHAR';
                panelConfig.Enabled:= FALSE;

                // ATUALIZA CONFIGURAÇÕES DO DMODULE
                DMODULE.confvideoYoutube :=  cdsConfigvideoYoutube.AsBoolean;
                DMODULE.confAvaAnamnese :=  cdsConfigAVAANAMNESE.AsBoolean ;
                DMODULE.confavafisica :=  cdsConfigAVAFISICA.AsBoolean;
                DMODULE.confavapostural :=  false;
                DMODULE.confAvaDadosClinicos := FALSE;

                {CONTROLE DE PAGECONTROLAVALIACOES
                //AVALIAÇÃO ANAMNESE
                IF(DMODULE.confAvaAnamnese = TRUE)THEN
                BEGIN
                  F01001.TabSheet1.TabVisible := TRUE;
                END ELSE
                BEGIN
                  F01001.TabSheet1.TabVisible := FALSE;
                END;

                //AVALIAÇÃO FÍSICA
                IF(DMODULE.confAvaFisica = TRUE)THEN
                BEGIN
                  F01001.TabSheet2.TabVisible := TRUE;
                END ELSE
                BEGIN
                  F01001.TabSheet2.TabVisible := FALSE;
                END;


                //AVALIAÇÃO POSTURAL
                IF(DMODULE.confAvaPostural = TRUE)THEN
                BEGIN
                  F01001.TabSheet3.TabVisible := TRUE;
                END ELSE
                BEGIN
                  F01001.TabSheet3.TabVisible := FALSE;
                END;

                //AVALIAÇÃO DADOS CLÍNICOS
                IF(DMODULE.confAvaDadosClinicos = TRUE)THEN
                BEGIN
                  F01001.TabSheet4.TabVisible := TRUE;
                END ELSE
                BEGIN
                  F01001.TabSheet4.TabVisible := FALSE;
                END;
                }

              END ELSE
              BEGIN
                SHOWMESSAGE('PREENCHA A QUANTIDADE DE MESES PARA O VENCIMENTO DA FICHA DE ALUNO');
              END;

            END ELSE
            BEGIN
                SHOWMESSAGE('PREENCHA A RAZÃO SOCIAL DA EMPRESA');
            END;

          END ELSE
          BEGIN
              SHOWMESSAGE('PREENCHA O CNPJ DA EMPRESA');
          END;

        END ELSE
        BEGIN
          SHOWMESSAGE('PREENCHA O NOME FANTASIA DA EMPRESA');
        END;

      end;
  END;
end;

procedure TFConfig.btnCancelarClick(Sender: TObject);
begin

  if(btnAltSalv.Caption = 'SALVAR')then
  begin

      btnAltSalv.Caption := 'ALTERAR';
      btnCancelar.CAPTION := 'FECHAR';
      panelConfig.Enabled:= FALSE;
      cdsConfig.Cancel;

  end ELSE
  BEGIN
      close;
  END;

end;

procedure TFConfig.cdsConfigAfterCancel(DataSet: TDataSet);
begin
  CDSCONFIG.CancelUpdates;
end;

procedure TFConfig.cdsConfigAfterPost(DataSet: TDataSet);
begin
  CDSCONFIG.ApplyUpdates(-1);
end;

procedure TFConfig.cdsConfigReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  SHOWMESSAGE(E.Message);
end;

procedure TFConfig.FormShow(Sender: TObject);
begin
  cdsConfig.Close;
  cdsConfig.Open;
end;

end.
