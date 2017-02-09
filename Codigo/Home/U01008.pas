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
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F01008: TF01008;

implementation

{$R *.dfm}

procedure TF01008.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idusuario.AsInteger := DModule.buscaProximoParametro('usuario');
end;

Initialization
  RegisterClass(TF01008);
Finalization
  UnRegisterClass(TF01008);
end.
