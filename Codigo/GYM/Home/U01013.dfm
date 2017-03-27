object F01013: TF01013
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'F01013'
  ClientHeight = 272
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 577
    Height = 246
    Align = alClient
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 15790320
    ParentBackground = False
    TabOrder = 0
    object BTNOK: TSpeedButton
      Left = 435
      Top = 208
      Width = 129
      Height = 31
      Caption = 'CONCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BTNOKClick
    end
    object btnCANCELAR: TSpeedButton
      Left = 305
      Top = 208
      Width = 129
      Height = 31
      Caption = 'CANCELAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnCANCELARClick
    end
    object Panel2: TPanel
      Left = 11
      Top = 38
      Width = 552
      Height = 169
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object DBGridBeleza1: TDBGridBeleza
        Left = 0
        Top = 0
        Width = 548
        Height = 165
        Hint = 'Clique no Titulo da Coluna para Ordenar'
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DATASOURCE
        DragMode = dmAutomatic
        DrawingStyle = gdsGradient
        FixedColor = 16762447
        GradientEndColor = clInactiveCaption
        GradientStartColor = 16382457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBackground
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Cor_2 = 16382457
        Direcao_Cor2 = dg_Horiz
        Direcao_Enter = dg_Horiz
        ClickTituloOrdenar = True
        MarcarLinhaInteira = True
        CorLinhaMarcada = clTeal
        CorFonteLinhaMarcada = clWhite
        BloquearExportacoes = False
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
            Width = 321
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dataComposicao'
            Title.Alignment = taCenter
            Title.Caption = 'DATA DE COMPOSI'#199'AO'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 573
      Height = 36
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = #39'    SELECIONE:'
      Color = 15790320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7434496
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object PanelStatus: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '  IMPORTAR FICHA'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object QUERY: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT FP.* FROM FICHAPREDEFINIDA FP')
    Left = 451
    Top = 3
    object QUERYidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      Origin = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QUERYdescricaoFicha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoFicha'
      Origin = 'descricaoFicha'
      Size = 50
    end
    object QUERYdataComposicao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicao'
      Origin = 'dataComposicao'
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = QUERY
    Left = 475
    Top = 3
  end
  object DATASET: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 499
    Top = 3
    object DATASETidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DATASETdescricaoFicha: TStringField
      FieldName = 'descricaoFicha'
      Size = 50
    end
    object DATASETdataComposicao: TDateField
      FieldName = 'dataComposicao'
    end
  end
  object DATASOURCE: TDataSource
    DataSet = DATASET
    OnDataChange = DATASOURCEDataChange
    Left = 523
    Top = 3
  end
  object dsFichaSerie: TDataSource
    DataSet = cdsFichaSerie
    Left = 328
  end
  object cdsFichaSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pFichaSerie'
    Left = 304
    object cdsFichaSerieidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFichaSerieidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFichaSerieidExercicio: TIntegerField
      FieldName = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFichaSerieqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
    end
    object cdsFichaSerieqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
    end
  end
  object pFichaSerie: TDataSetProvider
    DataSet = QFICHASERIE
    Left = 280
  end
  object QFICHASERIE: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT * FROM FICHAPREDEFINIDASERIE WHERE IDFICHAPREDEFINIDA =:I' +
        'DFP')
    Left = 256
    ParamData = <
      item
        Name = 'IDFP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFICHASERIEidFichaPreDefinida: TIntegerField
      FieldName = 'idFichaPreDefinida'
      Origin = 'idFichaPreDefinida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFICHASERIEidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFICHASERIEidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFICHASERIEqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object QFICHASERIEqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
  end
  object qSerieFICHAALUNO: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select s.* from serieFICHAALUNO s where s.idFICHAAluno =:idFA;')
    Left = 104
    Top = 234
    ParamData = <
      item
        Name = 'IDFA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qSerieFICHAALUNOidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Origin = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFICHAALUNOidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFICHAALUNOidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieFICHAALUNOqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object qSerieFICHAALUNOqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
  end
  object pSerieFICHAALUNO: TDataSetProvider
    DataSet = qSerieFICHAALUNO
    Left = 136
    Top = 234
  end
  object cdsSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pSerieFICHAALUNO'
    Left = 160
    Top = 234
    object cdsSerieidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSerieidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSerieidExercicio: TIntegerField
      FieldName = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSerieqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
    end
    object cdsSerieqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
    end
  end
  object DSSERIEFICHAALUNO: TDataSource
    DataSet = cdsSerie
    Left = 192
    Top = 234
  end
end
