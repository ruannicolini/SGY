unit U01012;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDatamodule, UBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Mask, Vcl.DBCtrls, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TF01012 = class(TFBase)
    FDQuery1idModalidade: TIntegerField;
    FDQuery1descricaoModalidade: TStringField;
    FDQuery1valor: TSingleField;
    ClientDataSet1idModalidade: TIntegerField;
    ClientDataSet1descricaoModalidade: TStringField;
    ClientDataSet1valor: TSingleField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    cbxPesqDescricao: TCheckBox;
    EditPesqDescricao: TEdit;
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
  F01012: TF01012;

implementation

{$R *.dfm}

uses u_relatorios;

procedure TF01012.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM ALUNOMODALIDADE AM where AM.idMODALIDADE =:idM';
  DModule.qAux.ParamByName('idM').AsInteger := ClientDataSet1idModalidade.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.IsEmpty)then
  begin
        DModule.qAux.SQL.Text := 'SELECT * FROM PAGAMENTO P where P.idMODALIDADE =:idM';
        DModule.qAux.ParamByName('idM').AsInteger := ClientDataSet1idModalidade.AsInteger;
        DModule.qAux.Close;
        DModule.qAux.open;
        if(DModule.qAux.IsEmpty)then
        begin
            inherited;
        end ELSE
        BEGIN
              showmessage('MODALIDADE VINCULADA A MENSALIDADE. NÃO É POSSÍVEL EXCLUIR.');
        END;
  end else
  begin
    showmessage('MODALIDADE VINCULADA A ALUNO. NÃO É POSSÍVEL EXCLUIR.');
  end;

end;

procedure TF01012.bRelatorioClick(Sender: TObject);
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

procedure TF01012.BSalvarClick(Sender: TObject);
begin

  if TRIM(DBEdit3.Text) <> '' then
  begin
      if TRIM(DBEdit1.Text) <> '' then
      begin
          inherited;
      end else
      begin
        ShowMessage('INFORME VALOR');
      end;
  end else
  begin
    ShowMessage('INFORME DESCRIÇÃO');
  end;
end;

procedure TF01012.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  FDQuery1.SQL.Text := 'select * from modalidade where 1=1 ';
  if(cbxPesqDescricao.Checked = true)then
  begin
    FDQuery1.SQL.Add(' and descricaomodalidade like "%' + EditPesqDescricao.Text +'%"');
  end;
  FDQuery1.Open;
  BPesquisar.Click;

end;

procedure TF01012.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'select * from modalidade ';
  FDQuery1.Open;
  //BPesquisar.Click;
end;

procedure TF01012.EditPesqDescricaoChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqDescricao.Text) <> '')then
  begin
    cbxPesqDescricao.Checked := true;
  end else
    cbxPesqDescricao.Checked := false;
end;

Initialization
  RegisterClass(TF01012);
Finalization
  UnRegisterClass(TF01012);
end.
