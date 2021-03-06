unit U01015;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls,
  SHDocVw, ActiveX, ShockwaveFlashObjects_TLB, Vcl.OleServer,
  Vcl.StdCtrls;

type
  TF01015 = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateVIDEO(AOwner: TComponent; IDYOUTUBE: STRING);
    function fncAlturaBarraTarefas: Integer;
  end;

var
  F01015: TF01015;

implementation

{$R *.dfm}

constructor TF01015.CreateVIDEO(AOwner: TComponent; IDYOUTUBE: STRING);
VAR
  STATUS: BOOLEAN;
  I: Integer;
  FT : TF01015;

begin
  //VERIFICA SE FORM JA ESTA EM EXECU��O
  STATUS := FALSE;
  for I := 0 to Screen.FormCount - 1 do
  BEGIN
        // SE SIM, APENAS SUBSTITUI O LINK
       IF(Screen.Forms[i].Name = 'F01015')THEN
       BEGIN
          STATUS := TRUE;
          TComponent(FT) := Application.FindComponent('F01015');
          // https://www.youtube.com/embed/nYBcAihJ0Ro?autoplay=1
          //TF01015(Screen.Forms[i]).WebBrowser1.Navigate('www.youtube.com/embed/'+ IDYOUTUBE +'?autoplay=1');

           TF01015(Screen.Forms[i]).WebBrowser1.Navigate('https://www.youtube.com/v/'+ IDYOUTUBE +'&autoplay=1&controls=1');

       END;
  END;

  //SE N�O, CRIA NOVO FORM.
  IF(STATUS = FALSE)THEN
  BEGIN

      inherited Create(AOwner);
      //TAMANHO DO FORM
      Width := 431; // 440;
      Height := 300;

      //POSI��O DO FORM NA TELA
      Top := Screen.Height - Height - fncAlturaBarraTarefas;
      Left := Screen.Width - Width;

      // ESSE LINK MELHOR PQ N�O APRESENTA A BARRA, MAS PARU DE FUNCIONAR
      //WebBrowser1.Navigate('https://www.youtube.com/embed/'+ IDYOUTUBE + '?autoplay=1');
      // ENT�O, TO USANDO ESSE AQUI.
      WebBrowser1.Navigate('https://www.youtube.com/v/'+ IDYOUTUBE +'&autoplay=1&controls=1');


      //EXIBE O FORM
      Show;
  END;

end;

function TF01015.fncAlturaBarraTarefas: Integer;
var
  rRect: TRect;
  rBarraTarefas: HWND;
begin
  //Localiza o Handle da barra de tarefas
  rBarraTarefas := FindWindow('Shell_TrayWnd', nil);

  //Pega o "ret�ngulo" que envolve a barra e sua altura
  GetWindowRect(rBarraTarefas, rRect);

  //Retorna a altura da barra
  Result := rRect.Bottom - rRect.Top;
end;

procedure TF01015.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
Action := caFree;

end;

Initialization
  RegisterClass(TF01015);
Finalization
  UnRegisterClass(TF01015);
end.
