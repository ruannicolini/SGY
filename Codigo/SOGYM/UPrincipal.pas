unit UPrincipal;

interface

uses
  {Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Buttons;}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Imaging.jpeg, IdHashMessageDigest, iniFiles, DateUtils,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, VCLTee.TeCanvas, Vcl.Buttons, XiButton,
  Vcl.XPMan, dxGDIPlusClasses, PngSpeedButton;

type
  TFPrincipal = class(TForm)
    imgBackground: TImage;
    PanelLinhaSuperior: TPanel;
    PanelPrincipal: TPanel;
    imgMenu: TImage;
    btnPagamento: TSpeedButton;
    btnAluno: TSpeedButton;
    PainelCentral_Menu: TPanel;
    btnEquipamento: TSpeedButton;
    btnGrupo: TSpeedButton;
    btnFicha: TSpeedButton;
    btnExercicio: TSpeedButton;
    btnPatologias: TSpeedButton;
    btnUsuario: TSpeedButton;
    bntBackUp: TSpeedButton;
    btnModalidade: TSpeedButton;
    procedure btnPagamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function fncAlturaBarraTarefas: Integer;
    procedure CriarForm(Tela, Desc : String);
    procedure btnAlunoClick(Sender: TObject);
    procedure btnEquipamentoClick(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure btnPatologiasClick(Sender: TObject);
    procedure btnExercicioClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bntBackUpClick(Sender: TObject);
    procedure btnFichaClick(Sender: TObject);
    procedure btnModalidadeClick(Sender: TObject);
  private
    // Rotina de backup
    procedure ExecutaBackupBD();
    function ExecutarProcesso(cmd: string): Boolean;
  public
    { Public declarations }

  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses ubase, vcl.themes, vcl.styles, UDataModule, U01009, ShellApi, uFuncao;

procedure TFPrincipal.bntBackUpClick(Sender: TObject);
begin
    if(DModule.idTipoUsuario = 1)then
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

procedure TFPrincipal.btnAlunoClick(Sender: TObject);
begin
  CriarForm('F01001', 'Aluno');
end;

procedure TFPrincipal.btnEquipamentoClick(Sender: TObject);
begin
  CriarForm('F01003', 'Equipamento');
end;

procedure TFPrincipal.btnExercicioClick(Sender: TObject);
begin
  CriarForm('F01006', 'Exercício');
end;

procedure TFPrincipal.btnFichaClick(Sender: TObject);
begin
  CriarForm('F01005', 'Ficha');
end;

procedure TFPrincipal.btnGrupoClick(Sender: TObject);
begin
  CriarForm('F01004', 'Grupo de Exercício');
end;

procedure TFPrincipal.btnModalidadeClick(Sender: TObject);
begin
    CriarForm('F01012', 'Modalidade');
end;

procedure TFPrincipal.btnPagamentoClick(Sender: TObject);
begin
  CriarForm('F01002', 'Pagamento');
end;

procedure TFPrincipal.btnPatologiasClick(Sender: TObject);
begin
  CriarForm('F01007', 'Patologias e Relatos Físicos');
end;

procedure TFPrincipal.btnUsuarioClick(Sender: TObject);
begin
  CriarForm('F01008', 'Usuário');
end;

procedure TFPrincipal.CriarForm(Tela, Desc: String);
var
  PClass : TPersistentClass;
begin
  PClass := GetClass('T' + trim(Tela));
  if (PCLass <> nil) then
  begin
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
        Free;
        tFormClass(PClass) := nil;
      end;
   end;
end;

procedure TFPrincipal.ExecutaBackupBD;
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

function TFPrincipal.ExecutarProcesso(cmd: string): Boolean;
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

function TFPrincipal.fncAlturaBarraTarefas: Integer;
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

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  Hora: Integer;
  Data : TDateTime;
  HashGeradoAgora, geradoConfig, Serial : String;
  Arquivo: TIniFile;
  username, senha : string;
begin

  showmessage('entrou');

  Hora := HourOf(Now);
  Data := Date();
  //Serial := SerialHD(Serial);
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
      //Controle de Acesso
      username := CRIP(Arquivo.ReadString('Login', 'username', username));
      senha := MD5(CRIP(Arquivo.ReadString('Login', 'userpassword', senha)));

      //Obtem Dados do Usuário (username, senha, idTipoUsuario)
      Dmodule.idTipoUsuario := 0;
      Dmodule.qAux.close;
      Dmodule.qAux.SQL.Text := 'select * from usuario where username =:idUsuario and senha=:idSenha';
      Dmodule.qAux.ParamByName('idUsuario').Value := username;
      Dmodule.qAux.ParamByName('idSenha').Value := senha;
      Dmodule.qAux.open;
      Dmodule.idUsuario := Dmodule.qAux.FieldByName('idUsuario').AsInteger;
      Dmodule.nomeusuario := Dmodule.qAux.FieldByName('nomeUsuario').AsString;
      Dmodule.username := Dmodule.qAux.FieldByName('username').AsString;
      Dmodule.senha := Dmodule.qAux.FieldByName('senha').AsString;
      Dmodule.idTipoUsuario := Dmodule.qAux.FieldByName('idTipoUsuario').AsInteger;

      {
      showmessage(
      Dmodule.qAux.FieldByName('idUsuario').AsString + #13 +
      Dmodule.qAux.FieldByName('login').AsString + #13 +
      Dmodule.qAux.FieldByName('senha').AsString + #13 +
      Dmodule.qAux.FieldByName('idTipoUsuario').AsString    );
      }

      //Obtem Dados de acesso do tipoUsuário
      DModule.qAcesso.Close;
      DModule.qAcesso.SQL.Text := 'select s.*, i.idinterface as interface, m.idmodulo as modulo from seguranca s ';
      DModule.qAcesso.SQL.Add('left outer join interface i on i.idinterface = s.idinterface ');
      DModule.qAcesso.SQL.Add('left outer join modulo m on m.idmodulo = i.idmodulo ');
      DModule.qAcesso.SQL.Add('where s.idTipousuario =:idTU');
      DModule.qAcesso.ParamByName('idTU').Value := Dmodule.idTipoUsuario;
      DModule.qAcesso.Open();
      DModule.cdsAcesso.Close;
      DModule.cdsAcesso.Open;
      DModule.cdsAcesso.First;
  end;

  //Apaga Numero de acesso Gerado
  Arquivo := TIniFile.Create(GetCurrentDir+'\Config.ini');
  Arquivo.EraseSection('Login');
  Arquivo.Free;

end;

{
var
iduser : string;
idInterface : integer;
ArqIni: TIniFile;
nomeInterface : string;
begin
    //ATRIBUI TEMPORARIAMENTO O USUARIO ADMIN
    DModule.idTipoUsuario := 1;
    DModule.idusuario := 1;
    DModule.username := 'ADMIN';
    DModule.nomeusuario := 'ADMINISTRADOR';
    // FIM DE TESTE

  //Definição de acesso do usuário
  ArqIni := TIniFile.Create( ExtractFilePath(Application.ExeName) + '\user.ini' );
  try
    iduser := ArqIni.ReadString('usuario', 'iduser', iduser);

    //Obtem id tipo de usuário
    Dmodule.idTipoUsuario := 0;
    Dmodule.qAux.close;
    Dmodule.qAux.SQL.Text := 'select * from usuario where idusuario =:idU';
    Dmodule.qAux.ParamByName('idU').Value := strtoint(idUser);
    Dmodule.qAux.open;
    Dmodule.idTipoUsuario := Dmodule.qAux.FieldByName('idTipoUsuario').AsInteger;

    DModule.qAcesso.Close;
    DModule.qAcesso.SQL.Text := 'select s.*, i.idinterface as interface, m.idmodulo as modulo from seguranca s ';
    DModule.qAcesso.SQL.Add('left outer join interface i on i.idinterface = s.idinterface ');
    DModule.qAcesso.SQL.Add('left outer join modulo m on m.idmodulo = i.idmodulo ');
    DModule.qAcesso.SQL.Add('where s.idTipousuario =:idTU');
    DModule.qAcesso.ParamByName('idTU').Value := Dmodule.idTipoUsuario;
    DModule.qAcesso.Open();
    DModule.cdsAcesso.Close;
    DModule.cdsAcesso.Open;
    DModule.cdsAcesso.First;
  finally
    ArqIni.Free;
  end;

end;
}

procedure TFPrincipal.FormShow(Sender: TObject);
begin
    //ATRIBUI DATAHOJE
    DModule.qAux.SQL.Text := 'select CURDATE() AS DATAHOJE';
    DModule.qAux.Close;
    DModule.qAux.Open;
    DModule.dataHoje := DModule.qAux.FieldByName('DATAHOJE').AsDateTime;

end;

end.
