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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01004: TF01004;

implementation

{$R *.dfm}

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
