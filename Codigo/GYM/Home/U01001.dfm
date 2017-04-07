inherited F01001: TF01001
  Caption = 'F01001'
  ClientHeight = 741
  ClientWidth = 1008
  OnCreate = FormCreate
  ExplicitWidth = 1024
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel [0]
    Left = 248
    Top = 252
    Width = 17
    Height = 13
    Caption = 'TEL'
  end
  inherited PageControl: TPageControl
    Width = 1008
    Height = 706
    TabStop = False
    ExplicitWidth = 1008
    ExplicitHeight = 706
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 678
      inherited grDados: TGroupBox
        Width = 1000
        Height = 678
        ExplicitWidth = 1000
        ExplicitHeight = 678
        object cxPageControl1: TcxPageControl
          Left = 2
          Top = 15
          Width = 996
          Height = 661
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = 16382457
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Properties.ActivePage = pagPerfil
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npLeftTop
          Properties.Style = 9
          Properties.TabHeight = 30
          Properties.TabPosition = tpBottom
          Properties.TabSlants.Positions = [spLeft, spRight]
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          TabSlants.Positions = [spLeft, spRight]
          ClientRectBottom = 630
          ClientRectRight = 996
          ClientRectTop = 0
          object pagPerfil: TcxTabSheet
            Caption = 'PERFIL'
            Color = 16382457
            ImageIndex = 0
            ParentColor = False
            object PanelPerfil: TPanel
              Left = 0
              Top = 0
              Width = 996
              Height = 630
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBox_ALUNO: TGroupBox
                Left = 16
                Top = -4
                Width = 638
                Height = 253
                Caption = 'ALUNO'
                TabOrder = 0
                object Label12: TLabel
                  Left = 223
                  Top = 141
                  Width = 22
                  Height = 16
                  Caption = 'CPF'
                end
                object Label14: TLabel
                  Left = 223
                  Top = 193
                  Width = 21
                  Height = 16
                  Caption = 'TEL'
                end
                object Label3: TLabel
                  Left = 430
                  Top = 193
                  Width = 35
                  Height = 16
                  Caption = 'EMAIL'
                end
                object Label5: TLabel
                  Left = 223
                  Top = 34
                  Width = 34
                  Height = 16
                  Caption = 'NOME'
                end
                object Label6: TLabel
                  Left = 15
                  Top = 193
                  Width = 21
                  Height = 16
                  Caption = 'CEL'
                end
                object Label28: TLabel
                  Left = 430
                  Top = 87
                  Width = 35
                  Height = 16
                  Alignment = taCenter
                  Caption = 'IDADE'
                end
                object Label29: TLabel
                  Left = 223
                  Top = 87
                  Width = 72
                  Height = 16
                  Caption = 'DATA NASC.'
                end
                object cxDBDateEdit1: TcxDBDateEdit
                  Left = 223
                  Top = 109
                  DataBinding.DataField = 'dataNascimento'
                  DataBinding.DataSource = DS
                  TabOrder = 0
                  OnExit = cxDBDateEdit1Exit
                  Width = 192
                end
                object cxImage1: TcxImage
                  Left = 14
                  Top = 34
                  Properties.GraphicTransparency = gtOpaque
                  Properties.PopupMenuLayout.MenuItems = [pmiWebCam, pmiSave]
                  Properties.OnChange = cxImage1PropertiesChange
                  Style.BorderStyle = ebsSingle
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.HotTrack = True
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Height = 153
                  Width = 195
                end
                object DBEdit1: TDBEdit
                  Left = 566
                  Top = 54
                  Width = 57
                  Height = 24
                  TabStop = False
                  DataField = 'idAluno'
                  DataSource = DS
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBEdit3: TDBEdit
                  Left = 223
                  Top = 54
                  Width = 344
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'nomeAluno'
                  DataSource = DS
                  TabOrder = 3
                end
                object DBEdit9: TDBEdit
                  Left = 223
                  Top = 161
                  Width = 193
                  Height = 24
                  DataField = 'cpf'
                  DataSource = DS
                  TabOrder = 4
                  OnChange = DBEdit9Change
                  OnExit = DBEdit9Exit
                end
                object DBEdit10: TDBEdit
                  Left = 15
                  Top = 213
                  Width = 193
                  Height = 24
                  DataField = 'tel1'
                  DataSource = DS
                  TabOrder = 5
                end
                object DBEdit11: TDBEdit
                  Left = 223
                  Top = 213
                  Width = 193
                  Height = 24
                  DataField = 'tel2'
                  DataSource = DS
                  TabOrder = 6
                end
                object DBEdit12: TDBEdit
                  Left = 430
                  Top = 214
                  Width = 193
                  Height = 24
                  DataField = 'email'
                  DataSource = DS
                  TabOrder = 7
                end
                object DBRadioGroup1: TDBRadioGroup
                  Left = 430
                  Top = 141
                  Width = 193
                  Height = 44
                  Caption = 'SEXO'
                  Columns = 2
                  DataField = 'sexo'
                  DataSource = DS
                  Items.Strings = (
                    'MASCULINO'
                    'FEMININO')
                  TabOrder = 8
                  Values.Strings = (
                    'M'
                    'F')
                end
                object DBEdit14: TDBEdit
                  Left = 430
                  Top = 109
                  Width = 193
                  Height = 24
                  DataField = 'IDADE'
                  DataSource = DS
                  TabOrder = 9
                end
              end
              object GroupBox1: TGroupBox
                Left = 17
                Top = 255
                Width = 638
                Height = 112
                TabOrder = 1
                object Label7: TLabel
                  Left = 15
                  Top = 5
                  Width = 43
                  Height = 16
                  Caption = 'CIDADE'
                end
                object Label8: TLabel
                  Left = 223
                  Top = 5
                  Width = 44
                  Height = 16
                  Caption = 'BAIRRO'
                end
                object Label9: TLabel
                  Left = 430
                  Top = 57
                  Width = 50
                  Height = 16
                  Caption = 'NUMERO'
                  FocusControl = cxDBSpinEdit2
                end
                object Label10: TLabel
                  Left = 15
                  Top = 57
                  Width = 24
                  Height = 16
                  Caption = 'RUA'
                end
                object Label11: TLabel
                  Left = 430
                  Top = 5
                  Width = 22
                  Height = 16
                  Caption = 'CEP'
                end
                object cxDBSpinEdit2: TcxDBSpinEdit
                  Left = 430
                  Top = 77
                  DataBinding.DataField = 'numero'
                  DataBinding.DataSource = DS
                  TabOrder = 0
                  Width = 193
                end
                object DBEdit6: TDBEdit
                  Left = 15
                  Top = 25
                  Width = 193
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'cidade'
                  DataSource = DS
                  TabOrder = 1
                end
                object DBEdit7: TDBEdit
                  Left = 223
                  Top = 25
                  Width = 193
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'bairro'
                  DataSource = DS
                  TabOrder = 2
                end
                object DBEdit8: TDBEdit
                  Left = 15
                  Top = 77
                  Width = 401
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'rua'
                  DataSource = DS
                  TabOrder = 3
                end
                object DBEdit13: TDBEdit
                  Left = 430
                  Top = 25
                  Width = 193
                  Height = 24
                  DataField = 'cep'
                  DataSource = DS
                  TabOrder = 4
                end
              end
              object GROUPBOX2: TGroupBox
                Left = 16
                Top = 368
                Width = 638
                Height = 129
                Caption = 'RESPONS'#193'VEL'
                TabOrder = 2
                object Label1: TLabel
                  Left = 15
                  Top = 19
                  Width = 34
                  Height = 16
                  Caption = 'NOME'
                end
                object Label2: TLabel
                  Left = 15
                  Top = 71
                  Width = 78
                  Height = 16
                  Caption = 'PARENTESCO'
                end
                object Label4: TLabel
                  Left = 326
                  Top = 71
                  Width = 21
                  Height = 16
                  Caption = 'TEL'
                end
                object cxDBMaskEdit5: TcxDBMaskEdit
                  Left = 326
                  Top = 91
                  DataBinding.DataField = 'telResponsavel'
                  DataBinding.DataSource = DS
                  Properties.CharCase = ecUpperCase
                  Properties.EditMask = '!\(99\)9999-99999;1;_'
                  TabOrder = 0
                  Width = 297
                end
                object DBEdit4: TDBEdit
                  Left = 15
                  Top = 39
                  Width = 608
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'nomeResponsavel'
                  DataSource = DS
                  TabOrder = 1
                end
                object DBEdit5: TDBEdit
                  Left = 16
                  Top = 91
                  Width = 297
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'parentescoResponsavel'
                  DataSource = DS
                  TabOrder = 2
                end
              end
              object GroupBox3: TGroupBox
                Left = 16
                Top = 500
                Width = 313
                Height = 50
                Caption = 'INSTRUTOR'
                TabOrder = 3
                object DBEdit2: TDBEdit
                  Left = 15
                  Top = 20
                  Width = 24
                  Height = 21
                  TabStop = False
                  Color = 15132390
                  DataField = 'idInstrutor'
                  DataSource = DS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnChange = DBEditInstrutorChange
                end
                object DBEditBeleza1: TDBEditBeleza
                  Left = 38
                  Top = 20
                  Width = 259
                  Height = 21
                  Color = 15132390
                  DataField = 'NOMEINSTRUTORFICHA'
                  DataSource = DS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Ativar_Pesquisa = True
                  mostrar_Botao = True
                  sql.Strings = (
                    
                      'select idusuario, nomeusuario, ativo, instrutor from usuario whe' +
                      're nomeusuario like :varDescricao and ativo = true and instrutor' +
                      ' = true;')
                  database = 'GYM'
                  campo = 'nomeusuario'
                  Sempre_Mostrar_Janela = False
                  Outro_Edit = DBEdit2
                  campo_outro_edit = 'IDUSUARIO'
                  CorBorda = clGray
                  NovoLayout = False
                end
              end
              object camera: TdxCameraControl
                Left = 735
                Top = 44
                Width = 55
                Height = 55
                Visible = False
              end
            end
          end
          object pagAvaliacoes: TcxTabSheet
            Caption = 'AVALIA'#199#213'ES'
            ImageIndex = 5
            object cxGroupBox1: TcxGroupBox
              Left = 24
              Top = 8
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object PanelBotoesAvaliacoes: TPanel
                Left = 2
                Top = 513
                Width = 790
                Height = 37
                Align = alBottom
                BevelOuter = bvNone
                Color = 15329769
                ParentBackground = False
                TabOrder = 0
                object btnImprimirAnamnese: TSpeedButton
                  Left = 631
                  Top = 3
                  Width = 151
                  Height = 30
                  Align = alCustom
                  Caption = 'IMPRIMIR'
                  Enabled = False
                end
                object btnNovaAvaliacao: TSpeedButton
                  Left = 478
                  Top = 3
                  Width = 151
                  Height = 30
                  Align = alCustom
                  Caption = 'NOVO'
                  OnClick = btnNovaAvaliacaoClick
                end
              end
              object PageControlAvaliacoes: TPageControl
                Left = 2
                Top = 42
                Width = 790
                Height = 471
                ActivePage = TabSheet1
                Align = alClient
                Style = tsFlatButtons
                TabOrder = 1
                object TabSheet1: TTabSheet
                  Caption = 'ANAMNESE'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object DBGridBelezaAnamnese: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 431
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = dsAnamnese
                    DrawingStyle = gdsGradient
                    FixedColor = 16762447
                    GradientEndColor = 16382457
                    GradientStartColor = clInactiveCaption
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = DBGridBelezaAnamneseDblClick
                    OnKeyDown = DBGridBelezaAnamneseKeyDown
                    Cor_2 = 16382457
                    Direcao_Cor2 = dg_Horiz
                    Direcao_Enter = dg_Horiz
                    ClickTituloOrdenar = True
                    MarcarLinhaInteira = True
                    CorLinhaMarcada = 15854564
                    CorFonteLinhaMarcada = clBlack
                    BloquearExportacoes = False
                    Columns = <
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'idAnamnese'
                        Title.Alignment = taCenter
                        Title.Caption = 'COD'
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'dataAnamnese'
                        Title.Alignment = taCenter
                        Title.Caption = ' DATA'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'nomeAvaliador'
                        Title.Caption = ' AVALIADOR'
                        Width = 590
                        Visible = True
                      end>
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'F'#205'SICA'
                  ImageIndex = 1
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object DBGridBelezaFisica: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 431
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DrawingStyle = gdsGradient
                    FixedColor = 16762447
                    GradientEndColor = 16382457
                    GradientStartColor = clInactiveCaption
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    Cor_2 = 16382457
                    Direcao_Cor2 = dg_Horiz
                    Direcao_Enter = dg_Horiz
                    ClickTituloOrdenar = True
                    MarcarLinhaInteira = True
                    CorLinhaMarcada = 15854564
                    CorFonteLinhaMarcada = clBlack
                    BloquearExportacoes = False
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'POSTURAL'
                  ImageIndex = 2
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object DBGridBelezaPostural: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 431
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DrawingStyle = gdsGradient
                    FixedColor = 16762447
                    GradientEndColor = 16382457
                    GradientStartColor = clInactiveCaption
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    Cor_2 = 16382457
                    Direcao_Cor2 = dg_Horiz
                    Direcao_Enter = dg_Horiz
                    ClickTituloOrdenar = True
                    MarcarLinhaInteira = True
                    CorLinhaMarcada = 15854564
                    CorFonteLinhaMarcada = clBlack
                    BloquearExportacoes = False
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'DADOS CL'#205'NICOS'
                  ImageIndex = 3
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object DBGridBelezaDadosClinicos: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 431
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DrawingStyle = gdsGradient
                    FixedColor = 16762447
                    GradientEndColor = 16382457
                    GradientStartColor = clInactiveCaption
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    Cor_2 = 16382457
                    Direcao_Cor2 = dg_Horiz
                    Direcao_Enter = dg_Horiz
                    ClickTituloOrdenar = True
                    MarcarLinhaInteira = True
                    CorLinhaMarcada = 15854564
                    CorFonteLinhaMarcada = clBlack
                    BloquearExportacoes = False
                  end
                end
              end
              object cxGroupBox2: TcxGroupBox
                Left = 2
                Top = 5
                Align = alTop
                PanelStyle.Active = True
                ParentBackground = False
                ParentColor = False
                Style.BorderColor = 12098947
                Style.BorderStyle = ebs3D
                Style.Edges = [bLeft, bTop, bRight, bBottom]
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.Shadow = False
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                Visible = False
                Height = 37
                Width = 790
              end
            end
          end
          object pagFichaExercicios: TcxTabSheet
            Caption = 'FICHA DE EXERCICIOS'
            ImageIndex = 2
            object cxGroupBox10: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object cxGroupBox8: TcxGroupBox
                Left = 2
                Top = 5
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                PanelStyle.OfficeBackgroundKind = pobkGradient
                Style.Edges = [bLeft, bTop, bRight, bBottom]
                TabOrder = 0
                Height = 508
                Width = 790
                object DBGridBelezaFichasAluno: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSFichaAluno
                  DrawingStyle = gdsGradient
                  FixedColor = 16762447
                  GradientEndColor = 16382457
                  GradientStartColor = clInactiveCaption
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clBlack
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDblClick = DBGridBelezaFichasAlunoDblClick
                  OnKeyDown = DBGridBelezaFichasAlunoKeyDown
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  CorFonteLinhaMarcada = clBlack
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'idFichaAluno'
                      Title.Alignment = taCenter
                      Title.Caption = 'COD'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataComposicao'
                      Title.Alignment = taCenter
                      Title.Caption = 'COMPOSICAO'
                      Width = 100
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataVencimento'
                      Title.Alignment = taCenter
                      Title.Caption = 'VENCIMENTO'
                      Width = 100
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'nomeInstrutor'
                      Title.Caption = ' AUTOR'
                      Width = 500
                      Visible = True
                    end>
                end
                object cxGroupBox9: TcxGroupBox
                  Left = 2
                  Top = 5
                  Align = alTop
                  PanelStyle.Active = True
                  ParentBackground = False
                  ParentColor = False
                  Style.BorderColor = 12098947
                  Style.BorderStyle = ebs3D
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Visible = False
                  Height = 70
                  Width = 786
                  object Label22: TLabel
                    Left = 10
                    Top = 10
                    Width = 69
                    Height = 16
                    Caption = 'INSTRUTOR'
                  end
                  object DBEditBInstrutor: TDBEditBeleza
                    Left = 33
                    Top = 30
                    Width = 266
                    Height = 21
                    Color = 15132390
                    DataField = 'NOMEINSTRUTORFICHA'
                    DataSource = DS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    Ativar_Pesquisa = True
                    mostrar_Botao = True
                    sql.Strings = (
                      
                        'select idusuario, nomeusuario, ativo,  idTipoUsuario from usuari' +
                        'o where nomeusuario like :varDescricao and ativo = true and (idt' +
                        'ipousuario = 2 or idtipousuario =1);')
                    database = 'GYM'
                    campo = 'nomeusuario'
                    Sempre_Mostrar_Janela = False
                    Outro_Edit = DBEditInstrutor
                    campo_outro_edit = 'IDUSUARIO'
                    CorBorda = clGray
                    NovoLayout = False
                  end
                  object DBEditInstrutor: TDBEdit
                    Left = 10
                    Top = 30
                    Width = 24
                    Height = 21
                    TabStop = False
                    Color = 15132390
                    DataField = 'idInstrutor'
                    DataSource = DS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnChange = DBEditInstrutorChange
                  end
                end
              end
              object PanelBotoesFichaDeExercicios: TPanel
                Left = 2
                Top = 513
                Width = 790
                Height = 37
                Align = alBottom
                BevelOuter = bvNone
                Color = 15329769
                ParentBackground = False
                TabOrder = 1
                object btnImprimirFicha: TSpeedButton
                  Left = 631
                  Top = 3
                  Width = 151
                  Height = 30
                  Align = alCustom
                  Caption = 'IMPRIMIR FICHA'
                  Enabled = False
                  OnClick = btnImprimirFichaClick
                end
                object btnNovoFicha: TSpeedButton
                  Left = 478
                  Top = 3
                  Width = 151
                  Height = 30
                  Align = alCustom
                  Caption = 'NOVO'
                  OnClick = btnNovoFichaClick
                end
              end
            end
          end
          object pagModalidades: TcxTabSheet
            Caption = 'MODALIDADES'
            ImageIndex = 4
            object cxGroupBox11: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object cxGroupBox12: TcxGroupBox
                Left = 2
                Top = 5
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                PanelStyle.OfficeBackgroundKind = pobkGradient
                Style.Edges = [bLeft, bTop, bRight, bBottom]
                TabOrder = 0
                Height = 545
                Width = 790
                object cxGroupBox13: TcxGroupBox
                  Left = 2
                  Top = 5
                  Align = alTop
                  PanelStyle.Active = True
                  ParentBackground = False
                  ParentColor = False
                  Style.BorderColor = 12098947
                  Style.BorderStyle = ebs3D
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Height = 70
                  Width = 786
                  object SpeedButton3: TSpeedButton
                    Left = 342
                    Top = 31
                    Width = 47
                    Height = 23
                    Caption = 'ADD'
                    OnClick = SpeedButton3Click
                  end
                  object Label27: TLabel
                    Left = 15
                    Top = 11
                    Width = 76
                    Height = 16
                    Caption = 'MODALIDADE'
                  end
                  object EditModalidade: TEdit
                    Left = 15
                    Top = 32
                    Width = 29
                    Height = 21
                    TabStop = False
                    Color = 15461355
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object editBModalidade: TEditBeleza
                    Left = 43
                    Top = 32
                    Width = 293
                    Height = 21
                    Color = 15461355
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnKeyPress = EditBTreinoKeyPress
                    Ativar_Pesquisa = True
                    Ativar_MultiSelecao = False
                    mostrar_Botao = True
                    sql.Strings = (
                      
                        'select ex.idModalidade, ex.descricaoModalidade from Modalidade e' +
                        'x where ex.descricaoModalidade like :varDescricao AND '
                      
                        'ex.idModalidade not in (select distinct idModalidade from alunom' +
                        'odalidade where idAluno =:idA)')
                    database = 'GYM'
                    campo = 'DESCRICAOMODALIDADE'
                    Sempre_Mostrar_Janela = False
                    Outro_Edit = EditModalidade
                    campo_outro_edit = 'IDMODALIDADE'
                    CorBorda = clGray
                    NovoLayout = False
                    OnButtonClick = editBModalidadeButtonClick
                  end
                end
                object DBGridBeleza4: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSModalidade
                  DrawingStyle = gdsGradient
                  FixedColor = 16763594
                  GradientEndColor = 16382457
                  GradientStartColor = clInactiveCaption
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clBlack
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  CorFonteLinhaMarcada = clBlack
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'idmodalidade'
                      Title.Alignment = taCenter
                      Title.Caption = 'COD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DESCRICAOMODALIDADE'
                      Title.Caption = 'MODALIDADE'
                      Width = 376
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valor'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'diavencimento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DIA VENCIMENTO'
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataInscri'#231#227'o'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA INSCRI'#199#195'O'
                      Width = 120
                      Visible = True
                    end>
                end
                object PanelBotoesModalidades: TPanel
                  Left = 2
                  Top = 506
                  Width = 786
                  Height = 37
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 15329769
                  ParentBackground = False
                  TabOrder = 2
                  object btnCancelaMatricula: TSpeedButton
                    Left = 631
                    Top = 3
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'CANCELAR MATR'#205'CULA'
                    OnClick = btnCancelaMatriculaClick
                  end
                end
              end
            end
          end
          object pagMensalidades: TcxTabSheet
            Caption = 'MENSALIDADES'
            ImageIndex = 3
            object cxGroupBox14: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object cxGroupBox15: TcxGroupBox
                Left = 2
                Top = 5
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                PanelStyle.OfficeBackgroundKind = pobkGradient
                Style.Edges = [bLeft, bTop, bRight, bBottom]
                TabOrder = 0
                Height = 545
                Width = 790
                object cxGroupBox16: TcxGroupBox
                  Left = 2
                  Top = 5
                  Align = alTop
                  PanelStyle.Active = True
                  ParentBackground = False
                  ParentColor = False
                  Style.BorderColor = 12098947
                  Style.BorderStyle = ebs3D
                  Style.Edges = [bLeft, bTop, bRight, bBottom]
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Visible = False
                  Height = 70
                  Width = 786
                end
                object DBGridBeleza5: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSPagamento
                  DrawingStyle = gdsGradient
                  FixedColor = 16762447
                  GradientEndColor = 16382457
                  GradientStartColor = clInactiveCaption
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clBlack
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDrawColumnCell = DBGridBeleza5DrawColumnCell
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  CorFonteLinhaMarcada = clBlack
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'idPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'COD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'descricaoModalidade'
                      Title.Caption = 'MODALIDADE'
                      Width = 200
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valorModalidade'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR MOD'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valorCobrado'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR COBRADO'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataVencimento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA VENC'
                      Width = 90
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA PAG'
                      Width = 90
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'descricaoStatusPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'SITUA'#199#195'O'
                      Width = 130
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LOGUsuarioResponsavel'
                      Title.Caption = 'LOG'
                      Visible = True
                    end>
                end
                object PanelBotoesMensalidades: TPanel
                  Left = 2
                  Top = 506
                  Width = 786
                  Height = 37
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 15329769
                  ParentBackground = False
                  TabOrder = 2
                  object btnPagamento: TSpeedButton
                    Left = 631
                    Top = 5
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'EFETUAR PAGAMENTO'
                    Enabled = False
                    OnClick = btnPagamentoClick
                  end
                  object btnIsencao: TSpeedButton
                    Left = 474
                    Top = 5
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'CONCEDER ISEN'#199#195'O'
                    Enabled = False
                    OnClick = btnIsencaoClick
                  end
                  object btnCancelarPI: TSpeedButton
                    Left = 258
                    Top = 5
                    Width = 210
                    Height = 30
                    Align = alCustom
                    Caption = 'CANCELAR PAGAMENTO/ISEN'#199#195'O'
                    Enabled = False
                    OnClick = btnCancelarPIClick
                  end
                end
              end
            end
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 678
      inherited GBFiltros: TGroupBox
        Width = 1000
        ExplicitWidth = 1000
        inherited Panel1: TPanel
          Width = 991
          ExplicitWidth = 991
          inherited BtnLimparFiltros: TButton
            Left = 946
            ExplicitLeft = 946
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 1000
        Height = 567
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idAluno'
            Title.Alignment = taCenter
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeAluno'
            Title.Caption = 'ALUNO'
            Width = 482
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cpf'
            Title.Alignment = taCenter
            Title.Caption = 'CPF'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tel1'
            Title.Alignment = taCenter
            Title.Caption = 'TEL'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dataNascimento'
            Title.Alignment = taCenter
            Title.Caption = 'DATA NASC.'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'situacao'
            Title.Alignment = taCenter
            Title.Caption = 'SITUA'#199#195'O'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEINSTRUTORFICHA'
            Title.Caption = 'INSTRUTOR'
            Width = 310
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dataComposicaoFicha'
            Title.Alignment = taCenter
            Title.Caption = 'INICIO FICHA'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'email'
            Title.Alignment = taCenter
            Title.Caption = 'EMAIL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOOBJETIVO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tel2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDADE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'rua'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'numero'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'nomeResponsavel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'parentescoResponsavel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'telResponsavel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'peso'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'altura'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'frequenciaAtividadeFisica'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtdRefeicoesDia'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtdHorasSono'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'suplementacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'dieta'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'fumante'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'consomeBebidaAlcoolica'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'dataCadastro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ativo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'foto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'informacaoAdicional'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idObjetivo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IMC'
            Visible = False
          end>
      end
      inherited PanelFiltros: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited btnFiltrar: TButton
          Left = 949
          Top = 21
          OnClick = btnFiltrarClick
          ExplicitLeft = 949
          ExplicitTop = 21
        end
        object EditPesqModalidade: TEditBeleza
          Left = 251
          Top = 31
          Width = 182
          Height = 21
          Color = 14079702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EditPesqModalidadeChange
          OnKeyPress = EditPesqModalidadeKeyPress
          Ativar_Pesquisa = True
          Ativar_MultiSelecao = False
          mostrar_Botao = True
          sql.Strings = (
            
              'select P.idMODALIDADE, P.DESCRICAOMODALIDADE from MODALIDADE P w' +
              'here P.DESCRICAOMODALIDADE like :varDescricao')
          database = 'gym'
          campo = 'DESCRICAOMODALIDADE'
          Sempre_Mostrar_Janela = False
          Marcar_CheckBox = cbxPesqModalidade
          Outro_Edit = editPesqidModalidade
          campo_outro_edit = 'IDMODALIDADE'
          CorBorda = clGray
          NovoLayout = False
        end
        object cbxPesqModalidade: TCheckBox
          Left = 227
          Top = 11
          Width = 97
          Height = 17
          Caption = 'MODALIDADE'
          TabOrder = 2
        end
        object editPesqidModalidade: TEdit
          Left = 227
          Top = 31
          Width = 25
          Height = 21
          Color = 14079702
          ReadOnly = True
          TabOrder = 3
        end
        object EditPesqNome: TEdit
          Left = 12
          Top = 31
          Width = 202
          Height = 21
          TabOrder = 4
          OnChange = EditPesqNomeChange
        end
        object cbxPesqNome: TCheckBox
          Left = 12
          Top = 9
          Width = 172
          Height = 17
          Caption = 'NOME'
          TabOrder = 5
        end
        object cbxPesqSemFichaExercicios: TCheckBox
          Left = 820
          Top = 12
          Width = 128
          Height = 17
          Caption = 'SEM FICHA EXERC'#205'CIO'
          TabOrder = 6
        end
        object cbxPesqSemMatriculaAtiva: TCheckBox
          Left = 667
          Top = 13
          Width = 150
          Height = 13
          Caption = 'SEM MATR'#205'CULA ATIVA'
          TabOrder = 7
        end
        object cbxPesqFichaVencida: TCheckBox
          Left = 820
          Top = 35
          Width = 128
          Height = 17
          Caption = 'FICHA VENCIDA'
          TabOrder = 8
        end
        object cbxPesqPagamentoEmAtraso: TCheckBox
          Left = 667
          Top = 37
          Width = 150
          Height = 13
          Caption = 'PAGAMENTO EM ATRASO'
          TabOrder = 9
        end
        object EditPesqInstrutor: TEditBeleza
          Left = 471
          Top = 31
          Width = 182
          Height = 21
          Color = 14079702
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnChange = EditPesqInstrutorChange
          OnKeyPress = EditPesqModalidadeKeyPress
          Ativar_Pesquisa = True
          Ativar_MultiSelecao = False
          mostrar_Botao = True
          sql.Strings = (
            
              'select P.idUSUARIO, P.NOMEUSUARIO from USUARIO P where P.NOMEUSU' +
              'ARIO like :varDescricao AND p.instrutor = true')
          database = 'GYM'
          campo = 'NOMEUSUARIO'
          Sempre_Mostrar_Janela = False
          Marcar_CheckBox = cbxPesqInstrutor
          Outro_Edit = EditPesqIdInstrutor
          campo_outro_edit = 'IDUSUARIO'
          CorBorda = clGray
          NovoLayout = False
        end
        object EditPesqIdInstrutor: TEdit
          Left = 447
          Top = 31
          Width = 25
          Height = 21
          Color = 14079702
          ReadOnly = True
          TabOrder = 11
        end
        object cbxPesqInstrutor: TCheckBox
          Left = 447
          Top = 9
          Width = 97
          Height = 17
          Caption = 'INSTRUTOR'
          TabOrder = 12
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited BFechar: TSpeedButton
      Left = 974
      ExplicitLeft = 792
    end
  end
  inherited DS: TDataSource
    Left = 928
    Top = 16
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 864
    Top = 16
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1email: TStringField
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet1sexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1cidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1bairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1rua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1numero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1cep: TIntegerField
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1tel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(99\)9999-99999;1;_'
      Size = 50
    end
    object ClientDataSet1tel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(99\)9999-99999;1;_'
      Size = 50
    end
    object ClientDataSet1nomeResponsavel: TStringField
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ClientDataSet1parentescoResponsavel: TStringField
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1telResponsavel: TStringField
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1dataCadastro: TDateField
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1cpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;1;_'
      Size = 50
    end
    object ClientDataSet1idInstrutor: TIntegerField
      FieldName = 'idInstrutor'
    end
    object ClientDataSet1NOMEINSTRUTORFICHA: TStringField
      FieldName = 'NOMEINSTRUTORFICHA'
      Size = 50
    end
    object ClientDataSet1IDADE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDADE'
    end
    object ClientDataSet1situacao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'situacao'
      Size = 50
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    Left = 832
    Top = 16
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT a.*, INST.NOMEUSUARIO AS NOMEINSTRUTORFICHA FROM ALUNO A '
      'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A .IDINSTRUTOR')
    Left = 800
    Top = 16
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object FDQuery1dataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object FDQuery1sexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object FDQuery1cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object f: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1rua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1cep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1tel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1tel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1nomeResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQuery1parentescoResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1telResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1dataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1idInstrutor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idInstrutor'
      Origin = 'idInstrutor'
    end
    object FDQuery1NOMEINSTRUTORFICHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEINSTRUTORFICHA'
      Origin = 'nomeUsuario'
      ProviderFlags = []
      Size = 50
    end
  end
  inherited ImageListBase: TImageList
    Left = 768
    Top = 16
    Bitmap = {
      494C01010F002C00800310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F708C3C3C33C77777788363636C9101010EF1E1E
      1EE1CACACA350000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F30CB4B4B44B525252AD0F0F0FF09E9E9E610000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB04BEBEBE41545454AB1B1B1BE4030303FC444444BBA0A0A05F4343
      43BC585858A7F6F6F60900000000000000000000000000000000000000000000
      000000000000E7E7E718595959A61F1F1FE0494949B61E1E1EE1868686790000
      0000000000000000000000000000000000000000000000000000A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A4A4A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB147474748B0E0E0EF1484848B7B5B5B54A9595956A6565659AE9E9E916C4C4
      C43B1F1F1FE0B0B0B04F00000000000000000000000000000000000000000000
      00000000000099999966252525DAC0C0C03FF1F1F10E434343BC8484847B0000
      0000000000000000000000000000000000000000000000000000F4F4F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F3F3F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E2E21D5050
      50AF303030CF8282827DA0A0A05FF9F9F90600000000DADADA25D8D8D827FDFD
      FD026262629D4C4C4CB3F6F6F609000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20D525252AD0808
      08F77E7E7E81DCDCDC23F1F1F10EFBFBFB040000000000000000FEFEFE010000
      0000C2C2C23D202020DFC1C1C13E000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC13686868974141
      41BE2A2A2AD5222222DD555555AABCBCBC43FBFBFB0400000000000000000000
      0000F5F5F50A484848B78181817E000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F9F9
      F906E6E6E619B3B3B34C575757A81C1C1CE38282827DF6F6F609000000000000
      000000000000D5D5D52AD6D6D629FAFAFA050000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02ADADAD527171
      718EC8C8C83700000000F9F9F906A3A3A35C1C1C1CE39393936C000000000000
      0000EDEDED12ABABAB54585858A7C0C0C03F0000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D9D9261D1D1DE20000
      00FF404040BFF3F3F30C00000000FEFEFE01AAAAAA55B4B4B44BE2E2E21D9393
      936C383838C7040404FB1D1D1DE2CECECE310000000000000000000000000000
      0000FEFEFE017070708F252525DA9191916E9191916E252525DA7070708FFEFE
      FE01000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF20282828D70000
      00FF4E4E4EB1F6F6F609000000000000000000000000A2A2A25D222222DD0101
      01FE090909F6444444BBB2B2B24DFDFDFD020000000000000000000000000000
      0000A9A9A9561C1C1CE3313131CE363636C9363636C9313131CE1C1C1CE3A9A9
      A956000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01C6C6C6399797
      9768DBDBDB2400000000000000000000000000000000CACACA355D5D5DA26161
      619EA3A3A35CA1A1A15ECFCFCF3000000000000000000000000000000000B9B9
      B946202020DF7D7D7D82EFEFEF10F2F2F20DF2F2F20DEFEFEF107D7D7D822020
      20DFB9B9B9460000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C33CD4D4D42BFCFCFC03CACA
      CA35ECECEC130000000000000000000000000000000000000000FDFDFD020000
      00009B9B9B64050505FA68686897FEFEFE010000000000000000C8C8C8372727
      27D86B6B6B94F5F5F50A00000000000000000000000000000000F5F5F50A6B6B
      6B94272727D8C8C8C83700000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000111111EE4D4D4DB2EDEDED126A6A
      6A95C6C6C6390000000000000000000000000000000000000000000000000000
      0000D8D8D827212121DE252525DADCDCDC2300000000D6D6D629323232CD5959
      59A6EFEFEF10000000000000000000000000000000000000000000000000EFEF
      EF10595959A6323232CDD6D6D629000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494946BB1B1B14EFEFEFE01F4F4
      F40BFCFCFC030000000000000000000000000000000000000000000000000000
      0000000000008585857A060606F99595956ADDDDDD22434343BC4C4C4CB3E9E9
      E916000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9164C4C4CB3434343BCDDDDDD220000000000000000F4F4F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00999999009B9B9B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E2E21D2C2C2CD33A3A3AC53F3F3FC0171717E896969669BBBB
      BB44B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8
      B847BBBBBB4496969669171717E83F3F3FC00000000000000000A6A6A600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009898980099999900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A8A8A75252525DA383838C7040404FB090909F60808
      08F7080808F7080808F7080808F7080808F7080808F7080808F7080808F70808
      08F7080808F7090909F6040404FB383838C70000000000000000000000000000
      0000000000000000000081818100F8F8F800F8F8F80080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979700CACACA00FBFBFB00FBFBFB00C9C9C900969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B0B000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600FFFFFF005656560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CDCDCD00B0B0B0000000000000000000000000000000000094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009292920000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000057575700FFFF
      FF00E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0B0B000CDCD
      CD00C8C8C8000000000000000000000000000000000098989800FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00969696000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B7B7B700000000000000000000000000000000000000
      00006F6F6F00EEEEEE00FDFDFD00BFBFBF006D6D6D00E8E8E800FFFFFF005757
      5700000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400CACACA00CDCDCD00C2C2C200B3B3B300C9C9C900CDCDCD00B0B0
      B0000000000000000000000000000000000000000000CBCBCB00FFFFFF00FFFF
      FF00FFFFFF007979790000000000F2F2F200F2F2F2000000000079797900FFFF
      FF00FFFFFF00FFFFFF00C9C9C9000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C20000000000000000000000000000000000B3B3
      B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E8000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00C9C9C9000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD0000000000000000000000000070707000F8F8
      F8006868680000000000000000000000000069696900FFFFFF006D6D6D000000
      0000000000000000000000000000000000000000000000000000B4B4B400CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B3B3B3000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00000000000000000000000000C1C1C1009C9C
      9C000000000000000000000000000000000000000000FFFFFF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000C2C2C200BCBC
      BC000000000000000000000000000000000000000000CDCDCD00C2C2C2000000
      00000000000000000000000000000000000000000000CCCCCC00FFFFFF00FFFF
      FF00FFFFFF007A7A7A0000000000F1F1F100F1F1F100000000007A7A7A00FFFF
      FF00FFFFFF00FFFFFF00CACACA000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C200000000000000000000000000FEFEFE004141
      41000000000000000000000000000000000000000000FFFFFF00FDFDFD000000
      0000000000000000000000000000000000000000000000000000CDCDCD00ACAC
      AC000000000000000000000000000000000000000000CDCDCD00CDCDCD000000
      0000000000000000000000000000000000000000000099999900FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00979797000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B8B8B800000000000000000000000000EFEFEF005656
      56000000000000000000000000000000000000000000FFFFFF00EEEEEE000000
      0000000000000000000000000000000000000000000000000000CACACA00B0B0
      B0000000000000000000000000000000000000000000CDCDCD00CACACA000000
      000000000000000000000000000000000000000000000000000096969600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009494940000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B7000000000000000000000000000000000072727200F7F7
      F7006767670000000000000000000000000068686800FFFFFF006F6F6F000000
      0000000000000000000000000000000000000000000000000000B5B5B500CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B4B4B4000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F70056565600414141009C9C9C00F8F8F800B3B3B300000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CBCBCB00B0B0B000ACACAC00BCBCBC00CBCBCB00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      000072727200EFEFEF00FEFEFE00C1C1C1007070700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500CACACA00CDCDCD00C2C2C200B4B4B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00FCFCFC00FCFCFC00CBCBCB00989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090909000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000B6B6B600CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B6B6
      B60000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008F8F8F0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB006767670068686800FBFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A2A2A2000000000000000000A4A4A400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0066666600000000000000000067676700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A0000000000000000000A2A2A200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00AFAFAF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000072727200EBEBEB00FFFFFF00FFFFFF00EBEBEB00727272000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B0B000C9C9C900CDCDCD00CDCDCD00C9C9C900B0B0B0000000
      000000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAF
      AF00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F0F000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CACACA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CBCBCB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FAFAFA008A8A8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CBCBCB00B5B5B500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FBFB
      FB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000008C8C
      8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00B8B8
      B80000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000007272
      7200EBEBEB00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD000000000000000000B0B0
      B000C9C9C9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D00FBFBFB00FFFFFF00FEFEFE000000
      0000AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD000000
      0000BFBFBF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000072727200FFFF
      FF00AFAFAF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD0000000000B0B0B000CDCD
      CD00BCBCBC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009999990000000000FFFF
      FF00FFFFFF00F4F4F40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B80000000000CDCD
      CD00CDCDCD00CACACA000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072727200EBEBEB00AFAF
      AF0000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B0B0B000C9C9C900BCBC
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA00FFFF
      FF00FFFFFF00B8B8B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00CDCD
      CD00CDCDCD00BEBEBE000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800B8B8B8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BEBEBE00000000000000000000000000000000000000000000000000F1F1
      F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00000000000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FC07FC1FFFFF0000F003F81FC0030000
      E003F81FC0030000C081F81FDFFB000080D1F81FDFFB00008071F81FDFFB0000
      C038F81FDFFB00008430F81FDFFB00008200F00FDFFB00008380F00FDFFB0000
      8781E007DFFB000007D0C3C3D81B000007F087E1D81B000007F80FF0C0030000
      FFF80000C0030000FFFC0000FC3F0000FFFFFFFFFFFFFFFFF81FF81FFFFFFFFF
      F00FF00FFFF7FFF7E007E007FFE3FFE3C003C003FFC7FFC784218421F00FF00F
      82418241E01FE01F81818181C71FC71F81818181CF9FCF9F82418241CF9FCF9F
      84218421CF9FCF9FC003C003C71FC71FE007E007E03FE03FF00FF00FF07FF07F
      F81FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F00FF00FC003C003F00FF00FC003C003F00FF00FC183C183F00FF00FC183C183
      F00FF00FC183C183F00FF00FC003C003F00FF00FC003C003F00FF00FC003C003
      F00FF00FDFC3DFC3FFFFFFFFDFC3DFC3E007E007DFC7DFC7F81FF81FC00FC00F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007FFFFFFFF
      E007E007C7FFC7FFE187E187C1FFC1FFE187E187C1FFC1FFE7E7E7E7E07FE07F
      E7E7E7E7E07FE07FE187E187F81FF81FE187E187F81FF81FE007E007FE0FFE0F
      E067E067FE17FE17E047E047FFA3FFA3E00FE00FFFC3FFC3E01FE01FFFE7FFE7
      E03FE03FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited Acoes: TActionList
    Left = 896
    Top = 17
    inherited ActionReajustarDBGridBeleza1: TAction
      OnExecute = ActionReajustarDBGridBeleza1Execute
    end
  end
  object qFichaAluno: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select fa.* from fichaAluno fa where fa.idAluno =:idA order by d' +
        'atacomposicao DESC, IDFICHAALUNO DESC;')
    Left = 880
    Top = 266
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Origin = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFichaAlunoidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qFichaAlunodataComposicao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicao'
      Origin = 'dataComposicao'
    end
    object qFichaAlunonomeInstrutor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeInstrutor'
      Origin = 'nomeInstrutor'
      Size = 100
    end
    object qFichaAlunodataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
    end
  end
  object pFichaAluno: TDataSetProvider
    DataSet = qFichaAluno
    Left = 904
    Top = 266
  end
  object CDSFichaAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFichaAluno'
    AfterPost = CDSFichaAlunoAfterPost
    AfterCancel = CDSFichaAlunoAfterCancel
    AfterDelete = CDSFichaAlunoAfterDelete
    Left = 928
    Top = 266
    object CDSFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFichaAlunoidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object CDSFichaAlunodataComposicao: TDateField
      FieldName = 'dataComposicao'
    end
    object CDSFichaAlunonomeInstrutor: TStringField
      FieldName = 'nomeInstrutor'
      Size = 100
    end
    object CDSFichaAlunodataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
  end
  object DSFichaAluno: TDataSource
    DataSet = CDSFichaAluno
    OnDataChange = DSFichaAlunoDataChange
    Left = 960
    Top = 266
  end
  object qTreino: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from treino')
    Left = 872
    Top = 196
    object qTreinoidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTreinodescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      Size = 50
    end
  end
  object pTreino: TDataSetProvider
    DataSet = qTreino
    Left = 904
    Top = 195
  end
  object CDSTreino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTreino'
    Left = 928
    Top = 194
    object CDSTreinoidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTreinodescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      Size = 50
    end
  end
  object DSTreino: TDataSource
    DataSet = CDSTreino
    Left = 960
    Top = 193
  end
  object DSModalidade: TDataSource
    DataSet = cdsModalidade
    OnDataChange = DSModalidadeDataChange
    Left = 960
    Top = 137
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pModalidade'
    AfterPost = cdsModalidadeAfterPost
    AfterCancel = cdsModalidadeAfterCancel
    AfterDelete = cdsModalidadeAfterDelete
    Left = 928
    Top = 137
    object cdsModalidadeidAluno: TIntegerField
      FieldName = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsModalidadeidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsModalidadedataInscrição: TDateField
      FieldName = 'dataInscri'#231#227'o'
    end
    object cdsModalidadediavencimento: TIntegerField
      FieldName = 'diavencimento'
    end
    object cdsModalidadeDESCRICAOMODALIDADE: TStringField
      FieldName = 'DESCRICAOMODALIDADE'
      Size = 50
    end
    object cdsModalidadevalor: TSingleField
      FieldName = 'valor'
    end
  end
  object pModalidade: TDataSetProvider
    DataSet = QMODALIDADE
    Left = 896
    Top = 137
  end
  object QMODALIDADE: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT AM.*, M.DESCRICAOMODALIDADE, M.valor FROM ALUNOMODALIDADE' +
        ' AM '
      
        'LEFT OUTER JOIN MODALIDADE M ON M.IDMODALIDADE = AM.IDMODALIDADE' +
        ' '
      'WHERE AM.IDALUNO =:IDA')
    Left = 872
    Top = 137
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMODALIDADEidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMODALIDADEidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Origin = 'idmodalidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMODALIDADEdataInscrição: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataInscri'#231#227'o'
      Origin = '`dataInscri'#231#227'o`'
    end
    object QMODALIDADEdiavencimento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'diavencimento'
      Origin = 'diavencimento'
    end
    object QMODALIDADEDESCRICAOMODALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOMODALIDADE'
      Origin = 'descricaoModalidade'
      ProviderFlags = []
      Size = 50
    end
    object QMODALIDADEvalor: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
    end
  end
  object pPagamento: TDataSetProvider
    DataSet = qPagamento
    Left = 896
    Top = 79
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPagamento'
    AfterInsert = cdsPagamentoAfterInsert
    AfterPost = cdsPagamentoAfterPost
    AfterCancel = cdsPagamentoAfterCancel
    AfterDelete = cdsPagamentoAfterDelete
    Left = 928
    Top = 79
    object cdsPagamentoidPagamento: TIntegerField
      FieldName = 'idPagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPagamentoidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object cdsPagamentoidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Required = True
    end
    object cdsPagamentovalorModalidade: TSingleField
      FieldName = 'valorModalidade'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object cdsPagamentovalorCobrado: TSingleField
      FieldName = 'valorCobrado'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object cdsPagamentodataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
    object cdsPagamentodataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
    object cdsPagamentoidstatusPagamento: TIntegerField
      FieldName = 'idstatusPagamento'
    end
    object cdsPagamentodescricaoStatusPagamento: TStringField
      FieldName = 'descricaoStatusPagamento'
      Size = 50
    end
    object cdsPagamentodescricaoModalidade: TStringField
      FieldName = 'descricaoModalidade'
      Size = 50
    end
    object cdsPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Required = True
      Size = 200
    end
  end
  object DSPagamento: TDataSource
    DataSet = cdsPagamento
    OnDataChange = DSPagamentoDataChange
    Left = 952
    Top = 79
  end
  object qPagamento: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select P.*, m.descricaoModalidade, st.descricaoStatusPagamento f' +
        'rom pagamento P'
      'left outer join modalidade m on m.idModalidade = p.idModalidade'
      
        'left outer join statusPagamento st on st.idStatusPagamento = p.i' +
        'dstatusPagamento '
      'where p.idAluno =:idA order by(p.dataVencimento)')
    Left = 872
    Top = 79
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qPagamentoidPagamento: TIntegerField
      FieldName = 'idPagamento'
      Origin = 'idPagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPagamentoidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qPagamentoidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Origin = 'idmodalidade'
      Required = True
    end
    object qPagamentovalorModalidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorModalidade'
      Origin = 'valorModalidade'
    end
    object qPagamentovalorCobrado: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorCobrado'
      Origin = 'valorCobrado'
    end
    object qPagamentodataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
    end
    object qPagamentodataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataPagamento'
      Origin = 'dataPagamento'
    end
    object qPagamentoidstatusPagamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idstatusPagamento'
      Origin = 'idstatusPagamento'
    end
    object qPagamentodescricaoStatusPagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoStatusPagamento'
      Origin = 'descricaoStatusPagamento'
      ProviderFlags = []
      Size = 50
    end
    object qPagamentodescricaoModalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoModalidade'
      Origin = 'descricaoModalidade'
      ProviderFlags = []
      Size = 50
    end
    object qPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Origin = 'LOGUsuarioResponsavel'
      Required = True
      Size = 200
    end
  end
  object REPORT_FICHA: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42779.735011747710000000
    ReportOptions.LastChange = 42821.756040601890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 94
    Top = 650
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 92.500000000000000000
      ColumnPositions.Strings = (
        '0'
        '97,50')
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 18.897650000000000000
          Width = 415.748300000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA DE EXERC'#205'CIOS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.118120000000000000
          Top = 75.708720000000000000
          Width = 521.575140000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset1."nomeAluno"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Gradient1: TfrxGradientView
          Left = 151.181200000000000000
          Top = 56.692949999999990000
          Width = 415.748300000000000000
          Height = 7.559055118110240000
          EndColor = clTeal
          Style = gsHorizCenter
          Color = 12632192
        end
        object Memo3: TfrxMemoView
          Left = 520.795275589999900000
          Top = 76.267780000000000000
          Width = 196.535560000000000000
          Height = 22.299212600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            ' INICIO DA FICHA: [frxDBDataset1."DATACOMPOSICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 211.653680000000000000
        Width = 349.606525000000000000
        Condition = 'frxDBDataset2."idTreino"'
        object Memo4: TfrxMemoView
          Align = baClient
          Width = 349.606525000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clTeal
          HAlign = haCenter
          Memo.UTF8W = (
            'TREINO [frxDBDataset2."descricaoTreino"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 349.606525000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2nomeExercicio: TfrxMemoView
          Left = 42.330708660000000000
          Top = 1.779530000000022000
          Width = 242.267716540000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [frxDBDataset2."nomeExercicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2idequipamento: TfrxMemoView
          Left = 0.755905510000000000
          Top = 1.779530000000022000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'idequipamento'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."idequipamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 284.598425200000000000
          Top = 1.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."qtdSerie"] x [frxDBDataset2."qtdRepeticao"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 349.606525000000000000
        Condition = 'frxDBDataset2."idgrupoExercicio"'
        object frxDBDataset2descricaoGrupoExercicio: TfrxMemoView
          Align = baClient
          Width = 349.606525000000000000
          Height = 22.677180000000000000
          DataField = 'descricaoGrupoExercicio'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."descricaoGrupoExercicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 0.779530000000000000
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSTRUTOR: [frxDBDataset1."NOMEINSTRUTORFICHA"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 366.614410000000000000
        Width = 349.606525000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 393.071120000000000000
        Width = 349.606525000000000000
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idFichaAluno=idFichaAluno'
      'idTreino=idTreino'
      'idExercicio=idExercicio'
      'qtdSerie=qtdSerie'
      'qtdRepeticao=qtdRepeticao'
      'descricaoTreino=descricaoTreino'
      'nomeExercicio=nomeExercicio'
      'idgrupoExercicio=idgrupoExercicio'
      'descricaoGrupoExercicio=descricaoGrupoExercicio'
      'idequipamento=idequipamento'
      'descricaoequipamento=descricaoequipamento'
      'tipomedida=tipomedida')
    DataSource = DSserieFichaAluno
    BCDToCurrency = False
    Left = 142
    Top = 650
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 166
    Top = 650
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 190
    Top = 650
  end
  object DSRelFicha: TDataSource
    DataSet = CDSRelFicha
    Left = 422
    Top = 642
  end
  object qRelFicha: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT a.*, FA.NOMEINSTRUTOR AS NOMEINSTRUTORFICHA, '
      
        'FA.DATACOMPOSICAO, FA.DATAVENCIMENTO, FA.IDFICHAALUNO AS CODFICH' +
        'A '
      'FROM FICHAALUNO FA'
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = FA.IDALUNO'
      'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A .IDINSTRUTOR'
      'WHERE FA.IDFICHAALUNO =:IDFA')
    Left = 326
    Top = 642
    ParamData = <
      item
        Name = 'IDFA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qRelFichaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qRelFichanomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      Size = 80
    end
    object qRelFichadataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object qRelFichaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object qRelFichasexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object qRelFichacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object qRelFichabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object qRelFicharua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      Size = 50
    end
    object qRelFichanumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object qRelFichacep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object qRelFichatel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 50
    end
    object qRelFichatel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 50
    end
    object qRelFichanomeResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      Size = 80
    end
    object qRelFichaparentescoResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      Size = 50
    end
    object qRelFichatelResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      Size = 50
    end
    object qRelFichadataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
    object qRelFichacpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 50
    end
    object qRelFichaidInstrutor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idInstrutor'
      Origin = 'idInstrutor'
    end
    object qRelFichaNOMEINSTRUTORFICHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEINSTRUTORFICHA'
      Origin = 'NOMEINSTRUTORFICHA'
      Size = 100
    end
    object qRelFichaDATACOMPOSICAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATACOMPOSICAO'
      Origin = 'DATACOMPOSICAO'
    end
    object qRelFichaDATAVENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCIMENTO'
      Origin = 'DATAVENCIMENTO'
    end
    object qRelFichaCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Origin = 'CODFICHA'
      Required = True
    end
  end
  object pRelFicha: TDataSetProvider
    DataSet = qRelFicha
    Left = 358
    Top = 642
  end
  object CDSRelFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pRelFicha'
    Left = 390
    Top = 642
    object CDSRelFichaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRelFichanomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      Size = 80
    end
    object CDSRelFichadataNascimento: TDateField
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object CDSRelFichaemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object CDSRelFichasexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object CDSRelFichacidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object CDSRelFichabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object CDSRelFicharua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      Size = 50
    end
    object CDSRelFichanumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object CDSRelFichacep: TIntegerField
      FieldName = 'cep'
      Origin = 'cep'
    end
    object CDSRelFichatel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 50
    end
    object CDSRelFichatel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 50
    end
    object CDSRelFichanomeResponsavel: TStringField
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      Size = 80
    end
    object CDSRelFichaparentescoResponsavel: TStringField
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      Size = 50
    end
    object CDSRelFichatelResponsavel: TStringField
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      Size = 50
    end
    object CDSRelFichadataCadastro: TDateField
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
    object CDSRelFichacpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 50
    end
    object CDSRelFichaidInstrutor: TIntegerField
      FieldName = 'idInstrutor'
      Origin = 'idInstrutor'
    end
    object CDSRelFichaNOMEINSTRUTORFICHA: TStringField
      FieldName = 'NOMEINSTRUTORFICHA'
      Origin = 'NOMEINSTRUTORFICHA'
      Size = 100
    end
    object CDSRelFichaDATACOMPOSICAO: TDateField
      FieldName = 'DATACOMPOSICAO'
      Origin = 'DATACOMPOSICAO'
    end
    object CDSRelFichaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Origin = 'DATAVENCIMENTO'
    end
    object CDSRelFichaCODFICHA: TIntegerField
      FieldName = 'CODFICHA'
      Origin = 'CODFICHA'
      Required = True
    end
  end
  object ImageListAUX: TImageList
    Height = 95
    Width = 95
    Left = 736
    Top = 16
    Bitmap = {
      494C010101001400E0005F005F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000007C0100005F00000001002000000000001034
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE01F4F4F40DE4E4E421CECECE3DB7B7
      B759A0A0A07688888894747474AD646464C1575757D24B4B4BE0454545E84040
      40EE3C3C3CF3383838F8363636FB343434FD333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FE363636FB383838F83B3B
      3BF43F3F3FEF444444E94A4A4AE2545454D5626262C4717171B1848484999B9B
      9B7CB3B3B35ECACACA42E1E1E125F2F2F210FCFCFC0300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB04E8E8E81CCACACA42A4A4A4717E7E
      7EA1616161C54B4B4BE13C3C3CF3343434FD333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FE3A3A3AF6474747E55D5D
      5DCA797979A79F9F9F78C5C5C548E4E4E421FAFAFA0600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA06DADADA2EAAAAAA6A7777
      77A94F4F4FDB3B3B3BF5333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF393939F74C4C
      4CDF727272B0A4A4A471D5D5D534F7F7F7090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDEDED16B4B4
      B45D737373AE454545E8333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF424242EC6E6E
      6EB5AFAFAF64EAEAEA1A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF13ABABAB695C5C5CCB353535FC333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF343434FD585858D0A5A5A570EDED
      ED16000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC3F676767BD343434FD333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FE636363C2C7C7C745FEFEFE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB04A9A9A96B4343
      43EA333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF424242ECA5A5A570FBFBFB05000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01A7A7A76D3B3B3BF5333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF393939F7A4A4A471FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C943424242EC333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF414141EDC7C7C7460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F70A6F6F6FB3333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF6E6E
      6EB5F6F6F60B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D2383F3F3FEF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF3F3F3FF0D2D2D23800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD66333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FFADADAD660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009B9B9B7C333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF9B9B9B7C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009797
      9781333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF979797810000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000097979781333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF9797978100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      9880333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF989898800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A570333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FFA5A5A57000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C34B383838F8333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3737
      37F9C1C1C14D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEB19555555D4333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF525252D8E8E8E81C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9B9B7C333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF9595
      9584000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E81C5C5C5CCB333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF555555D4E3E3E3220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4C4C449424242EC333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF3C3C3CF3BABABA560000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA6A3A3A
      3AF6333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF373737FA9C9C9C7BFCFCFC03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFB049F9F9F773A3A3AF6333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF373737FA91919189F8F8F808000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB04A6A6A66F3F3F3FEF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF3A3A3AF69797
      9781F8F8F8080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01BABABA564C4C4CDF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF454545E8ACACAC67FBFBFB050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D4D435686868BC333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF5E5E5EC9C8C8C844000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED1693939387404040EE333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF3C3C3CF38787
      8796E7E7E71E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD02C6C6C647636363C23333
      33FE333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF5D5D5DCABEBEBE51FBFBFB050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF14A0A0A0764C4C4CDF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF494949E39A9A9A7EEBEBEB19000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD2A8C8C8C8F464646E7333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF424242EC86868697D9D9
      D92F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01D6D6D6338383
      839B414141ED333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF4343
      43EB8080809ED0D0D03AFCFCFC03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB04CECECE3D8080809E454545E83333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF4B4B4BE187878795D2D2D238FBFBFB0400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC03D7D7D7318F8F8F8B4E4E4EDD333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF373737FA5B5B5BCD9F9F9F77DFDFDF27FEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2E2E224A1A1A1755F5F5FC73A3A3AF6333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF454545E8747474ADB7B7B75AEEEE
      EE15000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F111C3C3
      C34B8080809E4A4A4AE2333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF3E3E3EF1666666BFA3A3
      A373DBDBDB2DFAFAFA0600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD02E0E0E0269E9E9E794A4A
      4AE2333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3737
      37F97F7F7FA0CFCFCF3CF5F5F50C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD3E515151D9333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8D8D8D8EF8F8F80800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BBBBBB553B3B3BF5333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF535353D7E7E7
      E71D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F60B6B6B6BB9333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF8282829C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B9B9B7D333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF9D9D9D7A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD66333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FFA3A3A373000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A66F333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF929292880000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888894333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF737373AEFBFBFB050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F1115D5D5DCA333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF505050DAE8E8
      E81C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A66F373737F9333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF363636FBA3A3A3730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8B8
      B858404040EE333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF4040
      40EEB8B8B8580000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCB41484848E4333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF494949E3CBCBCB40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E71D5F5F5FC83333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF5E5E5EC9E7E7E71D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFA0686868697333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF85858598FAFA
      FA06000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B55C393939F7333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF393939F7B4B4B45D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E81C595959CF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF5858
      58D0E7E7E71D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096969683333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF9494948500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7314747
      47E5333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF464646E7D5D5D53400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE018B8B8B91333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF87878795FDFDFD020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBDBDB2C484848E43333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF474747E6D9D9D92F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000093939386333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF8F8F8F8B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEA1A545454D5333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF515151D9E7E7E71D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B957373737FA333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF353535FCB4B4
      B45D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB047B7B7BA5333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF757575ACFAFAFA0600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E3
      E3234B4B4BE1333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF4747
      47E5DEDEDE290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BCBCBC53363636FB333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF343434FDB6B6B65B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      8E8D333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF878787960000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F40D636363C3333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF5D5D5DCAF1F1F111000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF274747
      47E6333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF434343EBDADADA2E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C647383838F8333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF363636FBBEBEBE51000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB683333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FFA3A3A37300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949485333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF8B8B8B90000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008383839A3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF7A7A7AA6FDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC03777777A9333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF6D6D6DB6FAFAFA060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB04717171B13333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF676767BDF7F7F709000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB056F6F6FB3333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF676767BEF7F7F7090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC03757575AC3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF6C6C6CB7FAFAFA06000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD027C7C7CA3333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF737373AFFBFBFB040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8B8B913333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8181819D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A1A1A175333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF98989880000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BABABA563535
      35FC333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FFB1B1B16100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8D8D830424242EC333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF3E3E3EF1D1D1D139000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0125B5B
      5BCD333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF545454D5ECECEC1700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000087878796333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF7E7E7EA1FDFDFD02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF50373737F9333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3535
      35FCB7B7B75A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC17585858D0333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF535353D7E7E7E71D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E79333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF9696
      9683000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E323515151D9333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF4C4C4CDFDEDEDE290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A66F343434FD333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF9F9F9F780000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F1116C6C6CB73333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF676767BDEEEEEE15000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D6D6334D4D4DDE333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF4B4B4BE1D3D3D337000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEBE
      BE51434343EA333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF4141
      41EDBABABA560000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4B4B45D434343EB333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF414141EDB0B0B0620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF504E4E4EDD333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF4C4C4CDFBBBBBB540000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7326F6F
      6FB4343434FD333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3434
      34FD6C6C6CB7D5D5D53400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F210A8A8A86C545454D5333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF535353D7A6A6A66FF1F1F11100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E61FA3A3A3725F5F5FC83B3B3BF5333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF3B3B3BF55E5E5EC9A2A2A274E4E4E4210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F012C8C8C844939393866A6A6ABA4E4E4EDD3F3F3FF0373737F9353535FC3333
      33FE333333FE353535FC373737F93F3F3FF04D4D4DDE6A6A6ABA93939386C7C7
      C745EFEFEF130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F70AE2E2
      E224CBCBCB40B5B5B55CA7A7A76E9F9F9F789F9F9F78A7A7A76EB5B5B55CCBCB
      CB40E2E2E224F6F6F60B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000007C0100005F00000001000100
      00000000D01100000000000000000000000000000000000000000000FFFFFF00
      FFFFFE0000000000007FFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE000000000000007FFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF0000000000000000FFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFC00000000000000003FFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFF000000000000000000FFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFE0000000000000000003FE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF80000000000000000001FE0000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000000000FE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000FE0000000000000000000000000000000000000000
      00000000000000000000000000000000FE000000000000000000007E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FE000000000000000000007E0000000000000000000000000000000000000000
      00000000000000000000000000000000FE000000000000000000007E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FE000000000000000000007E0000000000000000000000000000000000000000
      00000000000000000000000000000000FE000000000000000000007E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FE000000000000000000007E0000000000000000000000000000000000000000
      00000000000000000000000000000000FE000000000000000000007E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FE000000000000000000007E0000000000000000000000000000000000000000
      00000000000000000000000000000000FE000000000000000000007E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FE000000000000000000007E0000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000000000FE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000FE0000000000000000000000000000000000000000
      00000000000000000000000000000000FF80000000000000000001FE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFC0000000000000000001FE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFC0000000000000000003FE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFE0000000000000000007FE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFF000000000000000000FFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFC00000000000000003FFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFE00000000000000007FFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF0000000000000000FFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC000000000000003FFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFF00000000000000FFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF80000000000001FFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFE0000000000007FFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFC000000003FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFF00000001FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFE0000007FFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFF000000FFFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF000001FFFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF800001FFFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF800000FFFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFF000000FFFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF000000FFFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFE0000007FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC0000003FFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFF80000001FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFF00000000FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFE000000007FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFE000000007FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFC000000003FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF8000000001FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF0000000000FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000001FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFF800000000001FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFF800000000001FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE00000000003FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF0000000000FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF8000000001FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFC000000003FFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFE000000007FFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFF00000000FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF80000001FFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFC0000003FFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFE0000007FFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFE0000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFE00007FFFFFFFFE00000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFC003FFFFFFFFFE0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 214
    Top = 650
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAluno=idAluno'
      'nomeAluno=nomeAluno'
      'dataNascimento=dataNascimento'
      'email=email'
      'sexo=sexo'
      'cidade=cidade'
      'bairro=bairro'
      'rua=rua'
      'numero=numero'
      'cep=cep'
      'tel1=tel1'
      'tel2=tel2'
      'nomeResponsavel=nomeResponsavel'
      'parentescoResponsavel=parentescoResponsavel'
      'telResponsavel=telResponsavel'
      'dataCadastro=dataCadastro'
      'cpf=cpf'
      'idInstrutor=idInstrutor'
      'NOMEINSTRUTORFICHA=NOMEINSTRUTORFICHA'
      'DATACOMPOSICAO=DATACOMPOSICAO'
      'DATAVENCIMENTO=DATAVENCIMENTO'
      'CODFICHA=CODFICHA')
    DataSource = DSRelFicha
    BCDToCurrency = False
    Left = 118
    Top = 650
  end
  object qserieFichaAluno: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select s.*, t.descricaoTreino, e.nomeExercicio, e.tipomedida, e.' +
        'idgrupoExercicio, '
      
        'ge.descricaoGrupoExercicio, eq.idequipamento, eq.descricaoequipa' +
        'mento '
      'from seriefichaAluno s '
      'left outer join treino t on t.idTreino = s.idTreino'
      'left outer join exercicio e on e.idexercicio = s.idExercicio'
      
        'left outer join equipamento eq on eq.idequipamento = e.idequipam' +
        'ento'
      
        'left outer join grupoExercicio ge on ge.idGrupoExercicio = e.idg' +
        'rupoExercicio'
      
        'left outer join fichaAluno fa on fa.idFichaAluno = s.idFichaAlun' +
        'o  '
      'where fa.idFichaAluno =:idFA'
      'ORDER BY S.IDTREINO,  e.idgrupoExercicio;')
    Left = 540
    Top = 643
    ParamData = <
      item
        Name = 'IDFA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qserieFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Origin = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object qserieFichaAlunoqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
    object qserieFichaAlunodescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunonomeExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeExercicio'
      Origin = 'nomeExercicio'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunoidgrupoExercicio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idgrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = []
    end
    object qserieFichaAlunodescricaoGrupoExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunoidequipamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idequipamento'
      Origin = 'idEquipamento'
      ProviderFlags = []
    end
    object qserieFichaAlunodescricaoequipamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoequipamento'
      Origin = 'descricaoEquipamento'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunotipomedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipomedida'
      Origin = 'tipoMedida'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object pserieFichaAluno: TDataSetProvider
    DataSet = qserieFichaAluno
    Left = 572
    Top = 643
  end
  object CDSserieFichaAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pserieFichaAluno'
    Left = 596
    Top = 643
    object CDSserieFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoidExercicio: TIntegerField
      FieldName = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
    end
    object CDSserieFichaAlunoqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
    end
    object CDSserieFichaAlunodescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      Size = 50
    end
    object CDSserieFichaAlunonomeExercicio: TStringField
      FieldName = 'nomeExercicio'
      Size = 50
    end
    object CDSserieFichaAlunoidgrupoExercicio: TIntegerField
      FieldName = 'idgrupoExercicio'
    end
    object CDSserieFichaAlunodescricaoGrupoExercicio: TStringField
      FieldName = 'descricaoGrupoExercicio'
      Size = 50
    end
    object CDSserieFichaAlunoidequipamento: TIntegerField
      FieldName = 'idequipamento'
    end
    object CDSserieFichaAlunodescricaoequipamento: TStringField
      FieldName = 'descricaoequipamento'
      Size = 50
    end
    object CDSserieFichaAlunotipomedida: TStringField
      FieldName = 'tipomedida'
      FixedChar = True
      Size = 1
    end
  end
  object DSserieFichaAluno: TDataSource
    DataSet = CDSserieFichaAluno
    Left = 620
    Top = 643
  end
  object dsAnamnese: TDataSource
    DataSet = CDSAnamnese
    OnDataChange = dsAnamneseDataChange
    Left = 966
    Top = 418
  end
  object CDSAnamnese: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAnamnese'
    AfterCancel = CDSAnamneseAfterCancel
    AfterDelete = CDSAnamneseAfterDelete
    Left = 934
    Top = 418
    object CDSAnamneseidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnamneseidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object CDSAnamnesefrequenciaSemanalTreino: TIntegerField
      FieldName = 'frequenciaSemanalTreino'
    end
    object CDSAnamnesepeso: TSingleField
      FieldName = 'peso'
    end
    object CDSAnamnesealtura: TSingleField
      FieldName = 'altura'
    end
    object CDSAnamneseqtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
    end
    object CDSAnamneseqtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
    end
    object CDSAnamnesedieta: TBooleanField
      FieldName = 'dieta'
    end
    object CDSAnamnesesuplementacao: TBooleanField
      FieldName = 'suplementacao'
    end
    object CDSAnamnesenivelExtresse: TStringField
      FieldName = 'nivelExtresse'
      FixedChar = True
      Size = 1
    end
    object CDSAnamnesenivelAtividadeFisicaAtual: TStringField
      FieldName = 'nivelAtividadeFisicaAtual'
      FixedChar = True
      Size = 1
    end
    object CDSAnamnesehs_alteracaoPressao: TBooleanField
      FieldName = 'hs_alteracaoPressao'
    end
    object CDSAnamnesehs_anemia: TBooleanField
      FieldName = 'hs_anemia'
    end
    object CDSAnamnesehs_ansiedade: TBooleanField
      FieldName = 'hs_ansiedade'
    end
    object CDSAnamnesehs_criseRespiratoria: TBooleanField
      FieldName = 'hs_criseRespiratoria'
    end
    object CDSAnamnesehs_colesterolElevado: TBooleanField
      FieldName = 'hs_colesterolElevado'
    end
    object CDSAnamnesehs_sonoIrregular: TBooleanField
      FieldName = 'hs_sonoIrregular'
    end
    object CDSAnamnesehs_diabetes: TBooleanField
      FieldName = 'hs_diabetes'
    end
    object CDSAnamnesehs_gastrite: TBooleanField
      FieldName = 'hs_gastrite'
    end
    object CDSAnamnesehs_problemaTireoide: TBooleanField
      FieldName = 'hs_problemaTireoide'
    end
    object CDSAnamnesehs_tonturasConstantes: TBooleanField
      FieldName = 'hs_tonturasConstantes'
    end
    object CDSAnamnesehs_varises: TBooleanField
      FieldName = 'hs_varises'
    end
    object CDSAnamnesehs_taquicardia: TBooleanField
      FieldName = 'hs_taquicardia'
    end
    object CDSAnamneseobsCirurgias: TStringField
      FieldName = 'obsCirurgias'
      Size = 700
    end
    object CDSAnamneseobsDoresCronicas: TStringField
      FieldName = 'obsDoresCronicas'
      Size = 700
    end
    object CDSAnamneseobsDoresAgudas: TStringField
      FieldName = 'obsDoresAgudas'
      Size = 700
    end
    object CDSAnamnesedataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Required = True
    end
    object CDSAnamnesefuma: TBooleanField
      FieldName = 'fuma'
    end
    object CDSAnamneseconsumoAlcoolico: TBooleanField
      FieldName = 'consumoAlcoolico'
    end
    object CDSAnamnesenomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Required = True
      Size = 60
    end
    object CDSAnamneseinformacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Size = 700
    end
    object CDSAnamneseidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Required = True
    end
  end
  object pAnamnese: TDataSetProvider
    DataSet = qAnamnese
    Left = 902
    Top = 418
  end
  object qAnamnese: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM ANAMNESE WHERE IDALUNO =:IDA'
      'ORDER BY DATAANAMNESE DESC, IDANAMNESE DESC')
    Left = 870
    Top = 418
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qAnamneseidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAnamneseidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qAnamnesefrequenciaSemanalTreino: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frequenciaSemanalTreino'
      Origin = 'frequenciaSemanalTreino'
    end
    object qAnamnesepeso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
    end
    object qAnamnesealtura: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'altura'
      Origin = 'altura'
    end
    object qAnamneseqtdHorasSono: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object qAnamneseqtdRefeicoesDia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object qAnamnesedieta: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object qAnamnesesuplementacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object qAnamnesenivelExtresse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nivelExtresse'
      Origin = 'nivelExtresse'
      FixedChar = True
      Size = 1
    end
    object qAnamnesenivelAtividadeFisicaAtual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nivelAtividadeFisicaAtual'
      Origin = 'nivelAtividadeFisicaAtual'
      FixedChar = True
      Size = 1
    end
    object qAnamnesehs_alteracaoPressao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_alteracaoPressao'
      Origin = 'hs_alteracaoPressao'
    end
    object qAnamnesehs_anemia: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_anemia'
      Origin = 'hs_anemia'
    end
    object qAnamnesehs_ansiedade: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_ansiedade'
      Origin = 'hs_ansiedade'
    end
    object qAnamnesehs_criseRespiratoria: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_criseRespiratoria'
      Origin = 'hs_criseRespiratoria'
    end
    object qAnamnesehs_colesterolElevado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_colesterolElevado'
      Origin = 'hs_colesterolElevado'
    end
    object qAnamnesehs_sonoIrregular: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_sonoIrregular'
      Origin = 'hs_sonoIrregular'
    end
    object qAnamnesehs_diabetes: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_diabetes'
      Origin = 'hs_diabetes'
    end
    object qAnamnesehs_gastrite: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_gastrite'
      Origin = 'hs_gastrite'
    end
    object qAnamnesehs_problemaTireoide: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_problemaTireoide'
      Origin = 'hs_problemaTireoide'
    end
    object qAnamnesehs_tonturasConstantes: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_tonturasConstantes'
      Origin = 'hs_tonturasConstantes'
    end
    object qAnamnesehs_varises: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_varises'
      Origin = 'hs_varises'
    end
    object qAnamnesehs_taquicardia: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'hs_taquicardia'
      Origin = 'hs_taquicardia'
    end
    object qAnamneseobsCirurgias: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obsCirurgias'
      Origin = 'obsCirurgias'
      Size = 700
    end
    object qAnamneseobsDoresCronicas: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obsDoresCronicas'
      Origin = 'obsDoresCronicas'
      Size = 700
    end
    object qAnamneseobsDoresAgudas: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obsDoresAgudas'
      Origin = 'obsDoresAgudas'
      Size = 700
    end
    object qAnamnesedataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Origin = 'dataAnamnese'
      Required = True
    end
    object qAnamnesefuma: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fuma'
      Origin = 'fuma'
    end
    object qAnamneseconsumoAlcoolico: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consumoAlcoolico'
      Origin = 'consumoAlcoolico'
    end
    object qAnamnesenomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Required = True
      Size = 60
    end
    object qAnamneseinformacaoAdicional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 700
    end
    object qAnamneseidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
      Required = True
    end
  end
end
