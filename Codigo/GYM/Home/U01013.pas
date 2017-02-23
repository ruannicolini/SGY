unit U01013;

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
  TF01013 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QUERY: TFDQuery;
    PROVIDER: TDataSetProvider;
    DATASET: TClientDataSet;
    DATASOURCE: TDataSource;
    BTNOK: TSpeedButton;
    PanelStatus: TPanel;
    btnCANCELAR: TSpeedButton;
    Panel3: TPanel;
    DBGridBeleza1: TDBGridBeleza;
    QUERYidFichaPreDefinida: TIntegerField;
    QUERYdescricaoFicha: TStringField;
    QUERYdataComposicao: TDateField;
    DATASETidFichaPreDefinida: TIntegerField;
    DATASETdescricaoFicha: TStringField;
    DATASETdataComposicao: TDateField;
    dsFichaSerie: TDataSource;
    cdsFichaSerie: TClientDataSet;
    pFichaSerie: TDataSetProvider;
    QFICHASERIE: TFDQuery;
    QFICHASERIEidFichaPreDefinida: TIntegerField;
    QFICHASERIEidTreino: TIntegerField;
    QFICHASERIEidExercicio: TIntegerField;
    QFICHASERIEqtdSerie: TIntegerField;
    QFICHASERIEqtdRepeticao: TIntegerField;
    cdsFichaSerieidFichaPreDefinida: TIntegerField;
    cdsFichaSerieidTreino: TIntegerField;
    cdsFichaSerieidExercicio: TIntegerField;
    cdsFichaSerieqtdSerie: TIntegerField;
    cdsFichaSerieqtdRepeticao: TIntegerField;
    qSerie: TFDQuery;
    pSerie: TDataSetProvider;
    cdsSerie: TClientDataSet;
    qSerieidAluno: TIntegerField;
    qSerieidTreino: TIntegerField;
    qSerieidExercicio: TIntegerField;
    qSerieqtdSerie: TIntegerField;
    qSerieqtdRepeticao: TIntegerField;
    cdsSerieidAluno: TIntegerField;
    cdsSerieidTreino: TIntegerField;
    cdsSerieidExercicio: TIntegerField;
    cdsSerieqtdSerie: TIntegerField;
    cdsSerieqtdRepeticao: TIntegerField;
    DSSERIE: TDataSource;
    procedure btnCANCELARClick(Sender: TObject);
    procedure BTNOKClick(Sender: TObject);
    procedure DATASOURCEDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; IDA: INTEGER);

  end;

var
  F01013: TF01013;
  IDALUNO : INTEGER;

implementation

{$R *.dfm}

{ TF01011 }


{ TF01011 }

procedure TF01013.BTNOKClick(Sender: TObject);
begin
  //INSER��O NA TABELA S�RIE (DO ALUNO)
  TRY
      while NOT(cdsFichaSerie.Eof) do
      BEGIN
          cdsSerie.Append;

          cdsSerieidAluno.AsInteger := IDALUNO;
          cdsSerieidTreino.AsInteger := cdsFichaSerieidTreino.AsInteger;
          cdsSerieidExercicio.AsInteger := cdsFichaSerieidExercicio.AsInteger;
          cdsSerieqtdSerie.AsInteger := cdsFichaSerieqtdSerie.AsInteger;
          cdsSerieqtdRepeticao.AsInteger := cdsFichaSerieqtdRepeticao.AsInteger;
          cdsSerie.Post;
          cdsFichaSerie.Next;
      END;
      cdsSerie.ApplyUpdates(-1);

  except on E: Exception  do
        ShowMessage(e.message);
  END;

  ModalResult := mrOk;
end;

constructor TF01013.Create(AOwner: TComponent; IDA: INTEGER);
begin
  //
  inherited Create(AOwner);
  IDALUNO := IDA;

  //ABRE DATASET FICHA PREDEFINIDA
  DATASOURCE.DataSet.Close;
  DATASOURCE.DataSet.Open;

  // ABRE DATASET SERIE DO ALUNO
  qSerie.Parambyname('IDA').AsInteger := IDALUNO;
  dsSerie.DataSet.close;
  dsSerie.DataSet.open;
end;

procedure TF01013.DATASOURCEDataChange(Sender: TObject; Field: TField);
begin
  qFichaSerie.Parambyname('IDFP').AsInteger := DATASETidFichaPreDefinida.AsInteger;
  dsFichaSerie.DataSet.close;
  dsFichaSerie.DataSet.open;
end;

procedure TF01013.btnCANCELARClick(Sender: TObject);
begin

  ModalResult := mrCancel;
  //CLOSE;
end;

initialization
  RegisterClass(TF01013);
Finalization
  UnRegisterClass(TF01013);
end.