//
// Created by the DataSnap proxy generator.
// 07/06/2017 10:00:38
//

unit UmetodosServidor;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FFuncaoTesteCommand: TDBXCommand;
    FgetAlunosCommand: TDBXCommand;
    FgetFotoAlunoCommand: TDBXCommand;
    FgetFotoAlunoJSONCommand: TDBXCommand;
    FsetFotoAlunoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function FuncaoTeste: string;
    function getAlunos: TDataSet;
    function getFotoAluno(codigoAluno: Integer): TStream;
    function getFotoAlunoJSON(codigoAluno: Integer): TJSONArray;
    function setFotoAluno(jsa: TJSONArray; codigoAluno: Integer): Boolean;
  end;

implementation

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.FuncaoTeste: string;
begin
  if FFuncaoTesteCommand = nil then
  begin
    FFuncaoTesteCommand := FDBXConnection.CreateCommand;
    FFuncaoTesteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFuncaoTesteCommand.Text := 'TServerMethods1.FuncaoTeste';
    FFuncaoTesteCommand.Prepare;
  end;
  FFuncaoTesteCommand.ExecuteUpdate;
  Result := FFuncaoTesteCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.getAlunos: TDataSet;
begin
  if FgetAlunosCommand = nil then
  begin
    FgetAlunosCommand := FDBXConnection.CreateCommand;
    FgetAlunosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetAlunosCommand.Text := 'TServerMethods1.getAlunos';
    FgetAlunosCommand.Prepare;
  end;
  FgetAlunosCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FgetAlunosCommand.Parameters[0].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FgetAlunosCommand.FreeOnExecute(Result);
end;

function TServerMethods1Client.getFotoAluno(codigoAluno: Integer): TStream;
begin
  if FgetFotoAlunoCommand = nil then
  begin
    FgetFotoAlunoCommand := FDBXConnection.CreateCommand;
    FgetFotoAlunoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetFotoAlunoCommand.Text := 'TServerMethods1.getFotoAluno';
    FgetFotoAlunoCommand.Prepare;
  end;
  FgetFotoAlunoCommand.Parameters[0].Value.SetInt32(codigoAluno);
  FgetFotoAlunoCommand.ExecuteUpdate;
  Result := FgetFotoAlunoCommand.Parameters[1].Value.GetStream(FInstanceOwner);
end;

function TServerMethods1Client.getFotoAlunoJSON(codigoAluno: Integer): TJSONArray;
begin
  if FgetFotoAlunoJSONCommand = nil then
  begin
    FgetFotoAlunoJSONCommand := FDBXConnection.CreateCommand;
    FgetFotoAlunoJSONCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetFotoAlunoJSONCommand.Text := 'TServerMethods1.getFotoAlunoJSON';
    FgetFotoAlunoJSONCommand.Prepare;
  end;
  FgetFotoAlunoJSONCommand.Parameters[0].Value.SetInt32(codigoAluno);
  FgetFotoAlunoJSONCommand.ExecuteUpdate;
  Result := TJSONArray(FgetFotoAlunoJSONCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethods1Client.setFotoAluno(jsa: TJSONArray; codigoAluno: Integer): Boolean;
begin
  if FsetFotoAlunoCommand = nil then
  begin
    FsetFotoAlunoCommand := FDBXConnection.CreateCommand;
    FsetFotoAlunoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetFotoAlunoCommand.Text := 'TServerMethods1.setFotoAluno';
    FsetFotoAlunoCommand.Prepare;
  end;
  FsetFotoAlunoCommand.Parameters[0].Value.SetJSONValue(jsa, FInstanceOwner);
  FsetFotoAlunoCommand.Parameters[1].Value.SetInt32(codigoAluno);
  FsetFotoAlunoCommand.ExecuteUpdate;
  Result := FsetFotoAlunoCommand.Parameters[2].Value.GetBoolean;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods1Client.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FFuncaoTesteCommand.DisposeOf;
  FgetAlunosCommand.DisposeOf;
  FgetFotoAlunoCommand.DisposeOf;
  FgetFotoAlunoJSONCommand.DisposeOf;
  FsetFotoAlunoCommand.DisposeOf;
  inherited;
end;

end.

