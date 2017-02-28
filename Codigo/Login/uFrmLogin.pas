unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, iniFiles, DateUtils,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Zlib, ShellAPI, midaslib;

  procedure configurarDB(Arquivo : TIniFile);
  procedure executarAplicacao(Arquivo : TIniFile);
  procedure AtualizarExecutavel;

type
  TfrmLogin = class(TForm)
    edtSenha: TEdit;
    btnEntrar: TBitBtn;
    edtLogin: TEdit;
    Image1: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
  public
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses dataModule, uFuncao, uFrmAtualizacao, uFrmAtualizar, UHPI;


procedure TfrmLogin.btnEntrarClick(Sender: TObject);
var
  Usuario, Senha : TCaption;
  Arquivo: TIniFile;
begin

  Usuario := edtLogin.Text;
  Senha:= edtSenha.Text;

  if Usuario = '' then
  begin
    Application.MessageBox('Informe seu usuário.','Atenção',0+48);
    edtLogin.SetFocus;
    Abort;
  end;

  if Senha = '' then
  begin
    Application.MessageBox('Informe sua senha.', 'Atenção', 0+48);
    edtSenha.SetFocus;
    Abort;
  end;

  Arquivo := TIniFile.Create(GetCurrentDir+'\Config.ini');

  // Usar quando colocar opção de configuração na tela de login: ip, user e senha de acesso ao BD.
  ConfigurarDB(Arquivo);

  dmPadrao.ClientDataSet.Close;
  dmPadrao.ClientDataSet.ParamByName('LOGIN').AsString := Usuario;
  dmPadrao.ClientDataSet.ParamByName('SENHA').AsString := MD5(Senha);
  dmPadrao.ClientDataSet.Open;

  if dmPadrao.ClientDataSet.IsEmpty then
  begin
    Application.MessageBox('Usuário ou senha inválido.', 'Atenção', MB_OK+MB_ICONERROR);
    Abort;
  end
  else
  begin

    //Salva dados usuário-login
    Arquivo.WriteString('Login', 'username', crip(usuario));
    Arquivo.WriteString('Login', 'userpassword', crip(senha));
    //Executa Gym
    ExecutarAplicacao(Arquivo);
    Close;
  end;
end;

procedure ConfigurarDB(Arquivo : TIniFile);
var
  Caminho, Login, Senha : String;
begin

  Caminho := Arquivo.ReadString('Config', Crip('Caminho'), Caminho);
  Login := Arquivo.ReadString('Config', Crip('Login'), Login);
  Senha := Arquivo.ReadString('Config', Crip('Senha'), Senha);

  dmPadrao.FDConnection.Params.Add('Server=' + Crip(Caminho));
  dmPadrao.FDConnection.Params.UserName := Crip(Login);
  dmPadrao.FDConnection.Params.Password := Crip(Senha);

end;

procedure ExecutarAplicacao(Arquivo : TIniFile);
var
  Hora: Integer;
  Data : TDateTime;
  Hash, Serial, SerialAtual : String;
begin

    Hora := HourOf(Now);
    Data := Date();
    //Serial HD detectado no momento da criação do Arquivo .ini no Gerenciador
    Serial := Arquivo.ReadString('Config', Crip('Serial'), Serial);
    //Obtem Serial HD do computador Atual
    with GetHPI(Application.ExeName[1]) do
    begin
      SerialAtual := SerialNumber;
    end;


    Hash := IntToStr(Hora) + DateToStr(Data) + Serial;
    Arquivo.WriteString('Login', 'Numero', MD5(Hash));


    //Verificação do serial.
    if(serial = SerialAtual)then
    begin
      AtualizarExecutavel;
    end else
    begin
      ShowMessage('Autenticidade do arquivo Config comprometida');
    end;


    try
    begin
      //WinExec('Loading.exe', SW_NORMAL);
      //WinExec('C:\Users\Ruan\Documents\TEAR\Tear\codigo\Win32\Release\Tear.exe', SW_NORMAL);
      ShellExecute(Application.Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'/Gym.exe'), '','',SW_SHOWNORMAL);
    end;

    finally
      //O num é apagado no final do CREATE do FPrincipal do tear.exe
      //Arquivo.EraseSection('Login');
      Arquivo.Free;
    end;

end;

procedure AtualizarExecutavel;
var
  VersionLocal, VersionServidor : String;
  ExeLocal, ExeServidor : String;
begin
  VersionLocal := GetFileVersion('C:\Delphi\Atual\Loading.exe');
  VersionServidor := GetFileVersion('C:\Delphi\Novo\Loading.exe');

  if VersionLocal < VersionServidor then
  begin

    ExeServidor := 'C:\Delphi\Novo\Loading.zlib';
    ExeLocal :=  'C:\Delphi\Atual\Loading.zlib';

    if not CopyFile(PChar(ExeServidor), PChar(ExeLocal), false) then
      Application.MessageBox('Erro ao atualizar o executável.', 'Erro', MB_OK+MB_ICONWARNING);

  end;

end;

procedure TfrmLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    btnEntrarClick(Sender);
  end;
end;

end.

