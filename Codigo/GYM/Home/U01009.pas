unit U01009;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDataModule, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, JvExComCtrls, JvAnimate;

type
  TF01009 = class(TForm)
    PanelStatus: TPanel;
    PanelCAPTION: TPanel;
    btnIniciarOk: TSpeedButton;
    PanelCOMPLEMENTO: TPanel;
    btnCancelar: TButton;
    Panel1: TPanel;
    procedure btnIniciarOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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

uses Vcl.FileCtrl, SHELLAPI;

procedure TF01009.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TF01009.ExecutaBackupBD;
Var
   strBanco, strHost, strUsuario, strSenha, strComando, strCaminho, strArquivo: string;
begin
   try
      //Pega Caminho
     strCaminho := ExtractFilePath(Application.ExeName) + 'backup\';
      if not DirectoryExists(strCaminho) then
      begin
         CreateDir(strCaminho);
      end;

      //Verifica se mysqldump.exe esta na pasta do EXE
      if FileExists(ExtractFilePath(Application.ExeName) + 'mysqldump.exe') then
      begin

        //Configurações
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

procedure TF01009.btnIniciarOkClick(Sender: TObject);
begin
  if( btnIniciarOk.Caption = 'INICIAR') then
  begin

    try
      TThread.CreateAnonymousThread(
      procedure ()
      begin
          PanelCAPTION.Caption := 'ROTINA DE BACKUP EXECUTANDO. '+#13+'AGUARDE!';
          btnIniciarOk.Enabled := false;
          BTNCANCELAR.Enabled := FALSE;
          ExecutaBackupBD;
          TThread.Synchronize (TThread.CurrentThread,
          procedure ()
          begin
              //fazer depois que acabar o processo
              PanelCAPTION.Caption := 'BACKUP CONCLUÍDO!';
              btnIniciarOk.Enabled := TRUE;
              btnIniciarOk.Caption := 'OK';
              //ABRE PASTA ONDE FICA OS BACKUPS
              ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Application.ExeName) + '\backup'),nil,nil,SW_SHOWMAXIMIZED);
          end);
          // .free aqui!!

      end
      ).Start;



    except
        ON E: Exception DO
        begin
             PanelCAPTION.Caption := 'ERRO ENCONTRADO, CONSULTE SUPORTE!';
             ShowMessage(E.Message);
        end;
    end;

  end ELSE
  BEGIN
    if( btnIniciarOk.Caption = 'OK') then
    begin
      CLOSE;
    end;
  END;


end;

Initialization
  RegisterClass(TF01009);
Finalization
  UnRegisterClass(TF01009);
end.
