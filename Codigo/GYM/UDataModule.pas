unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Dialogs, Datasnap.Provider,
  Datasnap.DBClient, Windows;

type
  TDModule = class(TDataModule)
    qAux: TFDQuery;
    FModulo: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection: TFDConnection;
    qAcesso: TFDQuery;
    pAcesso: TDataSetProvider;
    cdsAcesso: TClientDataSet;
    qAcessoidSeguranca: TIntegerField;
    qAcessoidInterface: TIntegerField;
    qAcessoidTipoUsuario: TIntegerField;
    qAcessocadastrar: TBooleanField;
    qAcessoalterar: TBooleanField;
    qAcessoconsultar: TBooleanField;
    qAcessoexcluir: TBooleanField;
    qAcessointerface: TIntegerField;
    qAcessomodulo: TIntegerField;
    cdsAcessoidSeguranca: TIntegerField;
    cdsAcessoidInterface: TIntegerField;
    cdsAcessoidTipoUsuario: TIntegerField;
    cdsAcessocadastrar: TBooleanField;
    cdsAcessoalterar: TBooleanField;
    cdsAcessoconsultar: TBooleanField;
    cdsAcessoexcluir: TBooleanField;
    cdsAcessointerface: TIntegerField;
    cdsAcessomodulo: TIntegerField;
    qLog: TFDQuery;
    pLog: TDataSetProvider;
    cdsLog: TClientDataSet;
    qLogidlogSistema: TIntegerField;
    qLogtabelaBanco: TStringField;
    qLogdataLog: TDateField;
    qLoghoraLog: TTimeField;
    qLogidUsuario: TIntegerField;
    qLognomeUsuario: TStringField;
    qLogidPkRegistro: TIntegerField;
    qLogidPkRegistro2: TIntegerField;
    qLogtipoCRUD: TStringField;
    cdsLogidlogSistema: TIntegerField;
    cdsLogtabelaBanco: TStringField;
    cdsLogdataLog: TDateField;
    cdsLoghoraLog: TTimeField;
    cdsLogidUsuario: TIntegerField;
    cdsLognomeUsuario: TStringField;
    cdsLogidPkRegistro: TIntegerField;
    cdsLogidPkRegistro2: TIntegerField;
    cdsLogtipoCRUD: TStringField;
    qCampoLog: TFDQuery;
    pCampoLog: TDataSetProvider;
    cdsCampoLog: TClientDataSet;
    qCampoLogidCampolog: TIntegerField;
    qCampoLognomeField: TStringField;
    qCampoLogvalorAntigo: TStringField;
    qCampoLogvalornovo: TStringField;
    qCampoLogidLogSistema: TIntegerField;
    cdsCampoLogidCampolog: TIntegerField;
    cdsCampoLognomeField: TStringField;
    cdsCampoLogvalorAntigo: TStringField;
    cdsCampoLogvalornovo: TStringField;
    cdsCampoLogidLogSistema: TIntegerField;
    qLogdescricaoInterface: TStringField;
    cdsLogdescricaoInterface: TStringField;
    procedure FDConnectionBeforeConnect(Sender: TObject);
    procedure cdsLogAfterInsert(DataSet: TDataSet);
    procedure cdsCampoLogAfterInsert(DataSet: TDataSet);
    procedure cdsLogAfterCancel(DataSet: TDataSet);
    procedure cdsCampoLogAfterCancel(DataSet: TDataSet);
    procedure cdsLogAfterDelete(DataSet: TDataSet);
    procedure cdsCampoLogAfterDelete(DataSet: TDataSet);
    procedure cdsCampoLogAfterPost(DataSet: TDataSet);
    procedure cdsLogAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    //USUÁRIO
    idusuario: integer;
    nomeusuario: string;
    username: string;
    senha: string;
    //idTipoUsuario: integer;
    administrador : boolean;  // id = (1)
    instrutor : boolean;      // id = (2)
    atendente : boolean;      // id = (3)
    avaliador : boolean;      // id = (4)

    //AMBIENTE
    datahoje:TdateTime;

    //CONFIGURAÇÕES
    confvecimentoFicha : integer;
    confvideoYoutube : boolean;
    confAvaAnamnese : boolean;
    confAvaFisica : boolean;
    confAvaPostural : boolean;
    confAvaDadosClinicos : boolean;

    //FUNÇÕES
    function buscaProximoParametro(p: string): integer;
  end;

var
  DModule: TDModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses MidasLib, IniFiles;


function TDModule.buscaProximoParametro(p: string): integer;
var
  i : integer;
begin

  qAux.SQL.Text := 'select valor from parametros where parametro =:p';
  qAux.ParamByName('p').AsString:= p;
  qAux.Open;

  if not qAux.IsEmpty then
  begin
    i := StrToInt(qAux.Fields[0].AsString);
    qAux.SQL.Text := 'update parametros set valor =:v where parametro =:p';
    qAux.ParamByName('p').AsString := p;
    qAux.ParamByName('v').AsString := IntToStr(i+1);
    qAux.ExecSQL;
    buscaProximoParametro := i;
  end
  else

  ShowMessage('Parametro Inválido.');

end;

procedure TDModule.cdsCampoLogAfterCancel(DataSet: TDataSet);
begin
  cdsCampoLog.CancelUpdates;
end;

procedure TDModule.cdsCampoLogAfterDelete(DataSet: TDataSet);
begin
  cdsCampoLog.ApplyUpdates(-1);
end;

procedure TDModule.cdsCampoLogAfterInsert(DataSet: TDataSet);
begin
  cdsCampoLogidCampolog.AsInteger := DModule.buscaProximoParametro('campolog');
end;

procedure TDModule.cdsCampoLogAfterPost(DataSet: TDataSet);
begin
  cdsCampoLog.ApplyUpdates(-1);
end;

procedure TDModule.cdsLogAfterCancel(DataSet: TDataSet);
begin
  cdsLog.CancelUpdates;
end;

procedure TDModule.cdsLogAfterDelete(DataSet: TDataSet);
begin
  cdsLog.ApplyUpdates(-1);
end;

procedure TDModule.cdsLogAfterInsert(DataSet: TDataSet);
begin
  cdsLogidlogSistema.AsInteger := DModule.buscaProximoParametro('logsistema');
end;

procedure TDModule.cdsLogAfterPost(DataSet: TDataSet);
begin
  cdsLog.ApplyUpdates(-1);
end;

procedure TDModule.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDConnection.Params.DriverID := 'MYSQL';
  FDConnection.DriverName := 'MYSQL';
  FDPhysMySQLDriverLink1.DriverID := 'MYSQL';
end;


End.
