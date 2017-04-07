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
  Vcl.XPMan, dxGDIPlusClasses,   Vcl.AppEvnts, cxClasses, dxTaskbarProgress;

type
  TFPrincipal = class(TForm)
    imgBackground: TImage;
    PanelLinhaSuperior: TPanel;
    PanelPrincipal: TPanel;
    imgMenu: TImage;
    PanelMenuImg: TPanel;
    imgBtnAluno: TImage;
    imgBtnPagamento: TImage;
    imgBtnEquipamento: TImage;
    imgBtnGrupoExercicio: TImage;
    imgBtnFicha: TImage;
    imgBtnExercicio: TImage;
    imgBtnPatologia: TImage;
    imgBtnUsuario: TImage;
    imgBtnBackup: TImage;
    imgBtnModalidade: TImage;
    ApplicationEvents1: TApplicationEvents;
    PanelNomeUsuario: TPanel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    function fncAlturaBarraTarefas: Integer;
    procedure CriarForm(Tela, Desc : String);
    procedure FormShow(Sender: TObject);
    procedure imgBtnAlunoClick(Sender: TObject);
    procedure imgBtnUsuarioClick(Sender: TObject);
    procedure imgBtnFichaClick(Sender: TObject);
    procedure imgBtnExercicioClick(Sender: TObject);
    procedure imgBtnPatologiaClick(Sender: TObject);
    procedure imgBtnPagamentoClick(Sender: TObject);
    procedure imgBtnEquipamentoClick(Sender: TObject);
    procedure imgBtnGrupoExercicioClick(Sender: TObject);
    procedure imgBtnModalidadeClick(Sender: TObject);
    procedure imgBtnBackupClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
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

uses ubase, vcl.themes, vcl.styles, UDataModule, U01009, ShellApi, uFuncao,
  UHPI, math;

procedure TFPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  //
  if E is EConvertError then
     ShowMessage('Erro de conversão de dados.');
  if E is EZeroDivide then
     ShowMessage('Divisão por Zero Não Permitida.');
  if E is Exception then
    ShowMessage(e.Message);

end;

procedure TFPrincipal.CriarForm(Tela, Desc: String);
var
  PClass : TPersistentClass;
begin
  PClass := GetClass('T' + trim(Tela));
  if (PCLass <> nil) then
  begin
    FPrincipal.caption :='SOGYM - Software de Gestão para Academia - ' + DESC;
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
        FPrincipal.Caption := 'SOGYM - Software de Gestão para Academia';
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
  CaminhoDB, LoginDB, SenhaDB : String;

begin
  {IMPEDE QUE DUAS INSTANCIAS DO MESMO PROGRAMA SEJAM CRIADAS}
  CreateMutex(nil, False, 'SoftCast.OnlyOne'); //cria um mutex usando um nome único
  if GetLastError = ERROR_ALREADY_EXISTS then  //verifica se houve erro na criação
  begin
    MessageBox(0, 'Este programa já está sendo executado','Aviso', MB_ICONSTOP);
    Halt(0); // cancela execução
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

      DModule.qAcesso.Open();
      //ShowMessage( (DModule.qAcesso.sql.text));
      //ShowMessage(inttostr(DModule.qAcesso.RecordCount));
      DModule.cdsAcesso.Close;
      DModule.cdsAcesso.Open;
      DModule.cdsAcesso.First;

  end;

  //Apaga Numero de acesso Gerado
  Arquivo := TIniFile.Create(GetCurrentDir+'\Config.ini');
  Arquivo.EraseSection('Login');
  Arquivo.Free;

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


end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
    //ATRIBUI DATAHOJE
    DModule.qAux.SQL.Text := 'select CURDATE() AS DATAHOJE';
    DModule.qAux.Close;
    DModule.qAux.Open;
    DModule.dataHoje := DModule.qAux.FieldByName('DATAHOJE').AsDateTime;

end;

procedure TFPrincipal.imgBtnEquipamentoClick(Sender: TObject);
begin
  imgBtnEquipamento.Visible := false;
  Sleep(20);
  imgBtnEquipamento.Visible := true;
  CriarForm('F01003', 'Equipamento');
end;

procedure TFPrincipal.imgBtnExercicioClick(Sender: TObject);
begin
  imgBtnExercicio.Visible := false;
  Sleep(20);
  imgBtnExercicio.Visible := true;
  CriarForm('F01006', 'Exercício');
end;

procedure TFPrincipal.imgBtnFichaClick(Sender: TObject);
begin
  imgBtnFicha.Visible := false;
  Sleep(20);
  imgBtnFicha.Visible := true;
  CriarForm('F01005', 'Ficha');
end;

procedure TFPrincipal.imgBtnGrupoExercicioClick(Sender: TObject);
begin
  imgBtnGrupoExercicio.Visible := false;
  Sleep(20);
  imgBtnGrupoExercicio.Visible := true;
  CriarForm('F01004', 'Grupo de Exercício');
end;

procedure TFPrincipal.imgBtnBackupClick(Sender: TObject);
begin
  imgBtnBackup.Visible := false;
  Sleep(20);
  imgBtnBackup.Visible := true;

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

procedure TFPrincipal.imgBtnPagamentoClick(Sender: TObject);
begin
  imgBtnPagamento.Visible := false;
  Sleep(20);
  imgBtnPagamento.Visible := true;
  CriarForm('F01002', 'Pagamento');
end;

procedure TFPrincipal.imgBtnPatologiaClick(Sender: TObject);
begin
  imgBtnPatologia.Visible := false;
  Sleep(20);
  imgBtnPatologia.Visible := true;
  CriarForm('F01007', 'Patologias e Relatos Físicos');
end;

procedure TFPrincipal.imgBtnUsuarioClick(Sender: TObject);
begin
  imgBtnUsuario.Visible := false;
  Sleep(20);
  imgBtnUsuario.Visible := true;
  CriarForm('F01008', 'Usuário');
end;

procedure TFPrincipal.imgBtnAlunoClick(Sender: TObject);
begin
    imgBtnAluno.Visible := false;
    Sleep(20);
    imgBtnAluno.Visible := true;
    CriarForm('F01001', 'Aluno');
end;

procedure TFPrincipal.imgBtnModalidadeClick(Sender: TObject);
begin
  imgBtnModalidade.Visible := false;
  Sleep(20);
  imgBtnModalidade.Visible := true;
  CriarForm('F01012', 'Modalidade');
end;

end.
