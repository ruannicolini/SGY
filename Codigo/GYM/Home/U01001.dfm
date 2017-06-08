inherited F01001: TF01001
  Caption = 'F01001'
  ClientHeight = 741
  ClientWidth = 1008
  OnCreate = FormCreate
  ExplicitLeft = -237
  ExplicitTop = -279
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
                  TabOrder = 2
                  OnExit = cxDBDateEdit1Exit
                  Width = 192
                end
                object cxImage1: TcxImage
                  Left = 14
                  Top = 34
                  TabStop = False
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
                  TabOrder = 8
                end
                object DBEdit3: TDBEdit
                  Left = 223
                  Top = 54
                  Width = 344
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'nomeAluno'
                  DataSource = DS
                  TabOrder = 0
                end
                object DBEdit9: TDBEdit
                  Left = 223
                  Top = 161
                  Width = 193
                  Height = 24
                  DataField = 'cpf'
                  DataSource = DS
                  TabOrder = 3
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
                  Top = 213
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
                  TabOrder = 4
                  TabStop = True
                  Values.Strings = (
                    'M'
                    'F')
                end
                object DBEdit14: TDBEdit
                  Left = 430
                  Top = 109
                  Width = 193
                  Height = 24
                  TabStop = False
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
                  TabOrder = 4
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
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 223
                  Top = 25
                  Width = 193
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'bairro'
                  DataSource = DS
                  TabOrder = 1
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
                  TabOrder = 2
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
                  TabOrder = 2
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
                  TabOrder = 0
                end
                object DBEdit5: TDBEdit
                  Left = 16
                  Top = 91
                  Width = 297
                  Height = 24
                  CharCase = ecUpperCase
                  DataField = 'parentescoResponsavel'
                  DataSource = DS
                  TabOrder = 1
                end
              end
              object GroupBox3: TGroupBox
                Left = 16
                Top = 500
                Width = 313
                Height = 50
                Caption = 'PROFESSOR'
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
                  ReadOnly = True
                  TabOrder = 1
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
                  TabOrder = 0
                  OnKeyPress = EditPesqModalidadeKeyPress
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
              object PageControlAvaliacoes: TPageControl
                Left = 2
                Top = 42
                Width = 790
                Height = 508
                ActivePage = TabSheet1
                Align = alClient
                Style = tsFlatButtons
                TabOrder = 0
                object TabSheet1: TTabSheet
                  Caption = 'ANAMNESE'
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
                  object Panel5: TPanel
                    Left = 0
                    Top = 437
                    Width = 782
                    Height = 37
                    Align = alBottom
                    BevelOuter = bvNone
                    Color = 15329769
                    ParentBackground = False
                    TabOrder = 1
                    object btnImprimirAnamnes: TSpeedButton
                      Left = 631
                      Top = 3
                      Width = 151
                      Height = 30
                      Align = alCustom
                      Caption = 'IMPRIMIR'
                      Enabled = False
                      OnClick = btnImprimirAnamnesClick
                    end
                    object btnNovaAnamnes: TSpeedButton
                      Left = 474
                      Top = 3
                      Width = 151
                      Height = 30
                      Align = alCustom
                      Caption = 'NOVO'
                      OnClick = btnNovaAnamnesClick
                    end
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'F'#205'SICA'
                  ImageIndex = 1
                  object DBGridBelezaFisica: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 392
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = DSAvaFisica
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
                    OnDblClick = DBGridBelezaFisicaDblClick
                    OnKeyDown = DBGridBelezaFisicaKeyDown
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
                        FieldName = 'idAvaliacaoFisica'
                        Title.Alignment = taCenter
                        Title.Caption = 'COD'
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'dataAvaliacaoFisica'
                        Title.Alignment = taCenter
                        Title.Caption = 'DATA'
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
                  object Panel3: TPanel
                    Left = 0
                    Top = 398
                    Width = 782
                    Height = 40
                    Align = alBottom
                    BevelOuter = bvNone
                    Color = 15329769
                    ParentBackground = False
                    TabOrder = 1
                    object LabelAvisoProtocolo: TLabel
                      Left = 328
                      Top = 11
                      Width = 332
                      Height = 18
                      Caption = '<- Selecione um Protocolo de Composi'#231#227'o Corporal'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 232
                      Font.Height = -15
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Visible = False
                    end
                    object DBEditBelezaProtocolo: TDBEditBeleza
                      Left = 38
                      Top = 10
                      Width = 275
                      Height = 21
                      Color = clSilver
                      DataField = 'descricaoprotocoloAvaFisica'
                      DataSource = DS
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnKeyPress = EditPesqModalidadeKeyPress
                      Ativar_Pesquisa = True
                      mostrar_Botao = True
                      sql.Strings = (
                        
                          'select idProtocoloAvaFisica, descricaoprotocoloAvaFisica from Pr' +
                          'otocoloAvaFisica where descricaoprotocoloAvaFisica like :varDesc' +
                          'ricao')
                      database = 'GYM'
                      campo = 'descricaoprotocoloAvaFisica'
                      Sempre_Mostrar_Janela = False
                      Outro_Edit = DBEdit15
                      campo_outro_edit = 'IDprotocoloAvaFisica'
                      CorBorda = clGray
                      NovoLayout = False
                    end
                    object DBEdit15: TDBEdit
                      Left = 14
                      Top = 10
                      Width = 25
                      Height = 21
                      Color = clSilver
                      DataField = 'idProtocoloAvaFisica'
                      DataSource = DS
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ReadOnly = True
                      TabOrder = 1
                      OnChange = DBEdit15Change
                    end
                  end
                  object Panel4: TPanel
                    Left = 0
                    Top = 438
                    Width = 782
                    Height = 36
                    Align = alBottom
                    BevelOuter = bvNone
                    Color = 15329769
                    ParentBackground = False
                    TabOrder = 2
                    object btnImprimirAvaFisica: TSpeedButton
                      Left = 627
                      Top = 2
                      Width = 151
                      Height = 30
                      Align = alCustom
                      Caption = 'IMPRIMIR'
                      Enabled = False
                      OnClick = btnImprimirAvaFisicaClick
                    end
                    object btnNovaAvaFisica: TSpeedButton
                      Left = 474
                      Top = 2
                      Width = 151
                      Height = 30
                      Align = alCustom
                      Caption = 'NOVO'
                      OnClick = btnNovaAvaFisicaClick
                    end
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'POSTURAL'
                  ImageIndex = 2
                  object DBGridBelezaPostural: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 468
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
                  object DBGridBelezaDadosClinicos: TDBGridBeleza
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 776
                    Height = 468
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
                TabOrder = 1
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
                  Left = 635
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
          object pagMatricula: TcxTabSheet
            Caption = 'MATR'#205'CULA'
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
                    Left = 338
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
          Caption = 'PROFESSOR'
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
    Left = 304
    Top = 40
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 240
    Top = 40
    object ClientDataSet1IDADE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDADE'
    end
    object ClientDataSet1situacao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'situacao'
      Size = 50
    end
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Required = True
      Size = 80
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
    end
    object ClientDataSet1email: TStringField
      FieldName = 'email'
      Size = 60
    end
    object ClientDataSet1sexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1cidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ClientDataSet1bairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ClientDataSet1rua: TStringField
      FieldName = 'rua'
      Size = 50
    end
    object ClientDataSet1numero: TIntegerField
      FieldName = 'numero'
    end
    object ClientDataSet1cep: TIntegerField
      FieldName = 'cep'
    end
    object ClientDataSet1tel1: TStringField
      FieldName = 'tel1'
      EditMask = '!\(99\)9999-99999;1;_'
      Size = 50
    end
    object ClientDataSet1tel2: TStringField
      FieldName = 'tel2'
      EditMask = '!\(99\)9999-99999;1;_'
      Size = 50
    end
    object ClientDataSet1nomeResponsavel: TStringField
      FieldName = 'nomeResponsavel'
      Size = 80
    end
    object ClientDataSet1parentescoResponsavel: TStringField
      FieldName = 'parentescoResponsavel'
      Size = 50
    end
    object ClientDataSet1telResponsavel: TStringField
      FieldName = 'telResponsavel'
      Size = 50
    end
    object ClientDataSet1dataCadastro: TDateField
      FieldName = 'dataCadastro'
    end
    object ClientDataSet1cpf: TStringField
      FieldName = 'cpf'
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
    object ClientDataSet1idProtocoloAvaFisica: TIntegerField
      FieldName = 'idProtocoloAvaFisica'
    end
    object ClientDataSet1descricaoprotocoloAvaFisica: TStringField
      FieldName = 'descricaoprotocoloAvaFisica'
      Size = 50
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    Left = 208
    Top = 40
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT A.*, P.descricaoprotocoloAvaFisica, INST.NOMEUSUARIO AS N' +
        'OMEINSTRUTORFICHA FROM ALUNO A '
      'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR'
      
        'LEFT OUTER JOIN PROTOCOLOAVAFISICA P ON P.IDPROTOCOLOAVAFISICA =' +
        ' A.IDPROTOCOLOAVAFISICA')
    Left = 176
    Top = 40
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      Required = True
      Size = 80
    end
    object FDQuery1dataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object FDQuery1email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQuery1sexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object FDQuery1cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object FDQuery1bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object FDQuery1rua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      Size = 50
    end
    object FDQuery1numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object FDQuery1cep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object FDQuery1tel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 50
    end
    object FDQuery1tel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 50
    end
    object FDQuery1nomeResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      Size = 80
    end
    object FDQuery1parentescoResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      Size = 50
    end
    object FDQuery1telResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      Size = 50
    end
    object FDQuery1dataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
    object FDQuery1cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
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
    object FDQuery1idProtocoloAvaFisica: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idProtocoloAvaFisica'
      Origin = 'idProtocoloAvaFisica'
    end
    object FDQuery1descricaoprotocoloAvaFisica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoprotocoloAvaFisica'
      Origin = 'descricaoprotocoloAvaFisica'
      ProviderFlags = []
      Size = 50
    end
  end
  inherited ImageListBase: TImageList
    Left = 144
    Top = 40
    Bitmap = {
      494C01010F002C00300410001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 272
    Top = 41
    inherited ActionReajustarDBGridBeleza1: TAction
      OnExecute = ActionReajustarDBGridBeleza1Execute
    end
  end
  object qFichaAluno: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select fa.* from fichaAluno fa where fa.idAluno =:idA order by d' +
        'atacomposicao DESC, IDFICHAALUNO DESC;')
    Left = 568
    Top = 642
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
    BeforeUpdateRecord = pFichaAlunoBeforeUpdateRecord
    Left = 592
    Top = 642
  end
  object CDSFichaAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFichaAluno'
    AfterPost = CDSFichaAlunoAfterPost
    AfterCancel = CDSFichaAlunoAfterCancel
    AfterDelete = CDSFichaAlunoAfterDelete
    Left = 624
    Top = 642
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
    Left = 648
    Top = 642
  end
  object qTreino: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from treino')
    Left = 672
    Top = 4
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
    Left = 696
    Top = 3
  end
  object CDSTreino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTreino'
    Left = 720
    Top = 2
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
    Left = 744
    Top = 1
  end
  object DSModalidade: TDataSource
    DataSet = cdsModalidade
    OnDataChange = DSModalidadeDataChange
    Left = 616
    Top = 8
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pModalidade'
    AfterPost = cdsModalidadeAfterPost
    AfterCancel = cdsModalidadeAfterCancel
    AfterDelete = cdsModalidadeAfterDelete
    Left = 588
    Top = 8
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
    BeforeUpdateRecord = pModalidadeBeforeUpdateRecord
    Left = 564
    Top = 8
  end
  object QMODALIDADE: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT AM.*, M.DESCRICAOMODALIDADE, M.valor FROM ALUNOMODALIDADE' +
        ' AM '
      
        'LEFT OUTER JOIN MODALIDADE M ON M.IDMODALIDADE = AM.IDMODALIDADE' +
        ' '
      'WHERE AM.IDALUNO =:IDA')
    Left = 540
    Top = 8
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
    BeforeUpdateRecord = pPagamentoBeforeUpdateRecord
    Left = 427
    Top = 7
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPagamento'
    AfterInsert = cdsPagamentoAfterInsert
    AfterPost = cdsPagamentoAfterPost
    AfterCancel = cdsPagamentoAfterCancel
    AfterDelete = cdsPagamentoAfterDelete
    Left = 451
    Top = 7
    object cdsPagamentoidPagamento: TIntegerField
      FieldName = 'idPagamento'
      ProviderFlags = [pfInWhere, pfInKey]
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
    end
    object cdsPagamentovalorCobrado: TSingleField
      FieldName = 'valorCobrado'
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
    object cdsPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Required = True
      Size = 200
    end
    object cdsPagamentodescricaoModalidade: TStringField
      FieldName = 'descricaoModalidade'
      Size = 50
    end
    object cdsPagamentodescricaoStatusPagamento: TStringField
      FieldName = 'descricaoStatusPagamento'
      Size = 50
    end
  end
  object DSPagamento: TDataSource
    DataSet = cdsPagamento
    OnDataChange = DSPagamentoDataChange
    Left = 475
    Top = 7
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
    Left = 403
    Top = 7
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
      ProviderFlags = [pfInUpdate]
    end
    object qPagamentovalorCobrado: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorCobrado'
      Origin = 'valorCobrado'
      ProviderFlags = [pfInUpdate]
    end
    object qPagamentodataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
      ProviderFlags = [pfInUpdate]
    end
    object qPagamentodataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataPagamento'
      Origin = 'dataPagamento'
      ProviderFlags = [pfInUpdate]
    end
    object qPagamentoidstatusPagamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idstatusPagamento'
      Origin = 'idstatusPagamento'
      ProviderFlags = [pfInUpdate]
    end
    object qPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Origin = 'LOGUsuarioResponsavel'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object qPagamentodescricaoModalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoModalidade'
      Origin = 'descricaoModalidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qPagamentodescricaoStatusPagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoStatusPagamento'
      Origin = 'descricaoStatusPagamento'
      ProviderFlags = [pfInUpdate]
      Size = 50
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
    ReportOptions.LastChange = 42881.633322037000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 22
    Top = 644
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
          Left = 520.795275590000000000
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
        Height = 26.456710000000000000
        Top = 321.260050000000000000
        Width = 349.606525000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2nomeExercicio: TfrxMemoView
          Left = 42.330708660000000000
          Top = 2.779530000000022000
          Width = 242.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
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
          Top = 2.779530000000022000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
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
          Top = 2.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
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
        Top = 480.000310000000000000
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
        Top = 370.393940000000000000
        Width = 349.606525000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 396.850650000000000000
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
    Left = 78
    Top = 644
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 110
    Top = 644
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
    Left = 142
    Top = 644
  end
  object DSRelFicha: TDataSource
    DataSet = CDSRelFicha
    Left = 334
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
    Left = 238
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
    Left = 270
    Top = 642
  end
  object CDSRelFicha: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pRelFicha'
    Left = 302
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
    Left = 112
    Top = 40
    Bitmap = {
      494C0101020014009C015F005F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000F0F0F012D0D0
      D03AB4B4B45DA5A5A5709F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F9F779F9F
      9F779F9F9F779F9F9F77A5A5A570B4B4B45DD0D0D03AF0F0F012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000F1F1F111A6A6A66F5D5D5DCA3D3D3DF2333333FE333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FE3D3D3DF25D5D5DCAA6A6A66FF1F1F1110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000EAEAEA1A747474AD333333FE333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FE7575
      75ACEAEAEA1A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FBFBFB058787
      8796333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF87878796FBFBFB05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000D0D0D03A434343EA333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF434343EAD0D0D03A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A3A3A3733333
      33FE333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FEA3A3A373000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000093939387333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF9393938700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A1A1A1753333
      33FE333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FEA1A1A175000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000C7C7C7463E3E3EF1333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF353535FC3E3E3EF13E3E3EF13535
      35FC333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF3E3E3EF1C7C7C74600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000EFEFEF136060
      60C6333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF373737F97171
      71B1B6B6B65BD3D3D336D3D3D336B6B6B65B717171B1373737F9333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF606060C6EFEFEF13000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000A8A8A86C333333FE333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF3B3B3BF5A0A0A076F7F7F70A0000000000000000000000000000
      0000F7F7F70AA0A0A0763B3B3BF5333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FEA8A8A86C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000EDED
      ED165F5F5FC8333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF8F8F8F8CFCFCFC030000
      00000000000000000000000000000000000000000000FCFCFC038F8F8F8C3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF5F5F5FC8EDEDED1600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000B8B8B858383838F8333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF4A4A4AE2DFDFDF2700000000000000000000000000000000000000000000
      00000000000000000000DFDFDF274A4A4AE2333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF383838F8B8B8
      B858000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000F7F7F70A747474AD333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF6B6B6BB9F9F9F907000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9076B6B
      6BB9333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF747474ADF7F7F70A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000CFCFCF3C434343EB3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF747474ADFCFCFC0300000000000000000000000000000000000000000000
      00000000000000000000FCFCFC03747474AD333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF434343EBCFCFCF3C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000FDFDFD028C8C8C8F333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF626262C4F5F5F50C000000000000
      0000000000000000000000000000000000000000000000000000F5F5F50C6262
      62C4333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF8C8C8C8FFDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000E1E1E1255050
      50DA333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF404040EECFCFCF3C00000000000000000000000000000000000000000000
      00000000000000000000CFCFCF3C404040EE333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF505050DAE1E1E125000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000A6A6A66F343434FD333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF717171B1F0F0F0120000
      00000000000000000000000000000000000000000000F0F0F012717171B13333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3434
      34FDA6A6A66F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF13636363C2333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FE7B7B7BA5E3E3E3230000000000000000000000000000
      0000E3E3E3237B7B7BA5333333FE333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF636363C2EFEFEF1300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000BFBFBF503B3B3BF5333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF5151
      51D98D8D8D8EAFAFAF64AFAFAF648D8D8D8E515151D9333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF3B3B3BF5BFBF
      BF50000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000F9F9F9077B7B7BA5333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF7B7B7BA5F9F9F9070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000D4D4D435464646E73333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF464646E7D4D4D4350000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000093939386333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF474747E65D5D5DCA5C5C5CCB5C5C5CCB5D5D
      5DCA4A4A4AE2333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF9393938600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000E6E6E61F5555
      55D4333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF9797
      9781F6F6F60BF3F3F30FF3F3F30FF6F6F60BA7A7A76D333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF555555D4E6E6E61F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000ADADAD66363636FB333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FFAFAFAF630000000000000000000000000000
      0000C1C1C14D373737FA333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3636
      36FBADADAD660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F3F3
      F30F696969BB333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF373737FAC1C1
      C14D00000000000000000000000000000000D2D2D2383D3D3DF2333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF696969BBF3F3F30F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000C4C4C4493D3D3DF2333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF3F3F3FF0D3D3D3360000000000000000000000000000
      0000E2E2E224484848E4333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF3D3D3DF2C4C4
      C449000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FBFBFB058181819D333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF4B4B4BE1E5E5
      E52000000000000000000000000000000000EFEFEF13585858D0333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF8181819DFBFBFB050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000D9D9D92F494949E33333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF5B5B5BCCF2F2F2100000000000000000000000000000
      0000F9F9F9076C6C6CB7333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF494949E3D9D9D92F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000009A9A9A7E333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF737373AFFBFB
      FB04000000000000000000000000000000000000000086868697333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF9A9A9A7E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000EAEAEA1A5A5A
      5ACE333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF8F8F8F8C000000000000000000000000000000000000
      000000000000A2A2A274333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF5A5A5ACEEAEAEA1A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000B3B3B35E373737F9333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FFACACAC670000
      00000000000000000000000000000000000000000000BDBDBD52363636FB3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3737
      37F9B3B3B35E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F5F5
      F50C6F6F6FB3333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF393939F7C7C7C745000000000000000000000000000000000000
      000000000000D5D5D5343F3F3FEF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF6F6F6FB3F5F5F50C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000CBCBCB41404040EE333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF454545E8DEDEDE290000
      00000000000000000000000000000000000000000000E7E7E71D4E4E4EDD3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF404040EECBCB
      CB41000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FCFCFC0387878795333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF585858D0EFEFEF13000000000000000000000000000000000000
      000000000000F5F5F50C636363C3333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF87878795FCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000DEDEDE294D4D4DDE3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF727272B0FBFBFB050000
      00000000000000000000000000000000000000000000FEFEFE017D7D7DA23333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF4D4D4DDEDEDEDE290000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000A1A1A175333333FE333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF9191918900000000000000000000000000000000000000000000
      000000000000000000009B9B9B7C333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FEA1A1A17500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000EDEDED165F5F
      5FC7333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FFB0B0B062000000000000
      0000000000000000000000000000000000000000000000000000B8B8B8583434
      34FD333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF5F5F5FC7EDEDED16000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000BABABA56393939F7333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF3B3B3BF4CECECE3D00000000000000000000000000000000000000000000
      00000000000000000000D3D3D3373E3E3EF1333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3939
      39F7BABABA560000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000F7F7
      F709767676AB333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF4B4B4BE1E4E4E421000000000000
      0000000000000000000000000000000000000000000000000000E7E7E71E4C4C
      4CDF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF767676ABF7F7F70900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000D0D0D03A434343EA333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF5F5F5FC7F3F3F30E00000000000000000000000000000000000000000000
      00000000000000000000F3F3F30F5E5E5EC9333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF434343EAD0D0
      D03A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FEFEFE018E8E8E8D333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF727272B0FBFBFB04000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB057070
      70B2333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF8E8E8E8DFEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000E3E3E323525252D83333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF6F6F6FB4FBFBFB0500000000000000000000000000000000000000000000
      00000000000000000000FBFBFB056F6F6FB4333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF525252D8E3E3E3230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000A7A7A76D343434FD333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF555555D4ECECEC17000000000000
      0000000000000000000000000000000000000000000000000000EDEDED165555
      55D4333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF343434FDA7A7A76D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F0F0F0126565
      65C0333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF373737F9B7B7B75A00000000000000000000000000000000000000000000
      00000000000000000000B9B9B957383838F8333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF656565C0F0F0F012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000C0C0C04E3B3B3BF4333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF585858D0DEDEDE290000
      00000000000000000000000000000000000000000000E0E0E0265B5B5BCD3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3B3B
      3BF4C0C0C04E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA067C7C7CA3333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF5E5E5EC9C5C5C548F6F6F60B0000000000000000F6F6
      F60BC7C7C746606060C6333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF7C7C7CA3FAFAFA0600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000D6D6D633474747E6333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3D3D
      3DF2646464C18181819D8181819D656565C03E3E3EF1333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF474747E6D6D6
      D633000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000095959584333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF95959584000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000E7E7E71E575757D23333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF575757D2E7E7E71E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000AFAFAF64363636FB333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF363636FBAFAFAF6400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F3F3F30E6B6B
      6BB9333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF6B6B6BB9F3F3F30E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000C6C6C6473E3E3EF1333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3E3E
      3EF1C6C6C6470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB048383839B333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF8383839BFBFBFB0400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000DBDBDB2D4B4B4BE1333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF4B4B4BE1DBDB
      DB2D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000009B9B9B7C333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF9B9B9B7C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000EBEBEB195B5B5BCC3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF5B5B5BCCEBEBEB190000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000B5B5B55C373737F9333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF373737F9B5B5B55C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000F6F6F60B7171
      71B1333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF717171B1F6F6F60B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000CDCDCD3E424242EC333333FF333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF4242
      42ECCDCDCD3E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0197979781333333FF333333FF333333FF333333FF333333FF333333FF3333
      33FF333333FF333333FF333333FE97979781FEFEFE0100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000F2F2F2107B7B7BA4333333FF3333
      33FF333333FF333333FF333333FF333333FF333333FF333333FF7B7B7BA4F3F3
      F30F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000EFEFEF14888888943B3B3BF4333333FF333333FF333333FF3333
      33FF3B3B3BF488888894EFEFEF14000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FAFAFA06C3C3
      C34B7F7F7F9F5F5F5FC85F5F5FC87F7F7F9FC3C3C34BFAFAFA06000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FDFDFD02F4F4F40DF4F4F40DFDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FFFFFE0000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFE000000000000007FFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFC00000000000000003FFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFE0000000000000000003FFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FF80000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FF00000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FF00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FE000000000000000000007FFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FE000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FE000000000000000000007FFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FE000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FE000000000000000000007FFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FE000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FE000000000000000000007FFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FE000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FE000000000000000000007FFFFC0000
      000000000003FFFC000000000000000000000000000000000000000000000000
      FE000000000000000000007FFFF00000000000000000FFFC0000000000000000
      00000000000000000000000000000000FF00000000000000000000FFFFE00000
      0000000000007FFC000000000000000000000000000000000000000000000000
      FF00000000000000000000FFFFC000000000000000003FFC0000000000000000
      00000000000000000000000000000000FF80000000000000000001FFFFC00000
      0000000000003FFC000000000000000000000000000000000000000000000000
      FFC0000000000000000001FFFFC000000000000000003FFC0000000000000000
      00000000000000000000000000000000FFC0000000000000000003FFFFC00000
      0000000000003FFC000000000000000000000000000000000000000000000000
      FFE0000000000000000007FFFFC000000000000000003FFC0000000000000000
      00000000000000000000000000000000FFF000000000000000000FFFFFC00000
      0000000000003FFC000000000000000000000000000000000000000000000000
      FFFC00000000000000003FFFFFC000000000000000003FFC0000000000000000
      00000000000000000000000000000000FFFE00000000000000007FFFFFE00000
      000F000000007FFC000000000000000000000000000000000000000000000000
      FFFF0000000000000000FFFFFFE00000001F800000007FFC0000000000000000
      00000000000000000000000000000000FFFFC000000000000003FFFFFFF00000
      003FC0000000FFFC000000000000000000000000000000000000000000000000
      FFFFF00000000000000FFFFFFFF00000003FC0000000FFFC0000000000000000
      00000000000000000000000000000000FFFFF80000000000001FFFFFFFF80000
      003FC0000001FFFC000000000000000000000000000000000000000000000000
      FFFFFE0000000000007FFFFFFFF80000003FC0000001FFFC0000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFFFFFC0000
      003FC0000003FFFC000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFFFFFE0000001F80000007FFFC0000000000000000
      00000000000000000000000000000000FFFFFFFC000000003FFFFFFFFFFE0000
      000F00000007FFFC000000000000000000000000000000000000000000000000
      FFFFFFFF00000001FFFFFFFFFFFF000000000000000FFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFE0000007FFFFFFFFFFFF0000
      00000000000FFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFF000000FFFFFFFFFFFFF800000000000001FFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFF000001FFFFFFFFFFFFFC000
      00000000003FFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFFFFFFC00000000000003FFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFF800001FFFFFFFFFFFFFE000
      000F0000007FFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFFFFFFE000000F0000007FFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFF800000FFFFFFFFFFFFFF000
      000F000000FFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFF000000FFFFFFFFFFFFFF000000F000000FFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFF000000FFFFFFFFFFFFFF800
      000F000001FFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFE0000007FFFFFFFFFFFFFC00000F800003FFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFC0000003FFFFFFFFFFFFFC00
      001F800003FFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFF80000001FFFFFFFFFFFFFE00001F800007FFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFFFFFFFE00
      001F800007FFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFF00000000FFFFFFFFFFFFFF00001F80000FFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFE000000007FFFFFFFFFFFFF00
      001F80000FFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFE000000007FFFFFFFFFFFFF80001F80001FFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFC000000003FFFFFFFFFFFFFC0
      003FC0003FFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFFFFFFFFC0003FC0003FFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFF8000000001FFFFFFFFFFFFFE0
      003FC0007FFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFFFFFFFFE0003FC0007FFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFF0000000000FFFFFFFFFFFFFF0
      003FC000FFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFFFFFFFFF0003FC000FFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFFFFFFFFF8
      003FC001FFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFFFFFFFFFC003FC003FFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFFFFFFFFFC
      003FC003FFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFFFFFFFFFE001F8007FFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFFFFFFFFFE
      00060007FFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFFFFFFFFFF0000000FFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFFFFFFFFFF
      8000001FFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFFFFFFFFFF8000001FFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFFFFFFFFFF
      C000003FFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000001FFFFFFFFFFFFFFC000003FFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFFFFFFFFFF
      E000007FFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFF800000000001FFFFFFFFFFFFFFE000007FFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFFFFFFFFFF
      F00000FFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFF800000000001FFFFFFFFFFFFFFF80001FFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFF800000000001FFFFFFFFFFFFFF
      F80001FFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFFFFFFFFFFFC0003FFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFFFFFFFFFF
      FC0003FFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFFFFFFFFFFFE0007FFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFC00000000003FFFFFFFFFFFFFF
      FE0007FFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFC00000000003FFFFFFFFFFFFFFFF000FFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFE00000000003FFFFFFFFFFFFFF
      FF801FFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFE00000000007FFFFFFFFFFFFFFFFC03FFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFE00000000007FFFFFFFFFFFFFF
      FFF0FFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFF0000000000FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFF8000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFF8000000001FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFC000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFE000000007FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFF80000001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFE0000007FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      00000000000000000000000000000000FFFFFFFFFE00007FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000
      FFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 174
    Top = 644
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
    Left = 46
    Top = 644
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
    Left = 412
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
    Left = 444
    Top = 643
  end
  object CDSserieFichaAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pserieFichaAluno'
    Left = 468
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
    Left = 492
    Top = 643
  end
  object dsAnamnese: TDataSource
    DataSet = CDSAnamnese
    OnDataChange = dsAnamneseDataChange
    Left = 950
    Top = 522
  end
  object CDSAnamnese: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAnamnese'
    AfterPost = CDSAnamneseAfterPost
    AfterCancel = CDSAnamneseAfterCancel
    AfterDelete = CDSAnamneseAfterDelete
    Left = 918
    Top = 522
    object CDSAnamneseidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnamneseidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object CDSAnamnesefrequenciaSemanalTreino: TIntegerField
      FieldName = 'frequenciaSemanalTreino'
      Origin = 'frequenciaSemanalTreino'
    end
    object CDSAnamnesepeso: TSingleField
      FieldName = 'peso'
      Origin = 'peso'
    end
    object CDSAnamnesealtura: TSingleField
      FieldName = 'altura'
      Origin = 'altura'
    end
    object CDSAnamneseqtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object CDSAnamneseqtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object CDSAnamnesedieta: TBooleanField
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object CDSAnamnesesuplementacao: TBooleanField
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object CDSAnamnesedataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Origin = 'dataAnamnese'
      Required = True
    end
    object CDSAnamnesefuma: TBooleanField
      FieldName = 'fuma'
      Origin = 'fuma'
    end
    object CDSAnamneseconsumoAlcoolico: TBooleanField
      FieldName = 'consumoAlcoolico'
      Origin = 'consumoAlcoolico'
    end
    object CDSAnamnesenomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Required = True
      Size = 60
    end
    object CDSAnamneseinformacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 700
    end
    object CDSAnamneseidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
      Required = True
    end
    object CDSAnamneseNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object CDSAnamneseDESCRICAOOBJETIVO: TStringField
      FieldName = 'DESCRICAOOBJETIVO'
      Size = 50
    end
  end
  object pAnamnese: TDataSetProvider
    DataSet = qAnamnese
    BeforeUpdateRecord = pAnamneseBeforeUpdateRecord
    Left = 894
    Top = 522
  end
  object qAnamnese: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AN.*,A.NOMEALUNO, OB.DESCRICAOOBJETIVO  FROM ANAMNESE AN '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AN.IDALUNO '
      'LEFT OUTER JOIN OBJETIVO OB ON OB.IDOBJETIVO = AN.IDOBJETIVO'
      'WHERE AN.IDALUNO =:IDA'
      'ORDER BY AN.DATAANAMNESE DESC, AN.IDANAMNESE DESC')
    Left = 862
    Top = 522
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
    object qAnamneseNOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object qAnamneseDESCRICAOOBJETIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
  end
  object REPORT_ANAMNESEPATOLOGIA: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset3
    DataSetName = 'frxDBDataset3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42838.527142581000000000
    ReportOptions.LastChange = 42885.632434062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = REPORT_ANAMNESEPATOLOGIABeforePrint
    OnPreview = REPORT_ANAMNESEPATOLOGIAPreview
    Left = 854
    Top = 666
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
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
      Frame.Typ = [ftTop]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Fill.Style = bsClear
        Height = 490.803261890000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'ANAMNESE')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 18.000000000000000000
          Top = 75.661410000000000000
          Width = 681.070866141732000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset3."NOMEALUNO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 18.000000000000000000
          Top = 95.440940000000000000
          Width = 528.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' AVALIADOR: [frxDBDataset3."nomeAvaliador"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 547.031850000000000000
          Top = 95.102350000000000000
          Width = 151.681102360000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            ' DATA  AV: [frxDBDataset3."dataAnamnese"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 510.000000000000000000
          Top = 133.102350000000000000
          Width = 189.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FREQU'#202'NCIA SEMANAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 510.000000000000000000
          Top = 152.968503940000000000
          Width = 189.181102360000000000
          Height = 71.811023620000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."frequenciaSemanalTreino"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 19.000000000000000000
          Top = 133.102350000000000000
          Width = 472.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'OBJETIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 19.000000000000000000
          Top = 152.968503940000000000
          Width = 472.181102360000000000
          Height = 71.811023620000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."DESCRICAOOBJETIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 193.000000000000000000
          Top = 397.102350000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SUPLEMENTA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 193.000000000000000000
          Top = 416.992238270000000000
          Width = 151.181102360000000000
          Height = 52.913385830000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SIM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 369.000000000000000000
          Top = 397.102350000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FUMANTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 369.000000000000000000
          Top = 416.992238270000000000
          Width = 151.181102360000000000
          Height = 52.913385830000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 546.000000000000000000
          Top = 397.102350000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'USO BEB. ALC'#211'OLICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 546.000000000000000000
          Top = 416.992238270000000000
          Width = 151.181102360000000000
          Height = 52.913385830000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 18.000000000000000000
          Top = 397.102350000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'DIETA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 18.000000000000000000
          Top = 417.992238270000000000
          Width = 151.181102360000000000
          Height = 52.913385830000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'SIM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 17.000000000000000000
          Top = 359.102350000000000000
          Width = 682.094930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clTeal
          HAlign = haCenter
          Memo.UTF8W = (
            'QUESTION'#193'RIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 18.000000000000000000
          Top = 266.992238270000000000
          Width = 226.771653540000000000
          Height = 71.811023620000000000
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."peso"] Kg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 264.500000000000000000
          Top = 246.602350000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'ALTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 264.000000000000000000
          Top = 266.992238270000000000
          Width = 226.771653540000000000
          Height = 71.811023620000000000
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."altura"] m')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 509.102362204724000000
          Top = 244.913385830000000000
          Width = 188.976377950000000000
          Height = 19.275590550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'IMC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 509.102362200000000000
          Top = 266.078740160000000000
          Width = 188.976377950000000000
          Height = 71.811023622047210000
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."IMC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 606.000000000000000000
          Top = 18.102350000000000000
          Width = 94.488250000000000000
          Height = 38.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 18.141732280000000000
          Top = 246.425196850393700000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'PESO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 627.401980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object frxDBDataset4nomepatologia: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' [frxDBDataset4."nomepatologia"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 32.779530000000000000
        Top = 570.709030000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Top = 13.322819999999980000
          Width = 717.732283460000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Fill.BackColor = clTeal
          HAlign = haCenter
          Memo.UTF8W = (
            'PATOLOGIAS E RELATOS F'#205'SICOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAnamnese=idAnamnese'
      'idAluno=idAluno'
      'frequenciaSemanalTreino=frequenciaSemanalTreino'
      'peso=peso'
      'altura=altura'
      'qtdHorasSono=qtdHorasSono'
      'qtdRefeicoesDia=qtdRefeicoesDia'
      'fuma=fuma'
      'dieta=dieta'
      'suplementacao=suplementacao'
      'consumoAlcoolico=consumoAlcoolico'
      'dataAnamnese=dataAnamnese'
      'informacaoAdicional=informacaoAdicional'
      'idObjetivo=idObjetivo'
      'nomeAvaliador=nomeAvaliador'
      'NOMEALUNO=NOMEALUNO'
      'DESCRICAOOBJETIVO=DESCRICAOOBJETIVO'
      'IMC=IMC')
    DataSet = cdsRelAnamnese
    BCDToCurrency = False
    Left = 886
    Top = 666
  end
  object qAnamnesePatologia: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select ap.*, p.nomepatologia from AnamnesePatologia ap '
      'left outer join patologia p on p.idPatologia = ap.idpatologia'
      'where ap.idAnamnese =:idA')
    Left = 886
    Top = 562
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qAnamnesePatologiaidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAnamnesePatologiaidPatologia: TIntegerField
      FieldName = 'idPatologia'
      Origin = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAnamnesePatologiaobservacaoMedica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacaoMedica'
      Origin = 'observacaoMedica'
      Size = 700
    end
    object qAnamnesePatologianomepatologia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomepatologia'
      Origin = 'nomePatologia'
      ProviderFlags = []
      Size = 50
    end
  end
  object pAnamnesePatologia: TDataSetProvider
    DataSet = qAnamnesePatologia
    Left = 968
    Top = 560
  end
  object cdsAnamnesePatologia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAnamnesePatologia'
    Left = 918
    Top = 570
    object cdsAnamnesePatologiaidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAnamnesePatologiaidPatologia: TIntegerField
      FieldName = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAnamnesePatologiaobservacaoMedica: TStringField
      FieldName = 'observacaoMedica'
      Size = 700
    end
    object cdsAnamnesePatologianomepatologia: TStringField
      FieldName = 'nomepatologia'
      Size = 50
    end
  end
  object dsanamnesePatologia: TDataSource
    DataSet = cdsAnamnesePatologia
    Left = 950
    Top = 570
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAnamnese=idAnamnese'
      'idPatologia=idPatologia'
      'observacaoMedica=observacaoMedica'
      'nomepatologia=nomepatologia')
    DataSet = cdsAnamnesePatologia
    BCDToCurrency = False
    Left = 910
    Top = 666
  end
  object qRelAnamnese: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AN.*,A.NOMEALUNO, OB.DESCRICAOOBJETIVO FROM ANAMNESE AN '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AN.IDALUNO '
      'LEFT OUTER JOIN OBJETIVO OB ON OB.IDOBJETIVO = AN.IDOBJETIVO'
      'WHERE AN.IDanamnese =:IDAn'
      'ORDER BY AN.DATAANAMNESE DESC, AN.IDANAMNESE DESC')
    Left = 862
    Top = 618
    ParamData = <
      item
        Name = 'IDAN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qRelAnamneseidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRelAnamneseidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qRelAnamnesefrequenciaSemanalTreino: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frequenciaSemanalTreino'
      Origin = 'frequenciaSemanalTreino'
    end
    object qRelAnamnesepeso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
    end
    object qRelAnamnesealtura: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'altura'
      Origin = 'altura'
    end
    object qRelAnamneseqtdHorasSono: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object qRelAnamneseqtdRefeicoesDia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object qRelAnamnesefuma: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fuma'
      Origin = 'fuma'
    end
    object qRelAnamnesedieta: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object qRelAnamnesesuplementacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object qRelAnamneseconsumoAlcoolico: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consumoAlcoolico'
      Origin = 'consumoAlcoolico'
    end
    object qRelAnamnesedataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Origin = 'dataAnamnese'
      Required = True
    end
    object qRelAnamneseinformacaoAdicional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 700
    end
    object qRelAnamneseidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
      Required = True
    end
    object qRelAnamnesenomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Required = True
      Size = 60
    end
    object qRelAnamneseNOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object qRelAnamneseDESCRICAOOBJETIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
  end
  object pRelAnamnese: TDataSetProvider
    DataSet = qRelAnamnese
    Left = 886
    Top = 618
  end
  object cdsRelAnamnese: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pRelAnamnese'
    OnCalcFields = cdsRelAnamneseCalcFields
    Left = 910
    Top = 618
    object cdsRelAnamneseidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRelAnamneseidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object cdsRelAnamnesefrequenciaSemanalTreino: TIntegerField
      FieldName = 'frequenciaSemanalTreino'
      Origin = 'frequenciaSemanalTreino'
    end
    object cdsRelAnamnesepeso: TSingleField
      FieldName = 'peso'
      Origin = 'peso'
    end
    object cdsRelAnamnesealtura: TSingleField
      FieldName = 'altura'
      Origin = 'altura'
    end
    object cdsRelAnamneseqtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object cdsRelAnamneseqtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object cdsRelAnamnesefuma: TBooleanField
      FieldName = 'fuma'
      Origin = 'fuma'
    end
    object cdsRelAnamnesedieta: TBooleanField
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object cdsRelAnamnesesuplementacao: TBooleanField
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object cdsRelAnamneseconsumoAlcoolico: TBooleanField
      FieldName = 'consumoAlcoolico'
      Origin = 'consumoAlcoolico'
    end
    object cdsRelAnamnesedataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Origin = 'dataAnamnese'
      Required = True
    end
    object cdsRelAnamneseinformacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 700
    end
    object cdsRelAnamneseidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
      Required = True
    end
    object cdsRelAnamnesenomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Required = True
      Size = 60
    end
    object cdsRelAnamneseNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object cdsRelAnamneseDESCRICAOOBJETIVO: TStringField
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
    object cdsRelAnamneseIMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
  end
  object dsRelAnamnese: TDataSource
    DataSet = cdsRelAnamnese
    OnDataChange = dsRelAnamneseDataChange
    Left = 942
    Top = 618
  end
  object qAvaFisica: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AV.*,A.NOMEALUNO  FROM AVALIACAOFISICA AV '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AV.IDALUNO '
      'WHERE AV.IDALUNO =:IDA'
      'ORDER BY AV.DATAAVALIACAOFISICA DESC, AV.IDAVALIACAOFISICA DESC')
    Left = 854
    Top = 66
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qAvaFisicaidAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      Origin = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAvaFisicaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qAvaFisicadataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Origin = 'dataAvaliacaoFisica'
      Required = True
    end
    object qAvaFisicanomeAvaliador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Size = 60
    end
    object qAvaFisicamed_peso_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_peso_cm'
      Origin = 'med_peso_cm'
    end
    object qAvaFisicamed_altura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_altura_cm'
      Origin = 'med_altura_cm'
    end
    object qAvaFisicamed_cervical_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cervical_cm'
      Origin = 'med_cervical_cm'
    end
    object qAvaFisicamed_torax_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_torax_cm'
      Origin = 'med_torax_cm'
    end
    object qAvaFisicamed_quadril_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_quadril_cm'
      Origin = 'med_quadril_cm'
    end
    object qAvaFisicamed_cintura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cintura_cm'
      Origin = 'med_cintura_cm'
    end
    object qAvaFisicamed_abdomen_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_abdomen_cm'
      Origin = 'med_abdomen_cm'
    end
    object qAvaFisicamed_bracoDireitoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoContraido_cm'
      Origin = 'med_bracoDireitoContraido_cm'
    end
    object qAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoRelaxado_cm'
      Origin = 'med_bracoDireitoRelaxado_cm'
    end
    object qAvaFisicamed_antibracoDireito_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoDireito_cm'
      Origin = 'med_antibracoDireito_cm'
    end
    object qAvaFisicamed_coxaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaDireita_cm'
      Origin = 'med_coxaDireita_cm'
    end
    object qAvaFisicamed_panturrilhaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaDireita_cm'
      Origin = 'med_panturrilhaDireita_cm'
    end
    object qAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoContraido_cm'
      Origin = 'med_bracoEsquerdoContraido_cm'
    end
    object qAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
      Origin = 'med_bracoEsquerdoRelaxado_cm'
    end
    object qAvaFisicamed_antibracoEsquerdo_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoEsquerdo_cm'
      Origin = 'med_antibracoEsquerdo_cm'
    end
    object qAvaFisicamed_coxaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaEsquerda_cm'
      Origin = 'med_coxaEsquerda_cm'
    end
    object qAvaFisicamed_panturrilhaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaEsquerda_cm'
      Origin = 'med_panturrilhaEsquerda_cm'
    end
    object qAvaFisicadobra_triciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_triciptal_mm'
      Origin = 'dobra_triciptal_mm'
    end
    object qAvaFisicadobra_subescapular_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_subescapular_mm'
      Origin = 'dobra_subescapular_mm'
    end
    object qAvaFisicadobra_axiliar_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_axiliar_mm'
      Origin = 'dobra_axiliar_mm'
    end
    object qAvaFisicadobra_abdominal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_abdominal_mm'
      Origin = 'dobra_abdominal_mm'
    end
    object qAvaFisicadobra_coxa_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_coxa_mm'
      Origin = 'dobra_coxa_mm'
    end
    object qAvaFisicadobra_panturrilha_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_panturrilha_mm'
      Origin = 'dobra_panturrilha_mm'
    end
    object qAvaFisicadobra_biciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_biciptal_mm'
      Origin = 'dobra_biciptal_mm'
    end
    object qAvaFisicadobra_peitoral_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_peitoral_mm'
      Origin = 'dobra_peitoral_mm'
    end
    object qAvaFisicadobra_suprailiac_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_suprailiac_mm'
      Origin = 'dobra_suprailiac_mm'
    end
    object qAvaFisicatipoProtocolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipoProtocolo'
      Origin = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object qAvaFisicaNOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
  end
  object PAvaFisica: TDataSetProvider
    DataSet = qAvaFisica
    Left = 886
    Top = 66
  end
  object CDSAvaFisica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PAvaFisica'
    OnCalcFields = CDSAvaFisicaCalcFields
    Left = 910
    Top = 66
    object CDSAvaFisicaidAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      Origin = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAvaFisicaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object CDSAvaFisicadataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Origin = 'dataAvaliacaoFisica'
      Required = True
    end
    object CDSAvaFisicanomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Size = 60
    end
    object CDSAvaFisicamed_peso_cm: TSingleField
      FieldName = 'med_peso_cm'
      Origin = 'med_peso_cm'
    end
    object CDSAvaFisicamed_altura_cm: TSingleField
      FieldName = 'med_altura_cm'
      Origin = 'med_altura_cm'
    end
    object CDSAvaFisicamed_cervical_cm: TSingleField
      FieldName = 'med_cervical_cm'
      Origin = 'med_cervical_cm'
    end
    object CDSAvaFisicamed_torax_cm: TSingleField
      FieldName = 'med_torax_cm'
      Origin = 'med_torax_cm'
    end
    object CDSAvaFisicamed_quadril_cm: TSingleField
      FieldName = 'med_quadril_cm'
      Origin = 'med_quadril_cm'
    end
    object CDSAvaFisicamed_cintura_cm: TSingleField
      FieldName = 'med_cintura_cm'
      Origin = 'med_cintura_cm'
    end
    object CDSAvaFisicamed_abdomen_cm: TSingleField
      FieldName = 'med_abdomen_cm'
      Origin = 'med_abdomen_cm'
    end
    object CDSAvaFisicamed_bracoDireitoContraido_cm: TSingleField
      FieldName = 'med_bracoDireitoContraido_cm'
      Origin = 'med_bracoDireitoContraido_cm'
    end
    object CDSAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField
      FieldName = 'med_bracoDireitoRelaxado_cm'
      Origin = 'med_bracoDireitoRelaxado_cm'
    end
    object CDSAvaFisicamed_antibracoDireito_cm: TSingleField
      FieldName = 'med_antibracoDireito_cm'
      Origin = 'med_antibracoDireito_cm'
    end
    object CDSAvaFisicamed_coxaDireita_cm: TSingleField
      FieldName = 'med_coxaDireita_cm'
      Origin = 'med_coxaDireita_cm'
    end
    object CDSAvaFisicamed_panturrilhaDireita_cm: TSingleField
      FieldName = 'med_panturrilhaDireita_cm'
      Origin = 'med_panturrilhaDireita_cm'
    end
    object CDSAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField
      FieldName = 'med_bracoEsquerdoContraido_cm'
      Origin = 'med_bracoEsquerdoContraido_cm'
    end
    object CDSAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
      Origin = 'med_bracoEsquerdoRelaxado_cm'
    end
    object CDSAvaFisicamed_antibracoEsquerdo_cm: TSingleField
      FieldName = 'med_antibracoEsquerdo_cm'
      Origin = 'med_antibracoEsquerdo_cm'
    end
    object CDSAvaFisicamed_coxaEsquerda_cm: TSingleField
      FieldName = 'med_coxaEsquerda_cm'
      Origin = 'med_coxaEsquerda_cm'
    end
    object CDSAvaFisicamed_panturrilhaEsquerda_cm: TSingleField
      FieldName = 'med_panturrilhaEsquerda_cm'
      Origin = 'med_panturrilhaEsquerda_cm'
    end
    object CDSAvaFisicadobra_triciptal_mm: TSingleField
      FieldName = 'dobra_triciptal_mm'
      Origin = 'dobra_triciptal_mm'
    end
    object CDSAvaFisicadobra_subescapular_mm: TSingleField
      FieldName = 'dobra_subescapular_mm'
      Origin = 'dobra_subescapular_mm'
    end
    object CDSAvaFisicadobra_axiliar_mm: TSingleField
      FieldName = 'dobra_axiliar_mm'
      Origin = 'dobra_axiliar_mm'
    end
    object CDSAvaFisicadobra_abdominal_mm: TSingleField
      FieldName = 'dobra_abdominal_mm'
      Origin = 'dobra_abdominal_mm'
    end
    object CDSAvaFisicadobra_coxa_mm: TSingleField
      FieldName = 'dobra_coxa_mm'
      Origin = 'dobra_coxa_mm'
    end
    object CDSAvaFisicadobra_panturrilha_mm: TSingleField
      FieldName = 'dobra_panturrilha_mm'
      Origin = 'dobra_panturrilha_mm'
    end
    object CDSAvaFisicadobra_biciptal_mm: TSingleField
      FieldName = 'dobra_biciptal_mm'
      Origin = 'dobra_biciptal_mm'
    end
    object CDSAvaFisicadobra_peitoral_mm: TSingleField
      FieldName = 'dobra_peitoral_mm'
      Origin = 'dobra_peitoral_mm'
    end
    object CDSAvaFisicadobra_suprailiac_mm: TSingleField
      FieldName = 'dobra_suprailiac_mm'
      Origin = 'dobra_suprailiac_mm'
    end
    object CDSAvaFisicatipoProtocolo: TStringField
      FieldName = 'tipoProtocolo'
      Origin = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object CDSAvaFisicaNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object CDSAvaFisicaIMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
  end
  object DSAvaFisica: TDataSource
    DataSet = CDSAvaFisica
    OnDataChange = DSAvaFisicaDataChange
    Left = 942
    Top = 64
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAvaliacaoFisica=idAvaliacaoFisica'
      'idAluno=idAluno'
      'dataAvaliacaoFisica=dataAvaliacaoFisica'
      'nomeAvaliador=nomeAvaliador'
      'med_peso_cm=med_peso_cm'
      'med_altura_cm=med_altura_cm'
      'med_cervical_cm=med_cervical_cm'
      'med_torax_cm=med_torax_cm'
      'med_quadril_cm=med_quadril_cm'
      'med_cintura_cm=med_cintura_cm'
      'med_abdomen_cm=med_abdomen_cm'
      'med_bracoDireitoContraido_cm=med_bracoDireitoContraido_cm'
      'med_bracoDireitoRelaxado_cm=med_bracoDireitoRelaxado_cm'
      'med_antibracoDireito_cm=med_antibracoDireito_cm'
      'med_coxaDireita_cm=med_coxaDireita_cm'
      'med_panturrilhaDireita_cm=med_panturrilhaDireita_cm'
      'med_bracoEsquerdoContraido_cm=med_bracoEsquerdoContraido_cm'
      'med_bracoEsquerdoRelaxado_cm=med_bracoEsquerdoRelaxado_cm'
      'med_antibracoEsquerdo_cm=med_antibracoEsquerdo_cm'
      'med_coxaEsquerda_cm=med_coxaEsquerda_cm'
      'med_panturrilhaEsquerda_cm=med_panturrilhaEsquerda_cm'
      'dobra_triciptal_mm=dobra_triciptal_mm'
      'dobra_subescapular_mm=dobra_subescapular_mm'
      'dobra_axiliar_mm=dobra_axiliar_mm'
      'dobra_abdominal_mm=dobra_abdominal_mm'
      'dobra_coxa_mm=dobra_coxa_mm'
      'dobra_panturrilha_mm=dobra_panturrilha_mm'
      'dobra_biciptal_mm=dobra_biciptal_mm'
      'dobra_peitoral_mm=dobra_peitoral_mm'
      'dobra_suprailiac_mm=dobra_suprailiac_mm'
      'tipoProtocolo=tipoProtocolo'
      'porcentagemGordura=porcentagemGordura'
      'NOMEALUNO=NOMEALUNO'
      'IMC=IMC')
    DataSource = DSAvaFisica
    BCDToCurrency = False
    Left = 876
    Top = 122
  end
  object frxChartObject1: TfrxChartObject
    Left = 904
    Top = 122
  end
  object report_Comparativo: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset5
    DataSetName = 'frxDBDataset5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42843.385856840300000000
    ReportOptions.LastChange = 42850.390311215280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 848
    Top = 122
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
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
      Frame.Typ = [ftBottom]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 87.488250000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset5."NOMEALUNO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 605.724800000000000000
          Width = 94.488250000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 107.267780000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' AVALIADOR: [frxDBDataset5."nomeAvaliador"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Left = 18.897650000000000000
        Top = 208.078850000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'PESO (kg)')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 153.181200000000000000
        Top = 18.795300000000000000
        Width = 411.968770000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'ACOMPANHAMENTO F'#205'SICO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clWhite
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clTeal
        HAlign = haCenter
        Memo.UTF8W = (
          'MEDIDAS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 18.897650000000000000
        Top = 434.645950000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'ALTURA (m)')
        ParentFont = False
      end
      object Chart2: TfrxChartView
        Left = 18.897650000000000000
        Top = 453.543600000000000000
        Width = 680.315400000000000000
        Height = 185.196970000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_altura_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_altura_cm"'
          end>
      end
      object Memo6: TfrxMemoView
        Left = 18.897650000000000000
        Top = 661.417750000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'IMC')
        ParentFont = False
      end
      object Chart3: TfrxChartView
        Left = 18.897650000000000000
        Top = 680.315400000000000000
        Width = 680.315400000000000000
        Height = 185.196970000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."IMC"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."IMC"'
          end>
      end
      object Memo8: TfrxMemoView
        Left = 18.897650000000000000
        Top = 866.291900000000000000
        Width = 680.315400000000000000
        Height = 113.385900000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Memo.UTF8W = (
          ''
          '           * Menor igual a 18.5    =   BAIXO PESO'
          '           * De 18.6 a 24.9          =   PESO IDEAL'
          '           * De 25.0 a 29.9          =   SOBREPESO           '
          '           * De 30.0 a 34.9          =   OBESIDADE GRAU I'
          '           * De 35.0 a 39.9          =   OBESIDADE GRAU II'
          '           * Maior igual a 40.0     =   OBESIDADE GRAVE')
        ParentFont = False
      end
      object Chart1: TfrxChartView
        Left = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 680.315400000000000000
        Height = 185.196970000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_peso_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_peso_cm"'
          end>
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart4: TfrxChartView
        Left = 18.897650000000000000
        Top = 19.574830000000000000
        Width = 680.315400000000000000
        Height = 166.299320000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_cervical_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_cervical_cm"'
          end>
      end
      object Memo9: TfrxMemoView
        Left = 18.897650000000000000
        Top = -0.102350000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'CERVICAL (cm)')
        ParentFont = False
      end
      object Chart5: TfrxChartView
        Left = 18.897650000000000000
        Top = 228.551330000000000000
        Width = 680.315400000000000000
        Height = 166.299224800000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_torax_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_torax_cm"'
          end>
      end
      object Memo10: TfrxMemoView
        Left = 18.897650000000000000
        Top = 208.874150000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'TORAX (cm)')
        ParentFont = False
      end
      object Chart6: TfrxChartView
        Left = 18.897650000000000000
        Top = 435.527830000000000000
        Width = 680.315400000000000000
        Height = 166.299212600000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_cintura_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_cintura_cm"'
          end>
      end
      object Memo11: TfrxMemoView
        Left = 18.897650000000000000
        Top = 415.850650000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'CINTURA (cm)')
        ParentFont = False
      end
      object Chart7: TfrxChartView
        Left = 18.897650000000000000
        Top = 643.386210000000000000
        Width = 680.315400000000000000
        Height = 166.299212600000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_quadril_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_quadril_cm"'
          end>
      end
      object Memo12: TfrxMemoView
        Left = 18.897650000000000000
        Top = 623.709030000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'QUADRIL (cm)')
        ParentFont = False
      end
      object Chart8: TfrxChartView
        Left = 18.897650000000000000
        Top = 849.362710000000000000
        Width = 680.315400000000000000
        Height = 166.299212600000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_abdomen_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_abdomen_cm"'
          end>
      end
      object Memo13: TfrxMemoView
        Left = 18.897650000000000000
        Top = 829.685530000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'ABDOM'#202'N (cm)')
        ParentFont = False
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart9: TfrxChartView
        Left = 18.897650000000000000
        Top = 19.574830000000000000
        Width = 680.315400000000000000
        Height = 132.283550000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_bracoDireitoContraido_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_bracoDireitoContraido_cm"'
          end>
      end
      object Memo14: TfrxMemoView
        Left = 18.897650000000000000
        Top = -0.102350000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O DIREITO CONTRA'#205'DO (cm)')
        ParentFont = False
      end
      object Chart10: TfrxChartView
        Left = 18.897650000000000000
        Top = 190.653680000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_bracoDireitoRelaxado_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_bracoDireitoRelaxado_cm"'
          end>
      end
      object Memo15: TfrxMemoView
        Left = 18.897650000000000000
        Top = 170.976500000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O DIREITO RELAXADO (cm)')
        ParentFont = False
      end
      object Chart11: TfrxChartView
        Left = 18.897650000000000000
        Top = 360.527830000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_bracoEsquerdoContraido_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_bracoEsquerdoContraido_cm"'
          end>
      end
      object Memo16: TfrxMemoView
        Left = 18.897650000000000000
        Top = 340.850650000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O ESQUERDO CONTRA'#205'DO (cm)')
        ParentFont = False
      end
      object Chart12: TfrxChartView
        Left = 18.897650000000000000
        Top = 530.693260000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_bracoEsquerdoRelaxado_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_bracoEsquerdoRelaxado_cm"'
          end>
      end
      object Memo17: TfrxMemoView
        Left = 18.897650000000000000
        Top = 511.016080000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O ESQUERDO RELAXADO (cm)')
        ParentFont = False
      end
      object Chart13: TfrxChartView
        Left = 18.897650000000000000
        Top = 699.480830000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_antibracoDireito_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_antibracoDireito_cm"'
          end>
      end
      object Memo18: TfrxMemoView
        Left = 18.897650000000000000
        Top = 679.803650000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'ANTIBRA'#199'O DIREITO (cm)')
        ParentFont = False
      end
      object Chart14: TfrxChartView
        Left = 18.897650000000000000
        Top = 870.071430000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_antibracoEsquerdo_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_antibracoEsquerdo_cm"'
          end>
      end
      object Memo19: TfrxMemoView
        Left = 18.897650000000000000
        Top = 850.394250000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'ANTIBRA'#199'O ESQUERDO (cm)')
        ParentFont = False
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart15: TfrxChartView
        Left = 18.897650000000000000
        Top = 19.677180000000000000
        Width = 680.315400000000000000
        Height = 132.283550000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_coxaDireita_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_coxaDireita_cm"'
          end>
      end
      object Memo20: TfrxMemoView
        Left = 18.897650000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA DIREITA (cm)')
        ParentFont = False
      end
      object Chart16: TfrxChartView
        Left = 18.897650000000000000
        Top = 190.756030000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_coxaEsquerda_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_coxaEsquerda_cm"'
          end>
      end
      object Memo21: TfrxMemoView
        Left = 18.897650000000000000
        Top = 171.078850000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA ESQUERDA (cm)')
        ParentFont = False
      end
      object Chart17: TfrxChartView
        Left = 18.897650000000000000
        Top = 360.630180000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_panturrilhaDireita_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_panturrilhaDireita_cm"'
          end>
      end
      object Memo22: TfrxMemoView
        Left = 18.897650000000000000
        Top = 340.953000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA DIREITA (cm)')
        ParentFont = False
      end
      object Chart18: TfrxChartView
        Left = 18.897650000000000000
        Top = 530.795610000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."med_panturrilhaEsquerda_cm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."med_panturrilhaEsquerda_cm"'
          end>
      end
      object Memo23: TfrxMemoView
        Left = 18.897650000000000000
        Top = 511.118430000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA ESQUERDA (cm)')
        ParentFont = False
      end
      object Chart19: TfrxChartView
        Left = 18.897650000000000000
        Top = 737.583180000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_subescapular_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_subescapular_mm"'
          end>
      end
      object Memo24: TfrxMemoView
        Left = 18.897650000000000000
        Top = 717.906000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'SUBESCAPULAR (mm)')
        ParentFont = False
      end
      object Chart20: TfrxChartView
        Left = 18.897650000000000000
        Top = 908.173780000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_suprailiac_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_suprailiac_mm"'
          end>
      end
      object Memo25: TfrxMemoView
        Left = 18.897650000000000000
        Top = 888.496600000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'SUPRAIL'#205'AC (mm)')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 18.897650000000000000
        Top = 678.417750000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clWhite
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clTeal
        HAlign = haCenter
        Memo.UTF8W = (
          'DOBRAS CUT'#194'NEAS')
        ParentFont = False
        VAlign = vaCenter
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart21: TfrxChartView
        Left = 20.118120000000000000
        Top = 17.897650000000000000
        Width = 680.315400000000000000
        Height = 132.283550000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_axiliar_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_axiliar_mm"'
          end>
      end
      object Memo27: TfrxMemoView
        Left = 20.118120000000000000
        Top = -1.779530000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'AXILIAR (mm)')
        ParentFont = False
      end
      object Chart22: TfrxChartView
        Left = 20.118120000000000000
        Top = 188.976500000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_abdominal_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_abdominal_mm"'
          end>
      end
      object Memo28: TfrxMemoView
        Left = 20.118120000000000000
        Top = 169.299320000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'ABDOMINAL (mm)')
        ParentFont = False
      end
      object Chart23: TfrxChartView
        Left = 20.118120000000000000
        Top = 358.850650000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_peitoral_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_peitoral_mm"'
          end>
      end
      object Memo29: TfrxMemoView
        Left = 20.118120000000000000
        Top = 339.173470000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'PEITORAL (mm)')
        ParentFont = False
      end
      object Chart24: TfrxChartView
        Left = 20.118120000000000000
        Top = 529.016080000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_triciptal_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_triciptal_mm"'
          end>
      end
      object Memo30: TfrxMemoView
        Left = 20.118120000000000000
        Top = 509.338900000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'TRICIPTAL (mm)')
        ParentFont = False
      end
      object Chart25: TfrxChartView
        Left = 20.118120000000000000
        Top = 697.803650000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_biciptal_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_biciptal_mm"'
          end>
      end
      object Memo31: TfrxMemoView
        Left = 20.118120000000000000
        Top = 678.126470000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'BICEPTAL (mm)')
        ParentFont = False
      end
      object Chart26: TfrxChartView
        Left = 20.118120000000000000
        Top = 868.394250000000000000
        Width = 680.315400000000000000
        Height = 132.283464570000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_coxa_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_coxa_mm"'
          end>
      end
      object Memo32: TfrxMemoView
        Left = 20.118120000000000000
        Top = 848.717070000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA (mm)')
        ParentFont = False
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Chart27: TfrxChartView
        Left = 18.897650000000000000
        Top = 18.677180000000000000
        Width = 680.315400000000000000
        Height = 132.283550000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C57686974650D44656661756C7443616E76617306
          0E54474449506C757343616E76617311436F6C6F7250616C65747465496E6465
          78020D000B544C696E6553657269657307536572696573310F42727573682E42
          61636B436F6C6F720709636C44656661756C7416506F696E7465722E496E666C
          6174654D617267696E73090D506F696E7465722E5374796C65070B7073526563
          74616E676C650C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataSet = frxDBDataset5
            DataSetName = 'frxDBDataset5'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDataset5."dataAvaliacaoFisica"'
            Source2 = 'frxDBDataset5."dobra_panturrilha_mm"'
            XSource = 'frxDBDataset5."dataAvaliacaoFisica"'
            YSource = 'frxDBDataset5."dobra_panturrilha_mm"'
          end>
      end
      object Memo33: TfrxMemoView
        Left = 18.897650000000000000
        Top = -1.000000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA (mm)')
        ParentFont = False
      end
    end
  end
  object qRelAvaFisica: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT AV.*,A.NOMEALUNO, A.idprotocoloavafisica, p.descricaoprot' +
        'ocoloavafisica '
      'FROM AVALIACAOFISICA AV '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AV.IDALUNO '
      
        'LEFT OUTER JOIN protocoloavafisica P ON P.idprotocoloavafisica =' +
        ' A.idprotocoloavafisica'
      'WHERE AV.idAVALIACAOFISICA =:IDAVF')
    Left = 846
    Top = 178
    ParamData = <
      item
        Name = 'IDAVF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qRelAvaFisicaidAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      Origin = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRelAvaFisicaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qRelAvaFisicadataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Origin = 'dataAvaliacaoFisica'
      Required = True
    end
    object qRelAvaFisicanomeAvaliador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Size = 60
    end
    object qRelAvaFisicamed_peso_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_peso_cm'
      Origin = 'med_peso_cm'
    end
    object qRelAvaFisicamed_altura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_altura_cm'
      Origin = 'med_altura_cm'
    end
    object qRelAvaFisicamed_cervical_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cervical_cm'
      Origin = 'med_cervical_cm'
    end
    object qRelAvaFisicamed_torax_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_torax_cm'
      Origin = 'med_torax_cm'
    end
    object qRelAvaFisicamed_quadril_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_quadril_cm'
      Origin = 'med_quadril_cm'
    end
    object qRelAvaFisicamed_cintura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cintura_cm'
      Origin = 'med_cintura_cm'
    end
    object qRelAvaFisicamed_abdomen_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_abdomen_cm'
      Origin = 'med_abdomen_cm'
    end
    object qRelAvaFisicamed_bracoDireitoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoContraido_cm'
      Origin = 'med_bracoDireitoContraido_cm'
    end
    object qRelAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoRelaxado_cm'
      Origin = 'med_bracoDireitoRelaxado_cm'
    end
    object qRelAvaFisicamed_antibracoDireito_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoDireito_cm'
      Origin = 'med_antibracoDireito_cm'
    end
    object qRelAvaFisicamed_coxaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaDireita_cm'
      Origin = 'med_coxaDireita_cm'
    end
    object qRelAvaFisicamed_panturrilhaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaDireita_cm'
      Origin = 'med_panturrilhaDireita_cm'
    end
    object qRelAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoContraido_cm'
      Origin = 'med_bracoEsquerdoContraido_cm'
    end
    object qRelAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
      Origin = 'med_bracoEsquerdoRelaxado_cm'
    end
    object qRelAvaFisicamed_antibracoEsquerdo_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoEsquerdo_cm'
      Origin = 'med_antibracoEsquerdo_cm'
    end
    object qRelAvaFisicamed_coxaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaEsquerda_cm'
      Origin = 'med_coxaEsquerda_cm'
    end
    object qRelAvaFisicamed_panturrilhaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaEsquerda_cm'
      Origin = 'med_panturrilhaEsquerda_cm'
    end
    object qRelAvaFisicadobra_triciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_triciptal_mm'
      Origin = 'dobra_triciptal_mm'
    end
    object qRelAvaFisicadobra_subescapular_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_subescapular_mm'
      Origin = 'dobra_subescapular_mm'
    end
    object qRelAvaFisicadobra_axiliar_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_axiliar_mm'
      Origin = 'dobra_axiliar_mm'
    end
    object qRelAvaFisicadobra_abdominal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_abdominal_mm'
      Origin = 'dobra_abdominal_mm'
    end
    object qRelAvaFisicadobra_coxa_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_coxa_mm'
      Origin = 'dobra_coxa_mm'
    end
    object qRelAvaFisicadobra_panturrilha_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_panturrilha_mm'
      Origin = 'dobra_panturrilha_mm'
    end
    object qRelAvaFisicadobra_biciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_biciptal_mm'
      Origin = 'dobra_biciptal_mm'
    end
    object qRelAvaFisicadobra_peitoral_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_peitoral_mm'
      Origin = 'dobra_peitoral_mm'
    end
    object qRelAvaFisicadobra_suprailiac_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_suprailiac_mm'
      Origin = 'dobra_suprailiac_mm'
    end
    object qRelAvaFisicatipoProtocolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipoProtocolo'
      Origin = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object qRelAvaFisicaNOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object qRelAvaFisicaidprotocoloavafisica: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idprotocoloavafisica'
      Origin = 'idProtocoloAvaFisica'
      ProviderFlags = []
    end
    object qRelAvaFisicadescricaoprotocoloavafisica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoprotocoloavafisica'
      Origin = 'descricaoprotocoloAvaFisica'
      ProviderFlags = []
      Size = 50
    end
    object qRelAvaFisicado_BIESTILOIDE_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIESTILOIDE_cm'
      Origin = 'do_BIESTILOIDE_cm'
    end
    object qRelAvaFisicado_BIEPICONDILIANO_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIEPICONDILIANO_cm'
      Origin = 'do_BIEPICONDILIANO_cm'
    end
    object qRelAvaFisicado_BICONDILIANO_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BICONDILIANO_cm'
      Origin = 'do_BICONDILIANO_cm'
    end
    object qRelAvaFisicado_BIMALEOLAR_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIMALEOLAR_cm'
      Origin = 'do_BIMALEOLAR_cm'
    end
  end
  object cdsRelAvaFisica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pRelAvaFisica'
    OnCalcFields = cdsRelAvaFisicaCalcFields
    Left = 894
    Top = 178
    object cdsRelAvaFisicaidAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      Origin = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRelAvaFisicaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object cdsRelAvaFisicadataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Origin = 'dataAvaliacaoFisica'
      Required = True
    end
    object cdsRelAvaFisicanomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Size = 60
    end
    object cdsRelAvaFisicamed_peso_cm: TSingleField
      FieldName = 'med_peso_cm'
      Origin = 'med_peso_cm'
    end
    object cdsRelAvaFisicamed_altura_cm: TSingleField
      FieldName = 'med_altura_cm'
      Origin = 'med_altura_cm'
    end
    object cdsRelAvaFisicamed_cervical_cm: TSingleField
      FieldName = 'med_cervical_cm'
      Origin = 'med_cervical_cm'
    end
    object cdsRelAvaFisicamed_torax_cm: TSingleField
      FieldName = 'med_torax_cm'
      Origin = 'med_torax_cm'
    end
    object cdsRelAvaFisicamed_quadril_cm: TSingleField
      FieldName = 'med_quadril_cm'
      Origin = 'med_quadril_cm'
    end
    object cdsRelAvaFisicamed_cintura_cm: TSingleField
      FieldName = 'med_cintura_cm'
      Origin = 'med_cintura_cm'
    end
    object cdsRelAvaFisicamed_abdomen_cm: TSingleField
      FieldName = 'med_abdomen_cm'
      Origin = 'med_abdomen_cm'
    end
    object cdsRelAvaFisicamed_bracoDireitoContraido_cm: TSingleField
      FieldName = 'med_bracoDireitoContraido_cm'
      Origin = 'med_bracoDireitoContraido_cm'
    end
    object cdsRelAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField
      FieldName = 'med_bracoDireitoRelaxado_cm'
      Origin = 'med_bracoDireitoRelaxado_cm'
    end
    object cdsRelAvaFisicamed_antibracoDireito_cm: TSingleField
      FieldName = 'med_antibracoDireito_cm'
      Origin = 'med_antibracoDireito_cm'
    end
    object cdsRelAvaFisicamed_coxaDireita_cm: TSingleField
      FieldName = 'med_coxaDireita_cm'
      Origin = 'med_coxaDireita_cm'
    end
    object cdsRelAvaFisicamed_panturrilhaDireita_cm: TSingleField
      FieldName = 'med_panturrilhaDireita_cm'
      Origin = 'med_panturrilhaDireita_cm'
    end
    object cdsRelAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField
      FieldName = 'med_bracoEsquerdoContraido_cm'
      Origin = 'med_bracoEsquerdoContraido_cm'
    end
    object cdsRelAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
      Origin = 'med_bracoEsquerdoRelaxado_cm'
    end
    object cdsRelAvaFisicamed_antibracoEsquerdo_cm: TSingleField
      FieldName = 'med_antibracoEsquerdo_cm'
      Origin = 'med_antibracoEsquerdo_cm'
    end
    object cdsRelAvaFisicamed_coxaEsquerda_cm: TSingleField
      FieldName = 'med_coxaEsquerda_cm'
      Origin = 'med_coxaEsquerda_cm'
    end
    object cdsRelAvaFisicamed_panturrilhaEsquerda_cm: TSingleField
      FieldName = 'med_panturrilhaEsquerda_cm'
      Origin = 'med_panturrilhaEsquerda_cm'
    end
    object cdsRelAvaFisicadobra_triciptal_mm: TSingleField
      FieldName = 'dobra_triciptal_mm'
      Origin = 'dobra_triciptal_mm'
    end
    object cdsRelAvaFisicadobra_subescapular_mm: TSingleField
      FieldName = 'dobra_subescapular_mm'
      Origin = 'dobra_subescapular_mm'
    end
    object cdsRelAvaFisicadobra_axiliar_mm: TSingleField
      FieldName = 'dobra_axiliar_mm'
      Origin = 'dobra_axiliar_mm'
    end
    object cdsRelAvaFisicadobra_abdominal_mm: TSingleField
      FieldName = 'dobra_abdominal_mm'
      Origin = 'dobra_abdominal_mm'
    end
    object cdsRelAvaFisicadobra_coxa_mm: TSingleField
      FieldName = 'dobra_coxa_mm'
      Origin = 'dobra_coxa_mm'
    end
    object cdsRelAvaFisicadobra_panturrilha_mm: TSingleField
      FieldName = 'dobra_panturrilha_mm'
      Origin = 'dobra_panturrilha_mm'
    end
    object cdsRelAvaFisicadobra_biciptal_mm: TSingleField
      FieldName = 'dobra_biciptal_mm'
      Origin = 'dobra_biciptal_mm'
    end
    object cdsRelAvaFisicadobra_peitoral_mm: TSingleField
      FieldName = 'dobra_peitoral_mm'
      Origin = 'dobra_peitoral_mm'
    end
    object cdsRelAvaFisicadobra_suprailiac_mm: TSingleField
      FieldName = 'dobra_suprailiac_mm'
      Origin = 'dobra_suprailiac_mm'
    end
    object cdsRelAvaFisicatipoProtocolo: TStringField
      FieldName = 'tipoProtocolo'
      Origin = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object cdsRelAvaFisicaNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object cdsRelAvaFisicaidprotocoloavafisica: TIntegerField
      FieldName = 'idprotocoloavafisica'
      Origin = 'idProtocoloAvaFisica'
      ProviderFlags = []
    end
    object cdsRelAvaFisicadescricaoprotocoloavafisica: TStringField
      FieldName = 'descricaoprotocoloavafisica'
      Origin = 'descricaoprotocoloAvaFisica'
      ProviderFlags = []
      Size = 50
    end
    object cdsRelAvaFisicado_BIESTILOIDE_cm: TSingleField
      FieldName = 'do_BIESTILOIDE_cm'
      Origin = 'do_BIESTILOIDE_cm'
    end
    object cdsRelAvaFisicado_BIEPICONDILIANO_cm: TSingleField
      FieldName = 'do_BIEPICONDILIANO_cm'
      Origin = 'do_BIEPICONDILIANO_cm'
    end
    object cdsRelAvaFisicado_BICONDILIANO_cm: TSingleField
      FieldName = 'do_BICONDILIANO_cm'
      Origin = 'do_BICONDILIANO_cm'
    end
    object cdsRelAvaFisicado_BIMALEOLAR_cm: TSingleField
      FieldName = 'do_BIMALEOLAR_cm'
      Origin = 'do_BIMALEOLAR_cm'
    end
    object cdsRelAvaFisicaporcentagemGordura: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'porcentagemGordura'
    end
    object cdsRelAvaFisicapesoOsseo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'pesoOsseo'
    end
    object cdsRelAvaFisicapesoGordura: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'pesoGordura'
    end
    object cdsRelAvaFisicaPesoMuscular: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PesoMuscular'
    end
    object cdsRelAvaFisicapesoResidual: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'pesoResidual'
    end
    object cdsRelAvaFisicamassaMagraCorporal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'massaMagraCorporal'
    end
    object cdsRelAvaFisicasomatotipoEcto: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'somatotipoEcto'
    end
    object cdsRelAvaFisicasomatotipoMeso: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'somatotipoMeso'
    end
    object cdsRelAvaFisicasomatotipoEndo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'somatotipoEndo'
    end
    object cdsRelAvaFisicaIMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
    object cdsRelAvaFisicaRCQ: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'RCQ'
    end
    object cdsRelAvaFisicaclassificacaoRCQ: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'classificacaoRCQ'
    end
  end
  object PRelAvaFisica: TDataSetProvider
    DataSet = qRelAvaFisica
    Left = 870
    Top = 178
  end
  object dsRelAvaFisica: TDataSource
    DataSet = cdsRelAvaFisica
    Left = 918
    Top = 178
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAvaliacaoFisica=idAvaliacaoFisica'
      'idAluno=idAluno'
      'dataAvaliacaoFisica=dataAvaliacaoFisica'
      'nomeAvaliador=nomeAvaliador'
      'med_peso_cm=med_peso_cm'
      'med_altura_cm=med_altura_cm'
      'med_cervical_cm=med_cervical_cm'
      'med_torax_cm=med_torax_cm'
      'med_quadril_cm=med_quadril_cm'
      'med_cintura_cm=med_cintura_cm'
      'med_abdomen_cm=med_abdomen_cm'
      'med_bracoDireitoContraido_cm=med_bracoDireitoContraido_cm'
      'med_bracoDireitoRelaxado_cm=med_bracoDireitoRelaxado_cm'
      'med_antibracoDireito_cm=med_antibracoDireito_cm'
      'med_coxaDireita_cm=med_coxaDireita_cm'
      'med_panturrilhaDireita_cm=med_panturrilhaDireita_cm'
      'med_bracoEsquerdoContraido_cm=med_bracoEsquerdoContraido_cm'
      'med_bracoEsquerdoRelaxado_cm=med_bracoEsquerdoRelaxado_cm'
      'med_antibracoEsquerdo_cm=med_antibracoEsquerdo_cm'
      'med_coxaEsquerda_cm=med_coxaEsquerda_cm'
      'med_panturrilhaEsquerda_cm=med_panturrilhaEsquerda_cm'
      'dobra_triciptal_mm=dobra_triciptal_mm'
      'dobra_subescapular_mm=dobra_subescapular_mm'
      'dobra_axiliar_mm=dobra_axiliar_mm'
      'dobra_abdominal_mm=dobra_abdominal_mm'
      'dobra_coxa_mm=dobra_coxa_mm'
      'dobra_panturrilha_mm=dobra_panturrilha_mm'
      'dobra_biciptal_mm=dobra_biciptal_mm'
      'dobra_peitoral_mm=dobra_peitoral_mm'
      'dobra_suprailiac_mm=dobra_suprailiac_mm'
      'tipoProtocolo=tipoProtocolo'
      'NOMEALUNO=NOMEALUNO'
      'idprotocoloavafisica=idprotocoloavafisica'
      'descricaoprotocoloavafisica=descricaoprotocoloavafisica'
      'do_BIESTILOIDE_cm=do_BIESTILOIDE_cm'
      'do_BIEPICONDILIANO_cm=do_BIEPICONDILIANO_cm'
      'do_BICONDILIANO_cm=do_BICONDILIANO_cm'
      'do_BIMALEOLAR_cm=do_BIMALEOLAR_cm'
      'porcentagemGordura=porcentagemGordura'
      'pesoOsseo=pesoOsseo'
      'pesoGordura=pesoGordura'
      'PesoMuscular=PesoMuscular'
      'pesoResidual=pesoResidual'
      'massaMagraCorporal=massaMagraCorporal'
      'somatotipoEcto=somatotipoEcto'
      'somatotipoMeso=somatotipoMeso'
      'somatotipoEndo=somatotipoEndo'
      'IMC=IMC'
      'RCQ=RCQ'
      'classificacaoRCQ=classificacaoRCQ')
    DataSource = dsRelAvaFisica
    BCDToCurrency = False
    Left = 894
    Top = 226
  end
  object report_AvaFisica: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset6
    DataSetName = 'frxDBDataset6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbPageSetup, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42849.663924664400000000
    ReportOptions.LastChange = 42851.588432650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = report_AvaFisicaBeforePrint
    Left = 838
    Top = 226
    Datasets = <
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 132.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 74.488250000000000000
          Width = 529.031849999999900000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset6."NOMEALUNO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 605.724800000000000000
          Top = 7.897649999999999000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 94.267780000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' AVALIADOR: [frxDBDataset6."nomeAvaliador"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 547.929499999999900000
          Top = 73.929190000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' DATA  AV: [frxDBDataset6."dataAvaliacaoFisica"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 8.677180000000000000
          Width = 415.748300000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AVALIA'#199#195'O F'#205'SICA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 19.000000000000000000
          Top = 114.102350000000000000
          Width = 680.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' PROTOCOLO: [frxDBDataset6."descricaoprotocoloavafisica"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo5: TfrxMemoView
        Left = 18.897650000000000000
        Top = 605.354670000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'SOMATOTIPO')
        ParentFont = False
        VAlign = vaCenter
      end
      object ChartSomatotipo: TfrxChartView
        Left = 18.897650000000000000
        Top = 624.047620000000000000
        Width = 680.315400000000000000
        Height = 185.196970000000000000
        HighlightColor = clBlack
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080D4672616D652E5669736962
          6C6508175669657733444F7074696F6E732E456C65766174696F6E033B011856
          69657733444F7074696F6E732E4F7274686F676F6E616C08195669657733444F
          7074696F6E732E50657273706563746976650200165669657733444F7074696F
          6E732E526F746174696F6E0368010B56696577334457616C6C73080A42657665
          6C4F75746572070662764E6F6E6505436F6C6F720707636C57686974650D4465
          6661756C7443616E766173060E54474449506C757343616E76617311436F6C6F
          7250616C65747465496E646578020D000A545069655365726965730753657269
          6573310D5856616C7565732E4F72646572070B6C6F417363656E64696E670C59
          56616C7565732E4E616D6506035069650D5956616C7565732E4F726465720706
          6C6F4E6F6E651A4672616D652E496E6E657242727573682E4261636B436F6C6F
          720705636C526564224672616D652E496E6E657242727573682E477261646965
          6E742E456E64436F6C6F720706636C47726179224672616D652E496E6E657242
          727573682E4772616469656E742E4D6964436F6C6F720707636C576869746524
          4672616D652E496E6E657242727573682E4772616469656E742E537461727443
          6F6C6F720440404000214672616D652E496E6E657242727573682E4772616469
          656E742E56697369626C65091B4672616D652E4D6964646C6542727573682E42
          61636B436F6C6F720708636C59656C6C6F77234672616D652E4D6964646C6542
          727573682E4772616469656E742E456E64436F6C6F720482828200234672616D
          652E4D6964646C6542727573682E4772616469656E742E4D6964436F6C6F7207
          07636C5768697465254672616D652E4D6964646C6542727573682E4772616469
          656E742E5374617274436F6C6F720706636C47726179224672616D652E4D6964
          646C6542727573682E4772616469656E742E56697369626C65091A4672616D65
          2E4F7574657242727573682E4261636B436F6C6F720707636C477265656E2246
          72616D652E4F7574657242727573682E4772616469656E742E456E64436F6C6F
          720440404000224672616D652E4F7574657242727573682E4772616469656E74
          2E4D6964436F6C6F720707636C5768697465244672616D652E4F757465724272
          7573682E4772616469656E742E5374617274436F6C6F720708636C53696C7665
          72214672616D652E4F7574657242727573682E4772616469656E742E56697369
          626C65090B4672616D652E57696474680204194F74686572536C6963652E4C65
          67656E642E56697369626C6508000000}
        ChartElevation = 315
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtFixedData
            SortOrder = soNone
            TopN = 0
            XType = xtText
          end>
      end
      object memoComposicaoCorporal: TfrxMemoView
        Left = 18.897650000000000000
        Top = 266.078850000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'COMPOSI'#199#195'O CORPORAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Chart1: TfrxChartView
        Left = 18.897650000000000000
        Top = 284.771800000000000000
        Width = 680.315400000000000000
        Height = 185.196970000000000000
        HighlightColor = clBlack
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080D4672616D652E5669736962
          6C6508175669657733444F7074696F6E732E456C65766174696F6E033B011856
          69657733444F7074696F6E732E4F7274686F676F6E616C08195669657733444F
          7074696F6E732E50657273706563746976650200165669657733444F7074696F
          6E732E526F746174696F6E0368010B56696577334457616C6C73080A42657665
          6C4F75746572070662764E6F6E6505436F6C6F720707636C57686974650D4465
          6661756C7443616E766173060E54474449506C757343616E76617311436F6C6F
          7250616C65747465496E646578020D000A545069655365726965730753657269
          6573310D5856616C7565732E4F72646572070B6C6F417363656E64696E670C59
          56616C7565732E4E616D6506035069650D5956616C7565732E4F726465720706
          6C6F4E6F6E651A4672616D652E496E6E657242727573682E4261636B436F6C6F
          720705636C526564224672616D652E496E6E657242727573682E477261646965
          6E742E456E64436F6C6F720706636C47726179224672616D652E496E6E657242
          727573682E4772616469656E742E4D6964436F6C6F720707636C576869746524
          4672616D652E496E6E657242727573682E4772616469656E742E537461727443
          6F6C6F720440404000214672616D652E496E6E657242727573682E4772616469
          656E742E56697369626C65091B4672616D652E4D6964646C6542727573682E42
          61636B436F6C6F720708636C59656C6C6F77234672616D652E4D6964646C6542
          727573682E4772616469656E742E456E64436F6C6F720482828200234672616D
          652E4D6964646C6542727573682E4772616469656E742E4D6964436F6C6F7207
          07636C5768697465254672616D652E4D6964646C6542727573682E4772616469
          656E742E5374617274436F6C6F720706636C47726179224672616D652E4D6964
          646C6542727573682E4772616469656E742E56697369626C65091A4672616D65
          2E4F7574657242727573682E4261636B436F6C6F720707636C477265656E2246
          72616D652E4F7574657242727573682E4772616469656E742E456E64436F6C6F
          720440404000224672616D652E4F7574657242727573682E4772616469656E74
          2E4D6964436F6C6F720707636C5768697465244672616D652E4F757465724272
          7573682E4772616469656E742E5374617274436F6C6F720708636C53696C7665
          72214672616D652E4F7574657242727573682E4772616469656E742E56697369
          626C65090B4672616D652E57696474680204194F74686572536C6963652E4C65
          67656E642E56697369626C6508000000}
        ChartElevation = 315
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtFixedData
            SortOrder = soNone
            TopN = 0
            XType = xtText
          end>
      end
      object Memo10: TfrxMemoView
        Left = 195.000000000000000000
        Top = 152.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'ALTURA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 195.000000000000000000
        Top = 171.889888270000000000
        Width = 151.181102360000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_altura_cm"] m')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        Left = 371.000000000000000000
        Top = 152.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'IMC')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 371.000000000000000000
        Top = 171.889888270000000000
        Width = 151.181102360000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."IMC"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 548.000000000000000000
        Top = 152.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '% GORDURA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Left = 548.000000000000000000
        Top = 171.889888270000000000
        Width = 151.181102360000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."porcentagemGordura"] %')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 20.000000000000000000
        Top = 151.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'PESO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        Left = 20.000000000000000000
        Top = 171.889888270000000000
        Width = 151.181102360000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_peso_cm"] Kg')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 18.000000000000000000
        Top = 490.000000000000000000
        Width = 326.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'GORDURA CORPORAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 18.000000000000000000
        Top = 511.889888270000000000
        Width = 326.181102360000000000
        Height = 71.913420000000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."pesoGordura"] Kg')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        Left = 371.000000000000000000
        Top = 491.000000000000000000
        Width = 326.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'MASSA CORPORAL MAGRA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 371.000000000000000000
        Top = 511.889888270000000000
        Width = 326.181102360000000000
        Height = 71.913420000000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."massaMagraCorporal"] Kg')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Left = 18.000000000000000000
        Top = 830.000000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clWhite
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clTeal
        HAlign = haCenter
        Memo.UTF8W = (
          'RELA'#199#195'O CINTURA - QUADRIL')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemoClassificacaoRCQ: TfrxMemoView
        Left = 17.000000000000000000
        Top = 984.000000000000000000
        Width = 399.488250000000000000
        Height = 35.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          ' RISCO DE DOEN'#199'AS CARDIOVASCULARES E HIPERTENS'#195'O ARTERIAL: ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo39: TfrxMemoView
        Left = 19.000000000000000000
        Top = 869.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'CINTURA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo40: TfrxMemoView
        Left = 19.000000000000000000
        Top = 889.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_cintura_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo41: TfrxMemoView
        Left = 265.000000000000000000
        Top = 869.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'QUADRIL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Left = 265.000000000000000000
        Top = 889.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_quadril_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo43: TfrxMemoView
        Left = 510.000000000000000000
        Top = 869.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'RCQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo44: TfrxMemoView
        Left = 510.000000000000000000
        Top = 889.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."RCQ"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object frxDBDataset6classificacaoRCQ: TfrxMemoView
        Left = 403.000000000000000000
        Top = 984.000000000000000000
        Width = 293.740260000000000000
        Height = 34.897650000000000000
        DataField = 'classificacaoRCQ'
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset6."classificacaoRCQ"]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo28: TfrxMemoView
        Left = 19.000000000000000000
        Top = -1.000000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clWhite
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clTeal
        HAlign = haCenter
        Memo.UTF8W = (
          'DOBRAS CUT'#194'NEAS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo29: TfrxMemoView
        Left = 195.000000000000000000
        Top = 38.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'ABDOMINAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo30: TfrxMemoView
        Left = 195.000000000000000000
        Top = 57.889888270000000000
        Width = 151.181102360000000000
        Height = 54.692950000000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_abdominal_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo31: TfrxMemoView
        Left = 371.000000000000000000
        Top = 38.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'TRICIPTAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo32: TfrxMemoView
        Left = 371.000000000000000000
        Top = 57.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149606299210000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_triciptal_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo33: TfrxMemoView
        Left = 548.000000000000000000
        Top = 38.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'BICIPTAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo34: TfrxMemoView
        Left = 548.000000000000000000
        Top = 57.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149606299210000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_biciptal_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo35: TfrxMemoView
        Left = 20.000000000000000000
        Top = 37.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'PEITORAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo36: TfrxMemoView
        Left = 20.000000000000000000
        Top = 57.889888270000000000
        Width = 151.181102360000000000
        Height = 54.692950000000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_peitoral_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Left = 195.000000000000000000
        Top = 133.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'SUBESCAPULAR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Left = 195.000000000000000000
        Top = 152.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149610000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_SUBESCAPULAR_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Left = 371.000000000000000000
        Top = 133.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'SUPRAILIAC')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Left = 371.000000000000000000
        Top = 152.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149610000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_SUPRAILIAC_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Left = 548.000000000000000000
        Top = 133.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        Left = 548.000000000000000000
        Top = 152.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149610000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_COXA_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Left = 20.000000000000000000
        Top = 133.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'AXILIAR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Left = 20.000000000000000000
        Top = 152.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149610000000000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_AXILIAR_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo37: TfrxMemoView
        Left = 20.000000000000000000
        Top = 228.000000000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo38: TfrxMemoView
        Left = 20.000000000000000000
        Top = 248.889888270000000000
        Width = 151.181102360000000000
        Height = 54.803149606299210000
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."dobra_PANTURRILHA_mm"] mm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo46: TfrxMemoView
        Left = 19.000000000000000000
        Top = 321.000000000000000000
        Width = 680.315400000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clWhite
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clTeal
        HAlign = haCenter
        Memo.UTF8W = (
          'MEDIDAS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo47: TfrxMemoView
        Left = 19.000000000000000000
        Top = 359.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O DIREITO RELAXADO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo48: TfrxMemoView
        Left = 19.000000000000000000
        Top = 379.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_bracoDireitoRelaxado_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo49: TfrxMemoView
        Left = 265.000000000000000000
        Top = 359.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O ESQUERDO RELAXADO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo50: TfrxMemoView
        Left = 265.000000000000000000
        Top = 379.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_bracoEsquerdoRelaxado_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo51: TfrxMemoView
        Left = 510.000000000000000000
        Top = 359.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'DIFEREN'#199'A DIR - ESQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo52: TfrxMemoView
        Left = 510.000000000000000000
        Top = 379.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Abs(<frxDBDataset6."med_bracoDireitoRelaxado_cm">-<frxDBDataset' +
            '6."med_bracoEsquerdoRelaxado_cm">)] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo53: TfrxMemoView
        Left = 20.000000000000000000
        Top = 472.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O DIREITO CONTRA'#205'DO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo54: TfrxMemoView
        Left = 20.000000000000000000
        Top = 492.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_bracoDireitoContraido_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo55: TfrxMemoView
        Left = 266.000000000000000000
        Top = 472.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'BRA'#199'O ESQUERDO CONTRA'#205'DO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo56: TfrxMemoView
        Left = 266.000000000000000000
        Top = 492.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_bracoEsquerdoContraido_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo57: TfrxMemoView
        Left = 511.000000000000000000
        Top = 472.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'DIFEREN'#199'A DIR - ESQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo58: TfrxMemoView
        Left = 511.000000000000000000
        Top = 492.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Abs(<frxDBDataset6."med_bracoDireitoCONTRAIDO_cm">-<frxDBDatase' +
            't6."med_bracoEsquerdoCONTRAIDO_cm">)] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo59: TfrxMemoView
        Left = 20.000000000000000000
        Top = 586.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'ANTEBRA'#199'O DIREITO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo60: TfrxMemoView
        Left = 20.000000000000000000
        Top = 606.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_antibracoDireito_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo61: TfrxMemoView
        Left = 266.000000000000000000
        Top = 586.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'ANTEBRA'#199'O ESQUERDO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo62: TfrxMemoView
        Left = 266.000000000000000000
        Top = 606.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_antibracoEsquerdo_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo63: TfrxMemoView
        Left = 511.000000000000000000
        Top = 586.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'DIFEREN'#199'A DIR - ESQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo64: TfrxMemoView
        Left = 511.000000000000000000
        Top = 606.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Abs(<frxDBDataset6."med_antibracoDireito_cm">-<frxDBDataset6."m' +
            'ed_antibracoEsquerdo_cm">)] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo65: TfrxMemoView
        Left = 20.000000000000000000
        Top = 699.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA DIREITA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo66: TfrxMemoView
        Left = 20.000000000000000000
        Top = 719.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_coxaDireita_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo67: TfrxMemoView
        Left = 266.000000000000000000
        Top = 699.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'COXA ESQUERDA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo68: TfrxMemoView
        Left = 266.000000000000000000
        Top = 719.889888270000000000
        Width = 226.771653540000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_coxaEsquerda_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo69: TfrxMemoView
        Left = 511.000000000000000000
        Top = 699.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'DIFEREN'#199'A DIR - ESQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo70: TfrxMemoView
        Left = 511.000000000000000000
        Top = 719.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Abs(<frxDBDataset6."med_coxaDireita_cm">-<frxDBDataset6."med_co' +
            'xaEsquerda_cm">)] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = 20.000000000000000000
        Top = 813.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA DIREITA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = 20.000000000000000000
        Top = 833.889888270000000000
        Width = 226.771653540000000000
        Height = 75.590551180000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_panturrilhaDireita_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = 266.000000000000000000
        Top = 813.000000000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'PANTURRILHA ESQUERDA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo74: TfrxMemoView
        Left = 266.000000000000000000
        Top = 833.889888270000000000
        Width = 226.771653540000000000
        Height = 75.590551181102360000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_panturrilhaEsquerda_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo75: TfrxMemoView
        Left = 511.000000000000000000
        Top = 813.000000000000000000
        Width = 188.976377950000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'DIFEREN'#199'A DIR - ESQ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo76: TfrxMemoView
        Left = 511.000000000000000000
        Top = 833.889888270000000000
        Width = 188.976377950000000000
        Height = 75.692950000000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Abs(<frxDBDataset6."med_panturrilhaDireita_cm">-<frxDBDataset6.' +
            '"med_panturrilhaEsquerda_cm">)] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo77: TfrxMemoView
        Left = 19.333333330000000000
        Top = 926.666666670000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'TORAX')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo78: TfrxMemoView
        Left = 19.333333330000000000
        Top = 947.556554940000000000
        Width = 226.771653540000000000
        Height = 75.590551180000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_torax_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo79: TfrxMemoView
        Left = 265.333333330000000000
        Top = 926.666666670000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          'CERVICAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo80: TfrxMemoView
        Left = 265.333333330000000000
        Top = 947.556554940000000000
        Width = 226.771653540000000000
        Height = 75.590551180000000000
        DisplayFormat.FormatStr = '%2.1f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Color = clSilver
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Fill.BackColor = clWhite
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset6."med_cervical_cm"] cm')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxCrypt1: TfrxCrypt
    Left = 926
    Top = 122
  end
  object REPORT_FICHAcp: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbPageSetup, pbTools, pbNavigator, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 124
    ReportOptions.CreateDate = 42779.735011747710000000
    ReportOptions.LastChange = 42891.504658842590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 134
    Top = 380
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
      Orientation = poLandscape
      PaperWidth = 80.000000000000000000
      PaperHeight = 150.000000000000000000
      PaperSize = 256
      Columns = 1
      ColumnWidth = 75.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Duplex = dmSimplex
      EndlessHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 73.783550000000010000
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object Memo1: TfrxMemoView
          Left = 20.181200000000000000
          Top = 15.897650000000000000
          Width = 261.685039370000000000
          Height = 24.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA DE EXERC'#205'CIOS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 20.000000000000000000
          Top = 51.708720000000000000
          Width = 262.330708660000000000
          Height = 15.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset1."nomeAluno"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Gradient1: TfrxGradientView
          Left = 20.181200000000000000
          Top = 43.692950000000000000
          Width = 262.330708660000000000
          Height = 7.559055120000000000
          EndColor = clTeal
          Style = gsHorizCenter
          Color = 12632192
        end
        object SysMemo1: TfrxSysMemoView
          Left = 187.500000000000000000
          Top = 0.602350000000001300
          Width = 94.488249999999990000
          Height = 11.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 154.960730000000000000
        Width = 302.362400000000000000
        Condition = 'frxDBDataset2."idTreino"'
        object Memo4: TfrxMemoView
          Align = baClient
          Width = 302.362400000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'TREINO [frxDBDataset2."descricaoTreino"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.141732280000000000
        Top = 253.228510000000000000
        Width = 302.362400000000000000
        AllowSplit = True
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2nomeExercicio: TfrxMemoView
          Left = 48.377952760000000000
          Width = 196.913385830000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [frxDBDataset2."nomeExercicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 245.255905510000000000
          Width = 36.661417320000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."qtdSerie"]x[frxDBDataset2."qtdRepeticao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2idequipamento: TfrxMemoView
          Left = 22.677165350000000000
          Width = 25.700787400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'idequipamento'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 302.362400000000000000
        Condition = 'frxDBDataset2."idgrupoExercicio"'
        object frxDBDataset2descricaoGrupoExercicio: TfrxMemoView
          Align = baClient
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          DataField = 'descricaoGrupoExercicio'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."descricaoGrupoExercicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 294.803340000000000000
        Width = 302.362400000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.677180000000000000
        Top = 321.260050000000000000
        Width = 302.362400000000000000
      end
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=22.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'HostName=localhost')
    AfterConnect = SQLConnection1AfterConnect
    Left = 742
    Top = 450
    UniqueId = '{848DCBD6-7745-4FF9-AF03-68615E5C31F1}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 774
    Top = 450
  end
end
