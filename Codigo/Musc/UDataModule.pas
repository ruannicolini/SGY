unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Dialogs, Datasnap.Provider,
  Datasnap.DBClient, Windows,
  Vcl.Forms;

type
  TDModule = class(TDataModule)
    qAux: TFDQuery;
    FModulo: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection: TFDConnection;
    procedure FDConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    //USUÁRIO
    idusuario: integer;
    nomeusuario: string;
    username: string;
    senha: string;

    //Permissões
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
    confservidorImagens : boolean;

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

procedure TDModule.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDConnection.Params.DriverID := 'MYSQL';
  FDConnection.DriverName := 'MYSQL';
  FDPhysMySQLDriverLink1.DriverID := 'MYSQL';
  //CONFIGURAÇÕES DO BD
  TRY
    FDPhysMySQLDriverLink1.vendorlib := ExtractFilePath(Application.ExeName) + 'libmysql.dll';
  EXCEPT
    on E: Exception do
    BEGIN
      SHOWMESSAGE('ERRO! CLASSE: ' + E.ClassName + #13 + 'MENSAGEM: ' + E.Message);
    END;
  END;
end;


End.
