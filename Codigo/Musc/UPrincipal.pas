unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, cxContainer, cxEdit, cxImage, dxGDIPlusClasses, cxLabel,
  Vcl.ComCtrls, Vcl.Buttons, dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, JvExControls,
  JvSpeedButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxListBox,
  cxDBEdit, Vcl.Grids, Vcl.DBGrids, DBGridBeleza, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.SqlExpr, Datasnap.DSConnect, Data.DBXJSONCommon,
  System.ImageList, Vcl.ImgList, dxStatusBar, Vcl.Menus, cxButtons, frxClass,
  frxExportPDF, frxGradient, frxDBSet;

type
  TFPrincipal = class(TForm)
    PanelBackground: TPanel;
    PanelMenu: TPanel;
    ScrollBox1: TScrollBox;
    dxTileControl1: TdxTileControl;
    grupoMenu: TdxTileControlGroup;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    dxTileControl1Item7: TdxTileControlItem;
    dxTileControl1Item8: TdxTileControlItem;
    FotoAluno: TdxTileControlItem;
    imgAluno: TcxImage;
    labelNomeAluno: TcxLabel;
    PanelPrincipal: TPanel;
    btnNext: TSpeedButton;
    btnPrior: TSpeedButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    qFichaAluno: TFDQuery;
    pFichaAluno: TDataSetProvider;
    CDSFichaAluno: TClientDataSet;
    DSFichaAluno: TDataSource;
    qserie: TFDQuery;
    pSerie: TDataSetProvider;
    cdsSerie: TClientDataSet;
    dsSerie: TDataSource;
    qserieidFichaAluno: TIntegerField;
    qserieidTreino: TIntegerField;
    qserieidExercicio: TIntegerField;
    qserieqtdSerie: TIntegerField;
    qserieqtdRepeticao: TIntegerField;
    qseriedescricaoTreino: TStringField;
    qserienomeExercicio: TStringField;
    qserietipomedida: TStringField;
    qserieidgrupoExercicio: TIntegerField;
    qseriedescricaoGrupoExercicio: TStringField;
    qserieidequipamento: TIntegerField;
    qseriedescricaoequipamento: TStringField;
    cdsSerieidFichaAluno: TIntegerField;
    cdsSerieidTreino: TIntegerField;
    cdsSerieidExercicio: TIntegerField;
    cdsSerieqtdSerie: TIntegerField;
    cdsSerieqtdRepeticao: TIntegerField;
    cdsSeriedescricaoTreino: TStringField;
    cdsSerienomeExercicio: TStringField;
    cdsSerietipomedida: TStringField;
    cdsSerieidgrupoExercicio: TIntegerField;
    cdsSeriedescricaoGrupoExercicio: TStringField;
    cdsSerieidequipamento: TIntegerField;
    cdsSeriedescricaoequipamento: TStringField;
    gridFA: TDBGridBeleza;
    qserieidYoutube: TStringField;
    cdsSerieidYoutube: TStringField;
    qAlunoRegistro: TFDQuery;
    pAlunoRegistro: TDataSetProvider;
    cdsAlunoRegistro: TClientDataSet;
    dsAlunoRegistro: TDataSource;
    qAlunoRegistroidAluno: TIntegerField;
    qAlunoRegistronomeAluno: TStringField;
    qAlunoRegistrodataNascimento: TDateField;
    qAlunoRegistroemail: TStringField;
    qAlunoRegistrosexo: TStringField;
    qAlunoRegistrocidade: TStringField;
    qAlunoRegistrobairro: TStringField;
    qAlunoRegistrorua: TStringField;
    qAlunoRegistronumero: TIntegerField;
    qAlunoRegistrocep: TIntegerField;
    qAlunoRegistrotel1: TStringField;
    qAlunoRegistrotel2: TStringField;
    qAlunoRegistronomeResponsavel: TStringField;
    qAlunoRegistroparentescoResponsavel: TStringField;
    qAlunoRegistrotelResponsavel: TStringField;
    qAlunoRegistrodataCadastro: TDateField;
    qAlunoRegistrocpf: TStringField;
    qAlunoRegistroidInstrutor: TIntegerField;
    qAlunoRegistroidProtocoloAvaFisica: TIntegerField;
    cdsAlunoRegistroidAluno: TIntegerField;
    cdsAlunoRegistronomeAluno: TStringField;
    cdsAlunoRegistrodataNascimento: TDateField;
    cdsAlunoRegistroemail: TStringField;
    cdsAlunoRegistrosexo: TStringField;
    cdsAlunoRegistrocidade: TStringField;
    cdsAlunoRegistrobairro: TStringField;
    cdsAlunoRegistrorua: TStringField;
    cdsAlunoRegistronumero: TIntegerField;
    cdsAlunoRegistrocep: TIntegerField;
    cdsAlunoRegistrotel1: TStringField;
    cdsAlunoRegistrotel2: TStringField;
    cdsAlunoRegistronomeResponsavel: TStringField;
    cdsAlunoRegistroparentescoResponsavel: TStringField;
    cdsAlunoRegistrotelResponsavel: TStringField;
    cdsAlunoRegistrodataCadastro: TDateField;
    cdsAlunoRegistrocpf: TStringField;
    cdsAlunoRegistroidInstrutor: TIntegerField;
    cdsAlunoRegistroidProtocoloAvaFisica: TIntegerField;
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    ImageListAUX: TImageList;
    qRelFicha: TFDQuery;
    qRelFichaidAluno: TIntegerField;
    qRelFichanomeAluno: TStringField;
    qRelFichadataNascimento: TDateField;
    qRelFichaemail: TStringField;
    qRelFichasexo: TStringField;
    qRelFichacidade: TStringField;
    qRelFichabairro: TStringField;
    qRelFicharua: TStringField;
    qRelFichanumero: TIntegerField;
    qRelFichacep: TIntegerField;
    qRelFichatel1: TStringField;
    qRelFichatel2: TStringField;
    qRelFichanomeResponsavel: TStringField;
    qRelFichaparentescoResponsavel: TStringField;
    qRelFichatelResponsavel: TStringField;
    qRelFichadataCadastro: TDateField;
    qRelFichacpf: TStringField;
    qRelFichaidInstrutor: TIntegerField;
    qRelFichaNOMEINSTRUTORFICHA: TStringField;
    qRelFichaDATACOMPOSICAO: TDateField;
    qRelFichaDATAVENCIMENTO: TDateField;
    qRelFichaCODFICHA: TIntegerField;
    pRelFicha: TDataSetProvider;
    CDSRelFicha: TClientDataSet;
    CDSRelFichaidAluno: TIntegerField;
    CDSRelFichanomeAluno: TStringField;
    CDSRelFichadataNascimento: TDateField;
    CDSRelFichaemail: TStringField;
    CDSRelFichasexo: TStringField;
    CDSRelFichacidade: TStringField;
    CDSRelFichabairro: TStringField;
    CDSRelFicharua: TStringField;
    CDSRelFichanumero: TIntegerField;
    CDSRelFichacep: TIntegerField;
    CDSRelFichatel1: TStringField;
    CDSRelFichatel2: TStringField;
    CDSRelFichanomeResponsavel: TStringField;
    CDSRelFichaparentescoResponsavel: TStringField;
    CDSRelFichatelResponsavel: TStringField;
    CDSRelFichadataCadastro: TDateField;
    CDSRelFichacpf: TStringField;
    CDSRelFichaidInstrutor: TIntegerField;
    CDSRelFichaNOMEINSTRUTORFICHA: TStringField;
    CDSRelFichaDATACOMPOSICAO: TDateField;
    CDSRelFichaDATAVENCIMENTO: TDateField;
    CDSRelFichaCODFICHA: TIntegerField;
    DSRelFicha: TDataSource;
    qserieFichaAluno: TFDQuery;
    qserieFichaAlunoidFichaAluno: TIntegerField;
    qserieFichaAlunoidTreino: TIntegerField;
    qserieFichaAlunoidExercicio: TIntegerField;
    qserieFichaAlunoqtdSerie: TIntegerField;
    qserieFichaAlunoqtdRepeticao: TIntegerField;
    qserieFichaAlunodescricaoTreino: TStringField;
    qserieFichaAlunonomeExercicio: TStringField;
    qserieFichaAlunoidgrupoExercicio: TIntegerField;
    qserieFichaAlunodescricaoGrupoExercicio: TStringField;
    qserieFichaAlunoidequipamento: TIntegerField;
    qserieFichaAlunodescricaoequipamento: TStringField;
    qserieFichaAlunotipomedida: TStringField;
    pserieFichaAluno: TDataSetProvider;
    CDSserieFichaAluno: TClientDataSet;
    CDSserieFichaAlunoidFichaAluno: TIntegerField;
    CDSserieFichaAlunoidTreino: TIntegerField;
    CDSserieFichaAlunoidExercicio: TIntegerField;
    CDSserieFichaAlunoqtdSerie: TIntegerField;
    CDSserieFichaAlunoqtdRepeticao: TIntegerField;
    CDSserieFichaAlunodescricaoTreino: TStringField;
    CDSserieFichaAlunonomeExercicio: TStringField;
    CDSserieFichaAlunoidgrupoExercicio: TIntegerField;
    CDSserieFichaAlunodescricaoGrupoExercicio: TStringField;
    CDSserieFichaAlunoidequipamento: TIntegerField;
    CDSserieFichaAlunodescricaoequipamento: TStringField;
    DSserieFichaAluno: TDataSource;
    frxGradientObject1: TfrxGradientObject;
    frxPDFExport1: TfrxPDFExport;
    CDSserieFichaAlunotipomedida: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    qFichaAlunoidAluno: TIntegerField;
    qFichaAlunonomeAluno: TStringField;
    qFichaAlunodataNascimento: TDateField;
    qFichaAlunoemail: TStringField;
    qFichaAlunosexo: TStringField;
    qFichaAlunocidade: TStringField;
    qFichaAlunobairro: TStringField;
    qFichaAlunorua: TStringField;
    qFichaAlunonumero: TIntegerField;
    qFichaAlunocep: TIntegerField;
    qFichaAlunotel1: TStringField;
    qFichaAlunotel2: TStringField;
    qFichaAlunonomeResponsavel: TStringField;
    qFichaAlunoparentescoResponsavel: TStringField;
    qFichaAlunotelResponsavel: TStringField;
    qFichaAlunodataCadastro: TDateField;
    qFichaAlunocpf: TStringField;
    qFichaAlunoidInstrutor: TIntegerField;
    qFichaAlunoidProtocoloAvaFisica: TIntegerField;
    qFichaAlunoNOMEINSTRUTORFICHA: TStringField;
    qFichaAlunoDATACOMPOSICAO: TDateField;
    qFichaAlunoDATAVENCIMENTO: TDateField;
    CDSFichaAlunoidAluno: TIntegerField;
    CDSFichaAlunonomeAluno: TStringField;
    CDSFichaAlunodataNascimento: TDateField;
    CDSFichaAlunoemail: TStringField;
    CDSFichaAlunosexo: TStringField;
    CDSFichaAlunocidade: TStringField;
    CDSFichaAlunobairro: TStringField;
    CDSFichaAlunorua: TStringField;
    CDSFichaAlunonumero: TIntegerField;
    CDSFichaAlunocep: TIntegerField;
    CDSFichaAlunotel1: TStringField;
    CDSFichaAlunotel2: TStringField;
    CDSFichaAlunonomeResponsavel: TStringField;
    CDSFichaAlunoparentescoResponsavel: TStringField;
    CDSFichaAlunotelResponsavel: TStringField;
    CDSFichaAlunodataCadastro: TDateField;
    CDSFichaAlunocpf: TStringField;
    CDSFichaAlunoidInstrutor: TIntegerField;
    CDSFichaAlunoidProtocoloAvaFisica: TIntegerField;
    CDSFichaAlunoNOMEINSTRUTORFICHA: TStringField;
    CDSFichaAlunoDATACOMPOSICAO: TDateField;
    CDSFichaAlunoDATAVENCIMENTO: TDateField;
    qFichaAlunoIDFICHAALUNO: TIntegerField;
    CDSFichaAlunoIDFICHAALUNO: TIntegerField;
    REPORT_FICHAcp: TfrxReport;
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure DSFichaAlunoDataChange(Sender: TObject; Field: TField);
    procedure gridFADblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsAlunoRegistroDataChange(Sender: TObject; Field: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure DSRelFichaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateALUNO(AOwner: TComponent; codAluno: INTEGER);
    procedure AdjustColumnWidths(DBGrid: TDBGrid);
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UDataModule, U01015, DBCommon, UMetodosServidor, U01018;

procedure TFPrincipal.AdjustColumnWidths(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount-1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;
  if DBGrid.BorderStyle = bsSingle then begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Filler;
  end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;

procedure TFPrincipal.btnNextClick(Sender: TObject);
begin

  if(cxpagecontrol1.ActivePageIndex < (3 - 1) ) then
  begin
    cxpagecontrol1.ActivePageIndex := cxpagecontrol1.ActivePageIndex + 1;
  end;

end;

procedure TFPrincipal.btnPriorClick(Sender: TObject);
begin

  if(cxpagecontrol1.ActivePageIndex > 0)then
  begin
    cxpagecontrol1.ActivePageIndex := cxpagecontrol1.ActivePageIndex - 1;
  end;

end;

constructor TFPrincipal.CreateALUNO(AOwner: TComponent; codAluno: INTEGER);
begin

  inherited Create(AOwner);

  //CONFIG YOUTUBE
  Dmodule.qAux.close;
  Dmodule.qAux.SQL.Text := 'select * from configuracaounidade where IDconfiguracaounidade = 1';
  Dmodule.qAux.open;
  DMODULE.confVideoYoutube := DModule.qAux.FieldByName('videoYoutube').AsBoolean;
  DMODULE.confservidorImagens := DModule.qAux.FieldByName('servidorImagens').AsBoolean;

  //PESQUISA REGISTRO DO ALUNO
  qAlunoRegistro.Params[0].AsInteger := codAluno;
  dsAlunoRegistro.DataSet.close;
  dsAlunoRegistro.DataSet.open;



end;

procedure TFPrincipal.dsAlunoRegistroDataChange(Sender: TObject; Field: TField);
var
  caminho : String;
  ser: TServerMethods1Client;
  fotoStream : TStream;
begin

  //PESQUISA FICHA DE EXERCICIO
  qFichaAluno.Params[0].AsInteger := cdsAlunoRegistroidAluno.AsInteger;
  DSFichaAluno.DataSet.close;
  DSFichaAluno.DataSet.open;

  //NOME ALUNO
  labelNomeAluno.Caption := cdsAlunoRegistronomeAluno.AsString;

  //PESQUISA FOTO DO ALUNO
  IF(DModule.confservidorImagens = TRUE)THEN
  BEGIN

      // Assimila foto do servidor
      try
          SQLConnection1.Open;
          if SQLConnection1.Connected then
          begin
              ser := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
              fotoStream := ser.getFotoAluno(cdsAlunoRegistroidAluno.AsInteger);

              if not(fotoStream = nil)then
              begin
                fotoStream.Position := 0;
                imgAluno.Picture.Bitmap.LoadFromStream(fotoStream);
              end else
              begin
                //imgAluno.Picture := nil;
                //ImageListAUX.GetBitmap(0, imgAluno.Picture.Bitmap);
              end;
              ser.Free;
          end;
          SQLConnection1.close;
      except
      on e:exception do
          begin
              ImageListAUX.GetBitmap(1, imgAluno.Picture.Bitmap);
              //ShowMessage('Erro ao requerer servidor de imagens: ' + #13 + e.message);
          end;
      end;


  END ELSE
  BEGIN
      // Foto na pasta local img_Aluno
      caminho := ExtractFilePath(Application.ExeName) + 'img_Aluno\';
      if FileExists(caminho + cdsAlunoRegistroidAluno.Asstring + '.bmp')then
      begin
        imgAluno.Picture := nil;
        imgAluno.Picture.LoadFromFile(caminho + cdsAlunoRegistroidAluno.Asstring + '.bmp');
      end else
      begin
        //imgAluno.Picture := nil;
        //cxImageListAUX.GetBitmap(0, imgAluno.Picture.Bitmap);
        //imgAluno.Style.Color := clWindow;
      end;
  END;

end;

procedure TFPrincipal.DSFichaAlunoDataChange(Sender: TObject; Field: TField);
begin

  //PESQUISA AS SÉRIES DA FICHA DE EXERCICIO
  qserie.Params[0].AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
  DSserie.DataSet.close;
  DSserie.DataSet.open;

end;

procedure TFPrincipal.DSRelFichaDataChange(Sender: TObject; Field: TField);
begin
  //PESQUISA FICHA DE EXERCICIO
  qserieFichaAluno.Params[0].AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
  DSserieFichaAluno.DataSet.close;
  DSserieFichaAluno.DataSet.open;
end;

procedure TFPrincipal.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
    With TF01018.Create(self, CDSFichaAlunoidFichaAluno.AsInteger) do  // 1 =Pagamento, 2=Isenção
    Begin

        if(ShowModal = mrOk)then
        begin
            TRY
                qRelFicha.ParamByName('IDFA').AsInteger := CDSFichaAlunoidFichaAluno.AsInteger;
                DSRelFicha.DataSet.Close;
                DSRelFicha.DataSet.Open;

                if NOT(U01018.resposta = 'COMPLETO')then
                begin
                    CDSserieFichaAluno.Filtered := false;
                    CDSserieFichaAluno.Filter := 'descricaoTreino LIKE '+ QuotedStr('%'+ U01018.resposta + '%');
                    CDSserieFichaAluno.Filtered := true;
                end;

                REPORT_FICHAcp.PrepareReport;
                REPORT_FICHAcp.print;
                //REPORT_FICHAcp.ShowReport(TRUE);

                //limpa filter
                CDSserieFichaAluno.Filtered := false;
            EXCEPT
                RAISE;
            END;
        end;
        FREE;
    End;
end;

procedure TFPrincipal.dxTileControl1Item8Click(Sender: TdxTileControlItem);
begin
  CLOSE;
end;

procedure TFPrincipal.FormActivate(Sender: TObject);
begin

  //Ajusta a DBGridBeleza
  AdjustColumnWidths(gridFA);

end;

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
showmessage('teste');
  if ((ssAlt in Shift) and (Key = VK_F4)) then
  Key := 0;
end;

procedure TFPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
showmessage('teste');
  if ((Key = #13)) then
  begin
  //Key := 0;
  end;
end;

procedure TFPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
showmessage('teste');
  if ((ssAlt in Shift) and (Key = VK_F4)) then
  Key := 0;
end;

procedure TFPrincipal.gridFADblClick(Sender: TObject);
begin

  IF(DModule.confvideoYoutube = TRUE)THEN
  BEGIN
      IF NOT(cdsSerieidYoutube.IsNull)THEN
      BEGIN
          //CHAMA VIDEO DO YOUTUBE;
          With TF01015.CreateVideo(Fprincipal, cdsSerieidYoutube.AsString) do
          Begin
              // O SHOW DO FORM É FEITO DENTRO DO CREATEVIDEO;
              //OPTEI POR ESSA ABORDAGEM PARA CARREGAR OUTRO VIDEO SERM A NECESSIDADE
              //DE CRIAR OUTRO FORM.
              WindowState := wsMaximized;
          End;
      END;
  END;

end;

end.
