unit U01004;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdataModule, UBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBGridBeleza, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxDBEdit;

type
  TF01004 = class(TFBase)
    FDQuery1idGrupoExercicio: TIntegerField;
    FDQuery1descricaoGrupoExercicio: TStringField;
    ClientDataSet1idGrupoExercicio: TIntegerField;
    ClientDataSet1descricaoGrupoExercicio: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01004: TF01004;

implementation

{$R *.dfm}

procedure TF01004.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM EXERCICIO p where p.idGRUPOEXERCICIO =:idG';
  DModule.qAux.ParamByName('idG').AsInteger := ClientDataSet1idGrupoExercicio.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    showmessage('GRUPO POSSUI EXERCÍCIOS VINCULADOS A ELE. NÃO É POSSÍVEL EXCLUIR.')
  end else
  begin
    //Executa exclusão
    inherited;
  end;
end;

procedure TF01004.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idGrupoExercicio.AsInteger := DModule.buscaProximoParametro('grupoexercicio');
end;

Initialization
  RegisterClass(TF01004);
Finalization
  UnRegisterClass(TF01004);
end.
