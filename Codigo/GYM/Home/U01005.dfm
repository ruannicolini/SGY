inherited F01005: TF01005
  Caption = 'F01005'
  ClientHeight = 741
  ClientWidth = 858
  ExplicitWidth = 874
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 858
    Height = 706
    ExplicitWidth = 858
    ExplicitHeight = 706
    inherited TbDados: TTabSheet
      ExplicitWidth = 850
      ExplicitHeight = 678
      inherited grDados: TGroupBox
        Width = 850
        Height = 678
        ExplicitWidth = 850
        ExplicitHeight = 678
        object Label1: TLabel
          Left = 18
          Top = 14
          Width = 22
          Height = 13
          Caption = 'COD'
        end
        object Label2: TLabel
          Left = 82
          Top = 14
          Width = 59
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object DBEdit1: TDBEdit
          Left = 18
          Top = 30
          Width = 61
          Height = 21
          DataField = 'idFichaPreDefinida'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 85
          Top = 30
          Width = 727
          Height = 21
          CharCase = ecUpperCase
          DataField = 'descricaoFicha'
          DataSource = DS
          TabOrder = 1
        end
        object cxGroupBox10: TcxGroupBox
          Left = 18
          Top = 60
          Align = alCustom
          TabOrder = 2
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
              TabOrder = 0
              Height = 70
              Width = 786
              object SpeedButton2: TSpeedButton
                Left = 704
                Top = 15
                Width = 71
                Height = 40
                Caption = 'ADD'
                OnClick = SpeedButton2Click
              end
              object Label22: TLabel
                Left = 13
                Top = 15
                Width = 38
                Height = 13
                Caption = 'TREINO'
              end
              object Label23: TLabel
                Left = 125
                Top = 15
                Width = 35
                Height = 13
                Caption = 'GRUPO'
              end
              object Label24: TLabel
                Left = 312
                Top = 15
                Width = 55
                Height = 13
                Caption = 'EXERCICIO'
              end
              object Label25: TLabel
                Left = 530
                Top = 15
                Width = 29
                Height = 13
                Caption = 'S'#201'RIE'
              end
              object Label26: TLabel
                Left = 619
                Top = 15
                Width = 62
                Height = 13
                Caption = 'REPETI'#199#213'ES'
              end
              object Edittreino: TEdit
                Left = 13
                Top = 33
                Width = 29
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnChange = EdittreinoChange
              end
              object EditBTreino: TEditBeleza
                Left = 41
                Top = 33
                Width = 75
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select idTREINO, DESCRICAOTREINO from TREINO where DESCRICAOTREI' +
                    'NO like :varDescricao')
                database = 'GYM'
                campo = 'DESCRICAOTREINO'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Edittreino
                campo_outro_edit = 'IDTREINO'
                CorBorda = clGray
                NovoLayout = False
              end
              object editSerie: TSpinEdit
                Left = 530
                Top = 33
                Width = 79
                Height = 22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 10
                MinValue = 1
                ParentFont = False
                TabOrder = 2
                Value = 1
              end
              object Editgrupo: TEdit
                Left = 125
                Top = 33
                Width = 29
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnChange = EditgrupoChange
              end
              object EditBGrupo: TEditBeleza
                Left = 153
                Top = 33
                Width = 150
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select idGrupoExercicio, descricaoGrupoExercicio from GrupoExerc' +
                    'icio where descricaoGrupoExercicio like :varDescricao')
                database = 'GYM'
                campo = 'descricaoGrupoExercicio'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Editgrupo
                campo_outro_edit = 'IDGrupoExercicio'
                CorBorda = clGray
                NovoLayout = False
              end
              object Editexercicio: TEdit
                Left = 312
                Top = 33
                Width = 29
                Height = 21
                Color = 15461355
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object EditBExercicio: TEditBeleza
                Left = 340
                Top = 33
                Width = 182
                Height = 21
                Color = 15461355
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select ex.idExercicio, ex.idGrupoExercicio, ex.nomeExercicio fro' +
                    'm Exercicio ex where ex.nomeExercicio like :varDescricao AND '
                  
                    ' ex.idGrupoExercicio =:idG and ex.idexercicio not in (select dis' +
                    'tinct idexercicio from fichapredefinidaserie where idFichapredef' +
                    'inida =:idFA and idTreino =:idT)')
                database = 'gym'
                campo = 'NOMEEXERCICIO'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Editexercicio
                campo_outro_edit = 'IDEXERCICIO'
                CorBorda = clGray
                NovoLayout = False
                OnButtonClick = EditBExercicioButtonClick
              end
              object editRepeticoes: TSpinEdit
                Left = 619
                Top = 33
                Width = 79
                Height = 22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 200
                MinValue = 1
                ParentFont = False
                TabOrder = 7
                Value = 1
              end
            end
            object DBGridBeleza3: TDBGridBeleza
              AlignWithMargins = True
              Left = 5
              Top = 78
              Width = 780
              Height = 425
              Hint = 'Clique no Titulo da Coluna para Ordenar'
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DsSerieFicha
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
              OnKeyDown = DBGridBeleza3KeyDown
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
                  FieldName = 'descricaoTreino'
                  Title.Alignment = taCenter
                  Title.Caption = 'TREINO'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricaoGrupoExercicio'
                  Title.Caption = 'GRUPO'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomeExercicio'
                  Title.Caption = 'EXERCICIO'
                  Width = 345
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'qtdSerie'
                  Title.Alignment = taCenter
                  Title.Caption = 'SERIE'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'qtdRepeticao'
                  Title.Alignment = taCenter
                  Title.Caption = 'REPETI'#199#213'ES'
                  Width = 84
                  Visible = True
                end>
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 513
            Width = 790
            Height = 37
            Align = alBottom
            BevelOuter = bvNone
            Color = 15329769
            ParentBackground = False
            TabOrder = 1
            object btnLimparFicha: TSpeedButton
              Left = 636
              Top = 3
              Width = 151
              Height = 30
              Align = alCustom
              Caption = 'LIMPAR'
              OnClick = btnLimparFichaClick
            end
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitWidth = 850
      ExplicitHeight = 678
      inherited GBFiltros: TGroupBox
        Width = 850
        ExplicitWidth = 850
        inherited Panel1: TPanel
          Width = 841
          ExplicitWidth = 841
          inherited BtnLimparFiltros: TButton
            Left = 796
            ExplicitLeft = 796
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 850
        Height = 567
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idFichaPreDefinida'
            Title.Alignment = taCenter
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricaoFicha'
            Title.Caption = 'FICHA'
            Width = 1280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataComposicao'
            Visible = False
          end>
      end
      inherited PanelFiltros: TPanel
        Width = 850
        ExplicitWidth = 850
        inherited btnFiltrar: TButton
          Left = 799
          OnClick = btnFiltrarClick
          ExplicitLeft = 799
        end
        object cbxPesqDescricao: TCheckBox
          Left = 12
          Top = 10
          Width = 172
          Height = 17
          Caption = 'DESCRI'#199#195'O'
          TabOrder = 1
        end
        object EditPesqDescricao: TEdit
          Left = 12
          Top = 32
          Width = 238
          Height = 21
          TabOrder = 2
          OnChange = EditPesqDescricaoChange
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 858
    ExplicitWidth = 858
    inherited BFechar: TSpeedButton
      Left = 824
      ExplicitLeft = 824
    end
  end
  inherited DS: TDataSource
    Left = 632
    Top = 32
  end
  inherited ClientDataSet1: TClientDataSet
    Left = 608
    Top = 32
    object ClientDataSet1idFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1descricaoFicha: TStringField
      FieldName = 'descricaoFicha'
      Size = 50
    end
    object ClientDataSet1dataComposicao: TDateField
      FieldName = 'dataComposicao'
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    BeforeUpdateRecord = DataSetProvider1BeforeUpdateRecord
    Left = 584
    Top = 32
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from fichaPreDefinida')
    Left = 560
    Top = 32
    object FDQuery1idFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      Origin = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1descricaoFicha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoFicha'
      Origin = 'descricaoFicha'
      Size = 50
    end
    object FDQuery1dataComposicao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicao'
      Origin = 'dataComposicao'
    end
  end
  inherited ImageListBase: TImageList
    Left = 504
    Top = 32
  end
  inherited Acoes: TActionList
    Left = 528
    Top = 33
  end
  object qSerieFicha: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select s.*, t.descricaoTreino, e.nomeExercicio, e.idgrupoExercic' +
        'io, ge.descricaoGrupoExercicio, '
      
        'eq.idequipamento, eq.descricaoequipamento from FichaPreDefinidaS' +
        'erie s '
      'left outer join treino t on t.idTreino = s.idTreino '
      'left outer join exercicio e on e.idexercicio = s.idExercicio '
      
        'left outer join equipamento eq on eq.idequipamento = e.idequipam' +
        'ento '
      
        'left outer join grupoExercicio ge on ge.idGrupoExercicio = e.idg' +
        'rupoExercicio '
      'where s.idFichaPreDefinida =:idF '
      'ORDER BY S.IDTREINO,  e.idgrupoExercicio;')
    Left = 700
    Top = 35
    ParamData = <
      item
        Name = 'IDF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qSerieFichaidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      Origin = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFichaidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFichaidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFichaqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object qSerieFichaqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
    object qSerieFichadescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qSerieFichanomeExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeExercicio'
      Origin = 'nomeExercicio'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qSerieFichaidgrupoExercicio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idgrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = [pfInUpdate]
    end
    object qSerieFichadescricaoGrupoExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qSerieFichaidequipamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idequipamento'
      Origin = 'idEquipamento'
      ProviderFlags = [pfInUpdate]
    end
    object qSerieFichadescricaoequipamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoequipamento'
      Origin = 'descricaoEquipamento'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object pSerieFicha: TDataSetProvider
    DataSet = qSerieFicha
    Left = 732
    Top = 35
  end
  object CDSSerieFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pSerieFicha'
    AfterPost = CDSSerieFichaAfterPost
    AfterCancel = CDSSerieFichaAfterCancel
    AfterDelete = CDSSerieFichaAfterDelete
    OnReconcileError = CDSSerieFichaReconcileError
    Left = 756
    Top = 35
    object CDSSerieFichaidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieFichaidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieFichaidExercicio: TIntegerField
      FieldName = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieFichaqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
    end
    object CDSSerieFichaqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
    end
    object CDSSerieFichadescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CDSSerieFichanomeExercicio: TStringField
      FieldName = 'nomeExercicio'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CDSSerieFichaidgrupoExercicio: TIntegerField
      FieldName = 'idgrupoExercicio'
    end
    object CDSSerieFichadescricaoGrupoExercicio: TStringField
      FieldName = 'descricaoGrupoExercicio'
      Size = 50
    end
    object CDSSerieFichaidequipamento: TIntegerField
      FieldName = 'idequipamento'
    end
    object CDSSerieFichadescricaoequipamento: TStringField
      FieldName = 'descricaoequipamento'
      Size = 50
    end
  end
  object DsSerieFicha: TDataSource
    DataSet = CDSSerieFicha
    OnDataChange = DsSerieFichaDataChange
    Left = 788
    Top = 35
  end
end
