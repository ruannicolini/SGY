unit UPrincipalAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDataModule, Vcl.ExtCtrls, Web.HTTPApp,
  Web.HTTPProd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxCustomTileControl, cxClasses, dxTileControl, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  VclTee.TeeGDIPlus, VCLTee.TeeData, VCLTee.DBChart, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, dxMapControlTypes, dxMapControl;

type
  TFPrincipalAdmin = class(TForm)
    PanelPrincipal: TPanel;
    PanelMenu: TPanel;
    ScrollBox1: TScrollBox;
    dxTileControl1: TdxTileControl;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item4: TdxTileControlItem;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item5: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    dxTileControl1Item7: TdxTileControlItem;
    dxTileControl1Item8: TdxTileControlItem;
    dxTileControl1Item10: TdxTileControlItem;
    dxTileControl1Item11: TdxTileControlItem;
    dxTileControl1Item9: TdxTileControlItem;
    PanelTop: TPanel;
    PanelIndicadores: TPanel;
    ScrollBoxIndicadores: TScrollBox;
    ScrollBoxGrafico3: TScrollBox;
    Panel4: TPanel;
    fdGMatriculaModalidade: TFDQuery;
    cdsfdGMatriculaModalidade: TClientDataSet;
    pGMatriculaModalidade: TDataSetProvider;
    fdGMatriculaModalidadevalor: TLargeintField;
    fdGMatriculaModalidadetipo: TStringField;
    cdsfdGMatriculaModalidadevalor: TLargeintField;
    cdsfdGMatriculaModalidadetipo: TStringField;
    ScrollBoxGrafico1: TScrollBox;
    Panel2: TPanel;
    ScrollBoxGrafico2: TScrollBox;
    Panel1: TPanel;
    ChartFaturamento: TChart;
    FastLineSeries1: TFastLineSeries;
    ChartObjetivo: TChart;
    PieSeries2: TPieSeries;
    ChartIdade: TChart;
    Series1: TBarSeries;
    ChartAlunoModalidade: TChart;
    BarSeries1: TBarSeries;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation

{$R *.dfm}

uses ActiveX;

{
// TIRA O SCROLL DO TWebBrowser
procedure TFPrincipalAdmin.wbGraficoObjetivosDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  //tira scroll do TWebBrowser
  wbGraficoObjetivos.OleObject.Document.body.Scroll:= 'no';
end;
}

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
var
  Serie : TChartSeries;
begin
  {Chart1.SeriesList.ClearValues;
  Chart1.SeriesList.Clear;
  Serie := TLineSeries.Create(nil);;
  Serie.Color := clteecolor;
  Serie.Title := 'Leandro S. Costa';
  Serie.Marks.Visible := True;
  Serie.Marks.Style := smsValue;
  Serie.Pen.Width := 2;   Chart1.AddSeries(Serie);
  Chart1.Series[0].AddY(150,'Janeiro',clteecolor);
  Chart1.Series[0].AddY(250,'Fevereiro',clteecolor);
  Chart1.Series[0].AddY(396.39,'Março',clteecolor);  }

  // GRAFICO ALUNO-MODALIDADE
  DModule.qAux.SQL.Text :=
  'select count(*) AS valor, mo.descricaoModalidade AS tipo from alunomodalidade am '+
  'left outer join modalidade mo on mo.idmodalidade = am.idmodalidade '+
  'group by am.idModalidade';
  DModule.qAux.close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    while not(DModule.qAux.Eof)do
    begin
      ChartAlunoModalidade.Series[0].AddY(
      DModule.qAux.FieldByName('valor').AsFloat,  // valor
      DModule.qAux.FieldByName('tipo').AsString, //legenda
      clteecolor
      );
      DModule.qAux.Next;
    end;
  end;

  // GRAFICO ALUNO-OBJETIVO
  DModule.qAux.SQL.Text :=
  'SELECT COUNT(*) AS VALOR, O.DESCRICAOOBJETIVO AS TIPO FROM ANAMNESE AN '+
  'LEFT OUTER JOIN OBJETIVO O ON O.IDOBJETIVO = AN.IDOBJETIVO '+
  'WHERE AN.idAnamnese IN (SELECT MAX(IDANAMNESE) FROM ANAMNESE ANAM '+
  'GROUP BY IDALUNO order by dataAnamnese DESC, idAnamnese DESC)'+
  'group by AN.IDOBJETIVO';
  DModule.qAux.close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    while not(DModule.qAux.Eof)do
    begin
      ChartObjetivo.Series[0].AddY(
      DModule.qAux.FieldByName('valor').AsFloat,  // valor
      DModule.qAux.FieldByName('tipo').AsString, //legenda
      clteecolor
      );
      DModule.qAux.Next;
    end;
  end;

  // GRAFICO FATURAMENTO
  DModule.qAux.SQL.Text :=
  'SELECT EXTRACT(YEAR_MONTH FROM P.dataPagamento) AS MESANO, SUM(P.valorCobrado) as valor FROM PAGAMENTO P '+
  'WHERE P.idstatusPagamento = 2 and (P.dataPagamento < now())' +
  'GROUP BY EXTRACT(YEAR_MONTH FROM P.dataPagamento) LIMIT 12';
  DModule.qAux.close;
  DModule.qAux.open;
  //showmessage(inttostr(DModule.qAux.RecordCount));
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    while not(DModule.qAux.Eof)do
    begin
      ChartFaturamento.Series[0].AddY(
      DModule.qAux.FieldByName('valor').AsFloat,  // valor
      DModule.qAux.FieldByName('MESANO').AsString, //legenda
      clteecolor
      );
      DModule.qAux.Next;
    end;
  end;

end;

initialization
  RegisterClass(TFPrincipalAdmin);
Finalization
  UnRegisterClass(TFPrincipalAdmin);
end.
