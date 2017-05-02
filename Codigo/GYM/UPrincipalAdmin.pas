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
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, dxMapControlTypes, dxMapControl,
  dxImageSlider, Vcl.ComCtrls, cxContainer, cxEdit, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza;

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
    ScrollBoxIndAluno: TScrollBox;
    PageControlIndicadores: TPageControl;
    tbsIndAluno: TTabSheet;
    tbsIndFat: TTabSheet;
    ScrollBoxGrafico1: TScrollBox;
    Panel2: TPanel;
    ChartAlunoModalidade: TChart;
    BarSeries1: TBarSeries;
    Panel3: TPanel;
    ScrollBoxGrafico2: TScrollBox;
    Panel1: TPanel;
    ChartFaturamento: TChart;
    FastLineSeries1: TFastLineSeries;
    ScrollBoxGrafico3: TScrollBox;
    Panel4: TPanel;
    ChartObjetivo: TChart;
    PieSeries2: TPieSeries;
    ScrollBoxIndFaturamento: TScrollBox;
    ScrollBox5: TScrollBox;
    Panel7: TPanel;
    Panel5: TPanel;
    PanelCabecarioGrafFatMes: TPanel;
    ChartFaturamentoMes: TChart;
    PieSeries1: TPieSeries;
    DateTimePicker1: TDateTimePicker;
    qProf: TFDQuery;
    pProf: TDataSetProvider;
    cdsProf: TClientDataSet;
    dsProf: TDataSource;
    qProfIDUSUARIO: TIntegerField;
    qProfNOMEUSUARIO: TStringField;
    qProfQTDALUNO: TLargeintField;
    cdsProfIDUSUARIO: TIntegerField;
    cdsProfNOMEUSUARIO: TStringField;
    cdsProfQTDALUNO: TLargeintField;
    cdsProfqtfFichasAtrasadas: TIntegerField;
    DBGridBeleza1: TDBGridBeleza;
    ChartIdade: TChart;
    BarSeries2: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure cdsProfCalcFields(DataSet: TDataSet);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item11Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item10Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraGraficoFatMes(mes,ano:Tdate);
    procedure CriarForm(Tela, Desc: String);
    function fncAlturaBarraTarefas: Integer;
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation

{$R *.dfm}

uses ubase, vcl.themes, vcl.styles, U01009, ShellApi, uFuncao,
  UHPI, math, ActiveX;

{
// TIRA O SCROLL DO TWebBrowser
procedure TFPrincipalAdmin.wbGraficoObjetivosDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  //tira scroll do TWebBrowser
  wbGraficoObjetivos.OleObject.Document.body.Scroll:= 'no';
end;
}

procedure TFPrincipalAdmin.cdsProfCalcFields(DataSet: TDataSet);
begin
  DModule.qAux.SQL.Text :=
  'select COUNT(*) AS QTDFICHASATRASO from aluno a '+
  'left outer join fichaAluno fa on fa.idaluno = a.idaluno '+
  'left outer join usuario inst on inst.idusuario = a.idInstrutor '+
  'where A.IDINSTRUTOR =:IDINST '+
  'AND ( '+
  '(A.IDALUNO NOT IN (SELECT idAluno FROM FICHAALUNO)) '+
  'OR '+
  '(    curdate() > '+
  'DATE_ADD(fa.dataComposicao, INTERVAL (SELECT VENCIMENTOFICHA FROM configuracaounidade WHERE idConfiguracaoUnidade = 1) MONTH)   ) '+
  ')';

  DModule.qAux.ParamByName('IDINST').AsInteger := cdsProfIDUSUARIO.AsInteger;
  DModule.qAux.close;
  DModule.qAux.open;

  cdsProfqtfFichasAtrasadas.AsInteger :=
  DModule.qAux.FieldByName('QTDFICHASATRASO').AsInteger;

end;

procedure TFPrincipalAdmin.CriarForm(Tela, Desc: String);
var
  PClass : TPersistentClass;
begin
  PClass := GetClass('T' + trim(Tela));
  if (PCLass <> nil) then
  begin
    FPrincipalAdmin.Caption :='SOGYM - Software de Gestão para Academia - ' + DESC;
    caption := 'SOGYM - Software de Gestão para Academia - ' + DESC;

    with tFormClass(PClass).Create(Application) do
      try
        Name := Tela;
        Caption := Tela + ' - ' + Desc;

        //Oculta a Barra de Titulo
        SetWindowLong(Handle,
                  GWL_STYLE,
                  GetWindowLong(Handle,GWL_STYLE) and not WS_CAPTION);


        //Laugura
        Width := (Screen.Width);

        //Altura = altura da tela - Altura do Panel Menu - Altura Barra de Tarefas - Altura barra de tituto do formPrincipal
        //*Frame Com panel da FPrincipal a mostra
        //Height := (Screen.Height) - (FPrincipal.Panel.Height) - fncAlturaBarraTarefas - GetSystemMetrics(SM_CYCAPTION) - 2;
        //*Altura Frame Completo
        Height := Screen.Height - fncAlturaBarraTarefas - GetSystemMetrics(SM_CYCAPTION) - 2;

        //Alinha o Frame no final da tela
        Align := alBottom;

        //Frame Meio Transparente
        //AlphaBlend := true;
        //AlphaBlendValue := 200;

        //Mostra
        ShowModal;
      finally
        FPrincipalAdmin.Caption := 'SOGYM - Software de Gestão para Academia';
        Caption := 'SOGYM - Software de Gestão para Academia';

        Free;
        tFormClass(PClass) := nil;
      end;
      FPrincipalAdmin.Caption := 'SOGYM - Software de Gestão para Academia';
      Caption := 'SOGYM - Software de Gestão para Academia';
   end;
end;

procedure TFPrincipalAdmin.DateTimePicker1Change(Sender: TObject);
begin

  //Gera Gráfico
  TThread.CreateAnonymousThread(
  procedure ()
  begin
      geraGraficoFatMes(DateTimePicker1.Date,DateTimePicker1.Date);

      TThread.Synchronize (TThread.CurrentThread,
      procedure ()
      begin
          //
      end);
      // .free aqui!!!
  end
  ).Start;

end;

procedure TFPrincipalAdmin.dxTileControl1Item10Click(
  Sender: TdxTileControlItem);
begin
  CriarForm('F01012', 'Modalidade');
end;

procedure TFPrincipalAdmin.dxTileControl1Item11Click(
  Sender: TdxTileControlItem);
begin
  if(DModule.administrador = true)then
  begin
        try
            With TF01009.Create(self) do
            Begin
              ShowModal;
            End;
            ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Application.ExeName) + '\backup'),nil,nil,SW_SHOWMAXIMIZED);
        except
          ON E: Exception DO
          begin
              ShowMessage(E.Message);
          end;
        end;
  end else
  begin
       ShowMessage('Permissão Negada');
  end;
end;

procedure TFPrincipalAdmin.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01001', 'Aluno');
end;

procedure TFPrincipalAdmin.dxTileControl1Item2Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01003', 'Equipamento');
end;

procedure TFPrincipalAdmin.dxTileControl1Item3Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01006', 'Exercício');
end;

procedure TFPrincipalAdmin.dxTileControl1Item4Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01002', 'Pagamento');
end;

procedure TFPrincipalAdmin.dxTileControl1Item5Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01004', 'Grupo de Exercício');
end;

procedure TFPrincipalAdmin.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01007', 'Patologias e Relatos Físicos');
end;

procedure TFPrincipalAdmin.dxTileControl1Item7Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01005', 'Ficha');
end;

procedure TFPrincipalAdmin.dxTileControl1Item8Click(Sender: TdxTileControlItem);
begin
  CriarForm('F01008', 'Usuário');
end;

function TFPrincipalAdmin.fncAlturaBarraTarefas: Integer;
var
  rRect: TRect;
  rBarraTarefas: HWND;
begin
  //Localiza o Handle da barra de tarefas
  rBarraTarefas := FindWindow('Shell_TrayWnd', nil);

  //Pega o "retângulo" que envolve a barra e sua altura
  GetWindowRect(rBarraTarefas, rRect);

  //Retorna a altura da barra
  Result := rRect.Bottom - rRect.Top;
end;

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
var
  Serie : TChartSeries;
begin

  if(Dmodule.administrador = true)then
  begin
      //Gera Gráfico
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          //PESQUISA PROFESSORES DE MUSCULAÇÃO
          qProf.Params[0].AsInteger := 1;
          DSProf.DataSet.close;
          DSProf.DataSet.open;

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
          ChartAlunoModalidade.SeriesList.ClearValues;
          DModule.qAux.SQL.Text :=
          'select count(*) AS valor, mo.descricaoModalidade AS tipo from alunomodalidade am '+
          'left outer join modalidade mo on mo.idmodalidade = am.idmodalidade '+
          'group by am.idModalidade';
          DModule.qAux.close; DModule.qAux.open;
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
          ChartObjetivo.SeriesList.ClearValues;
          DModule.qAux.SQL.Text :=
          'SELECT COUNT(*) AS VALOR, O.DESCRICAOOBJETIVO AS TIPO FROM ANAMNESE AN '+
          'LEFT OUTER JOIN OBJETIVO O ON O.IDOBJETIVO = AN.IDOBJETIVO '+
          'WHERE AN.idAnamnese IN (SELECT MAX(IDANAMNESE) FROM ANAMNESE ANAM '+
          'GROUP BY IDALUNO order by dataAnamnese DESC, idAnamnese DESC)'+
          'group by AN.IDOBJETIVO';
          DModule.qAux.close; DModule.qAux.open;
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

          // GRAFICO FATURAMENTO 12 MESES
          ChartFaturamento.SeriesList.ClearValues;
          DModule.qAux.SQL.Text :=
          'SELECT EXTRACT(YEAR_MONTH FROM P.dataPagamento) AS MESANO, SUM(P.valorCobrado) as valor FROM PAGAMENTO P '+
          'WHERE P.idstatusPagamento = 2 and (P.dataPagamento < now())' +
          'GROUP BY EXTRACT(YEAR_MONTH FROM P.dataPagamento) LIMIT 12';
          DModule.qAux.close; DModule.qAux.open;
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

          { GRAFICO FATURAMENTO MES }
          geraGraficoFatMes( date, date);  //StrToDate('01/04/2017)'

          // GRAFICO IDADE
          ChartIdade.SeriesList.ClearValues;
          DModule.qAux.SQL.Text :=
          'select case                                                                               '+
          'when truncate(datediff(curdate(),c.dataNascimento) / 365.25, 0) <= 10 then                '+
          '  "ate 10"                                                                                '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  between 11 and 20 then '+
          '  "de 11 a 20"                                                                            '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  between 21 and 30 then '+
          '  "de 21 a 30"                                                                            '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  between 41 and 50 then '+
          '  "de 41 a 50"                                                                            '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  between 51 and 60 then '+
          '  "de 51 a 60"                                                                            '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  between 61 and 70 then '+
          ' "de 61 a 70"                                                                             '+
          'when  truncate(datediff(curdate(), c.datanascimento) / 365.25, 0)  > 70 then              '+
          ' "maior que 70"                                                                           '+
          'end as idade                                                                              '+
          ', count(c.idaluno) as valor                                                               '+
          'from aluno c                                                                              '+
          'WHERE C.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE)                                  '+
          'group by 1';

          DModule.qAux.close; DModule.qAux.open;
          if(DModule.qAux.RecordCount > 0)then
          begin
            DModule.qAux.First;
            while not(DModule.qAux.Eof)do
            begin
              ChartIdade.Series[0].AddY(
              DModule.qAux.FieldByName('valor').AsFloat,  // valor
              DModule.qAux.FieldByName('idade').AsString, //legenda
              clteecolor
              );
              DModule.qAux.Next;
            end;
          end;


          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //fazer depois que acabar o processo

          end);
          // .free aqui!!

      end
      ).Start;

  end else
  begin
    //PageControlIndicadores.Visible := false;
    tbsIndAluno.TabVisible := false;
    tbsIndFat.TabVisible := false;
  end;

end;

procedure TFPrincipalAdmin.geraGraficoFatMes(mes, ano: Tdate);
var
  strMes, strAno: String;
begin

  //conversão date do delphi para dateMysql
  strMes := FormatDateTime('yyyy-mm-dd',mes);
  strAno := FormatDateTime('yyyy-mm-dd',ano);

  // reseta valore do gráfico
  ChartFaturamentoMes.SeriesList.ClearValues;

  //Pago
  DModule.qAux.SQL.Text :=
  'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorModalidade) AS VALOR FROM PAGAMENTO M '+
  'LEFT OUTER JOIN statuspagamento SP ON SP.idStatusPagamento = M.idStatusPagamento '+
  'WHERE M.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE) '+
  'AND (M.idstatusPagamento = 2) '+
  'AND ( month(M.dataVencimento) = MONTH( "'+ strMes +'" )) '+
  'AND ( year(M.dataVencimento) = YEAR( "'+ strAno +'" )) '+
  'group by M.idstatusPagamento' ;
  DModule.qAux.close; DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    ChartFaturamentoMes.Series[0].AddY(
    DModule.qAux.FieldByName('valor').AsFloat,  // valor
    'RECEBIDO', //legenda
    clteecolor
    );
  end;
  //Isento
  DModule.qAux.SQL.Text :=
  'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorModalidade) AS VALOR FROM PAGAMENTO M '+
  'LEFT OUTER JOIN statuspagamento SP ON SP.idStatusPagamento = M.idStatusPagamento '+
  'WHERE M.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE) '+
  'AND (M.idstatusPagamento = 3) '+
  'AND ( month(M.dataVencimento) = MONTH( "'+ strMes +'" )) '+
  'AND ( year(M.dataVencimento) = YEAR( "'+ strAno +'" )) '+
  'group by M.idstatusPagamento' ;
  DModule.qAux.close; DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    ChartFaturamentoMes.Series[0].AddY(
    DModule.qAux.FieldByName('valor').AsFloat,  // valor
    DModule.qAux.FieldByName('tipo').AsString, //legenda
    clteecolor
    );
  end;
  //EM ATRASO
  DModule.qAux.SQL.Text :=
  'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorModalidade) AS VALOR FROM PAGAMENTO M '+
  'LEFT OUTER JOIN statuspagamento SP ON SP.idStatusPagamento = M.idStatusPagamento '+
  'WHERE M.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE) '+
  'AND (M.idstatusPagamento = 1) AND (M.dataVencimento < NOW()) '+
  'AND ( month(M.dataVencimento) = MONTH( "'+ strMes +'" )) '+
  'AND ( year(M.dataVencimento) = YEAR( "'+ strAno +'" )) '+
  'group by M.idstatusPagamento';
  DModule.qAux.close; DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    ChartFaturamentoMes.Series[0].AddY(
    DModule.qAux.FieldByName('valor').AsFloat,  // valor
    'EM ATRASO', //legenda
    clteecolor
    );
  end;
  //EM ABERTO NÃO ATRASADO
  DModule.qAux.SQL.Text :=
  'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorModalidade) AS VALOR FROM PAGAMENTO M '+
  'LEFT OUTER JOIN statuspagamento SP ON SP.idStatusPagamento = M.idStatusPagamento '+
  'WHERE M.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE) '+
  'AND (M.idstatusPagamento = 1) AND (M.dataVencimento > NOW()) '+
  'AND ( month(M.dataVencimento) = MONTH( "'+ strMes +'" )) '+
  'AND ( year(M.dataVencimento) = YEAR( "'+ strAno +'" )) '+
  'group by M.idstatusPagamento';
  DModule.qAux.close; DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    DModule.qAux.First;
    ChartFaturamentoMes.Series[0].AddY(
    DModule.qAux.FieldByName('valor').AsFloat,  // valor
    'EM ABERTO', //legenda
    clteecolor
    );
  end;
end;

initialization
  RegisterClass(TFPrincipalAdmin);
Finalization
  UnRegisterClass(TFPrincipalAdmin);
end.
