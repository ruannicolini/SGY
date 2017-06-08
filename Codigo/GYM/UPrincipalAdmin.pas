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
  DBGridBeleza, cxImage, dxGDIPlusClasses, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, IdHashMessageDigest, iniFiles, DateUtils,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, VCLTee.TeCanvas, XiButton,
  Vcl.XPMan, Vcl.AppEvnts, dxTaskbarProgress,
  cxLabel;

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
    Principal: TTabSheet;
    cxImage1: TcxImage;
    Panel6: TPanel;
    PanelNomeUsuario: TcxLabel;
    AE_erros: TApplicationEvents;
    Panel8: TPanel;
    ChartFaturamentoMes: TChart;
    PieSeries3: TPieSeries;
    Panel9: TPanel;
    DateTimePicker1: TDateTimePicker;
    Panel5: TPanel;
    PanelCabecarioGrafFatMes: TPanel;
    DateTimePicker5: TDateTimePicker;
    labelValorFatDia: TcxLabel;
    Image1: TImage;
    Panel10: TPanel;
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure AE_errosException(Sender: TObject; E: Exception);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure dxTileControl1Item9Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraGraficoFatMes(mes,ano:Tdate);
    procedure geratodosGraficos();
    procedure CriarForm(Tela, Desc: String);
    function fncAlturaBarraTarefas: Integer;
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation

{$R *.dfm}

uses ubase, vcl.themes, vcl.styles, U01009, ShellApi, uFuncao,
  UHPI, math, ActiveX, UConfig;

{
// TIRA O SCROLL DO TWebBrowser
procedure TFPrincipalAdmin.wbGraficoObjetivosDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  //tira scroll do TWebBrowser
  wbGraficoObjetivos.OleObject.Document.body.Scroll:= 'no';
end;
}

procedure TFPrincipalAdmin.AE_errosException(Sender: TObject; E: Exception);
begin
  showmessage('ERRO: ' + E.ClassName + #13 + 'MENSAGEM: ' + E.Message)
end;

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
  ' fa.dataVencimento )' +  // esse ou o de baixo
//  'DATE_ADD(fa.dataComposicao, INTERVAL (SELECT VENCIMENTOFICHA FROM configuracaounidade WHERE idConfiguracaoUnidade = 1) MONTH)   ) '+
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

procedure TFPrincipalAdmin.DateTimePicker5Change(Sender: TObject);
begin

  DModule.qAux.SQL.Text := 'select IFNULL( sum(p.valorCobrado),0) AS VALOR from pagamento p where p.dataPagamento =:DAT';
  DModule.qAux.ParamByName('DAT').AsString := FormatDateTime('yyyy-mm-dd',DateTimePicker5.Date);
  DModule.qAux.Close;
  DModule.qAux.Open;
  labelValorFatDia.Caption := 'R$ ' + DModule.qAux.FieldByName('VALOR').AsString;

end;

procedure TFPrincipalAdmin.DateTimePicker1Change(Sender: TObject);
begin
  //Gera Gráfico
  geraGraficoFatMes(DateTimePicker1.Date,DateTimePicker1.Date);

end;

procedure TFPrincipalAdmin.dxTileControl1Item10Click(
  Sender: TdxTileControlItem);
begin
  CriarForm('F01012', 'Modalidade');

  // Gera os gráficos para o administrados
  if(DModule.administrador =  true)then
  begin
      //Gera Gráfico por thread
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          //geratodosGraficos;
          geratodosGraficos;

          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //
              geratodosGraficos;
          end);
          // .free aqui!!!
      end
      ).Start;
  end;

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
            //ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Application.ExeName) + '\backup'),nil,nil,SW_SHOWMAXIMIZED);
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

  // Gera os gráficos para o administrados
  if(DModule.administrador =  true)then
  begin
      //Gera Gráfico por thread
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          //geratodosGraficos;
          geratodosGraficos;

          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //
              geratodosGraficos;
          end);
          // .free aqui!!!
      end
      ).Start;
  end;

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

  // Gera os gráficos para o administrados
  if(DModule.administrador =  true)then
  begin
      //Gera Gráfico por thread
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          //geratodosGraficos;
          geratodosGraficos;

          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //
              geratodosGraficos;
          end);
          // .free aqui!!!
      end
      ).Start;
  end;

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

  // Gera os gráficos para o administrados
  if(DModule.administrador =  true)then
  begin
      //Gera Gráfico por thread
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          //geratodosGraficos;
          geratodosGraficos;

          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //
              geratodosGraficos;
          end);
          // .free aqui!!!
      end
      ).Start;
  end;

end;

procedure TFPrincipalAdmin.dxTileControl1Item9Click(Sender: TdxTileControlItem);
begin
  if(DModule.administrador = true)then
  begin
        try
            With TFConfig.Create(self) do
            Begin
              ShowModal;
            End;
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

procedure TFPrincipalAdmin.FormCreate(Sender: TObject);
var
  Hora: Integer;
  Data : TDateTime;
  HashGeradoAgora, geradoConfig, Serial : String;
  Arquivo: TIniFile;
  username, senha : string;
  CaminhoDB, LoginDB, SenhaDB : String;

begin
  {IMPEDE QUE DUAS INSTANCIAS DO MESMO PROGRAMA SEJAM CRIADAS}
  CreateMutex(nil, False, 'SoftCast.OnlyOne'); //cria um mutex usando um nome único
  if GetLastError = ERROR_ALREADY_EXISTS then  //verifica se houve erro na criação
  begin
    MessageBox(0, 'Este programa já está sendo executado','Aviso', MB_ICONSTOP);
    Halt(0); // cancela execução
    exit
  end;

 {
  //ATRIBUI TEMPORARIAMENTO O USUARIO ADMIN    << PARA TESTES
    DModule.idTipoUsuario := 1;
    DModule.idusuario := 1;
    DModule.username := 'ADMIN';
    DModule.nomeusuario := 'ADMINISTRADOR';
    DModule.administrador := true;
    // FIM DE TESTE

     }
  //Obtem Serial HD
  with GetHPI(Application.ExeName[1]) do
  begin
    serial := SerialNumber;
  end;

  Hora := HourOf(Now);
  Data := Date();
  HashGeradoAgora := MD5(IntToStr(Hora) + DateToStr(Data) + Serial);

  Arquivo := TIniFile.Create(GetCurrentDir+'\Config.ini');
  GeradoConfig := Arquivo.ReadString('Login', 'Numero', GeradoConfig);

  //ShowMessage('HASH gerado agora:  '+ HashGeradoAgora + #13 + 'arquivo config.ini:  ' + GeradoConfig);

  if ((HashGeradoAgora) <> (GeradoConfig)) then
  begin
      ShowMessage('Acesso Negado!');
      Application.Terminate;
  end else
  begin
      //Login - MySQL (user e password)
      CaminhoDB := Arquivo.ReadString('Config', Crip('Caminho'), CaminhoDB);
      LoginDB := Arquivo.ReadString('Config', Crip('Login'), LoginDB);
      SenhaDB := Arquivo.ReadString('Config', Crip('Senha'), SenhaDB);
      DModule.FDConnection.Params.Values['SERVER'] :=  Crip(CaminhoDB);
      DMODULE.FDConnection.Params.UserName := Crip(LoginDB);
      DMODULE.FDConnection.Params.Password := Crip(SenhaDB);

      // LOGIN - Controle de Acesso DE USUÁRIO
      username := CRIP(Arquivo.ReadString('Login', 'username', username));
      senha := MD5(CRIP(Arquivo.ReadString('Login', 'userpassword', senha)));

      //Obtem Dados do Usuário (username, senha, idTipoUsuario)
      //Dmodule.idTipoUsuario := 0;
      Dmodule.qAux.close;
      Dmodule.qAux.SQL.Text := 'select * from usuario where username =:idUsuario and senha=:idSenha';
      Dmodule.qAux.ParamByName('idUsuario').Value := username;
      Dmodule.qAux.ParamByName('idSenha').Value := senha;
      Dmodule.qAux.open;
      Dmodule.idUsuario := Dmodule.qAux.FieldByName('idUsuario').AsInteger;
      Dmodule.nomeusuario := Dmodule.qAux.FieldByName('nomeUsuario').AsString;
      Dmodule.username := Dmodule.qAux.FieldByName('username').AsString;
      Dmodule.senha := Dmodule.qAux.FieldByName('senha').AsString;
      //FUNCIONALIDADES QUE O USUÁRIOS ESTA HAPITO A DESEMPENHAR
      DModule.administrador := Dmodule.qAux.FieldByName('administrador').AsBoolean;
      DModule.instrutor := Dmodule.qAux.FieldByName('instrutor').AsBoolean;
      DModule.atendente := Dmodule.qAux.FieldByName('atendente').AsBoolean;
      DModule.avaliador := Dmodule.qAux.FieldByName('avaliador').AsBoolean;
      PanelNomeUsuario.Caption := Dmodule.nomeusuario;

      {showmessage(
      'admin:' + Dmodule.qAux.FieldByName('administrador').asstring + #13 +
      'instrutor:' + Dmodule.qAux.FieldByName('instrutor').asstring + #13 +
      'atendente:' + Dmodule.qAux.FieldByName('atendente').asstring + #13 +
      'avaliador:' + Dmodule.qAux.FieldByName('avaliador').asstring + #13
      );

      showmessage(
      'admin:' + booltostr(DModule.administrador) + #13 +
      'instrutor:' + booltostr(DModule.instrutor) + #13 +
      'atendente:' + booltostr(DModule.atendente) + #13 +
      'avaliador:' + booltostr(DModule.avaliador)
      );   }

      // VERIFICA SE USUÁRIO ESTA ATIVO ATUALMENTE
      if ( Dmodule.qAux.FieldByName('ativo').AsBoolean = FALSE ) then
      begin
          ShowMessage('Usuário não está ativo no sistema.');
          Application.Terminate;
      end;

      //Obtem Dados de acesso doS TIPOS DE USUÁRIOS VINCULADOS
      DModule.qAcesso.Close;
      DModule.qAcesso.SQL.Text := 'select s.*, i.idinterface as interface, m.idmodulo as modulo from seguranca s ';
      DModule.qAcesso.SQL.Add('left outer join interface i on i.idinterface = s.idinterface ');
      DModule.qAcesso.SQL.Add('left outer join modulo m on m.idmodulo = i.idmodulo ');
      DModule.qAcesso.SQL.Add('where (   (1<>1) ');
      if(Dmodule.administrador = true )then
      DModule.qAcesso.SQL.Add(' or (idTipoUsuario = 1) ');
      if(Dmodule.instrutor = true )then
      DModule.qAcesso.SQL.Add(' or (idTipoUsuario = 2) ');
      if(Dmodule.atendente = true )then
      DModule.qAcesso.SQL.Add(' or (idTipoUsuario = 3) ');
      if(Dmodule.avaliador = true )then
      DModule.qAcesso.SQL.Add(' or (idTipoUsuario = 4) ');
      DModule.qAcesso.SQL.Add(')');
      DModule.cdsAcesso.Close;
      DModule.cdsAcesso.Open;
      DModule.cdsAcesso.First;

      //ATRIBUI DATAHOJE
      DModule.qAux.SQL.Text := 'select CURDATE() AS DATAHOJE';
      DModule.qAux.Close;
      DModule.qAux.Open;
      DModule.dataHoje := DModule.qAux.FieldByName('DATAHOJE').AsDateTime;

      //OBTEM DADOS DE CONFIGURAÇÃO
      Dmodule.qAux.close;
      Dmodule.qAux.SQL.Text := 'select * from configuracaounidade where IDconfiguracaounidade = 1';
      Dmodule.qAux.open;
      DMODULE.confVecimentoFicha := DModule.qAux.FieldByName('vencimentoFicha').AsInteger;
      DMODULE.confVideoYoutube := DModule.qAux.FieldByName('videoYoutube').AsBoolean;
      DMODULE.confAvaAnamnese := DModule.qAux.FieldByName('avaAnamnese').AsBoolean;
      DMODULE.confAvaFisica := DModule.qAux.FieldByName('avaFisica').AsBoolean;
      DMODULE.confAvaPostural := DModule.qAux.FieldByName('avaPostural').AsBoolean;
      DMODULE.confAvaDadosClinicos := DModule.qAux.FieldByName('avaDadosClinicos').AsBoolean;
      DMODULE.confservidorImagens := DModule.qAux.FieldByName('servidorImagens').AsBoolean;

      // HABILITA AS ABAS DE INDICADORES
      if(DMODULE.administrador = TRUE)then
      begin
        tbsIndAluno.TabVisible := true;
        tbsIndfat.TabVisible := true;
      end;

  end;

  //Apaga Numero de acesso Gerado
  Arquivo := TIniFile.Create(GetCurrentDir+'\Config.ini');
  Arquivo.EraseSection('Login');
  Arquivo.Free;

end;

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
begin

  // Gera os gráficos para o administrados
  if(DModule.administrador =  true)then
  begin
      geratodosGraficos;
  end;

  //Apenas por segurança, esse codigo garante que os eventos do mysql sempre estarão ativos ao executar o programa;
  DModule.qAux.SQL.Text := 'set global event_scheduler = on';
  DModule.qAux.Close;
  DModule.qAux.ExecSQL;
end;

procedure TFPrincipalAdmin.geraGraficoFatMes(mes, ano: Tdate);
var
  strMes, strAno: String;
begin

  try
      //conversão date do delphi para dateMysql
      strMes := FormatDateTime('yyyy-mm-dd',mes);
      strAno := FormatDateTime('yyyy-mm-dd',ano);
       {
      showmessage('Mes: ' + strmes + #13 + 'Ano: ' + strAno);
      showmessage('Mes: ' + MonthOf(Mes).ToString + #13 + 'Ano: ' + YearOf(Ano).ToString );
      }

      // reseta valore do gráfico
      ChartFaturamentoMes.SeriesList.ClearValues;

      //Pago
      DModule.qAux.SQL.Text :=
      'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorCobrado) AS VALOR FROM PAGAMENTO M '+
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
        { $006B402B } clteecolor
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
        { $00637B1D } clteecolor
        );
      end;
      //EM ABERTO NÃO ATRASADO
      DModule.qAux.close;
      DModule.qAux.SQL.Text :=
      'SELECT SP.descricaoStatusPagamento AS TIPO, COUNT(*) AS QTD, SUM(M.valorModalidade) AS VALOR FROM PAGAMENTO M '+
      'LEFT OUTER JOIN statuspagamento SP ON SP.idStatusPagamento = M.idStatusPagamento '+
      'WHERE M.IDALUNO IN (SELECT IDALUNO FROM ALUNOMODALIDADE) '+
      'AND (M.idstatusPagamento = 1) AND (M.dataVencimento > NOW()) '+
      'AND ( month(M.dataVencimento) = MONTH( "'+ strMes +'" )) '+
      'AND ( year(M.dataVencimento) = YEAR( "'+ strAno +'" )) '+
      'group by M.idstatusPagamento';
      //showmessage(q4.SQL.Text);
      DModule.qAux.open;
      DModule.qAux.First;
      if(DModule.qAux.RecordCount > 0)then
      begin
        ChartFaturamentoMes.Series[0].AddY(
        DModule.qAux.FieldByName('valor').AsFloat,  // valor
        'PREVISÃO A RECEBER', //legenda
        { $00144CF1 } clteecolor
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
      //showmessage(DModule.qAux.SQL.Text);
      DModule.qAux.close; DModule.qAux.open;
      if(DModule.qAux.RecordCount > 0)then
      begin
        DModule.qAux.First;
        ChartFaturamentoMes.Series[0].AddY(
        DModule.qAux.FieldByName('valor').AsFloat,  // valor
        //'EM ATRASO', //legenda
        'A RENOVAR (ATRASADO)', //legenda
        { $000E08B3 } clteecolor
        );
      end;
  except


  end;

end;

procedure TFPrincipalAdmin.geratodosGraficos;
var
  Serie : TChartSeries;
begin

  if(Dmodule.administrador = true)then
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
          'AND AN.idAluno IN (SELECT idAluno FROM alunomodalidade WHERE idAluno = AN.IDALUNO)' +
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
          DateTimePicker1.Date := DATE;
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

          //FATURAMENTO DO DIA
          DModule.qAux.SQL.Text := 'select IFNULL( sum(p.valorCobrado),0) AS VALOR from pagamento p where p.dataPagamento =:DAT';
          DateTimePicker5.Date := DATE;
          DModule.qAux.ParamByName('DAT').AsString := FormatDateTime('yyyy-mm-dd',DateTimePicker5.Date);
          DModule.qAux.Close;
          DModule.qAux.Open;
          labelValorFatDia.Caption := 'R$ ' + DModule.qAux.FieldByName('VALOR').AsString;

  end else
  begin
    //PageControlIndicadores.Visible := false;
    tbsIndAluno.TabVisible := false;
    tbsIndFat.TabVisible := false;
  end;

end;

initialization
  RegisterClass(TFPrincipalAdmin);
Finalization
  UnRegisterClass(TFPrincipalAdmin);
end.