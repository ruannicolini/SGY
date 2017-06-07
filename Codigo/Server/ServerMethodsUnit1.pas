unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Windows, ExtCtrls;

type
  TServerMethods1 = class(TDSServerModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConnection1: TFDConnection;
    qAluno: TFDQuery;
    pAluno: TDataSetProvider;
    cdsAluno: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function FuncaoTeste(): string;
    function getAlunos(): Tdataset;
    function getFotoAluno(codigoAluno:integer): TStream;
    function getFotoAlunoJSON(codigoAluno:integer): TJSONArray;
    function setFotoAluno(jsa: TJSONArray; codigoAluno:integer): boolean;
  end;

implementation


{$R *.dfm}


uses System.StrUtils, UPrincipal, DBXJSONCommon, Vcl.Graphics, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.FuncaoTeste: string;
begin
  result := 'Oi. Teste!';
end;

function TServerMethods1.getAlunos: Tdataset;
begin
  cdsAluno.Close;
  cdsAluno.Open;
  result := cdsAluno;
end;

function TServerMethods1.getFotoAluno(codigoAluno: integer): TStream;
var
  caminho : string;
begin

  IF (fileExists( 'c:\sogym\img_Aluno\'+ inttostr(codigoAluno) + '.bmp' ))THEN
  BEGIN

    caminho := 'c:\sogym\img_Aluno\'+ inttostr(codigoAluno) + '.bmp';
    Result := TFileStream.Create(caminho, fmOpenRead or fmShareDenyNone);

  end else
  begin
    Result := nil;
  end;


end;

function TServerMethods1.getFotoAlunoJSON(codigoAluno: integer): TJSONArray;
var
  caminho : string;
  jsa : TJSONArray;
  ms: TStream;
begin
  caminho := 'c:\sogym\img_Aluno\'+ inttostr(codigoAluno) + '.bmp';
  IF (fileExists( caminho ))THEN
  BEGIN

    try
      ms := TFileStream.Create(caminho, fmOpenRead or fmShareDenyNone);
      jsa := TJSONArray.Create;
      jsa := TDBXJSONTools.StreamToJSON(ms, 0, ms.Size);
      Result := jsa;
    finally
      jsa.Free; //
      ms.Free;  //
    end;

  end else
  begin
    Result := nil;
  end;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.setFotoAluno(jsa: TJSONArray; codigoAluno:integer): boolean;
var
  ms : TStream;
  wic : TWICImage;
  fileName,   fileNameExt : string;
  resposta : boolean;
begin
  //

  resposta := false;
  try
      fileName := 'c:\sogym\img_Aluno\'+inttostr(codigoAluno)+'.';
      ms := TMemoryStream.Create;
      ms.Position := 0;
      ms := TDBXJSONTools.JSONToStream(jsa);

      wic := TWICImage.Create;
      wic.LoadFromStream(ms);

      if (wic.ImageFormat = wifBmp) then fileNameExt := 'bmp'
      else if (wic.ImageFormat = wifJpeg ) then fileNameExt := 'jpeg'
      else if (wic.ImageFormat = wifPng) then fileNameExt := 'png'  ;

      wic.SaveToFile(fileName+fileNameExt);
      resposta := true;
  finally
    wic.Free;
    ms.Free;
  end;
  Result := resposta;

end;

end.

