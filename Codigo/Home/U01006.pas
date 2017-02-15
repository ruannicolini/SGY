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
  Vcl.Mask, Vcl.DBCtrls;

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
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure DBEditBeleza1KeyPress(Sender: TObject; var Key: Char);
    procedure BExcluirClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01006: TF01006;

implementation

{$R *.dfm}

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

Initialization
  RegisterClass(TF01006);
Finalization
  UnRegisterClass(TF01006);
end.
