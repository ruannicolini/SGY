unit U01009;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDataModule, Vcl.ExtCtrls, Vcl.Buttons;

type
  TF01009 = class(TForm)
    PanelStatus: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecutaBackupBD();
    function ExecutarProcesso(cmd: string): Boolean;
  end;

var
  F01009: TF01009;

implementation

{$R *.dfm}

{ TF01009 }

procedure TF01009.ExecutaBackupBD;
Var
   strBanco, strHost, strUsuario, strSenha, strComando, strCaminho, strArquivo: string;
begin
   try
      strCaminho := ExtractFilePath(Application.ExeName) + 'backup\';
      if not DirectoryExists(strCaminho) then
      begin
         CreateDir(strCaminho);
      end;
      if FileExists(ExtractFilePath(Application.ExeName) + 'mysqldump.exe') then
      begin
         strArquivo := strCaminho + 'BD_' + FormatDateTime('YYYY-mm-dd_hhnnss', Now) + '.sql';

         strHost := DModule.FDConnection.Params.Values['SERVER'] ; // '192.168.1.200';
         strUsuario := DModule.FDConnection.Params.UserName; //'ruan';
         strSenha := DModule.FDConnection.Params.Password;//'ruan';
         strBanco := DModule.FDConnection.Params.Database; //'gym';

        strComando := 'cmd.exe /c ""' +
                       ExtractFilePath(Application.ExeName) +
                       '\mysqldump.exe" ' + strBanco +
                       ' --routines --events --databases --opt -c -e '+
                       ' -h' + strHost +
                       ' -u' + strUsuario +
                       ' -p' + strSenha +
                       '' +
                       '>' + '"' +
                       strArquivo + '""';
        ExecutarProcesso(strComando);
      end
      else
      begin
         ShowMessage('Atenção o aplicativo auxiliar mysqldump não se encontra no diretório, ' +
                     'solicite o mesmo ao suporte do sistema ');
      end;
   finally
      //FreeAndNil(Ini);
   end;
end;

function TF01009.ExecutarProcesso(cmd: string): Boolean;
var
 SUInfo : TStartupInfo;
 ProcInfo: TProcessInformation;
begin
 FillChar(SUInfo, SizeOf(SUInfo), #0);
 SUInfo.cb := SizeOf(SUInfo);
 SUInfo.dwFlags := STARTF_USESHOWWINDOW;
 SUInfo.wShowWindow := SW_HIDE;
 Result := CreateProcess(nil, PChar(cmd), nil, nil, False, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, SUInfo, ProcInfo);
if (Result) then
 begin
 WaitForSingleObject(ProcInfo.hProcess, INFINITE);
 CloseHandle(ProcInfo.hProcess);
 CloseHandle(ProcInfo.hThread);
 end;
end;

procedure TF01009.SpeedButton1Click(Sender: TObject);
begin
  ExecutaBackupBD;
end;

Initialization
  RegisterClass(TF01009);
Finalization
  UnRegisterClass(TF01009);
end.
