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
  Vcl.Menus, cxButtons, PngImageList	;

type
  TF01003 = class(TFBase)
    FDQuery1idEquipamento: TIntegerField;
    FDQuery1descricaoEquipamento: TStringField;
    ClientDataSet1idEquipamento: TIntegerField;
    ClientDataSet1descricaoEquipamento: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ImgListEquipamento: TImageList;
    PngImageList1: TPngImageList;
    PngImageList2: TPngImageList;
    DBEdit2: TDBEdit;
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure BExcluirClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
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

procedure TF01003.BExcluirClick(Sender: TObject);
begin
  DModule.qAux.SQL.Text := 'SELECT * FROM EXERCICIO p where p.idEQUIPAMENTO =:idE';
  DModule.qAux.ParamByName('idE').AsInteger := ClientDataSet1idEquipamento.AsInteger;
  DModule.qAux.Close;
  DModule.qAux.open;
  if(DModule.qAux.RecordCount > 0)then
  begin
    showmessage('EQUIPAMENTO POSSUI EXERCÍCIOS VINCULADOS A ELE. NÃO É POSSÍVEL EXCLUIR.')
  end else
  begin
    //Executa exclusão
    inherited;
  end;

end;

procedure TF01003.BSalvarClick(Sender: TObject);
begin
  if TRIM(DBEdit2.Text) <> '' then
  begin
      inherited;
  end else
  begin
    ShowMessage('PREENCHA A DESCRIÇÃO');
  end;

end;

procedure TF01003.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idEquipamento.AsInteger := DModule.buscaProximoParametro('equipamento');
end;

Initialization
  RegisterClass(TF01003);
Finalization
  UnRegisterClass(TF01003);
end.

