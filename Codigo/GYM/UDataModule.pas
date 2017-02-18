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
    procedure FDConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    idusuario: integer;
    nomeusuario: string;
    username: string;
    senha: string;
    idTipoUsuario: integer;
    datahoje:TdateTime;
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

procedure TDModule.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDConnection.Params.DriverID := 'MYSQL';
  FDConnection.DriverName := 'MYSQL';
  FDPhysMySQLDriverLink1.DriverID := 'MYSQL';
end;

End.
