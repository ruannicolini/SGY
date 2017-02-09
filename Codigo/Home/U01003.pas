unit U01003;

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
  cxDropDownEdit, cxBlobEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtDlgs, cxImage, Vcl.Imaging.jpeg, dxCameraControl,
  Vcl.Menus, cxButtons	;

type
  TF01003 = class(TFBase)
    FDQuery1idEquipamento: TIntegerField;
    FDQuery1descricaoEquipamento: TStringField;
    ClientDataSet1idEquipamento: TIntegerField;
    ClientDataSet1descricaoEquipamento: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    ImgListEquipamento: TImageList;
    ListView: TListView;
    FDQuery1imgEquipamento: TIntegerField;
    ClientDataSet1imgEquipamento: TIntegerField;
    Label3: TLabel;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure ListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure BPesquisarClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    UltSelecionado: String;
  end;

var
  F01003: TF01003;

implementation

{$R *.dfm}

procedure TF01003.BPesquisarClick(Sender: TObject);
var
  Cont, I : Integer;
  ListItem : TListItem;
begin
  //CARREGA IMAGENS PRIMEIRO
  Cont := ImgListEquipamento.Count;
  for I := 0 to Cont - 1 do
  begin
    ListItem := ListView.Items.Add;
    ListItem.ImageIndex:= I;
    ListItem.Caption := IntToStr(I);
  end;

  //CHAMA FUNÇÕES PRE DEFINIDAS
  inherited;
end;

procedure TF01003.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idEquipamento.AsInteger := DModule.buscaProximoParametro('equipamento');
end;

procedure TF01003.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ListView.Items.Item[CLIENTDATASET1IMGEQUIPAMENTO.ASINTEGER].Selected := TRUE;
end;

procedure TF01003.ListViewSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  inherited;
  IF((ds.DataSet.State = dsEdit) OR (ds.DataSet.State = dsInsert))THEN
  BEGIN
    if Item.Caption <> UltSelecionado then
    begin
      ClientDataSet1imgEquipamento.AsInteger := strtoint(Item.Caption);
      UltSelecionado := Item.Caption;
    end;
  END;


end;

Initialization
  RegisterClass(TF01003);
Finalization
  UnRegisterClass(TF01003);
end.

