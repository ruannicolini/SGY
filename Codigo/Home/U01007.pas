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
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01007: TF01007;

implementation

{$R *.dfm}

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

procedure TF01007.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idpatologia.AsInteger := DModule.buscaProximoParametro('patologia');
end;

Initialization
  RegisterClass(TF01007);
Finalization
  UnRegisterClass(TF01007);
end.
