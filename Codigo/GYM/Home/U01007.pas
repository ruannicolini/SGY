unit U01007;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DBGridBeleza,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, UDataModule, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls, Vcl.Mask;

type
  TF01007 = class(TFBase)
    FDQuery1idpatologia: TIntegerField;
    FDQuery1nomePatologia: TStringField;
    FDQuery1observacao: TStringField;
    ClientDataSet1idpatologia: TIntegerField;
    ClientDataSet1nomePatologia: TStringField;
    ClientDataSet1observacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cbxPesqDescricao: TCheckBox;
    EditPesqDescricao: TEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure BExcluirClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure EditPesqDescricaoChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01007: TF01007;

implementation

{$R *.dfm}

uses u_relatorios;

procedure TF01007.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM ALUNOPATOLOGIA AP where AP.idPATOLOGIA =:idP';
  DModule.qAux.ParamByName('idP').AsInteger := ClientDataSet1idpatologia.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.IsEmpty)then
  begin
    //Executa exclusão
    inherited;
  end else
  begin
    showmessage('PATOLOGIA POSSUI REGISTRO DE USO EM ANAMNESE DE ALUNO. NÃO É POSSÍVEL EXCLUIR.')
  end;

end;

procedure TF01007.bRelatorioClick(Sender: TObject);
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
    ShowMessage('Relatório necessita de pesquisa');
  end;
end;

procedure TF01007.BSalvarClick(Sender: TObject);
begin
  if TRIM(DBEdit2.Text) <> '' then
  begin
      inherited;
  end else
  begin
    ShowMessage('INFORME DESCRIÇÃO');
  end;

end;

procedure TF01007.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  FDQuery1.SQL.Text := 'select * from patologia where 1=1 ';
  if(cbxPesqDescricao.Checked = true)then
  begin
    FDQuery1.SQL.Add(' and nomePatologia like "%' + EditPesqDescricao.Text +'%"');
  end;
  FDQuery1.Open;
  BPesquisar.Click;

end;

procedure TF01007.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'select * from patologia ';
  FDQuery1.Open;
  //BPesquisar.Click;
end;

procedure TF01007.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idpatologia.AsInteger := DModule.buscaProximoParametro('patologia');
end;

procedure TF01007.EditPesqDescricaoChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqDescricao.Text) <> '')then
  begin
    cbxPesqDescricao.Checked := true;
  end else
    cbxPesqDescricao.Checked := false;
end;

Initialization
  RegisterClass(TF01007);
Finalization
  UnRegisterClass(TF01007);
end.
