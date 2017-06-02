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
  frxDBSet, frxGradient, frxExportPDF, ShellAPI, System.Bluetooth,
  System.Bluetooth.Components, frxExportImage, dxBar, dxRibbonRadialMenu,
  cxClasses, dxCustomTileControl, dxTileControl, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls, dxToggleSwitch,
  frxChart, cxCalc, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, frxCrypt;

type
  TF01001 = class(TFBase)
    cxPageControl1: TcxPageControl;
    pagPerfil: TcxTabSheet;
    pagFichaExercicios: TcxTabSheet;
    pagMensalidades: TcxTabSheet;
    camera: TdxCameraControl;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cxDBMaskEdit5: TcxDBMaskEdit;
    Label5: TLabel;
    cxGroupBox8: TcxGroupBox;
    qFichaAluno: TFDQuery;
    pFichaAluno: TDataSetProvider;
    CDSFichaAluno: TClientDataSet;
    DSFichaAluno: TDataSource;
    qTreino: TFDQuery;
    pTreino: TDataSetProvider;
    CDSTreino: TClientDataSet;
    qTreinoidTreino: TIntegerField;
    qTreinodescricaoTreino: TStringField;
    CDSTreinoidTreino: TIntegerField;
    CDSTreinodescricaoTreino: TStringField;
    cxGroupBox10: TcxGroupBox;
    DBGridBelezaFichasAluno: TDBGridBeleza;
    DSTreino: TDataSource;
    pagMatricula: TcxTabSheet;
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
    PanelBotoesModalidades: TPanel;
    btnCancelaMatricula: TSpeedButton;
    cxGroupBox14: TcxGroupBox;
    cxGroupBox15: TcxGroupBox;
    cxGroupBox16: TcxGroupBox;
    DBGridBeleza5: TDBGridBeleza;
    PanelBotoesMensalidades: TPanel;
    btnPagamento: TSpeedButton;
    pPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    DSPagamento: TDataSource;
    qPagamento: TFDQuery;
    btnIsencao: TSpeedButton;
    btnCancelarPI: TSpeedButton;
    PanelBotoesFichaDeExercicios: TPanel;
    btnImprimirFicha: TSpeedButton;
    btnNovoFicha: TSpeedButton;
    REPORT_FICHA: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxPDFExport1: TfrxPDFExport;
    DSRelFicha: TDataSource;
    qRelFicha: TFDQuery;
    pRelFicha: TDataSetProvider;
    CDSRelFicha: TClientDataSet;
    EditPesqModalidade: TEditBeleza;
    cbxPesqModalidade: TCheckBox;
    editPesqidModalidade: TEdit;
    EditPesqNome: TEdit;
    cbxPesqNome: TCheckBox;
    cbxPesqSemFichaExercicios: TCheckBox;
    cbxPesqSemMatriculaAtiva: TCheckBox;
    cbxPesqFichaVencida: TCheckBox;
    cbxPesqPagamentoEmAtraso: TCheckBox;
    cxImage1: TcxImage;
    ImageListAUX: TImageList;
    frxJPEGExport1: TfrxJPEGExport;
    frxDBDataset1: TfrxDBDataset;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GROUPBOX2: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox_ALUNO: TGroupBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label28: TLabel;
    Label29: TLabel;
    qFichaAlunoidFichaAluno: TIntegerField;
    qFichaAlunoidAluno: TIntegerField;
    qFichaAlunodataComposicao: TDateField;
    qFichaAlunonomeInstrutor: TStringField;
    CDSFichaAlunoidFichaAluno: TIntegerField;
    CDSFichaAlunoidAluno: TIntegerField;
    CDSFichaAlunodataComposicao: TDateField;
    CDSFichaAlunonomeInstrutor: TStringField;
    cxGroupBox9: TcxGroupBox;
    DBEditBInstrutor: TDBEditBeleza;
    DBEditInstrutor: TDBEdit;
    Label22: TLabel;
    qFichaAlunodataVencimento: TDateField;
    CDSFichaAlunodataVencimento: TDateField;
    qserieFichaAluno: TFDQuery;
    qserieFichaAlunoidFichaAluno: TIntegerField;
    qserieFichaAlunoidTreino: TIntegerField;
    qserieFichaAlunoidExercicio: TIntegerField;
    qserieFichaAlunoqtdSerie: TIntegerField;
    qserieFichaAlunoqtdRepeticao: TIntegerField;
    qserieFichaAlunodescricaoTreino: TStringField;
    qserieFichaAlunonomeExercicio: TStringField;
    qserieFichaAlunoidgrupoExercicio: TIntegerField;
    qserieFichaAlunodescricaoGrupoExercicio: TStringField;
    qserieFichaAlunoidequipamento: TIntegerField;
    qserieFichaAlunodescricaoequipamento: TStringField;
    pserieFichaAluno: TDataSetProvider;
    CDSserieFichaAluno: TClientDataSet;
    CDSserieFichaAlunoidFichaAluno: TIntegerField;
    CDSserieFichaAlunoidTreino: TIntegerField;
    CDSserieFichaAlunoidExercicio: TIntegerField;
    CDSserieFichaAlunoqtdSerie: TIntegerField;
    CDSserieFichaAlunoqtdRepeticao: TIntegerField;
    CDSserieFichaAlunodescricaoTreino: TStringField;
    CDSserieFichaAlunonomeExercicio: TStringField;
    CDSserieFichaAlunoidgrupoExercicio: TIntegerField;
    CDSserieFichaAlunodescricaoGrupoExercicio: TStringField;
    CDSserieFichaAlunoidequipamento: TIntegerField;
    CDSserieFichaAlunodescricaoequipamento: TStringField;
    DSserieFichaAluno: TDataSource;
    qRelFichaidAluno: TIntegerField;
    qRelFichanomeAluno: TStringField;
    qRelFichadataNascimento: TDateField;
    qRelFichaemail: TStringField;
    qRelFichasexo: TStringField;
    qRelFichacidade: TStringField;
    qRelFichabairro: TStringField;
    qRelFicharua: TStringField;
    qRelFichanumero: TIntegerField;
    qRelFichacep: TIntegerField;
    qRelFichatel1: TStringField;
    qRelFichatel2: TStringField;
    qRelFichanomeResponsavel: TStringField;
    qRelFichaparentescoResponsavel: TStringField;
    qRelFichatelResponsavel: TStringField;
    qRelFichadataCadastro: TDateField;
    qRelFichacpf: TStringField;
    qRelFichaidInstrutor: TIntegerField;
    qRelFichaNOMEINSTRUTORFICHA: TStringField;
    qRelFichaDATACOMPOSICAO: TDateField;
    qRelFichaDATAVENCIMENTO: TDateField;
    qRelFichaCODFICHA: TIntegerField;
    CDSRelFichaidAluno: TIntegerField;
    CDSRelFichanomeAluno: TStringField;
    CDSRelFichadataNascimento: TDateField;
    CDSRelFichaemail: TStringField;
    CDSRelFichasexo: TStringField;
    CDSRelFichacidade: TStringField;
    CDSRelFichabairro: TStringField;
    CDSRelFicharua: TStringField;
    CDSRelFichanumero: TIntegerField;
    CDSRelFichacep: TIntegerField;
    CDSRelFichatel1: TStringField;
    CDSRelFichatel2: TStringField;
    CDSRelFichanomeResponsavel: TStringField;
    CDSRelFichaparentescoResponsavel: TStringField;
    CDSRelFichatelResponsavel: TStringField;
    CDSRelFichadataCadastro: TDateField;
    CDSRelFichacpf: TStringField;
    CDSRelFichaidInstrutor: TIntegerField;
    CDSRelFichaNOMEINSTRUTORFICHA: TStringField;
    CDSRelFichaDATACOMPOSICAO: TDateField;
    CDSRelFichaDATAVENCIMENTO: TDateField;
    CDSRelFichaCODFICHA: TIntegerField;
    ClientDataSet1IDADE: TIntegerField;
    DBEdit14: TDBEdit;
    ClientDataSet1situacao: TStringField;
    EditPesqIdInstrutor: TEdit;
    EditPesqInstrutor: TEditBeleza;
    cbxPesqInstrutor: TCheckBox;
    qserieFichaAlunotipomedida: TStringField;
    CDSserieFichaAlunotipomedida: TStringField;
    pagAvaliacoes: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    PageControlAvaliacoes: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGroupBox2: TcxGroupBox;
    DBGridBelezaAnamnese: TDBGridBeleza;
    DBGridBelezaFisica: TDBGridBeleza;
    DBGridBelezaPostural: TDBGridBeleza;
    DBGridBelezaDadosClinicos: TDBGridBeleza;
    dsAnamnese: TDataSource;
    CDSAnamnese: TClientDataSet;
    pAnamnese: TDataSetProvider;
    qAnamnese: TFDQuery;
    qAnamneseidAnamnese: TIntegerField;
    qAnamneseidAluno: TIntegerField;
    qAnamnesefrequenciaSemanalTreino: TIntegerField;
    qAnamnesepeso: TSingleField;
    qAnamnesealtura: TSingleField;
    qAnamneseqtdHorasSono: TIntegerField;
    qAnamneseqtdRefeicoesDia: TIntegerField;
    qAnamnesedieta: TBooleanField;
    qAnamnesesuplementacao: TBooleanField;
    qAnamnesedataAnamnese: TDateField;
    qAnamnesefuma: TBooleanField;
    qAnamneseconsumoAlcoolico: TBooleanField;
    qAnamnesenomeAvaliador: TStringField;
    qAnamneseinformacaoAdicional: TStringField;
    qAnamneseidObjetivo: TIntegerField;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    PanelPerfil: TPanel;
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
    REPORT_ANAMNESEPATOLOGIA: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    qAnamnesePatologia: TFDQuery;
    pAnamnesePatologia: TDataSetProvider;
    cdsAnamnesePatologia: TClientDataSet;
    qAnamnesePatologiaidAnamnese: TIntegerField;
    qAnamnesePatologiaidPatologia: TIntegerField;
    qAnamnesePatologiaobservacaoMedica: TStringField;
    cdsAnamnesePatologiaidAnamnese: TIntegerField;
    cdsAnamnesePatologiaidPatologia: TIntegerField;
    cdsAnamnesePatologiaobservacaoMedica: TStringField;
    dsanamnesePatologia: TDataSource;
    frxDBDataset4: TfrxDBDataset;
    qAnamnesePatologianomepatologia: TStringField;
    cdsAnamnesePatologianomepatologia: TStringField;
    qAnamneseNOMEALUNO: TStringField;
    CDSAnamneseidAnamnese: TIntegerField;
    CDSAnamneseidAluno: TIntegerField;
    CDSAnamnesefrequenciaSemanalTreino: TIntegerField;
    CDSAnamnesepeso: TSingleField;
    CDSAnamnesealtura: TSingleField;
    CDSAnamneseqtdHorasSono: TIntegerField;
    CDSAnamneseqtdRefeicoesDia: TIntegerField;
    CDSAnamnesedieta: TBooleanField;
    CDSAnamnesesuplementacao: TBooleanField;
    CDSAnamnesedataAnamnese: TDateField;
    CDSAnamnesefuma: TBooleanField;
    CDSAnamneseconsumoAlcoolico: TBooleanField;
    CDSAnamnesenomeAvaliador: TStringField;
    CDSAnamneseinformacaoAdicional: TStringField;
    CDSAnamneseidObjetivo: TIntegerField;
    CDSAnamneseNOMEALUNO: TStringField;
    qRelAnamnese: TFDQuery;
    pRelAnamnese: TDataSetProvider;
    cdsRelAnamnese: TClientDataSet;
    dsRelAnamnese: TDataSource;
    qRelAnamneseidAnamnese: TIntegerField;
    qRelAnamneseidAluno: TIntegerField;
    qRelAnamnesefrequenciaSemanalTreino: TIntegerField;
    qRelAnamnesepeso: TSingleField;
    qRelAnamnesealtura: TSingleField;
    qRelAnamneseqtdHorasSono: TIntegerField;
    qRelAnamneseqtdRefeicoesDia: TIntegerField;
    qRelAnamnesefuma: TBooleanField;
    qRelAnamnesedieta: TBooleanField;
    qRelAnamnesesuplementacao: TBooleanField;
    qRelAnamneseconsumoAlcoolico: TBooleanField;
    qRelAnamnesedataAnamnese: TDateField;
    qRelAnamneseinformacaoAdicional: TStringField;
    qRelAnamneseidObjetivo: TIntegerField;
    qRelAnamnesenomeAvaliador: TStringField;
    qRelAnamneseNOMEALUNO: TStringField;
    qRelAnamneseDESCRICAOOBJETIVO: TStringField;
    cdsRelAnamneseidAnamnese: TIntegerField;
    cdsRelAnamneseidAluno: TIntegerField;
    cdsRelAnamnesefrequenciaSemanalTreino: TIntegerField;
    cdsRelAnamnesepeso: TSingleField;
    cdsRelAnamnesealtura: TSingleField;
    cdsRelAnamneseqtdHorasSono: TIntegerField;
    cdsRelAnamneseqtdRefeicoesDia: TIntegerField;
    cdsRelAnamnesefuma: TBooleanField;
    cdsRelAnamnesedieta: TBooleanField;
    cdsRelAnamnesesuplementacao: TBooleanField;
    cdsRelAnamneseconsumoAlcoolico: TBooleanField;
    cdsRelAnamnesedataAnamnese: TDateField;
    cdsRelAnamneseinformacaoAdicional: TStringField;
    cdsRelAnamneseidObjetivo: TIntegerField;
    cdsRelAnamnesenomeAvaliador: TStringField;
    cdsRelAnamneseNOMEALUNO: TStringField;
    cdsRelAnamneseDESCRICAOOBJETIVO: TStringField;
    cdsRelAnamneseIMC: TFloatField;
    FDQuery1idAluno: TIntegerField;
    FDQuery1nomeAluno: TStringField;
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
    FDQuery1dataCadastro: TDateField;
    FDQuery1cpf: TStringField;
    FDQuery1idInstrutor: TIntegerField;
    FDQuery1NOMEINSTRUTORFICHA: TStringField;
    ClientDataSet1idAluno: TIntegerField;
    ClientDataSet1nomeAluno: TStringField;
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
    ClientDataSet1dataCadastro: TDateField;
    ClientDataSet1cpf: TStringField;
    ClientDataSet1idInstrutor: TIntegerField;
    ClientDataSet1NOMEINSTRUTORFICHA: TStringField;
    qAnamneseDESCRICAOOBJETIVO: TStringField;
    CDSAnamneseDESCRICAOOBJETIVO: TStringField;
    qAvaFisica: TFDQuery;
    qAvaFisicaidAvaliacaoFisica: TIntegerField;
    qAvaFisicaidAluno: TIntegerField;
    qAvaFisicadataAvaliacaoFisica: TDateField;
    qAvaFisicanomeAvaliador: TStringField;
    qAvaFisicamed_peso_cm: TSingleField;
    qAvaFisicamed_altura_cm: TSingleField;
    qAvaFisicamed_cervical_cm: TSingleField;
    qAvaFisicamed_torax_cm: TSingleField;
    qAvaFisicamed_quadril_cm: TSingleField;
    qAvaFisicamed_cintura_cm: TSingleField;
    qAvaFisicamed_abdomen_cm: TSingleField;
    qAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    qAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    qAvaFisicamed_antibracoDireito_cm: TSingleField;
    qAvaFisicamed_coxaDireita_cm: TSingleField;
    qAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    qAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    qAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    qAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    qAvaFisicamed_coxaEsquerda_cm: TSingleField;
    qAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    qAvaFisicadobra_triciptal_mm: TSingleField;
    qAvaFisicadobra_subescapular_mm: TSingleField;
    qAvaFisicadobra_axiliar_mm: TSingleField;
    qAvaFisicadobra_abdominal_mm: TSingleField;
    qAvaFisicadobra_coxa_mm: TSingleField;
    qAvaFisicadobra_panturrilha_mm: TSingleField;
    qAvaFisicadobra_biciptal_mm: TSingleField;
    qAvaFisicadobra_peitoral_mm: TSingleField;
    qAvaFisicadobra_suprailiac_mm: TSingleField;
    qAvaFisicatipoProtocolo: TStringField;
    qAvaFisicaNOMEALUNO: TStringField;
    PAvaFisica: TDataSetProvider;
    CDSAvaFisica: TClientDataSet;
    CDSAvaFisicaidAvaliacaoFisica: TIntegerField;
    CDSAvaFisicaidAluno: TIntegerField;
    CDSAvaFisicadataAvaliacaoFisica: TDateField;
    CDSAvaFisicanomeAvaliador: TStringField;
    CDSAvaFisicamed_peso_cm: TSingleField;
    CDSAvaFisicamed_altura_cm: TSingleField;
    CDSAvaFisicamed_cervical_cm: TSingleField;
    CDSAvaFisicamed_torax_cm: TSingleField;
    CDSAvaFisicamed_quadril_cm: TSingleField;
    CDSAvaFisicamed_cintura_cm: TSingleField;
    CDSAvaFisicamed_abdomen_cm: TSingleField;
    CDSAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    CDSAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    CDSAvaFisicamed_antibracoDireito_cm: TSingleField;
    CDSAvaFisicamed_coxaDireita_cm: TSingleField;
    CDSAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    CDSAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    CDSAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    CDSAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    CDSAvaFisicamed_coxaEsquerda_cm: TSingleField;
    CDSAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    CDSAvaFisicadobra_triciptal_mm: TSingleField;
    CDSAvaFisicadobra_subescapular_mm: TSingleField;
    CDSAvaFisicadobra_axiliar_mm: TSingleField;
    CDSAvaFisicadobra_abdominal_mm: TSingleField;
    CDSAvaFisicadobra_coxa_mm: TSingleField;
    CDSAvaFisicadobra_panturrilha_mm: TSingleField;
    CDSAvaFisicadobra_biciptal_mm: TSingleField;
    CDSAvaFisicadobra_peitoral_mm: TSingleField;
    CDSAvaFisicadobra_suprailiac_mm: TSingleField;
    CDSAvaFisicatipoProtocolo: TStringField;
    CDSAvaFisicaNOMEALUNO: TStringField;
    DSAvaFisica: TDataSource;
    frxDBDataset5: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    report_Comparativo: TfrxReport;
    CDSAvaFisicaIMC: TFloatField;
    Panel3: TPanel;
    DBEditBelezaProtocolo: TDBEditBeleza;
    DBEdit15: TDBEdit;
    FDQuery1idProtocoloAvaFisica: TIntegerField;
    FDQuery1descricaoprotocoloAvaFisica: TStringField;
    ClientDataSet1idProtocoloAvaFisica: TIntegerField;
    ClientDataSet1descricaoprotocoloAvaFisica: TStringField;
    LabelAvisoProtocolo: TLabel;
    qRelAvaFisica: TFDQuery;
    qRelAvaFisicaidAvaliacaoFisica: TIntegerField;
    qRelAvaFisicaidAluno: TIntegerField;
    qRelAvaFisicadataAvaliacaoFisica: TDateField;
    qRelAvaFisicanomeAvaliador: TStringField;
    qRelAvaFisicamed_peso_cm: TSingleField;
    qRelAvaFisicamed_altura_cm: TSingleField;
    qRelAvaFisicamed_cervical_cm: TSingleField;
    qRelAvaFisicamed_torax_cm: TSingleField;
    qRelAvaFisicamed_quadril_cm: TSingleField;
    qRelAvaFisicamed_cintura_cm: TSingleField;
    qRelAvaFisicamed_abdomen_cm: TSingleField;
    qRelAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    qRelAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    qRelAvaFisicamed_antibracoDireito_cm: TSingleField;
    qRelAvaFisicamed_coxaDireita_cm: TSingleField;
    qRelAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    qRelAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    qRelAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    qRelAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    qRelAvaFisicamed_coxaEsquerda_cm: TSingleField;
    qRelAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    qRelAvaFisicadobra_triciptal_mm: TSingleField;
    qRelAvaFisicadobra_subescapular_mm: TSingleField;
    qRelAvaFisicadobra_axiliar_mm: TSingleField;
    qRelAvaFisicadobra_abdominal_mm: TSingleField;
    qRelAvaFisicadobra_coxa_mm: TSingleField;
    qRelAvaFisicadobra_panturrilha_mm: TSingleField;
    qRelAvaFisicadobra_biciptal_mm: TSingleField;
    qRelAvaFisicadobra_peitoral_mm: TSingleField;
    qRelAvaFisicadobra_suprailiac_mm: TSingleField;
    qRelAvaFisicatipoProtocolo: TStringField;
    qRelAvaFisicaNOMEALUNO: TStringField;
    qRelAvaFisicaidprotocoloavafisica: TIntegerField;
    qRelAvaFisicadescricaoprotocoloavafisica: TStringField;
    cdsRelAvaFisica: TClientDataSet;
    PRelAvaFisica: TDataSetProvider;
    dsRelAvaFisica: TDataSource;
    cdsRelAvaFisicaidAvaliacaoFisica: TIntegerField;
    cdsRelAvaFisicaidAluno: TIntegerField;
    cdsRelAvaFisicadataAvaliacaoFisica: TDateField;
    cdsRelAvaFisicanomeAvaliador: TStringField;
    cdsRelAvaFisicamed_peso_cm: TSingleField;
    cdsRelAvaFisicamed_altura_cm: TSingleField;
    cdsRelAvaFisicamed_cervical_cm: TSingleField;
    cdsRelAvaFisicamed_torax_cm: TSingleField;
    cdsRelAvaFisicamed_quadril_cm: TSingleField;
    cdsRelAvaFisicamed_cintura_cm: TSingleField;
    cdsRelAvaFisicamed_abdomen_cm: TSingleField;
    cdsRelAvaFisicamed_bracoDireitoContraido_cm: TSingleField;
    cdsRelAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField;
    cdsRelAvaFisicamed_antibracoDireito_cm: TSingleField;
    cdsRelAvaFisicamed_coxaDireita_cm: TSingleField;
    cdsRelAvaFisicamed_panturrilhaDireita_cm: TSingleField;
    cdsRelAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField;
    cdsRelAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField;
    cdsRelAvaFisicamed_antibracoEsquerdo_cm: TSingleField;
    cdsRelAvaFisicamed_coxaEsquerda_cm: TSingleField;
    cdsRelAvaFisicamed_panturrilhaEsquerda_cm: TSingleField;
    cdsRelAvaFisicadobra_triciptal_mm: TSingleField;
    cdsRelAvaFisicadobra_subescapular_mm: TSingleField;
    cdsRelAvaFisicadobra_axiliar_mm: TSingleField;
    cdsRelAvaFisicadobra_abdominal_mm: TSingleField;
    cdsRelAvaFisicadobra_coxa_mm: TSingleField;
    cdsRelAvaFisicadobra_panturrilha_mm: TSingleField;
    cdsRelAvaFisicadobra_biciptal_mm: TSingleField;
    cdsRelAvaFisicadobra_peitoral_mm: TSingleField;
    cdsRelAvaFisicadobra_suprailiac_mm: TSingleField;
    cdsRelAvaFisicatipoProtocolo: TStringField;
    cdsRelAvaFisicaNOMEALUNO: TStringField;
    cdsRelAvaFisicaidprotocoloavafisica: TIntegerField;
    cdsRelAvaFisicadescricaoprotocoloavafisica: TStringField;
    cdsRelAvaFisicaporcentagemGordura: TFloatField;
    cdsRelAvaFisicapesoOsseo: TFloatField;
    cdsRelAvaFisicapesoGordura: TFloatField;
    cdsRelAvaFisicaPesoMuscular: TFloatField;
    cdsRelAvaFisicapesoResidual: TFloatField;
    cdsRelAvaFisicamassaMagraCorporal: TFloatField;
    cdsRelAvaFisicasomatotipoEcto: TFloatField;
    cdsRelAvaFisicasomatotipoMeso: TFloatField;
    cdsRelAvaFisicasomatotipoEndo: TFloatField;
    cdsRelAvaFisicaIMC: TFloatField;
    Panel4: TPanel;
    btnImprimirAvaFisica: TSpeedButton;
    btnNovaAvaFisica: TSpeedButton;
    Panel5: TPanel;
    btnImprimirAnamnes: TSpeedButton;
    btnNovaAnamnes: TSpeedButton;
    qRelAvaFisicado_BIESTILOIDE_cm: TSingleField;
    qRelAvaFisicado_BIEPICONDILIANO_cm: TSingleField;
    qRelAvaFisicado_BICONDILIANO_cm: TSingleField;
    qRelAvaFisicado_BIMALEOLAR_cm: TSingleField;
    cdsRelAvaFisicado_BIESTILOIDE_cm: TSingleField;
    cdsRelAvaFisicado_BIEPICONDILIANO_cm: TSingleField;
    cdsRelAvaFisicado_BICONDILIANO_cm: TSingleField;
    cdsRelAvaFisicado_BIMALEOLAR_cm: TSingleField;
    frxDBDataset6: TfrxDBDataset;
    report_AvaFisica: TfrxReport;
    frxCrypt1: TfrxCrypt;
    cdsRelAvaFisicaRCQ: TFloatField;
    cdsRelAvaFisicaclassificacaoRCQ: TStringField;
    REPORT_FICHAcp: TfrxReport;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure cxDBImage1PropertiesAssignPicture(Sender: TObject;
      const Picture: TPicture);
    procedure BSalvarClick(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure CDSFichaAlunoAfterCancel(DataSet: TDataSet);
    procedure CDSFichaAlunoAfterDelete(DataSet: TDataSet);
    procedure CDSFichaAlunoAfterPost(DataSet: TDataSet);
    procedure DBGridBelezaFichasAlunoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure DSFichaAlunoDataChange(Sender: TObject; Field: TField);
    procedure DSModalidadeDataChange(Sender: TObject; Field: TField);
    procedure DSStateChange(Sender: TObject);
    procedure EditBTreinoKeyPress(Sender: TObject; var Key: Char);
    procedure EditBeleza1ButtonClick(Sender: TObject;
      var query_result: TFDQuery);
    procedure Action5Execute(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EditPesqModalidadeChange(Sender: TObject);
    procedure EditPesqNomeChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure cxImage1PropertiesChange(Sender: TObject);
    procedure EditPesqModalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure ActionReajustarDBGridBeleza1Execute(Sender: TObject);
    procedure DBGridBelezaFichasAlunoDblClick(Sender: TObject);
    procedure btnNovoFichaClick(Sender: TObject);
    procedure DBEditInstrutorChange(Sender: TObject);
    procedure EditPesqInstrutorChange(Sender: TObject);
    procedure DBGridBelezaAnamneseDblClick(Sender: TObject);
    procedure DBGridBelezaAnamneseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSAnamneseAfterCancel(DataSet: TDataSet);
    procedure CDSAnamneseAfterDelete(DataSet: TDataSet);
    procedure dsAnamneseDataChange(Sender: TObject; Field: TField);
    procedure pModalidadeBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pFichaAlunoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pAnamneseBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure pPagamentoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dsRelAnamneseDataChange(Sender: TObject; Field: TField);
    procedure cdsRelAnamneseCalcFields(DataSet: TDataSet);
    procedure REPORT_ANAMNESEPATOLOGIABeforePrint(Sender: TfrxReportComponent);
    procedure REPORT_ANAMNESEPATOLOGIAPreview(Sender: TObject);
    procedure CDSAnamneseAfterPost(DataSet: TDataSet);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure DBGridBelezaFisicaDblClick(Sender: TObject);
    procedure DBGridBelezaFisicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSAvaFisicaCalcFields(DataSet: TDataSet);
    procedure DBEdit15Change(Sender: TObject);
    procedure cdsRelAvaFisicaCalcFields(DataSet: TDataSet);
    procedure btnNovaAnamnesClick(Sender: TObject);
    procedure btnImprimirAnamnesClick(Sender: TObject);
    procedure btnNovaAvaFisicaClick(Sender: TObject);
    procedure btnImprimirAvaFisicaClick(Sender: TObject);
    procedure DSAvaFisicaDataChange(Sender: TObject; Field: TField);
    procedure report_AvaFisicaBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
    imagemMudou : Boolean;
    procedure QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth, newHeight: Integer);
    procedure CriarForm(Tela, Desc: String);
    function MsgDlgButtonPersonal(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; Captions: array of string): Integer;
    procedure OcultarSheets(PageControl: TPageControl);
    FUNCTION getClassificacaoRCQ (rcq: Real; IDADE:  INTEGER; sexo: String): String;

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
{ SysUtils, Classes, Graphics, }GIFImg, JPEG, PngImage, U01011, u_relatorios,
  U01013, ValidaCPF, U01014, U01016, DBCommon, U01017, U01018;


procedure TF01001.Action5Execute(Sender: TObject);
begin
  inherited;
    //APAGA REGISTROS SUBORDINADOS
    IF(DS.DataSet.State = dsInsert)THEN
    BEGIN

      //ANAMNESE
      {DModule.qAux.SQL.Text := 'DELETE FROM ANAMNESE WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      cdsanamnese.First;
      while not(cdsanamnese.eof)do
      begin
      cdsanamnese.Delete;
      end;

      //MODALIDADES
      {DModule.qAux.SQL.Text := 'DELETE FROM ALUNOMODALIDADE WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL; }
      cdsmodalidade.First;
      while not(cdsmodalidade.eof)do
      begin
      cdsmodalidade.Delete;
      end;

      // SÉRIE (FICHA DE EXERCÍCIOS)
      {DModule.qAux.SQL.Text := 'DELETE FROM FICHAALUNO WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      CDSFichaAluno.First;
      while not(CDSFichaAluno.eof)do
      begin
      CDSFichaAluno.Delete;
      end;

      // PAGAMENTOS
      {DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE idALUNO =:IDA';
      DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.ExecSQL;}
      CDSPagamento.First;
      while not(CDSPagamento.eof)do
      begin
      CDSPagamento.Delete;
      end;

    END;

    //habilita painel responsável
    DBEdit4.Enabled := true;
    DBEdit5.Enabled := true;
    cxDBMaskEdit5.Enabled := true;

    //PAGE PERFIL DO ALUNO VOLTA AO ESTRUTURA NORMAL DE APRESENTAÇÃO
    cxPageControl1.ActivePageIndex := 0;

    //COR DO CAMPO CPF
    DBEdit9.Font.Color := clblack;

end;

procedure TF01001.ActionReajustarDBGridBeleza1Execute(Sender: TObject);
var
  I: Integer;
  somaLarguraTotal, porcentagemColuna : integer;
begin
  inherited;

  //REAJUSTA DBGRIDBELEZA1 EM RELAÇÃO AO TAMANHO DA TELA
  for I := 0 to DBGridBeleza1.Columns.Count-1 do
  begin
      if(   (DBGridBeleza1.Columns[i].Visible = true) and (DBGridBeleza1.Columns[i].FieldName = 'nomeAluno')  )then
      begin
            if(Screen.Width >= 1366)then
            begin
                  //mantem definições padrão, PROPORCIONALMENTE;
                  DBGridBeleza1.Columns[i].Expanded := TRUE;
            end else
            begin
                if(Screen.Width >= 1360)then
                begin
                      DBGridBeleza1.Columns[i].Width := 482; // nomeAluno
                end else
                begin
                      if(Screen.Width >= 1280)then
                      begin
                            DBGridBeleza1.Columns[i].Width := 430; // nomeAluno
                      end else
                      begin
                            if(Screen.Width >= 1024)then
                            begin
                                DBGridBeleza1.Columns[i].Width := 300; // nomeAluno
                            end;
                      end;
                end;
            end;
      end;
  end;


end;

procedure TF01001.BEditarClick(Sender: TObject);
begin
  inherited;
  imagemMudou := false;
end;

procedure TF01001.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM pagamento p where p.idAluno =:idA '+
  'and ((p.idstatuspagamento = 2) or(p.idstatuspagamento = 3))';
  DModule.qAux.ParamByName('idA').AsInteger := ClientDataSet1idAluno.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    showmessage('ALUNO POSSUI PAGAMENTOS EFETUADOS. NÃO É POSSÍVEL EXCLUIR.')
  end else
  begin
    //Executa exclusão
    inherited;
  end;
end;

procedure TF01001.bRelatorioClick(Sender: TObject);
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

              //Assimila3Datasets(Screen.ActiveForm.Name, DS.DataSet, DSModalidade.DataSet, DSFichaAluno.DataSet,'idAluno', 'idAluno', 'idAluno');
              Assimila3Datasets(Screen.ActiveForm.Name, fdquery1, QMODALIDADE, qFichaAluno,'idAluno', 'idAluno', 'idAluno');

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
  if TRIM(DBEdit3.Text) <> '' then
  begin

      IF NOT(ClientDataSet1dataNascimento.IsNull)THEN
      BEGIN

          //verificação de modalidade ativa e professor.
          IF(DSModalidade.DataSet.RecordCount = 0)THEN
          BEGIN
            // AVISO QUE O ALUNO NÃO POSSUI MATRÍCULA ATIVA
            ShowMessage('ATENÇÃO!' + #13 + 'ALUNO NÃO POSSUI MATRÍCULA ATIVA.');
            ClientDataSet1idInstrutor.Clear;
            ClientDataSet1NOMEINSTRUTORFICHA.Clear;
          END ELSE
          BEGIN
              IF (ClientDataSet1idInstrutor.IsNull)THEN
              BEGIN
                ShowMessage('INFORME UM PROFESSOR PARA O ALUNO');
                EXIT;
              END;
          END;

          {
          // SALVA FOTO DO ALUNO BLOB
          IF((ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert))THEN
          BEGIN
            aDest:= tbitmap.create;
            aDest.Width := 200;
            aDest.Height := 113;
            aDest.Canvas.StretchDraw(Rect(0, 0, aDest.width, aDest.Height), cxDBImage1.Picture.Bitmap);
            //ClientDataSet1foto.Assign(camera.CapturedBitmap);
            ClientDataSet1foto.Assign(aDest);
          END;
          }


          //SE HOUVE MUDANÇA DA FOTO, ELA É SALVA NA PASTA IMG_ALUNO NO DIRETÓRIO
          if(imagemMudou = true)then
          begin
              //SALVA FOTO PASTA
              IF NOT(DirectoryExists( Application.ExeName + '\img_Aluno' ))THEN
              BEGIN
                CreateDir(ExtractFilePath(Application.ExeName) + '\img_Aluno')
              END;
              cxImage1.Picture.SaveToFile(ExtractFilePath(Application.ExeName) + 'img_Aluno\'+ ClientDataSet1idAluno.AsString + '.bmp');
          end;
          imagemMudou := false;

          //PAGE PERFIL DO ALUNO VOLTA AO ESTRUTURA NORMAL DE APRESENTAÇÃO
          cxPageControl1.ActivePageIndex := 0;

          //habilita painel responsável
          DBEdit4.Enabled := true;
          DBEdit5.Enabled := true;
          cxDBMaskEdit5.Enabled := true;

          //OBS: A INCLUSÃO DA IMAGEM DEVE SER FEITA ANTES DA MUDANÇA DO STATE DO CLIENTDATASET;
          inherited;

          //COR DO CAMPO CPF
          DBEdit9.Font.Color := clblack;

      END ELSE
      BEGIN
        ShowMessage('INFORME A DATA DE NASCIMENTO DO ALUNO');
      END;
  end else
  begin
      ShowMessage('INFORME NOME DO ALUNO');
  end;
end;

procedure TF01001.btnCancelarPIClick(Sender: TObject);
begin
  inherited;

  if NOT(DS.DataSet.IsEmpty) then
  begin

      // Se Passar pelas verificações acima, executa o cancelamento.
      DModule.qAux.SQL.Text := 'SELECT P.* FROM PAGAMENTO P WHERE P. IDPAGAMENTO = ' +
      '(SELECT max(IDPAGAMENTO) FROM PAGAMENTO PA WHERE PA.idAluno =:IDA AND PA.idmodalidade =:IDM AND ((PA.idstatusPagamento = 2)OR(PA.idstatusPagamento = 3)) )';
      DModule.qAux.ParamByName('IDA').AsInteger := cdsPagamentoidAluno.AsInteger;
      DModule.qAux.ParamByName('IDM').AsInteger := cdsPagamentoidmodalidade.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.Open;

      IF(cdsPagamentoidPagamento.AsInteger = DModule.qAux.FieldByName('IDPAGAMENTO').AsInteger)THEN
      BEGIN
          //verificação de segurança.
          // Atendente não concede nem cancela uma isenção
          // Atendente só cancela pagamentos de hoje.
          if(DModule.administrador = false)then
          begin
              if(cdsPagamentoidstatusPagamento.AsInteger = 3)then
              begin
                  ShowMessage('Para cancelar uma isenção concedida, é necessário estar logado como administrador.' +
                    #13 + 'Isenção não cancelada!');
                  exit;
              end else
              begin
                  //não é administrador
                  DModule.qAux.SQL.Text := 'select DATEDIFF (now(), :dataP ) as diferenca';
                  DModule.qAux.ParamByName('dataP').AsDateTime := cdsPagamentodataPagamento.AsDateTime;
                  DModule.qAux.Close;
                  DModule.qAux.Open;
                  //caso não seja um adminitrador, ele só pode cancelar pagamentos feitos hoje.
                  if(DModule.qAux.FieldByName('diferenca').AsInteger <> 0)then
                  begin
                      ShowMessage('Para cancelar registro com data de pagamento superior a um dia, é necessário estar logado como administrador.' +
                      #13 + 'Pagamento não cancelado!');
                      exit;
                  end;
              end;
          end;

          if (Application.MessageBox('Confirma Cancelar Pagamento/Isenção?', 'CANCELAMENTO', MB_YESNO + MB_ICONQUESTION) = id_yes) then
          begin
                  TRY
                      cdsPagamento.Edit;
                      if(cdsPagamentoidstatusPagamento.AsInteger = 2)then
                      begin
                          cdsPagamentoLOGUsuarioResponsavel.AsString :=
                          'Pagamento cancelado por ' + DModule.nomeusuario + ' em ' + DateTostr(DModule.datahoje);
                      end else
                      begin
                          if(cdsPagamentoidstatusPagamento.AsInteger = 3)then
                          begin
                              cdsPagamentoLOGUsuarioResponsavel.AsString :=
                              'Isenção cancelada por ' + DModule.nomeusuario + ' em ' + DateTostr(DModule.datahoje);
                          end;

                      end;
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

procedure TF01001.btnImprimirAnamnesClick(Sender: TObject);
begin
  inherited;
  //Imprimi anamnese
  if(PageControlAvaliacoes.TabIndex = 0)then
  begin
  {
    IF(DS.DataSet.State = dsEDIT) THEN
    BEGIN
        TRY
            TRY
              qRelanamnese.Params[0].AsInteger := CDSAnamneseidAnamnese.AsInteger;
              cdsrelanamnese.close;
              cdsRelanamnese.open;
              REPORT_ANAMNESEPATOLOGIA.ShowReport(TRUE);
            EXCEPT
              RAISE;
            END;
        FINALLY
            dsRelAnamnese.DataSet.Close;
        END;
    END ELSE
    BEGIN
        IF(DS.DataSet.State = dsINSERT)THEN
        BEGIN
  }
            //NO MODO INSERT OS DADOS DO CLIENTEDATASET1 AINDA NÃO ESTÃO SALVOS, NESSE CASO EU FAÇO UMA CÓPIA PARA CDSRELFICHA
            TRY
            cdsRelAnamnese.close;
            CDSRelAnamnese.open;
            CDSRelAnamnese.EmptyDataSet;
            CDSRelAnamnese.Append;
            cdsRelAnamnesenomealuno.asString := ClientDataSet1nomeAluno.AsString;
            cdsRelAnamneseidAluno.AsInteger := ClientDataSet1idAluno.AsInteger;
            cdsRelAnamneseidAnamnese.AsInteger := CDSAnamneseidAnamnese.AsInteger;
            cdsRelAnamnesedataAnamnese.AsDateTime := CDSAnamnesedataAnamnese.AsDateTime;
            cdsRelAnamneseidObjetivo.AsInteger := CDSAnamneseidObjetivo.AsInteger;
            cdsRelAnamneseDESCRICAOOBJETIVO.AsString := CDSAnamneseDESCRICAOOBJETIVO.AsString;
            cdsRelAnamnesefrequenciaSemanalTreino.AsInteger := cdsAnamnesefrequenciaSemanalTreino.AsInteger;
            cdsRelAnamnesepeso.AsFloat := cdsAnamnesepeso.AsFloat;
            cdsRelAnamnesealtura.AsFloat := cdsAnamnesealtura.AsFloat;
            cdsRelAnamnesedieta.AsBoolean := cdsAnamnesedieta.AsBoolean;
            cdsRelAnamnesesuplementacao.AsBoolean := cdsAnamnesesuplementacao.AsBoolean;
            cdsRelAnamneseconsumoAlcoolico.AsBoolean := cdsAnamneseconsumoAlcoolico.AsBoolean;
            cdsRelAnamnesefuma.AsBoolean := cdsAnamnesefuma.AsBoolean;
            cdsRelAnamneseqtdHorasSono.AsInteger  := cdsAnamneseqtdHorasSono.AsInteger;
            cdsRelAnamneseqtdRefeicoesDia.AsInteger := cdsAnamneseqtdRefeicoesDia.AsInteger;
            cdsRelAnamnesenomeAvaliador.AsString := DModule.nomeusuario;
            cdsRelAnamnese.Post;

            REPORT_ANAMNESEPATOLOGIA.ShowReport(TRUE);
            FINALLY
              CDSRelanamnese.Cancel;
              CDSRelanamnese.CancelUpdates;
              CDSRelanamnese.close;
            END;
    {
        END;

    END;
    }

  end;
end;

procedure TF01001.btnImprimirAvaFisicaClick(Sender: TObject);
var iMensagem : integer;
  I: INTEGER;
begin
  inherited;

  if(PageControlAvaliacoes.TabIndex = 1)then
  begin

      iMensagem := MsgDlgButtonPersonal('Relatório', mtConfirmation, [mbYes,mbNo],
      ['Av. Física', 'Comparativo']);
      case iMensagem of
         6:
            // Rel. Ava Física
            begin
               //NO MODO INSERT OS DADOS DO CLIENTEDATASET1 AINDA NÃO ESTÃO SALVOS, NESSE CASO EU FAÇO UMA CÓPIA PARA CDSRELFICHA
                TRY
                    TRY
                        if NOT(ClientDataSet1IDADE.IsNull)then
                        begin
                            IF NOT(ClientDataSet1idProtocoloAvaFisica.IsNull)THEN
                            BEGIN
                                qRelAvaFisica.Params[0].AsInteger := CDSAvaFisicaidAvaliacaoFisica.AsInteger;
                                cdsRelAvaFisica.close;
                                cdsRelAvaFisica.open;
                                cdsRelAvaFisica.Edit;
                                cdsRelAvaFisicaNOMEALUNO.AsString := ClientDataSet1NOMEALUNO.AsString;
                                cdsRelAvaFisicaDESCRICAOPROTOCOLOAVAFISICA.AsString := ClientDataSet1DESCRICAOPROTOCOLOAVAFISICA.AsString;
                                cdsRelAvaFisica.post;
                                report_AvaFisica.ShowReport(TRUE);
                            END ELSE
                            BEGIN
                                SHOWMESSAGE('É NECESSÁRIO ESCOLHER UM PROTOCOLO PARA CÁLCULO DA % DE GORDURA.');
                            END;
                        END ELSE
                        BEGIN
                          SHOWMESSAGE('INFORME A DATA DE NASCIMENTO DO ALUNO.');
                        END

                    EXCEPT
                      RAISE;
                    END;
                FINALLY
                    //dsRelAvaFisica.DataSet.Close;
                END;

            end;

         7: begin
                IF(DS.DataSet.State = dsEDIT) THEN
                BEGIN

                    TRY
                        TRY
                          //MUDA A ORDEM CRONOLÓGICA DOS DADOS
                          qavafisica.sql.Text :=
                          'SELECT AV.*,A.NOMEALUNO  FROM AVALIACAOFISICA AV '+
                          'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AV.IDALUNO '+
                          'WHERE AV.IDALUNO =:IDA '+
                          'ORDER BY AV.DATAAVALIACAOFISICA, AV.IDAVALIACAOFISICA limit 5';
                          qAvaFisica.Params[0].AsInteger := ClientDataSet1IDaluno.AsInteger;
                          CDSAvaFisica.close;
                          CDSAvaFisica.open;

                          //IMPRIME RELATÓRIO
                          report_comparativo.ShowReport(TRUE);

                          //VOLTA A CONSULTA NORMAL
                          qavafisica.sql.Text :=
                          'SELECT AV.*,A.NOMEALUNO  FROM AVALIACAOFISICA AV '+
                          'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AV.IDALUNO '+
                          'WHERE AV.IDALUNO =:IDA '+
                          'ORDER BY AV.DATAAVALIACAOFISICA desc, AV.IDAVALIACAOFISICA desc';

                          qAvaFisica.Params[0].AsInteger := ClientDataSet1IDaluno.AsInteger;
                          CDSAvaFisica.close;
                          CDSAvaFisica.open;

                        EXCEPT
                          RAISE;
                        END;
                    FINALLY

                    END;
                END else
                begin
                    IF(DS.DataSet.State = dsINSERT) THEN
                    BEGIN
                      SHOWMESSAGE('PARA ACESSAR O RELATÓRIO COMPARATIVO '+
                      'É NECESSÁRIO SALVAR O CADASTRO DO ALUNO ANTES.');
                    END;
                end;

            end;
      end;


  end;
end;

procedure TF01001.btnImprimirFichaClick(Sender: TObject);
var
 F : Textfile;
 i : integer;
 iMensagem : integer;
begin
  inherited;
  //DESKTOP-AR85808
  {

  AssignFile(F, '//192.168.1.200/EPSON');
  Rewrite(F);
  Writeln(F, '    só um teste 1só um teste 1só um teste 1só um teste 1só um teste 1');
  Writeln(F, '    só um teste 2');
  Writeln(F, '    só um teste 3');

  Writeln(F, #12); // Ejeta página
  Writeln(F, ''); // pula linha
  Writeln(F, ''); // pula linha
  Writeln(F, ''); // pula linha
  Writeln(F, '' ); // pula linha
  Writeln(F, ''); // pula linha
  Writeln(F, #27 + #105''); // Corte de papel

  CloseFile(F);
    }

  iMensagem := MsgDlgButtonPersonal('IMPRIMIR FICHA', mtConfirmation, [mbYes,mbNo],
  ['FOLHA A4', 'CUPOM']);
  case iMensagem of
     6: begin
          TRY
            CDSRelFicha.close;
            CDSRelFicha.open;
            CDSRelFicha.EmptyDataSet;
            CDSRelFicha.Append;
            CDSRelFichaIDAluno.AsINTEGER := ClientDataSet1IDAluno.AsINTEGER;
            CDSRelFichanomeAluno.AsString := ClientDataSet1nomeAluno.AsString;

            CDSRelFichaCODFICHA.AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
            CDSRelFichaDATACOMPOSICAO.AsDateTime := CDSFichaAlunodataComposicao.AsDateTime;
            CDSRelFichaDATAVENCIMENTO.AsDateTime := CDSFichaAlunodataVencimento.AsDateTime;

            CDSRelFichaNOMEINSTRUTORFICHA.AsString := ClientDataSet1NOMEINSTRUTORFICHA.AsString;
            CDSRelFicha.Post;

            REPORT_FICHA.ShowReport(TRUE);
          FINALLY
            CDSRelFicha.Cancel;
            CDSRelFicha.CancelUpdates;
            CDSRelFicha.close;
          END;
        end;

     7: begin
            TRY

                  With TF01018.Create(self, CDSFichaAlunoidFichaAluno.AsInteger) do  // 1 =Pagamento, 2=Isenção
                  Begin

                      if(ShowModal = mrOk)then
                      begin
                          TRY
                              qRelFicha.ParamByName('IDFA').AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
                              DSRelFicha.DataSet.Close;
                              DSRelFicha.DataSet.Open;

                              if NOT(U01018.resposta = 'COMPLETO')then
                              begin
                                  CDSserieFichaAluno.Filtered := false;
                                  CDSserieFichaAluno.Filter := 'descricaoTreino LIKE '+ QuotedStr('%'+ U01018.resposta + '%');
                                  CDSserieFichaAluno.Filtered := true;
                              end;

                              //REPORT_FICHAcp.PrintOptions.Printer := '//192.168.6.200/EPSON';
                              REPORT_FICHAcp.SelectPrinter;
                              REPORT_FICHAcp.PrintOptions.ShowDialog := false;
                              REPORT_FICHAcp.PrepareReport;
                              REPORT_FICHAcp.print;
                              //REPORT_FICHAcp.ShowReport(TRUE);

                              //limpa filter
                              CDSserieFichaAluno.Filtered := false;
                          EXCEPT
                              RAISE;
                          END;
                      end;
                      FREE;
                  End;

            FINALLY
                DSRelFicha.DataSet.Close;
            END;
        end;
  end;

  {
  IF(DS.DataSet.State = dsEDIT) THEN
  BEGIN
      TRY
          TRY
            qRelFicha.ParamByName('IDFA').AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
            DSRelFicha.DataSet.Close;
            DSRelFicha.DataSet.Open;
            REPORT_FICHAcp.PrintOptions.Printer := ' ';
            //REPORT_FICHAcp.PrintOptions.Printer := '//192.168.6.200/EPSON';
            REPORT_FICHAcp.PrintOptions.Printer := 'EPSON2';
            REPORT_FICHAcp.SelectPrinter;
            REPORT_FICHAcp.PrintOptions.ShowDialog := false;
            REPORT_FICHAcp.PrepareReport;
            //REPORT_FICHAcp.print;
            REPORT_FICHAcp.ShowReport(TRUE);
          EXCEPT
            RAISE;
          END;
      FINALLY
          DSRelFicha.DataSet.Close;
      END;
  END ELSE
  BEGIN
      IF(DS.DataSet.State = dsINSERT)THEN
      BEGIN
          //NO MODO INSERT OS DADOS DO CLIENTEDATASET1 AINDA NÃO ESTÃO SALVOS, NESSE CASO EU FAÇO UMA CÓPIA PARA CDSRELFICHA
          TRY
          CDSRelFicha.close;
          CDSRelFicha.open;
          CDSRelFicha.EmptyDataSet;
          CDSRelFicha.Append;
          CDSRelFichaIDAluno.AsINTEGER := ClientDataSet1IDAluno.AsINTEGER;
          CDSRelFichanomeAluno.AsString := ClientDataSet1nomeAluno.AsString;

          CDSRelFichaCODFICHA.AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
          CDSRelFichaDATACOMPOSICAO.AsDateTime := CDSFichaAlunodataComposicao.AsDateTime;
          CDSRelFichaDATAVENCIMENTO.AsDateTime := CDSFichaAlunodataVencimento.AsDateTime;

          //v2.0//CDSRelFichadataComposicaoFicha.AsDateTime := ClientDataSet1dataComposicaoFicha.AsDateTime;
          //v2.0//CDSRelFichaidInstrutorFicha.AsString := ClientDataSet1idInstrutorFicha.AsString;
          CDSRelFichaNOMEINSTRUTORFICHA.AsString := ClientDataSet1NOMEINSTRUTORFICHA.AsString;
          CDSRelFicha.Post;

          REPORT_FICHA.ShowReport(TRUE);
          FINALLY
            CDSRelFicha.Cancel;
            CDSRelFicha.CancelUpdates;
            CDSRelFicha.close;
          END;
      END;

  END;
  }
end;

procedure TF01001.btnFiltrarClick(Sender: TObject);
begin
  inherited;

  FDQuery1.Close;
  FDQuery1.SQL.Text :=
  'SELECT A.*, P.descricaoprotocoloAvaFisica, INST.NOMEUSUARIO AS NOMEINSTRUTORFICHA FROM ALUNO A '+
  'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR '+
  'LEFT OUTER JOIN PROTOCOLOAVAFISICA P ON P.IDPROTOCOLOAVAFISICA = A.IDPROTOCOLOAVAFISICA WHERE 1=1';

  if(cbxPesqNome.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.nomeAluno like "%' + EditPesqNome.Text +'%"');
  END;
  if(cbxPesqModalidade.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add('  and a.idaluno in (select idaluno from alunomodalidade where idmodalidade = ' + editPesqidModalidade.Text + ') ');
  END;
  if(cbxPesqSemMatriculaAtiva.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno not in (select idaluno from alunomodalidade)');
  END;
  if(cbxPesqPagamentoEmAtraso.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno in (select idaluno from pagamento where curdate() > dataVencimento and idStatusPagamento = 1 group by idaluno) ');
  END;
  if(cbxPesqInstrutor.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idinstrutor = ' + EditPesqIdInstrutor.Text);
  END;

  if(cbxPesqSemFichaExercicios.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add(' and a.idaluno not in (select idaluno from FICHAALUNO group by idAluno)');
  END;
  if(cbxPesqFichaVencida.Checked = true)then
  BEGIN
    //FDQuery1.SQL.Add(' AND curdate() > (SELECT FA.DATAVENCIMENTO FROM FICHAALUNO FA WHERE FA.IDFICHAALUNO = (SELECT MAX(IDFICHAALUNO) FROM FICHAALUNO WHERE IDALUNO = A.IDALUNO))');
  FDQuery1.SQL.Add(
  'and curdate() > '+
  'DATE_ADD( (SELECT FA.DATACOMPOSICAO FROM FICHAALUNO FA WHERE FA.IDFICHAALUNO = (SELECT MAX(IDFICHAALUNO) FROM FICHAALUNO WHERE IDALUNO = A.IDALUNO))   , '+
  'INTERVAL (SELECT VENCIMENTOFICHA FROM configuracaounidade WHERE idConfiguracaoUnidade = 1) MONTH) ');

  END;


  FDQuery1.Open;
  BPesquisar.Click;

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

procedure TF01001.cdsRelAnamneseCalcFields(DataSet: TDataSet);
begin
  inherited;
  //CALCULA IMC
  if NOT(cdsRelAnamnesepeso.IsNull) and NOT(cdsRelAnamnesealtura.IsNull) then
  begin
    cdsRelAnamneseIMC.AsFloat := cdsRelAnamnesepeso.AsFloat/ (cdsRelAnamnesealtura.AsFloat * cdsRelAnamnesealtura.AsFloat) ;
    cdsRelAnamneseIMC.AsFloat := RoundTo (cdsRelAnamneseIMC.AsFloat, -2);
  end;

end;

procedure TF01001.cdsRelAvaFisicaCalcFields(DataSet: TDataSet);
VAR
SOMA, DC, indicePonderal: REAL;
BU, BF, Bc, Pc, E: REAL;
begin
  inherited;

  //IMC
  if NOT(CDSrelAVAFISICAmed_peso_cm.IsNull) and NOT(CDSrelAVAFISICAmed_altura_cm.IsNull) then
  begin
    CDSrelAVAFISICAIMC.AsFloat := CDSrelAVAFISICAmed_peso_cm.AsFloat/ (CDSrelAVAFISICAmed_altura_cm.AsFloat * CDSrelAVAFISICAmed_altura_cm.AsFloat) ;
    CDSrelAVAFISICAIMC.AsFloat := RoundTo (CDSrelAVAFISICAIMC.AsFloat, -2);
  end;

  //RCQ
  if NOT(ClientDataSet1IDADE.IsNull)then
  begin
      if NOT(CDSrelAVAFISICAmed_cintura_cm.IsNull) and NOT(CDSrelAVAFISICAmed_quadril_cm.IsNull) then
      begin
        CDSrelAVAFISICARCQ.AsFloat := cdsRelAvaFisicamed_cintura_cm.AsFloat/ cdsRelAvaFisicamed_quadril_cm.AsFloat;
        CDSrelAVAFISICARCQ.AsFloat := RoundTo (CDSrelAVAFISICARCQ.AsFloat, -2);
        cdsRelAvaFisicaclassificacaoRCQ.AsString := getClassificacaoRCQ(CDSrelAVAFISICARCQ.AsFloat, clientdataset1idade.AsInteger, ClientDataSet1sexo.AsString);
        //showmessage(cdsRelAvaFisicaclassificacaoRCQ.AsString);
      end;
  END ELSE
  BEGIN
    SHOWMESSAGE('INFORME A DATA DE NASCIMENTO DO ALUNO.');
    EXIT;
  END;

  //PORCENTAGEM DE GORDURA
  IF NOT(ClientDataSet1idProtocoloAvaFisica.IsNull)THEN
  BEGIN

    //Porcentagem Gordura
    SOMA := 0.0; DC := 0.0;

    case ClientDataSet1idProtocoloAvaFisica.AsInteger of
      1:  BEGIN
          //PROTOCOLO DE FAULKNER (1968)
          //G% = [(TR + SB + SI + AB) x 0.153] + 5.783
          IF (NOT(cdsRelAvaFisicadobra_triciptal_mm.ISNULL)AND
             NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) AND
             NOT(cdsRelAvaFisicadobra_subescapular_mm.ISNULL) AND
             NOT(cdsRelAvaFisicadobra_abdominal_mm.ISNULL) )THEN
          BEGIN
              SOMA := cdsRelAvaFisicadobra_triciptal_mm.AsFloat +
              cdsRelAvaFisicadobra_subescapular_mm.AsFloat +
              cdsRelAvaFisicadobra_suprailiac_mm.AsFloat +
              cdsRelAvaFisicadobra_abdominal_mm.AsFloat;
              cdsRelAvaFisicaporcentagemGordura.AsFloat := ((SOMA) * 0.153)+ 5.783;
              END;
          END;

      2:  BEGIN
              //POLLOCK 3 DOBRAS
              IF(ClientDataSet1sexo.AsString = 'M')THEN
              BEGIN
                  //MASCULINO: peitoral, abdominal e coxa
                  IF (NOT(cdsRelAvaFisicadobra_peitoral_mm.ISNULL)AND
                     NOT(cdsRelAvaFisicadobra_coxa_mm.ISNULL) AND
                     NOT(cdsRelAvaFisicadobra_abdominal_mm.ISNULL) AND
                     NOT(CLIENTDATASET1IDADE.ISNULL) )THEN
                  BEGIN
                      SOMA := cdsRelAvaFisicadobra_peitoral_mm.AsFloat +
                      cdsRelAvaFisicadobra_abdominal_mm.AsFloat +
                      cdsRelAvaFisicadobra_coxa_mm.AsFloat;

                      //DC = (1,10938-(0,0008267 x 3 dobras)+(0,0000016 x (3 dobras)2 – (0,0002574 x idade)
                      DC := 1.10938 - (0.0008267 * soma) + (0.0000016 * MATH.Power(SOMA,2)) - (0.0002574 * ClientDataSet1IDADE.AsInteger);
                  END;

              END ELSE
              BEGIN
                  //FEMININO: tríceps + supra-iliaca + coxa
                  IF (NOT(cdsRelAvaFisicadobra_triciptal_mm.ISNULL)AND
                     NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) AND
                     NOT(cdsRelAvaFisicadobra_COXA_mm.ISNULL) AND
                     NOT(CLIENTDATASET1IDADE.ISNULL) )THEN
                  BEGIN
                      SOMA := cdsRelAvaFisicadobra_triciptal_mm.AsFloat +
                      cdsRelAvaFisicadobra_suprailiac_mm.AsFloat +
                      cdsRelAvaFisicadobra_coxa_mm.AsFloat;
                      //DC = 1,0994921 – 0,0009929(Σ) + 0,0000023(Σ)² – 0,0001392(idade)
                      DC := ( 1.0994921 - (0.0009929 * SOMA) + (0.0000023 * MATH.Power(SOMA,2)) - (0.0001392 * ClientDataSet1IDADE.AsInteger) );
                  END;
              END;

              //G% = [(4,95 / DC) – 4,50] x 100
              IF(DC <> 0.0)THEN
              BEGIN
                  CdsRelAvaFisicaporcentagemGordura.AsFloat := ((4.95 / DC) - 4.50) * 100;
              END;

          END;

      3:  BEGIN
              //POLLOCK 7 DOBRAS
              IF (NOT(cdsRelAvaFisicadobra_triciptal_mm.ISNULL)AND
                 NOT(cdsRelAvaFisicadobra_subescapular_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicadobra_abdominal_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicadobra_axiliar_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicadobra_coxa_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicadobra_peitoral_mm.ISNULL) AND
                 NOT(cdsRelAvaFisicamed_altura_cm.ISNULL) ) THEN
              BEGIN
                  //(subescapular + tríceps + peitoral + axilar-media + supra-iliaca + abdômen + coxa)
                  SOMA :=
                  cdsRelAvaFisicadobra_triciptal_mm.AsFloat +
                  cdsRelAvaFisicadobra_subescapular_mm.AsFloat +
                  cdsRelAvaFisicadobra_suprailiac_mm.AsFloat +
                  cdsRelAvaFisicadobra_abdominal_mm.AsFloat +
                  cdsRelAvaFisicadobra_axiliar_mm.AsFloat +
                  cdsRelAvaFisicadobra_coxa_mm.AsFloat +
                  cdsRelAvaFisicadobra_peitoral_mm.AsFloat;

                  // DC: DENCIDADE CORPORAL
                  IF(ClientDataSet1sexo.AsString = 'M')THEN
                  BEGIN
                    //MASCULINO:
                    //DC = 1,11200000 – (0,000434999 x Σ) + [0,00000055 x (Σ)²]– [0,0002882 (idade)]
                    DC := ( 1.11200000 - (0.000434999 * SOMA) + ( (0.00000055 * MATH.Power(SOMA,2)) - (0.0002882 * ClientDataSet1IDADE.AsInteger) )  );
                  END ELSE
                  BEGIN
                    //FEMININO: 1,0970 – (0,00046971 x Σ) + [0,00000056 x (Σ)²] – [0,00012828 (idade)]
                    DC := ( 1.0970 - (0.00046971 * SOMA) + ( (0.00000056 * MATH.Power(SOMA,2)) - (0.00012828 * ClientDataSet1IDADE.AsInteger) )  );

                  END;

                  //G% = [(4,95 / DC) – 4,50] x 100
                  IF(DC <> 0.0)THEN
                  BEGIN
                      CdsRelAvaFisicaporcentagemGordura.AsFloat := ((4.95 / DC) - 4.50) * 100;
                  END;
              END;

          END;

      4:  BEGIN
              // PROTOCOLO DE GUEDES
              IF(ClientDataSet1sexo.AsString = 'M')THEN
              BEGIN
                //MASCULINO:
                //Homens : Tríceps, suprai-líaca e abdome
                //HOMENS: Densidade = 1,17136 - 0,06706 log (TR + SI+AB )
                IF (NOT(cdsRelAvaFisicadobra_triciptal_mm.ISNULL)AND
                   NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) AND
                   NOT(cdsRelAvaFisicadobra_abdominal_mm.ISNULL))THEN
                BEGIN
                    SOMA :=
                    cdsRelAvaFisicadobra_triciptal_mm.AsFloat +
                    cdsRelAvaFisicadobra_suprailiac_mm.AsFloat +
                    cdsRelAvaFisicadobra_abdominal_mm.AsFloat;
                    DC := 1.17136 - (0.06706 * MATH.Log10(SOMA));
                END;

              END ELSE
              BEGIN
                //FEMININO
                //Mulheres: Subescapular, supra-ilíaca e coxa
                //MULHERES: Densidade = 1,16650- 0,07063 log (CX + SI+ SB)
                IF (NOT(cdsRelAvaFisicadobra_subescapular_mm.ISNULL)AND
                   NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) AND
                   NOT(cdsRelAvaFisicadobra_coxa_mm.ISNULL))THEN
                BEGIN
                    SOMA :=
                    cdsRelAvaFisicadobra_subescapular_mm.AsFloat +
                    cdsRelAvaFisicadobra_suprailiac_mm.AsFloat +
                    cdsRelAvaFisicadobra_coxa_mm.AsFloat;
                    DC := 1.16650 - (0.07063 * MATH.Log10(SOMA));
                END;
              END;

              //G% = [(4,95 / DC) – 4,50] x 100
              IF(DC <> 0.0)THEN
              BEGIN
                CdsRelAvaFisicaporcentagemGordura.AsFloat := ((4.95 / DC) - 4.50) * 100;
              END;

          END;

    end;

    //COMPOSIÇÃO CORPORAL
    IF (  (NOT(cdsRelAvaFisicaporcentagemGordura.IsNull)) and (NOT(cdsRelAvaFisicamed_peso_cm.IsNull))and
          (NOT(cdsRelAvaFisicado_BICONDILIANO_cm.IsNull)) and (NOT(cdsRelAvaFisicado_BIESTILOIDE_cm.IsNull))  )THEN
    BEGIN
        //Peso Gordura
        //Peso Gordo= Peso Corporal x %Gordura
        cdsRelAvaFisicapesoGordura.AsFloat := cdsRelAvaFisicamed_peso_cm.asfloat*(cdsRelAvaFisicaporcentagemGordura.AsFloat / 100.0)  ;
        cdsRelAvaFisicapesoGordura.AsFloat := RoundTo( cdsRelAvaFisicapesoGordura.AsFloat, -2);

        //Peso Residual: Equação de Wurch
        //Peso Residual (masc)=PT( peso total) x (24,1/100)
        //Peso Residual (fem)=PT x (20,9/100)
        IF(ClientDataSet1sexo.AsString = 'M')THEN
        BEGIN
            cdsRelAvaFisicapesoResidual.AsFloat := RoundTo( (cdsRelAvaFisicamed_peso_cm.asfloat * 0.241), -2);
        END ELSE
        BEGIN
            cdsRelAvaFisicapesoResidual.AsFloat := RoundTo((cdsRelAvaFisicamed_peso_cm.asfloat * 0.209), -2);
        END;

        //Peso Osseo:  Equação de Von Doblen
        //Peso Ósseo= 3.02 * ((Estatura² x (Punho/100) x (fêmur/100) x 400) ^ 0.712)
        cdsRelAvaFisicapesoOsseo.AsFloat :=
        (cdsRelAvaFisicamed_altura_cm.AsFloat * cdsRelAvaFisicamed_altura_cm.AsFloat) *
        (cdsRelAvaFisicado_BIESTILOIDE_cm.AsFloat/ 100) *
        (cdsRelAvaFisicado_BICONDILIANO_cm.AsFloat/100) * 400;
        cdsRelAvaFisicapesoOsseo.AsFloat := (3.02 *(math.Power(cdsRelAvaFisicapesoOsseo.AsFloat, 0.712)));
        cdsRelAvaFisicapesoOsseo.AsFloat := RoundTo(cdsRelAvaFisicapesoOsseo.AsFloat ,-2);

        //Peso Muscular
        //Peso Muscular= (Peso Corporal – (PG+PO+PR))
        cdsRelAvaFisicaPesoMuscular.AsFloat := RoundTo((cdsRelAvaFisicamed_peso_cm.asfloat - (cdsRelAvaFisicapesoGordura.AsFloat + cdsRelAvaFisicapesoOsseo.AsFloat + cdsRelAvaFisicapesoResidual.AsFloat)), -2);

        //Massa Corporal Magra
        //Peso Magro= Peso Corporal – Peso Gordo
        cdsRelAvaFisicamassaMagraCorporal.AsFloat := RoundTo((cdsRelAvaFisicamed_peso_cm.asfloat - cdsRelAvaFisicapesoGordura.AsFloat), -2);

    END;

  END ELSE
  BEGIN
      SHOWMESSAGE('ESCOLHA UM PROTOCOLO PARA CÁLCULO DA % DE GORDURA NO PERFIL DO USUÁRIO.');
  END;


  {SOMATOTIPIA}

  //ENDOMORFIA
  IF (NOT(cdsRelAvaFisicadobra_triciptal_mm.ISNULL)AND
     NOT(cdsRelAvaFisicadobra_subescapular_mm.ISNULL) AND
     NOT(cdsRelAvaFisicadobra_suprailiac_mm.ISNULL) )THEN
  BEGIN
      //Fórmula de De Rose et al. (1984)
      //Endomorfia = – 0,7182 + 0,1451(Σc) – 0,00068 (Σc)^2 + 0,0000014 (Σc)^3
      // Σc = [(tricipital + subescapular + supraespinhal) x (170.18/estatura)]
      // obs: supraespinhal = supraIlíaca;
      //obs: multiplicar estatura por 100 caso tenha q converter de metros para centímetros
      cdsRelAvaFisicasomatotipoEndo.AsFloat :=
      (cdsRelAvaFisicadobra_triciptal_mm.AsFloat +
      cdsRelAvaFisicadobra_subescapular_mm.AsFloat +
      cdsRelAvaFisicadobra_suprailiac_mm.AsFloat)          * (170.18 / (cdsRelAvaFisicamed_altura_cm.AsFloat * 100));
      cdsRelAvaFisicasomatotipoEndo.AsFloat :=
      (cdsRelAvaFisicasomatotipoEndo.AsFloat * 0.1451) -
      ( math.Power(cdsRelAvaFisicasomatotipoEndo.AsFloat,2) * 0.00068) +
      ( math.Power(cdsRelAvaFisicasomatotipoEndo.AsFloat,3) * 0.0000014)   - 0.7182;
      cdsRelAvaFisicasomatotipoEndo.AsFloat := RoundTo(cdsRelAvaFisicasomatotipoEndo.AsFloat,-2);
  END;

  //ECTOMORFIA
  // IP = (Estatura / raiz cúbica do peso do aluno);
  IF (NOT(cdsRelAvaFisicaMED_ALTURA_cm.ISNULL)AND
      NOT(cdsRelAvaFisicaMED_PESO_cm.ISNULL) ) THEN
  BEGIN
      indicePonderal := (cdsRelAvaFisicamed_altura_cm.AsFloat * 100) / (Math.power(cdsRelAvaFisicamed_peso_cm.AsFloat, 0.333333));
      if (indicePonderal <= 38.25)then
      begin
            cdsRelAvaFisicasomatotipoEcto.AsFloat := 0.1;
      end else
      begin
        if ((indicePonderal > 38.25) and (indicePonderal < 40.75))then
        begin
            cdsRelAvaFisicasomatotipoEcto.AsFloat := (0.463 * indicePonderal) - 17.63;
        end else
        begin
            if (indicePonderal >= 40.75)then
            begin
                cdsRelAvaFisicasomatotipoEcto.AsFloat := (0.732 * indicePonderal) - 28.58;
            end;
        end;
        cdsRelAvaFisicasomatotipoEcto.AsFloat := RoundTo(cdsRelAvaFisicasomatotipoEcto.AsFloat,-2);
      end;
  END;


  //MESOMORFIA
  IF (NOT(cdsRelAvaFisicado_BIEPICONDILIANO_cm.ISNULL)AND
     NOT(cdsRelAvaFisicado_BICONDILIANO_cm.ISNULL) AND
     NOT(cdsRelAvaFisicamed_bracoDireitoRelaxado_cm.ISNULL) AND
     NOT(cdsRelAvaFisicamed_coxaDireita_cm.ISNULL) AND
     NOT(cdsRelAvaFisicamed_altura_cm.ISNULL) ) THEN
  BEGIN
      //BU = Diâmetro ósseo do Úmero em centímetros
      BU := cdsRelAvaFisicado_BIEPICONDILIANO_cm.AsFloat;

      //BF = Diâmetro ósseo do Fêmur em centímetros
      BF := cdsRelAvaFisicado_BICONDILIANO_cm.AsFloat;

      //Bc = Braço corrigido em centímetros
      //Bc = Circunferência do braço (cm) – dobra cutânea do tríceps (cm)
      BC := cdsRelAvaFisicamed_bracoDireitoRelaxado_cm.AsFloat - (cdsRelAvaFisicadobra_triciptal_mm.AsFloat / 10);

      //Pc =Perna Corrigida em centímetros
      //Pc = Circunferência da perna (cm) – dobra cutânea da perna (cm)
      PC := cdsRelAvaFisicamed_coxaDireita_cm.AsFloat - (cdsRelAvaFisicadobra_coxa_mm.AsFloat / 10);

      //E = Estatura em centímetros
      E := cdsRelAvaFisicamed_altura_cm.AsFloat * 100;
      //showmessage('0.858 * ('+ Floattostr(BU) +'))+ (0.601 * ('+ Floattostr(BF) +')) + (0.188 * ('+ Floattostr(BC) +')) + (0.161 * ('+ Floattostr(PC) +')) - (0.131 * ('+ Floattostr(E) +')) + 4.50');
      //MESOMORFIA = 0, 858 (BU) + 0,601 (BF) + 0,188 (Bc) + 0,161 (Pc) – 0,131 (E) + 4,50
      cdsRelAvaFisicasomatotipoMeso.AsFloat := (0.858 * (BU))+ (0.601 * (BF)) + (0.188 * (Bc)) + (0.161 * (Pc)) - (0.131 * (E)) + 4.50;
      cdsRelAvaFisicasomatotipoMeso.AsFloat := RoundTo(cdsRelAvaFisicasomatotipoMeso.AsFloat,-2);

  END;

end;

procedure TF01001.CDSAnamneseAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.CancelUpdates;
end;

procedure TF01001.CDSAnamneseAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.ApplyUpdates(-1);
end;

procedure TF01001.CDSAnamneseAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSAnamnese.ApplyUpdates(-1);
end;

procedure TF01001.CDSAvaFisicaCalcFields(DataSet: TDataSet);
begin
  inherited;

  if NOT(CDSAVAFISICAmed_peso_cm.IsNull) and NOT(CDSAVAFISICAmed_altura_cm.IsNull) then
  begin
    CDSAVAFISICAIMC.AsFloat := CDSAVAFISICAmed_peso_cm.AsFloat/ (CDSAVAFISICAmed_altura_cm.AsFloat * CDSAVAFISICAmed_altura_cm.AsFloat) ;
    CDSAVAFISICAIMC.AsFloat := RoundTo (CDSAVAFISICAIMC.AsFloat, -2);
  end;


end;

procedure TF01001.CDSFichaAlunoAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.CancelUpdates;
end;

procedure TF01001.CDSFichaAlunoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.ApplyUpdates(-1);
end;

procedure TF01001.CDSFichaAlunoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSFichaAluno.ApplyUpdates(-1);
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

    // CALCULA IDADE DO ALUNO
  IF NOT(ClientDataSet1dataNascimento.IsNull)THEN
  BEGIN
    ClientDataSet1idADE.AsInteger := (DateUtils.YearsBetween(DATE, ClientDataSet1dataNascimento.AsDateTime));

  END;

  //SITUAÇÃO DO ALUNO
  DModule.qAux.SQL.Text := 'SELECT * FROM alunomodalidade where idAluno = ' + ClientDataSet1idAluno.AsString ;
  DModule.qAux.Close;
  DModule.qAux.Open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    ClientDataSet1situacao.AsString := 'ATIVO';
  end else
  begin
    ClientDataSet1situacao.AsString := 'INATIVO';
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


procedure TF01001.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  IF((ClientDataSet1.State = dsEdit) OR (ClientDataSet1.State = dsInsert))THEN
  BEGIN
    IF trim(cxDBDateEdit1.Text) <> '' THEN
    BEGIN
      ClientDataSet1idade.AsInteger := (DateUtils.YearsBetween(DATE, cxDBDateEdit1.Date));

      // CONTROLE DE PAINEL DADOS-RESPONSÁVEL
      if(ClientDataSet1idade.AsInteger >= 18)then
      begin
          DBEdit4.Enabled := false;
          DBEdit5.Enabled := false;
          cxDBMaskEdit5.Enabled := false;
          DBEdit4.Clear;
          DBEdit5.Clear;
          cxDBMaskEdit5.Clear;
      end else
      begin
          if(ClientDataSet1idade.AsInteger < 18)then
          begin
              DBEdit4.Enabled := true;
              DBEdit5.Enabled := true;
              cxDBMaskEdit5.Enabled := true;
          end;
      end;

    END ELSE
    BEGIN
      ClientDataSet1idade.AsInteger := 0;
    END;
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

procedure TF01001.cxImage1PropertiesChange(Sender: TObject);
begin
  inherited;
  IF((ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert))THEN
  begin
    imagemMudou := true;
  end;
end;

procedure TF01001.DBEdit15Change(Sender: TObject);
begin
  inherited;
  //PROTOCOLO DE COMPOSIÇÃO CORPORAL
  if (ClientDataSet1idProtocoloAvaFisica.IsNull) then
  begin
      LabelAvisoProtocolo.Visible := true;
  end else
  begin
      LabelAvisoProtocolo.Visible := false;
  end;
end;

procedure TF01001.DBEdit9Change(Sender: TObject);
var
  CPF:string;
  STATUS: BOOLEAN;
begin
  inherited;

  TRY
      IF (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
      begin
            CPF := DBEdit9.Text;
            CPF := StringReplace(CPF, '-', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, '.', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, '_', ' ', [rfReplaceAll, rfIgnoreCase]);
            CPF := StringReplace(CPF, ' ', EmptyStr, [rfReplaceAll]);

            //VERIFICA SE É UM CPF VÁLIDO
            STATUS := isCPF(CPF);
            if (STATUS = false) then
            begin
                DBEdit9.Font.Color := clRED;
                IF(LENGTH(CPF) = 11)THEN
                BEGIN
                  ShowMessage('ERRO: CPF INVÁLIDO');
                  ClientDataSet1CPF.Clear;
                END;

            end else
            begin
                // NESSE CASO O CPF É VÁLIDO!
                //AGORA, VERIFICA SE ESSE CPF JÁ ESTA SENDO UTILIZADO POR OUTRO ALUNO
                DModule.qAux.SQL.Text := 'select A.* From ALUNO A where A.CPF =:IDCPF';
                DModule.qAux.ParamByName('IDCPF').AsString := DBEdit9.Text;
                DModule.qAux.Close;
                DModule.qAux.Open;

                if NOT(DModule.qAux.IsEmpty)then
                begin
                    IF(DModule.qAux.FieldByName('IDALUNO').AsINTEGER <> ClientDataSet1idAluno.AsInteger)THEN
                    BEGIN
                      ShowMessage('ERRO: ' +'CPF JA REGISTRADO NO SISTEMA. ' + #13 + #13 + 'ALUNO: '+ DModule.qAux.FieldByName('NOMEALUNO').AsString);
                      DBEdit9.Font.Color := clRED;
                      ClientDataSet1CPF.Clear;
                    END ELSE
                    BEGIN
                      DBEdit9.Font.Color := clblack;
                    END;
                end ELSE
                BEGIN
                    DBEdit9.Font.Color := clblack;
                END;

            end;

      end;

  EXCEPT
  ON E : Exception do
      ShowMessage('ERRO: '+ E.ClassName+#13+E.Message);
  END;


end;

procedure TF01001.DBEdit9Exit(Sender: TObject);
VAR
  CPF: STRING;
begin

  //SE AO SAIR DO CAMPO CPF, LENGTH(CPF) < 11, APAGA TODO O CAMPO.
  IF (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
  begin
      CPF := DBEdit9.Text;
      CPF := StringReplace(CPF, '-', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, '.', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, '_', ' ', [rfReplaceAll, rfIgnoreCase]);
      CPF := StringReplace(CPF, ' ', EmptyStr, [rfReplaceAll]);
      IF(LENGTH(CPF) < 11)THEN
      BEGIN
          ClientDataSet1CPF.Clear;
      END;
  end;

  inherited;
end;

procedure TF01001.DBEditInstrutorChange(Sender: TObject);
begin
  inherited;
  //
  IF TRIM(DBEditInstrutor.Text) <> '' THEN
  BEGIN
    btnNovoFicha.Enabled := TRUE;
  END ELSE
  BEGIN
    btnNovoFicha.Enabled := FALSE;
  END;

end;

procedure TF01001.DBGridBelezaFichasAlunoDblClick(Sender: TObject);
begin
  inherited;
  With TF01014.CreateCONSULTA(self, CDSFichaAlunoidFichaAluno.AsInteger) do
  Begin
    ShowModal;
    Free;
  End;
  CDSFichaAluno.CLOSE;
  CDSFichaAluno.OPEN;
end;

procedure TF01001.DBGridBelezaFichasAlunoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    inherited;
    if (key = 46) then
    //Deleta Ficha de Exercícios
    begin
      if MessageDlg('Deseja Apagar Item [COD:' + CDSFichaAlunoidFichaAluno.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          CDSFichaAluno.Delete;
      end;
    end;
end;

procedure TF01001.DBGridBelezaFisicaDblClick(Sender: TObject);
begin
  inherited;
  IF NOT(CDSAvaFisica.IsEmpty)THEN
  BEGIN
      With TF01017.CreateCONSULTA(self, CDSAvaFisicaidAvaliacaoFisica.AsInteger, ClientDataSet1NOMEALUNO.AsString) do
      Begin
        ShowModal;
        Free;
      End;
      CDSAvaFisica.CLOSE;
      CDSAvaFisica.OPEN;
  END;

  {
  IF NOT(CDSAvaFisica.IsEmpty)THEN
  BEGIN
      With TF01017.CreateCONSULTA(self, CDSAvaFisicaidAvaliacaoFisica.AsInteger) do
      Begin
        ShowModal;
        Free;
      End;
      CDSAvaFisica.CLOSE;
      CDSAvaFisica.OPEN;
  END;
  }
end;

procedure TF01001.DBGridBelezaFisicaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Ficha de Exercícios
  begin
    if MessageDlg('Deseja Apagar Item [COD:' + CDSAvaFisicaidAvaliacaoFisica.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        CDSAvaFisica.Delete;
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

procedure TF01001.DBGridBelezaAnamneseDblClick(Sender: TObject);
begin
  inherited;
  IF NOT(CDSAnamnese.IsEmpty)THEN
  BEGIN
      With TF01016.CreateCONSULTA(self, CDSAnamneseidAnamnese.AsInteger, ClientDataSet1NOMEALUNO.AsString) do
      Begin
        ShowModal;
        Free;
      End;
      CDSAnamnese.CLOSE;
      CDSAnamnese.OPEN;
  END;
end;

procedure TF01001.DBGridBelezaAnamneseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 46) then
  //Deleta Ficha de Exercícios
  begin
    if MessageDlg('Deseja Apagar Item [COD:' + CDSAnamneseidAnamnese.AsString + '] ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        CDSAnamnese.Delete;
    end;
  end;
end;

procedure TF01001.dsAnamneseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSAnamnese.RecordCount > 0)THEN
  BEGIN
      btnImprimirAnamnes.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirAnamnes.Enabled := FALSE;
  END;

  

end;

procedure TF01001.DSAvaFisicaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  IF(CDSAvaFisica.RecordCount > 0)THEN
  BEGIN
      btnImprimirAvaFisica.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirAvaFisica.Enabled := FALSE;
  END;
end;

procedure TF01001.DSDataChange(Sender: TObject; Field: TField);
var
  caminho : string;
begin
  inherited;

  //PROTOCOLO DE COMPOSIÇÃO CORPORAL
  if (ClientDataSet1idProtocoloAvaFisica.IsNull) then
  begin
      LabelAvisoProtocolo.Visible := true;
  end else
  begin
      LabelAvisoProtocolo.Visible := false;
  end;

  //PESQUISA FICHA DE EXERCICIO
  qFichaAluno.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSFichaAluno.DataSet.close;
  DSFichaAluno.DataSet.open;

  //PESQUISA Modalidade
  QMODALIDADE.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSModalidade.DataSet.close;
  DSModalidade.DataSet.open;

  //PESQUISA Pagamento
  qPagamento.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSPagamento.DataSet.close;
  DSPagamento.DataSet.open;

  //PESQUISA Anamnese
  qAnamnese.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSAnamnese.DataSet.close;
  DSAnamnese.DataSet.open;

  //PESQUISA AVALIAÇÃO FÍSICA
  qAvaFisica.Params[0].AsInteger := ClientDataSet1idAluno.AsInteger;
  DSAvaFisica.DataSet.close;
  DSAvaFisica.DataSet.open;

  if (ds.DataSet.State = dsInsert) OR (ds.DataSet.State = dsEdit) then
  begin

        //Se estiver no modo de edição ou inserção, não Faz nada!
  END ELSE
  BEGIN
      // Foto na pasta local img_Aluno
      caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

      cxImage1.Picture := nil;
      if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
      begin
        cxImage1.Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
        //cxImage1.Style.Color := $00515128;//$002E2E2E;
      end else
      begin
        ImageListAUX.GetBitmap(0, cxImage1.Picture.Bitmap);
        cxImage1.Style.Color := clWindow;
      end;
  end;

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
  IF(cdsPagamento.RecordCount > 0 )THEN
  begin
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
      if(DModule.administrador = false)then
      begin
          btnIsencao.Enabled := FALSE;
      end;
  end else
  begin
      btnPagamento.Enabled := false;
      btnIsencao.Enabled := false;
      btnCancelarPI.Enabled := false;
  end;

end;

procedure TF01001.dsRelAnamneseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //PESQUISA anamnesePatologia
  qanamnesePatologia.Params[0].AsInteger := CDSAnamneseidAnamnese.AsInteger;
  cdsanamnesePatologia.close;
  cdsanamnesePatologia.open;
end;

procedure TF01001.DSFichaAlunoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  IF(CDSFichaAluno.RecordCount > 0)THEN
  BEGIN
      btnImprimirFicha.Enabled := TRUE;
  END ELSE
  BEGIN
      btnImprimirFicha.Enabled := FALSE;
  END;

  //PESQUISA FICHA DE EXERCICIO
  qserieFichaAluno.Params[0].AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
  DSserieFichaAluno.DataSet.close;
  DSserieFichaAluno.DataSet.open;

end;

procedure TF01001.DSStateChange(Sender: TObject);
begin
  inherited;


  if (ds.DataSet.State = dsInsert) then
  begin
    DBRadioGroup1.Value := 'M';
    DBRadioGroup1.Buttons[0].OnClick(sender);
    // IMAGEM ALUNO DEFAULT
    cxImage1.Picture.Bitmap := NIL;
    ImageListAUX.GetBitmap(0, cxImage1.Picture.Bitmap);
    cxImage1.Style.Color := clWindow;
    imagemMudou := FALSE;
  end else
  begin
    if (ds.DataSet.State = dsEdit) then
    begin

        // CONTROLE DE PAINEL DADOS-RESPONSÁVEL
        if(ClientDataSet1idade.AsInteger >= 18)then
        begin
            DBEdit4.Enabled := false;
            DBEdit5.Enabled := false;
            cxDBMaskEdit5.Enabled := false;
            DBEdit4.Clear;
            DBEdit5.Clear;
            cxDBMaskEdit5.Clear;
        end else
        begin
            if(ClientDataSet1idade.AsInteger < 18)then
            begin
                DBEdit4.Enabled := true;
                DBEdit5.Enabled := true;
                cxDBMaskEdit5.Enabled := true;
            end;
        end;

        //CASO O USUÁRIO SEJA UM INSTRUTOR, VERIFICA SE ELE É O INSTRUTOR
        //DESSE ALUNO CUJO REGISTRO SERÁ EDITADO.
        IF(DModule.administrador = FALSE)THEN
        BEGIN
            IF(ClientDataSet1idInstrutor.AsInteger <> DModule.idusuario)THEN
            BEGIN
              //NESSE CASO O INSTRUTOR, NÃO É INTRUTOR DESTE ALUNO
              //POR ISSO NÃO PODERÁ ALTERAR O REGISTRO DE EXERCÍCIOS.
              pagFichaExercicios.TabVisible := true;
              btnNovoFicha.visible := FALSE;
              //Impede exclusão se necessário
              DBGridBelezaFichasAluno.OnKeyDown := nil;
              DBGridBelezaFichasAluno.OnDblClick := nil;

            END else
            begin
              pagFichaExercicios.TabVisible := true;
              btnNovoFicha.visible := true;
              //Impede exclusão se necessário
              DBGridBelezaFichasAluno.OnKeyDown := DBGridBelezaFichasAlunoKeyDown;
              DBGridBelezaFichasAluno.OnDblClick := DBGridBelezaFichasAlunoDblClick;
            end;
        END;

    end;
  end;

end;

procedure TF01001.EditBeleza1ButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.EditPesqInstrutorChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqInstrutor.Text = '')or (EditPesqInstrutor.Text = ' '))then
  begin
    cbxPesqInstrutor.Checked := false;
      EditPesqIdInstrutor.Clear;
  end else
    cbxPesqInstrutor.Checked := true;
end;

procedure TF01001.EditPesqModalidadeChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqModalidade.Text = '')or (EditPesqModalidade.Text = ' '))then
  begin
    cbxPesqModalidade.Checked := false;
      editPesqidModalidade.Clear;
  end else
    cbxPesqModalidade.Checked := true;
end;


procedure TF01001.EditPesqModalidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01001.EditPesqNomeChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqNome.Text) <> '')then
  begin
    cbxPesqNome.Checked := true;
  end else
    cbxPesqNome.Checked := false;
end;

procedure TF01001.FormCreate(Sender: TObject);
begin

  inherited;

  {CONTROLE DE USUÁRIOS POR FUNCIONALIDADE}
  if(DModule.administrador = true)then
  begin
    //Aba Perfil
    pagPerfil.TabVisible := true;
    PanelPerfil.Enabled := true;

    //Aba Avaliações
    pagAvaliacoes.TabVisible := true;
    btnNovaAnamnes.visible := TRUE;
    btnNovaAnamnes.enabled := TRUE;
    btnNovaAvaFisica.visible := TRUE;
    btnNovaAvaFisica.enabled := TRUE;
    DBEditBelezaProtocolo.ReadOnly := false;

    //ABA FICHA DE EXERCICIO
    pagFichaExercicios.TabVisible := true;
    PanelBotoesFichaDeExercicios.Enabled := true;

    //ABA MODALIDADES
    pagMatricula.TabVisible := true;
    PanelBotoesModalidades.Enabled := true;

    //ABAMENSALIDADES
    pagMensalidades.TabVisible := true;
    PanelBotoesMensalidades.Enabled := true;

  end else
  begin
      //AVALIADOR
      if(DModule.avaliador = true)then
      BEGIN
          //Aba Perfil
          pagPerfil.TabVisible := true;
          PanelPerfil.Enabled := FALSE;

          //Aba Avaliações
          pagAvaliacoes.TabVisible := true;
          btnNovaAnamnes.visible := TRUE;
          btnNovaAnamnes.enabled := TRUE;
          btnNovaAvaFisica.visible := TRUE;
          btnNovaAvaFisica.enabled := TRUE;
          DBEditBelezaProtocolo.ReadOnly := false;

          //ABA FICHA DE EXERCICIO
          pagFichaExercicios.TabVisible := FALSE;

          //ABA MODALIDADES
          pagMatricula.TabVisible := FALSE;

          //ABAMENSALIDADES
          pagMensalidades.TabVisible := FALSE;

          if(DModule.instrutor = true)then
          BEGIN
              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := TRUE;
              btnNovoFicha.Visible := TRUE;
          END ELSE
          BEGIN
              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := FALSE;
              btnNovoFicha.Visible := FALSE;
          END;

          if(DModule.atendente = true)then
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := true;

              //ABA MODALIDADES
              pagMatricula.TabVisible := TRUE;

              //ABAMENSALIDADES
              pagMensalidades.TabVisible := TRUE;
          END ELSE
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := FALSE;

              //ABA MODALIDADES
              pagMatricula.TabVisible := FALSE;

              //ABAMENSALIDADES
              pagMensalidades.TabVisible := FALSE;
          END;
      END ELSE
      BEGIN
          //INSTRUTOR
          if(DModule.instrutor = true)then
          BEGIN
              //Aba Perfil
              pagPerfil.TabVisible := true;
              PanelPerfil.Enabled := FALSE;

              //ABA AVALIAÇÃO -- AQUI JA TEMOS A CERTEZA DE QUE O USUÁRIO NÃO É UM AVALIADOR
              pagAvaliacoes.TabVisible := true;
              btnNovaAnamnes.visible := FALSE;
              btnNovaAvaFisica.visible := FALSE;
              DBEditBelezaProtocolo.ReadOnly := true;

              //Impede exclusão se necessário
              DBGridBelezaAnamnese.OnKeyDown := nil;
              DBGridBelezaFisica.OnKeyDown := nil;
              DBGridBelezaPostural.OnKeyDown := nil;
              DBGridBelezaDadosClinicos.OnKeyDown := nil;

              //ABA FICHA DE EXERCICIO
              pagFichaExercicios.TabVisible := TRUE;
              btnNovoFicha.Visible := TRUE;

              if(DModule.atendente = true)then
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := true;

                  //ABA MODALIDADES
                  pagMatricula.TabVisible := TRUE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := TRUE;
              END ELSE
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := FALSE;

                  //ABA MODALIDADES
                  pagMatricula.TabVisible := FALSE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := FALSE;
              END;
          END ELSE
          BEGIN
              //ATENDENTE
              if(DModule.atendente = true)then
              BEGIN
                  //Aba Perfil
                  pagPerfil.TabVisible := true;
                  PanelPerfil.Enabled := true;

                  //ABA MODALIDADES
                  pagMatricula.TabVisible := TRUE;

                  //ABAMENSALIDADES
                  pagMensalidades.TabVisible := TRUE;

                  //ABA AVALIAÇÃO -- AQUI JA TEMOS A CERTEZA DE QUE O USUÁRIO NÃO É UM AVALIADOR
                  pagAvaliacoes.TabVisible := true;
                  btnNovaAvaFisica.visible := FALSE;
                  btnNovaAnamnes.visible := FALSE;
                  DBEditBelezaProtocolo.ReadOnly := true;

                  //Impede exclusão se necessário
                  DBGridBelezaAnamnese.OnKeyDown := nil;
                  DBGridBelezaFisica.OnKeyDown := nil;
                  DBGridBelezaPostural.OnKeyDown := nil;
                  DBGridBelezaDadosClinicos.OnKeyDown := nil;

                  //ABA FICHA DE EXERCICIO -- AQUI JA TEMOS A CERTEZA DE QUE O USUÁRIO NÃO É UM INSTRUTOR
                  pagFichaExercicios.TabVisible := TRUE;
                  btnNovoFicha.Visible := FALSE;
              END;


          END;
      END;

  end;


  {CONTROLE DE PAGECONTROLAVALIACOES}
  //AVALIAÇÃO ANAMNESE
  IF(DMODULE.confAvaAnamnese = TRUE)THEN
  BEGIN
    TabSheet1.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet1.TabVisible := FALSE;
  END;

  //AVALIAÇÃO FÍSICA
  IF(DMODULE.confAvaFisica = TRUE)THEN
  BEGIN
    TabSheet2.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet2.TabVisible := FALSE;
  END;

  //AVALIAÇÃO POSTURAL
  IF(DMODULE.confAvaPostural = TRUE)THEN
  BEGIN
    TabSheet3.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet3.TabVisible := FALSE;
  END;

  //AVALIAÇÃO DADOS CLÍNICOS
  IF(DMODULE.confAvaDadosClinicos = TRUE)THEN
  BEGIN
    TabSheet4.TabVisible := TRUE;
  END ELSE
  BEGIN
    TabSheet4.TabVisible := FALSE;
  END;

end;

function TF01001.getClassificacaoRCQ(rcq: Real; IDADE:  INTEGER; sexo: String): String;
begin
  //
 IF(SEXO = 'F')THEN
 BEGIN
    IF (IDADE <= 29) THEN
    BEGIN
                   IF (rcq < 0.71)THEN
                   BEGIN
                       RESULT := 'BAIXO';
                   END else
                   BEGIN
                       if(rcq <= 0.77)THEN
                       BEGIN
                           RESULT :=  'MODERADO';
                       END else
                       BEGIN
                           if(RCQ <= 0.82) THEN
                           BEGIN
                               RESULT := 'ALTO';
                           END else
                               RESULT := 'ELEVADO';

                       END
                   END;

    END;


    IF(IDADE <= 39)THEN
    BEGIN
                       IF (rcq < 0.72)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.78)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 0.84) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF (IDADE <= 49) THEN
    BEGIN
                       IF (rcq < 0.73)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.79)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 0.87) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF(IDADE <= 59)THEN
    BEGIN
                      IF (rcq < 0.74)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.81)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 0.88) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF (IDADE >= 60) THEN
    BEGIN
                      IF (rcq < 0.76)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.83)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 0.90) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

 END;


 IF(SEXO = 'M')THEN
 BEGIN
    IF (IDADE <= 29) THEN
    BEGIN
                   IF (rcq < 0.83)THEN
                   BEGIN
                       RESULT := 'BAIXO';
                   END else
                   BEGIN
                       if(rcq <= 0.88)THEN
                       BEGIN
                           RESULT :=  'MODERADO';
                       END else
                       BEGIN
                           if(RCQ <= 0.94) THEN
                           BEGIN
                               RESULT := 'ALTO';
                           END else
                               RESULT := 'ELEVADO';

                       END
                   END;

    END;


    IF(IDADE <= 39)THEN
    BEGIN
                       IF (rcq < 0.84)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.91)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 0.96) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF (IDADE <= 49) THEN
    BEGIN
                       IF (rcq < 0.88)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.95)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 1) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF(IDADE <= 59)THEN
    BEGIN
                      IF (rcq < 0.90)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.96)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 1.02) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

    IF (IDADE >= 60) THEN
    BEGIN
                      IF (rcq < 0.91)THEN
                       BEGIN
                           RESULT := 'BAIXO';
                       END else
                       BEGIN
                           if(rcq <= 0.98)THEN
                           BEGIN
                               RESULT :=  'MODERADO';
                           END else
                           BEGIN
                               if(RCQ <= 1.03) THEN
                               BEGIN
                                   RESULT := 'ALTO';
                               END else
                                   RESULT := 'ELEVADO';

                           END
                       END;
    END;

 END;


end;

procedure TF01001.editBModalidadeButtonClick(Sender: TObject;
  var query_result: TFDQuery);
begin
  inherited;
  query_result.ParamByName('idA').Value := (ClientDataSet1idAluno.AsInteger);
end;

procedure TF01001.EditBTreinoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;

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
  //aMsgDlg.Width := 350; //
  //aMsgDlg.Height := 200; //
  { Faz um loop varrendo os objetos do dialogo }
  for i := 0 to pred(aMsgDlg.ComponentCount) do
  begin
    if (aMsgDlg.Components[i] is TButton) then
    begin
      { Apenas entra na condição se o objeto for um button }
      dlgButton := TButton(aMsgDlg.Components[i]);
      //dlgButton.Width := 151; //
      if CaptionIndex > High(Captions) then//Captura o Index dos captions dos buttons criado no array
         Break;
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

procedure TF01001.OcultarSheets(PageControl: TPageControl);
var
    iPage: Integer;
begin
    for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

    if ( PageControl.PageCount > 0 ) then
    PageControl.ActivePage := PageControl.Pages[0];

    //PageControl.Style := tsButtons;
end;

procedure TF01001.pAnamneseBeforeUpdateRecord(Sender: TObject;
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
              for I := 0 to CDSAnamnese.FieldCount-1 do  //*
              begin
                  if (pfInKey in CDSAnamnese.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := CDSAnamnese.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := CDSAnamnese.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (CDSAnamnese.Fields[I].OldValue) <> (CDSAnamnese.Fields[I].NewValue))then //*
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
              {
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
               }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qAnamnese.SQL.Text)); //*
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
procedure TF01001.pFichaAlunoBeforeUpdateRecord(Sender: TObject;
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
              for I := 0 to CDSFichaAluno.FieldCount-1 do  //*
              begin
                  if (pfInKey in CDSFichaAluno.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := CDSFichaAluno.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := CDSFichaAluno.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (CDSFichaAluno.Fields[I].OldValue) <> (CDSFichaAluno.Fields[I].NewValue))then //*
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
             {
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
              }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(qFichaAluno.SQL.Text)); //*
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

procedure TF01001.pModalidadeBeforeUpdateRecord(Sender: TObject;
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
              for I := 0 to cdsModalidade.FieldCount-1 do  //*
              begin
                  if (pfInKey in cdsModalidade.fields[i].ProviderFlags) then  //*
                  begin
                    if(idRegistro = 0)then
                    begin
                      idRegistro := cdsModalidade.Fields[I].AsInteger;   //*
                    end else
                    begin
                      idRegistro2 := cdsModalidade.Fields[I].AsInteger;  //*
                      duasChavesPrimarias := true;
                    end;
                  end;
              end;

              for I := 0 to DeltaDS.FieldCount-1 do
              begin
                if( (cdsModalidade.Fields[I].OldValue) <> (cdsModalidade.Fields[I].NewValue))then //*
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
               {
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
              }
            end;
  end;


  //FINALIZA REGISTRO LOGSISTEMA
  DModule.cdsLogtabelaBanco.AsString := (GetTableNameFromSQL(QMODALIDADE.SQL.Text)); //*
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

procedure TF01001.pPagamentoBeforeUpdateRecord(Sender: TObject;
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
              {
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
              }
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

procedure TF01001.REPORT_ANAMNESEPATOLOGIABeforePrint(
  Sender: TfrxReportComponent);
var
  caminho : string;
begin
  inherited;
{
  // Foto na pasta local img_Aluno
  caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

  if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
  end else
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.Bitmap := cxImage1.Picture.Bitmap;
  end;
   }

end;

procedure TF01001.REPORT_ANAMNESEPATOLOGIAPreview(Sender: TObject);
var
caminho : string;
begin
  inherited;
{
// Foto na pasta local img_Aluno
  caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';

  if FileExists(caminho + ClientDataSet1idAluno.asstring + '.bmp')then
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.LoadFromFile(caminho + ClientDataSet1idAluno.asstring+ '.bmp');
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Stretched := true;

  end else
  begin
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Picture.Bitmap := cxImage1.Picture.Bitmap;
    TfrxPictureView(REPORT_ANAMNESEPATOLOGIA.FindObject('Picture1')).Stretched := false;

  end;
  }
end;

procedure TF01001.report_AvaFisicaBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  //showmessage(SENDER.Name);
  IF SENDER.Name = 'Chart1' then
  BEGIN
    TfrxChartView(SENDER).SeriesData[0].XSource :=
    'PesoMuscular; PesoGordo; PesoResidual; Peso Ósseo';

    TfrxChartView(SENDER).SeriesData[0].YSource :=
    cdsRelAvaFisicaPesoMuscular.AsString + ';' +
    cdsRelAvaFisicapesoGordura.AsString + ';' +
    cdsRelAvaFisicapesoResidual.AsString + ';' +
    cdsRelAvaFisicapesoOsseo.AsString + ';';
    //TfrxChartView(SENDER).SeriesData[0].Source3 := '$00011936;$00ED254E;$00F9DC5C;$002D52FF;';

    // Tira 3D
    //TfrxChartView(SENDER).chart.View3D := false;

  END;

  IF SENDER.Name = 'ChartSomatotipo' then
  BEGIN
    TfrxChartView(SENDER).SeriesData[0].XSource :=
    'ECTOMORFIA; MESOMORFIA; ENDOMORFIA';

    TfrxChartView(SENDER).SeriesData[0].YSource :=
    cdsRelAvaFisicasomatotipoEcto.AsString + ';' +
    cdsRelAvaFisicasomatotipoMeso.AsString + ';' +
    cdsRelAvaFisicasomatotipoEndo.AsString + ';';

  END;

  {IF SENDER.Name = 'memoProtocolo' then
  BEGIN
    TfrxMemoView(SENDER).Text := 'COMPOSIÇÃO CORPORAL - ' + ClientDataSet1descricaoprotocoloAvaFisica.AsString;
  END;}

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

procedure TF01001.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text :=
  'SELECT A.*, P.descricaoprotocoloAvaFisica, INST.NOMEUSUARIO AS NOMEINSTRUTORFICHA FROM ALUNO A '+
  'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR '+
  'LEFT OUTER JOIN PROTOCOLOAVAFISICA P ON P.IDPROTOCOLOAVAFISICA = A.IDPROTOCOLOAVAFISICA';
  FDQuery1.Open;
  //BPesquisar.Click;

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
                        cdsPagamento.Filtered := false;
                        cdsPagamento.Filter := 'IDALUNO =' + ClientDataSet1idAluno.AssTRING
                        + 'AND idmodalidade = ' + cdsModalidadeidmodalidade.AssTRING
                        + 'AND idstatusPagamento = 1';
                        cdsPagamento.Filtered := true;
                        cdsPagamento.First;
                        while not(cdsPagamento.eof)do
                        begin
                        cdsPagamento.Delete;
                        end;
                        cdsPagamento.Filtered := false;

                        cdsModalidade.Delete;

                        {
                        //// APAGA MENSALIDADES EM ABERTO
                        DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
                        DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
                        DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
                        DModule.qAux.Close;
                        DModule.qAux.ExecSQL;
                        cdsModalidade.Delete;
                        cdsPagamento.Refresh
                        }
                  end else
                  begin
                        //ShowMessage('Funfô não mano');
                  end;
                  Free;
            End;

        end else
        begin
          cdsPagamento.Filtered := false;
                        cdsPagamento.Filter := 'IDALUNO =' + ClientDataSet1idAluno.AssTRING
                        + 'AND idmodalidade = ' + cdsModalidadeidmodalidade.AssTRING
                        + 'AND idstatusPagamento = 1';
          cdsPagamento.Filtered := true;
          cdsPagamento.First;
          while not(cdsPagamento.eof)do
          begin
          cdsPagamento.Delete;
          end;
          cdsPagamento.Filtered := false;

          cdsModalidade.Delete;
            {
            // APAGA MENSALIDADES EM ABERTO
              DModule.qAux.SQL.Text := 'DELETE FROM PAGAMENTO WHERE IDALUNO =:IDA AND idmodalidade =:IDM AND idstatusPagamento = 1';
              DModule.qAux.ParamByName('IDA').AsInteger := ClientDataSet1idAluno.AsInteger;
              DModule.qAux.ParamByName('IDM').AsInteger := cdsModalidadeidmodalidade.AsInteger;
              DModule.qAux.Close;
              DModule.qAux.ExecSQL;
              cdsModalidade.Delete;
              cdsPagamento.Refresh
              }
        end;

      end;
  end ELSE
  BEGIN
    ShowMessage('Nenhuma Modalidade Selecionada.');
  END;

end;

procedure TF01001.btnNovaAnamnesClick(Sender: TObject);
begin
  inherited;

  //anamnese
  With TF01016.CreateNOVO(self, STRTOINT(DBEDIT1.Text), DBEDIT3.TEXT) do
  Begin
    ShowModal;
    Free;
  End;
  CDSAnamnese.CLOSE;
  CDSAnamnese.OPEN;

end;

procedure TF01001.btnNovaAvaFisicaClick(Sender: TObject);
begin
  inherited;

  //avaliação física
  With TF01017.CreateNOVO(self, STRTOINT(DBEDIT1.Text) {ClientDataSet1idAluno.AsInteger}, DBEDIT3.TEXT {ClientDataSet1NOMEAluno.ASSTRING}) do
  Begin
    ShowModal;
    Free;
  End;
  CDSAvaFisica.CLOSE;
  CDSAvaFisica.OPEN;

end;

procedure TF01001.btnNovoFichaClick(Sender: TObject);
begin
  inherited;
  With TF01014.CreateNOVO(self, STRTOINT(DBEDIT1.Text) {ClientDataSet1idAluno.AsInteger}, DBEDIT3.TEXT {ClientDataSet1NOMEAluno.ASSTRING}) do
  Begin
    ShowModal;
    Free;
  End;

  // REFRESH DBGRIDBELEZA3
  CDSFichaAluno.CLOSE;
  CDSFichaAluno.OPEN;

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
