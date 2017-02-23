unit U01008;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDataModule, UBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Mask, Vcl.DBCtrls,
  DBEditBeleza, dxBarBuiltInMenu, EditBeleza, cxPC, XiPanel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TF01008 = class(TFBase)
    FDQuery1idusuario: TIntegerField;
    FDQuery1nomeUsuario: TStringField;
    FDQuery1username: TStringField;
    FDQuery1senha: TStringField;
    FDQuery1idTipoUsuario: TIntegerField;
    FDQuery1descricaoTipoUsuario: TStringField;
    ClientDataSet1idusuario: TIntegerField;
    ClientDataSet1nomeUsuario: TStringField;
    ClientDataSet1username: TStringField;
    ClientDataSet1senha: TStringField;
    ClientDataSet1idTipoUsuario: TIntegerField;
    ClientDataSet1descricaoTipoUsuario: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    cbxPesqTipoUsuario: TCheckBox;
    editPesqidTipoUsuario: TEdit;
    EditPesqTipoUsuario: TEditBeleza;
    cbxPesqNome: TCheckBox;
    EditPesqNome: TEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BSalvarClick(Sender: TObject);
    procedure EditPesqTipoUsuarioChange(Sender: TObject);
    procedure EditPesqNomeChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01008: TF01008;

implementation

{$R *.dfm}

uses uFuncao, u_relatorios;

procedure TF01008.BExcluirClick(Sender: TObject);
begin
  IF(ClientDataSet1idusuario.AsInteger <> DModule.idusuario)THEN
  BEGIN
      DModule.qAux.SQL.Text := 'SELECT * FROM Aluno WHERE idInstrutorFicha =:IDUS';
      DModule.qAux.ParamByName('idUS').AsInteger := ClientDataSet1idusuario.AsInteger;
      DModule.qAux.Close;
      DModule.qAux.open;
      if(DModule.qAux.IsEmpty)then
      begin
        //Executa exclus�o
        inherited;
      end else
      begin
        showmessage('USU�RIO POSSUI FICHA DE ALUNO VINCULADA A ELE. N�O � POSS�VEL EXCLUIR.');
      end;
  END ELSE
  BEGIN
      ShowMessage('USU�RIO ATUAL. N�O � POSS�VEL EXCLUIR.');
  END;

end;

procedure TF01008.bRelatorioClick(Sender: TObject);
begin
  inherited;
  if NOT(Ds.DataSet.IsEmpty)then
  begin
      frelatorios := tfrelatorios.Create(self);
      with frelatorios do
      begin
          try
              visible := false;
              Assimila_Relat_q(Screen.ActiveForm.Name, 0, DS.DataSet, nil, '', '');

              //Assimila3Datasets(Screen.ActiveForm.Name, DS.DataSet, DSModalidade.DataSet, DSSerie.DataSet,'idAluno', 'idAluno', 'idAluno');
              ShowModal;
          finally
              Relatorios_sis.close;
              relats_usur.close;
              Free;
          end;
      end;
  end else
  begin
    ShowMessage('Relat�rio necessita de pesquisa');
  end;
end;

procedure TF01008.BSalvarClick(Sender: TObject);
begin

  if TRIM(DBEdit2.Text) <> '' then
  begin
      if TRIM(DBEdit3.Text) <> '' then
      begin
            if TRIM(DBEdit4.Text) <> '' then
            begin
                if TRIM(DBEdit5.Text) <> '' then
                begin
                    //criptografia
                    ClientDataSet1senha.AsString := MD5(DBEdit4.Text);
                    // salva
                    inherited;
                end else
                begin
                  ShowMessage('INFORME TIPO DE USU�RIO');
                end;
            end else
            begin
              ShowMessage('INFORME SENHA');
            end;
      end else
      begin
        ShowMessage('INFORME USERNAME');
      end;
  end else
  begin
    ShowMessage('INFORME NOME DO USU�RIO');
  end;


end;

procedure TF01008.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  FDQuery1.SQL.Text := 'select u.*, tu.descricaoTipoUsuario from usuario u ' +
  'left outer join tipoUsuario tu on tu.idTipoUsuario = u.idTipoUsuario where 1=1 ';

  if(cbxPesqNome.Checked = true)then
  begin
    FDQuery1.SQL.Add(' and u.nomeusuario like "%' + EditPesqNome.Text +'%"');
  end;
  if(cbxPesqTipoUsuario.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add('  and u.idTipoUsuario = ' + editPesqidTipoUsuario.Text );
  END;

  FDQuery1.Open;
  BPesquisar.Click;
end;

procedure TF01008.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'select u.*, tu.descricaoTipoUsuario from usuario u ' +
  'left outer join tipoUsuario tu on tu.idTipoUsuario = u.idTipoUsuario';
  FDQuery1.Open;
  BPesquisar.Click;
end;

procedure TF01008.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idusuario.AsInteger := DModule.buscaProximoParametro('usuario');
end;

procedure TF01008.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TF01008.DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //SILENCIA O BARULHO DO WIDOWS AL CLICAR NO ENTER
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01008.EditPesqNomeChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqNome.Text) <> '')then
  begin
    cbxPesqNome.Checked := true;
  end else
    cbxPesqNome.Checked := false;
end;

procedure TF01008.EditPesqTipoUsuarioChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqTipoUsuario.Text = '')or (EditPesqTipoUsuario.Text = ' '))then
  begin
    cbxPesqTipoUsuario.Checked := false;
      editPesqidTipoUsuario.Clear;
  end else
    cbxPesqTipoUsuario.Checked := true;
end;

Initialization
  RegisterClass(TF01008);
Finalization
  UnRegisterClass(TF01008);
end.