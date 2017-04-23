inherited F01001: TF01001
  Caption = 'F01001'
  ClientHeight = 741
  ClientWidth = 1008
  OnCreate = FormCreate
  ExplicitLeft = -147
  ExplicitTop = -365
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
    ActivePage = TbDados
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
          Properties.ActivePage = pagAvaliacoes
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
            object Label15: TLabel
              Left = 818
              Top = 226
              Width = 121
              Height = 16
              Caption = 'porcentagemGordura'
            end
            object Label16: TLabel
              Left = 818
              Top = 274
              Width = 73
              Height = 16
              Caption = 'pesoGordura'
              FocusControl = cxDBCalcEdit1
            end
            object Label17: TLabel
              Left = 822
              Top = 312
              Width = 75
              Height = 16
              Caption = 'pesoResidual'
              FocusControl = cxDBCalcEdit2
            end
            object Label18: TLabel
              Left = 822
              Top = 352
              Width = 122
              Height = 16
              Caption = 'massaMagraCorporal'
              FocusControl = cxDBCalcEdit3
            end
            object Label19: TLabel
              Left = 822
              Top = 390
              Width = 78
              Height = 16
              Caption = 'PesoMuscular'
              FocusControl = cxDBCalcEdit4
            end
            object Label20: TLabel
              Left = 824
              Top = 432
              Width = 62
              Height = 16
              Caption = 'pesoOsseo'
              FocusControl = cxDBCalcEdit5
            end
            object Label21: TLabel
              Left = 949
              Top = 322
              Width = 91
              Height = 16
              Caption = 'somatotipoEndo'
              FocusControl = cxDBCalcEdit6
            end
            object Label23: TLabel
              Left = 945
              Top = 232
              Width = 87
              Height = 16
              Caption = 'somatotipoEcto'
              FocusControl = cxDBCalcEdit7
            end
            object Label24: TLabel
              Left = 945
              Top = 280
              Width = 93
              Height = 16
              Caption = 'somatotipoMeso'
              FocusControl = cxDBCalcEdit8
            end
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
                ActivePage = TabSheet2
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
                    Height = 398
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
                    Top = 404
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
                    object DBEditBeleza2: TDBEditBeleza
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
                      TabOrder = 1
                      OnChange = DBEdit15Change
                    end
                  end
                  object Panel4: TPanel
                    Left = 0
                    Top = 444
                    Width = 782
                    Height = 30
                    Align = alBottom
                    BevelOuter = bvNone
                    Color = 15329769
                    ParentBackground = False
                    TabOrder = 2
                    object btnImprimirAvaFisica: TSpeedButton
                      Left = 631
                      Top = 0
                      Width = 151
                      Height = 30
                      Align = alCustom
                      Caption = 'IMPRIMIR'
                      Enabled = False
                      OnClick = btnImprimirAvaFisicaClick
                    end
                    object btnNovaAvaFisica: TSpeedButton
                      Left = 478
                      Top = 0
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
            object DBEdit16: TDBEdit
              Left = 818
              Top = 248
              Width = 121
              Height = 24
              DataField = 'porcentagemGordura'
              DataSource = dsRelAvaFisica
              TabOrder = 1
            end
            object cxDBCalcEdit1: TcxDBCalcEdit
              Left = 818
              Top = 290
              DataBinding.DataField = 'pesoGordura'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 2
              Width = 121
            end
            object cxDBCalcEdit2: TcxDBCalcEdit
              Left = 822
              Top = 328
              DataBinding.DataField = 'pesoResidual'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 3
              Width = 121
            end
            object cxDBCalcEdit3: TcxDBCalcEdit
              Left = 822
              Top = 368
              DataBinding.DataField = 'massaMagraCorporal'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 4
              Width = 121
            end
            object cxDBCalcEdit4: TcxDBCalcEdit
              Left = 822
              Top = 406
              DataBinding.DataField = 'PesoMuscular'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 5
              Width = 121
            end
            object cxDBCalcEdit5: TcxDBCalcEdit
              Left = 824
              Top = 448
              DataBinding.DataField = 'pesoOsseo'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 6
              Width = 121
            end
            object cxDBCalcEdit6: TcxDBCalcEdit
              Left = 949
              Top = 338
              DataBinding.DataField = 'somatotipoEndo'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 7
              Width = 121
            end
            object cxDBCalcEdit7: TcxDBCalcEdit
              Left = 945
              Top = 248
              DataBinding.DataField = 'somatotipoEcto'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 8
              Width = 121
            end
            object cxDBCalcEdit8: TcxDBCalcEdit
              Left = 945
              Top = 296
              DataBinding.DataField = 'somatotipoMeso'
              DataBinding.DataSource = dsRelAvaFisica
              TabOrder = 9
              Width = 121
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
    Left = 632
    Top = 16
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 568
    Top = 16
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
    Left = 536
    Top = 16
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT A.*, P.descricaoprotocoloAvaFisica, INST.NOMEUSUARIO AS N' +
        'OMEINSTRUTORFICHA FROM ALUNO A '
      'LEFT OUTER JOIN USUARIO INST ON INST.IDUSUARIO = A.IDINSTRUTOR'
      
        'LEFT OUTER JOIN PROTOCOLOAVAFISICA P ON P.IDPROTOCOLOAVAFISICA =' +
        ' A.IDPROTOCOLOAVAFISICA')
    Left = 504
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
    Left = 472
    Top = 16
    Bitmap = {
      494C01010F002C00C80310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 600
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
    Left = 840
    Top = 116
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
    Left = 872
    Top = 115
  end
  object CDSTreino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTreino'
    Left = 896
    Top = 114
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
    Left = 928
    Top = 113
  end
  object DSModalidade: TDataSource
    DataSet = cdsModalidade
    OnDataChange = DSModalidadeDataChange
    Left = 928
    Top = 65
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pModalidade'
    AfterPost = cdsModalidadeAfterPost
    AfterCancel = cdsModalidadeAfterCancel
    AfterDelete = cdsModalidadeAfterDelete
    Left = 896
    Top = 65
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
    Left = 872
    Top = 65
  end
  object QMODALIDADE: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT AM.*, M.DESCRICAOMODALIDADE, M.valor FROM ALUNOMODALIDADE' +
        ' AM '
      
        'LEFT OUTER JOIN MODALIDADE M ON M.IDMODALIDADE = AM.IDMODALIDADE' +
        ' '
      'WHERE AM.IDALUNO =:IDA')
    Left = 840
    Top = 65
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
    Left = 872
    Top = 15
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPagamento'
    AfterInsert = cdsPagamentoAfterInsert
    AfterPost = cdsPagamentoAfterPost
    AfterCancel = cdsPagamentoAfterCancel
    AfterDelete = cdsPagamentoAfterDelete
    Left = 904
    Top = 15
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
    Left = 928
    Top = 15
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
    Left = 848
    Top = 15
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
    ReportOptions.LastChange = 42821.756040601890000000
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
    Left = 440
    Top = 16
    Bitmap = {
      494C01010100140028015F005F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    ReportOptions.LastChange = 42838.862956331010000000
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
        Height = 321.260050000000000000
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
        object Memo2: TfrxMemoView
          Left = 245.669450000000000000
          Top = 92.692950000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ALUNO: [frxDBDataset3."NOMEALUNO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3dataAnamnese: TfrxMemoView
          Left = 567.149970000000100000
          Top = 151.606370000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' DATA: [frxDBDataset3."dataAnamnese"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3fuma: TfrxMemoView
          Left = 245.669450000000000000
          Top = 247.448980000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = 'N'#227'o,Sim'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            ' FUMANTE: [frxDBDataset3."fuma"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3dieta: TfrxMemoView
          Left = 245.669450000000000000
          Top = 227.551330000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = 'N'#227'o,Sim'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            ' DIETA: [frxDBDataset3."dieta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3suplementacao: TfrxMemoView
          Left = 472.441250000000000000
          Top = 227.330860000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = 'N'#227'o,Sim'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' SUPLEMENTA'#199#195'O: [frxDBDataset3."suplementacao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3consumoAlcoolico: TfrxMemoView
          Left = 472.441250000000000000
          Top = 247.228510000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = 'N'#227'o,Sim'
          DisplayFormat.Kind = fkBoolean
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' USO BEB. ALC'#211'OLICA: [frxDBDataset3."consumoAlcoolico"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3nomeAvaliador: TfrxMemoView
          Left = 245.669450000000000000
          Top = 151.606370000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            ' AVALIADOR: [frxDBDataset3."nomeAvaliador"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 19.779530000000000000
          Top = 92.692950000000000000
          Width = 208.251968500000000000
          Height = 174.236220470000000000
          Center = True
          Fill.BackColor = 16382457
          Fill.Style = bsClear
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDataset3peso: TfrxMemoView
          Left = 245.669450000000000000
          Top = 207.653680000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' PESO: [frxDBDataset3."peso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3altura: TfrxMemoView
          Left = 548.031849999999900000
          Top = 207.653680000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' IMC: [frxDBDataset3."IMC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3DESCRICAOOBJETIVO: TfrxMemoView
          Left = 245.669450000000000000
          Top = 131.944960000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' OBJETIVO: [frxDBDataset3."DESCRICAOOBJETIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3frequenciaSemanalTreino: TfrxMemoView
          Left = 245.669450000000000000
          Top = 170.637910000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            ' FREQUENCIA SEMANAL: [frxDBDataset3."frequenciaSemanalTreino"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3IMC: TfrxMemoView
          Left = 396.850650000000000000
          Top = 206.874150000000000000
          Width = 151.181102360000000000
          Height = 18.897637800000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            ' ALTURA: [frxDBDataset3."altura"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object frxDBDataset4nomepatologia: TfrxMemoView
          Width = 718.110700000000000000
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
        Height = 18.897650000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16382457
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
    Top = 170
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
    Top = 170
  end
  object CDSAvaFisica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PAvaFisica'
    OnCalcFields = CDSAvaFisicaCalcFields
    Left = 910
    Top = 170
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
    Top = 168
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
    Left = 884
    Top = 250
  end
  object frxChartObject1: TfrxChartObject
    Left = 912
    Top = 250
  end
  object report_AvaFisicaGrafico: TfrxReport
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
    ReportOptions.LastChange = 42844.470955555550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 856
    Top = 250
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
          '           * De 30.0 a 34.9          =   OPESIDADE GRAU I'
          '           * De 35.0 a 39.9          =   OPESIDADE GRAU II'
          '           * Maior igual a 40.0     =   OPESIDADE GRAVE')
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
    Top = 210
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
    object qRelAvaFisicaflex_colunaCervicalFlexaoLateral_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_colunaCervicalFlexaoLateral_grau'
      Origin = 'flex_colunaCervicalFlexaoLateral_grau'
    end
    object qRelAvaFisicaflex_troncoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_troncoFlexao_grau'
      Origin = 'flex_troncoFlexao_grau'
    end
    object qRelAvaFisicaflex_ombroDireitoAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_ombroDireitoAbducao_grau'
      Origin = 'flex_ombroDireitoAbducao_grau'
    end
    object qRelAvaFisicaflex_ombroEsquerdoAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_ombroEsquerdoAbducao_grau'
      Origin = 'flex_ombroEsquerdoAbducao_grau'
    end
    object qRelAvaFisicaflex_quadrilDireitoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilDireitoFlexao_grau'
      Origin = 'flex_quadrilDireitoFlexao_grau'
    end
    object qRelAvaFisicaflex_quadrilEsquerdoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilEsquerdoFlexao_grau'
      Origin = 'flex_quadrilEsquerdoFlexao_grau'
    end
    object qRelAvaFisicaflex_quadrilAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilAbducao_grau'
      Origin = 'flex_quadrilAbducao_grau'
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
    Left = 910
    Top = 210
    object cdsRelAvaFisicaidAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRelAvaFisicaidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object cdsRelAvaFisicadataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Required = True
    end
    object cdsRelAvaFisicanomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Size = 60
    end
    object cdsRelAvaFisicamed_peso_cm: TSingleField
      FieldName = 'med_peso_cm'
    end
    object cdsRelAvaFisicamed_altura_cm: TSingleField
      FieldName = 'med_altura_cm'
    end
    object cdsRelAvaFisicamed_cervical_cm: TSingleField
      FieldName = 'med_cervical_cm'
    end
    object cdsRelAvaFisicamed_torax_cm: TSingleField
      FieldName = 'med_torax_cm'
    end
    object cdsRelAvaFisicamed_quadril_cm: TSingleField
      FieldName = 'med_quadril_cm'
    end
    object cdsRelAvaFisicamed_cintura_cm: TSingleField
      FieldName = 'med_cintura_cm'
    end
    object cdsRelAvaFisicamed_abdomen_cm: TSingleField
      FieldName = 'med_abdomen_cm'
    end
    object cdsRelAvaFisicamed_bracoDireitoContraido_cm: TSingleField
      FieldName = 'med_bracoDireitoContraido_cm'
    end
    object cdsRelAvaFisicamed_bracoDireitoRelaxado_cm: TSingleField
      FieldName = 'med_bracoDireitoRelaxado_cm'
    end
    object cdsRelAvaFisicamed_antibracoDireito_cm: TSingleField
      FieldName = 'med_antibracoDireito_cm'
    end
    object cdsRelAvaFisicamed_coxaDireita_cm: TSingleField
      FieldName = 'med_coxaDireita_cm'
    end
    object cdsRelAvaFisicamed_panturrilhaDireita_cm: TSingleField
      FieldName = 'med_panturrilhaDireita_cm'
    end
    object cdsRelAvaFisicamed_bracoEsquerdoContraido_cm: TSingleField
      FieldName = 'med_bracoEsquerdoContraido_cm'
    end
    object cdsRelAvaFisicamed_bracoEsquerdoRelaxado_cm: TSingleField
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
    end
    object cdsRelAvaFisicamed_antibracoEsquerdo_cm: TSingleField
      FieldName = 'med_antibracoEsquerdo_cm'
    end
    object cdsRelAvaFisicamed_coxaEsquerda_cm: TSingleField
      FieldName = 'med_coxaEsquerda_cm'
    end
    object cdsRelAvaFisicamed_panturrilhaEsquerda_cm: TSingleField
      FieldName = 'med_panturrilhaEsquerda_cm'
    end
    object cdsRelAvaFisicadobra_triciptal_mm: TSingleField
      FieldName = 'dobra_triciptal_mm'
    end
    object cdsRelAvaFisicadobra_subescapular_mm: TSingleField
      FieldName = 'dobra_subescapular_mm'
    end
    object cdsRelAvaFisicadobra_axiliar_mm: TSingleField
      FieldName = 'dobra_axiliar_mm'
    end
    object cdsRelAvaFisicadobra_abdominal_mm: TSingleField
      FieldName = 'dobra_abdominal_mm'
    end
    object cdsRelAvaFisicadobra_coxa_mm: TSingleField
      FieldName = 'dobra_coxa_mm'
    end
    object cdsRelAvaFisicadobra_panturrilha_mm: TSingleField
      FieldName = 'dobra_panturrilha_mm'
    end
    object cdsRelAvaFisicadobra_biciptal_mm: TSingleField
      FieldName = 'dobra_biciptal_mm'
    end
    object cdsRelAvaFisicadobra_peitoral_mm: TSingleField
      FieldName = 'dobra_peitoral_mm'
    end
    object cdsRelAvaFisicadobra_suprailiac_mm: TSingleField
      FieldName = 'dobra_suprailiac_mm'
    end
    object cdsRelAvaFisicaflex_colunaCervicalFlexaoLateral_grau: TIntegerField
      FieldName = 'flex_colunaCervicalFlexaoLateral_grau'
    end
    object cdsRelAvaFisicaflex_troncoFlexao_grau: TIntegerField
      FieldName = 'flex_troncoFlexao_grau'
    end
    object cdsRelAvaFisicaflex_ombroDireitoAbducao_grau: TIntegerField
      FieldName = 'flex_ombroDireitoAbducao_grau'
    end
    object cdsRelAvaFisicaflex_ombroEsquerdoAbducao_grau: TIntegerField
      FieldName = 'flex_ombroEsquerdoAbducao_grau'
    end
    object cdsRelAvaFisicaflex_quadrilDireitoFlexao_grau: TIntegerField
      FieldName = 'flex_quadrilDireitoFlexao_grau'
    end
    object cdsRelAvaFisicaflex_quadrilEsquerdoFlexao_grau: TIntegerField
      FieldName = 'flex_quadrilEsquerdoFlexao_grau'
    end
    object cdsRelAvaFisicaflex_quadrilAbducao_grau: TIntegerField
      FieldName = 'flex_quadrilAbducao_grau'
    end
    object cdsRelAvaFisicatipoProtocolo: TStringField
      FieldName = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object cdsRelAvaFisicaNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 80
    end
    object cdsRelAvaFisicaidprotocoloavafisica: TIntegerField
      FieldName = 'idprotocoloavafisica'
    end
    object cdsRelAvaFisicadescricaoprotocoloavafisica: TStringField
      FieldName = 'descricaoprotocoloavafisica'
      Size = 50
    end
    object cdsRelAvaFisicado_BIESTILOIDE_cm: TSingleField
      FieldName = 'do_BIESTILOIDE_cm'
    end
    object cdsRelAvaFisicado_BIEPICONDILIANO_cm: TSingleField
      FieldName = 'do_BIEPICONDILIANO_cm'
    end
    object cdsRelAvaFisicado_BICONDILIANO_cm: TSingleField
      FieldName = 'do_BICONDILIANO_cm'
    end
    object cdsRelAvaFisicado_BIMALEOLAR_cm: TSingleField
      FieldName = 'do_BIMALEOLAR_cm'
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
  end
  object PRelAvaFisica: TDataSetProvider
    DataSet = qRelAvaFisica
    Left = 878
    Top = 210
  end
  object dsRelAvaFisica: TDataSource
    DataSet = cdsRelAvaFisica
    Left = 934
    Top = 210
  end
end
