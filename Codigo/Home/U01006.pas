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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01006: TF01006;

implementation

{$R *.dfm}

procedure TF01006.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idExercicio.AsInteger := DModule.buscaProximoParametro('exercicio');
end;

Initialization
  RegisterClass(TF01006);
Finalization
  UnRegisterClass(TF01006);
end.
