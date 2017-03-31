unit U01006;

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
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, EditBeleza, DBEditBeleza,
  Vcl.Mask, Vcl.DBCtrls, cxGroupBox, cxRadioGroup;

type
  TF01006 = class(TFBase)
    FDQuery1idExercicio: TIntegerField;
    FDQuery1nomeExercicio: TStringField;
    FDQuery1idEquipamento: TIntegerField;
    FDQuery1idGrupoExercicio: TIntegerField;
    FDQuery1descricaoEquipamento: TStringField;
    FDQuery1descricaoGrupoExercicio: TStringField;
    ClientDataSet1idExercicio: TIntegerField;
    ClientDataSet1nomeExercicio: TStringField;
    ClientDataSet1idEquipamento: TIntegerField;
    ClientDataSet1idGrupoExercicio: TIntegerField;
    ClientDataSet1descricaoEquipamento: TStringField;
    ClientDataSet1descricaoGrupoExercicio: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEditBeleza1: TDBEditBeleza;
    DBEditBeleza2: TDBEditBeleza;
    cbxPesqDescricao: TCheckBox;
    EditPesqDescricao: TEdit;
    EditPesqEquipamento: TEditBeleza;
    editPesqidEquipamento: TEdit;
    cbxPesqEquipamento: TCheckBox;
    EditPesqGrupo: TEditBeleza;
    EditPesqIdGrupo: TEdit;
    cbxPesqGrupo: TCheckBox;
    GroupBox1: TGroupBox;
    DBEdit5: TDBEdit;
    FDQuery1idYoutube: TStringField;
    ClientDataSet1idYoutube: TStringField;
    cxDBRadioGroup1: TcxDBRadioGroup;
    FDQuery1tipoMedida: TStringField;
    ClientDataSet1tipoMedida: TStringField;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
    procedure BExcluirClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure EditPesqEquipamentoChange(Sender: TObject);
    procedure EditPesqGrupoChange(Sender: TObject);
    procedure EditPesqDescricaoChange(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure EditPesqEquipamentoKeyPress(Sender: TObject; var Key: Char);
    procedure DSStateChange(Sender: TObject);
    procedure DBGridBeleza1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01006: TF01006;

implementation

{$R *.dfm}

uses u_relatorios, U01015, UPrincipal;

procedure TF01006.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM SERIE S where S.idExercicio =:idE';
  DModule.qAux.ParamByName('idE').AsInteger := ClientDataSet1idExercicio.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.IsEmpty)then
  begin
        DModule.qAux.SQL.Text := 'SELECT * FROM fichapredefinidaserie FS where FS.idExercicio =:idE';
        DModule.qAux.ParamByName('idE').AsInteger := ClientDataSet1idExercicio.AsInteger;
        DModule.qAux.Close;
        DModule.qAux.open;
        if(DModule.qAux.IsEmpty)then
        begin
            inherited;
        end ELSE
        BEGIN
            showmessage('EXERCÍCIO VINCULADO A FICHA PREDEFINIDA. NÃO É POSSÍVEL EXCLUIR.')
        END;
  end else
  begin
    showmessage('EXERCÍCIO VINCULADO A FICHA DE ALUNO. NÃO É POSSÍVEL EXCLUIR.')
  end;

end;

procedure TF01006.bRelatorioClick(Sender: TObject);
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

procedure TF01006.BSalvarClick(Sender: TObject);
begin
  if TRIM(DBEdit2.Text) <> '' then
  begin
      if TRIM(DBEdit3.Text) <> '' then
      begin
          if TRIM(DBEdit4.Text) <> '' then
          begin
              inherited;
          end else
          begin
            ShowMessage('INFORME O GRUPO');
          end;

      end else
      begin
        ShowMessage('INFORME O EQUIPAMENTO PADRÃO UTILIZADO');
      end;

  end else
  begin
    ShowMessage('INFORME A DESCRIÇÃO DO EXERCÍCIO');
  end;

end;

procedure TF01006.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  FDQuery1.SQL.Text := 'select ex.*, eq.descricaoEquipamento, ge.descricaoGrupoExercicio from exercicio ex '+
  'left outer join equipamento eq on eq.idEquipamento = ex.idEquipamento '+
  'left outer join grupoExercicio ge on ge.idGrupoExercicio = ex.idgrupoExercicio where 1=1 ';

  if(cbxPesqDescricao.Checked = true)then
  begin
    FDQuery1.SQL.Add(' and ex.nomeExercicio like "%' + EditPesqDescricao.Text +'%"');
  end;
  if(cbxPesqEquipamento.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add('  and ex.idEquipamento = ' + editPesqidEquipamento.Text );
  END;
  if(cbxPesqGrupo.Checked = true)then
  BEGIN
    FDQuery1.SQL.Add('  and ex.idGrupoExercicio = ' + EditPesqIdGrupo.Text );
  END;

  FDQuery1.Open;
  BPesquisar.Click;

end;

procedure TF01006.BtnLimparFiltrosClick(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'select ex.*, eq.descricaoEquipamento, ge.descricaoGrupoExercicio from exercicio ex '+
  'left outer join equipamento eq on eq.idEquipamento = ex.idEquipamento '+
  'left outer join grupoExercicio ge on ge.idGrupoExercicio = ex.idgrupoExercicio ';
  FDQuery1.Open;
  //BPesquisar.Click;
end;

procedure TF01006.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idExercicio.AsInteger := DModule.buscaProximoParametro('exercicio');
end;

procedure TF01006.DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //SILENCIA O BARULHO DO WIDOWS AL CLICAR NO ENTER
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01006.DBGridBeleza1DblClick(Sender: TObject);
begin
  inherited;

  IF(DModule.confvideoYoutube = TRUE)THEN
  BEGIN
      IF NOT(ClientDataSet1idYoutube.IsNull)THEN
      BEGIN
          //CHAMA VIDEO DO YOUTUBE;
          With TF01015.CreateVideo(Fprincipal, ClientDataSet1idYoutube.AsString) do
          Begin
              // O SHOW DO FORM É FEITO DENTRO DO CREATEVIDEO;
              //OPTEI POR ESSA ABORDAGEM PARA CARREGAR OUTRO VIDEO SERM A NECESSIDADE
              //DE CRIAR OUTRO FORM.
          End;
      END;
  END;

end;

procedure TF01006.DSStateChange(Sender: TObject);
begin
  inherited;
  IF(DS.State = dsInsert)THEN
  BEGIN
    ClientDataSet1tipoMedida.AsString := 'U';
  END;
end;

procedure TF01006.EditPesqDescricaoChange(Sender: TObject);
begin
  inherited;
  if( TRIM(EditPesqDescricao.Text) <> '')then
  begin
    cbxPesqDescricao.Checked := true;
  end else
    cbxPesqDescricao.Checked := false;
end;

procedure TF01006.EditPesqEquipamentoChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqEquipamento.Text = '')or (EditPesqEquipamento.Text = ' '))then
  begin
    cbxPesqEquipamento.Checked := false;
      editPesqidEquipamento.Clear;
  end else
    cbxPesqEquipamento.Checked := true;
end;

procedure TF01006.EditPesqEquipamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //Silencia a tecla enter no Windows
  if key = #13 then
  begin
    key := #0;
    // o q vc quer fazer no enter
  end;
end;

procedure TF01006.EditPesqGrupoChange(Sender: TObject);
begin
  inherited;
  if(  (EditPesqGrupo.Text = '')or (EditPesqGrupo.Text = ' '))then
  begin
    cbxPesqGrupo.Checked := false;
      editPesqidGrupo.Clear;
  end else
    cbxPesqGrupo.Checked := true;
end;

procedure TF01006.FormCreate(Sender: TObject);
begin
  inherited;
  //
  IF(DModule.confvideoYoutube = FALSE)THEN
  BEGIN
    GroupBox1.Visible := FALSE;
  END ELSE
  BEGIN
    GroupBox1.Visible := TRUE;
  END;

end;

Initialization
  RegisterClass(TF01006);
Finalization
  UnRegisterClass(TF01006);
end.
