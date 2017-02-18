object F01011: TF01011
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'F01011'
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
  OnShow = FormShow
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
        BloquearExportacoes = False
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idPagamento'
            Title.Alignment = taCenter
            Title.Caption = 'COD'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOMODALIDADE'
            Title.Caption = 'MODALIDADE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 185
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'valorModalidade'
            Title.Alignment = taCenter
            Title.Caption = 'VALOR MOD'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dataVencimento'
            Title.Alignment = taCenter
            Title.Caption = 'DATA VENC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCRICAOSTATUSPAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'SITUA'#199#195'O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 103
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
      Caption = 
        #39'    ALUNO POSSUI MENSALIDADE(S) EM ATRASO. ESSAS MENSALIDADES S' +
        'ER'#195'O EXCLU'#205'DAS AUTOMATICAMENTE.'
      Color = 15790320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7434496
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 547
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
    Caption = '  AVISO'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitTop = -6
  end
  object QUERY: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT P.*, M.DESCRICAOMODALIDADE, SP.DESCRICAOSTATUSPAGAMENTO F' +
        'ROM PAGAMENTO P '
      'LEFT OUTER JOIN MODALIDADE M ON M.IDMODALIDADE = P.IDMODALIDADE '
      
        'LEFT OUTER JOIN STATUSPAGAMENTO SP ON SP.IDSTATUSPAGAMENTO = P.I' +
        'DSTATUSPAGAMENTO'
      
        'WHERE P.idAluno=:idA AND P.idmodalidade =:idM AND P.idstatusPaga' +
        'mento = 1 '
      'AND CURDATE() > P.DATAVENCIMENTO')
    Left = 171
    Top = 243
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QUERYidPagamento: TIntegerField
      FieldName = 'idPagamento'
      Origin = 'idPagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QUERYidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object QUERYidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Origin = 'idmodalidade'
      Required = True
    end
    object QUERYvalorModalidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorModalidade'
      Origin = 'valorModalidade'
    end
    object QUERYvalorCobrado: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorCobrado'
      Origin = 'valorCobrado'
    end
    object QUERYdataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
    end
    object QUERYdataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataPagamento'
      Origin = 'dataPagamento'
    end
    object QUERYidstatusPagamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idstatusPagamento'
      Origin = 'idstatusPagamento'
    end
    object QUERYLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Origin = 'LOGUsuarioResponsavel'
      Required = True
      Size = 50
    end
    object QUERYDESCRICAOMODALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOMODALIDADE'
      Origin = 'descricaoModalidade'
      ProviderFlags = []
      Size = 50
    end
    object QUERYDESCRICAOSTATUSPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOSTATUSPAGAMENTO'
      Origin = 'descricaoStatusPagamento'
      ProviderFlags = []
      Size = 50
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = QUERY
    Left = 195
    Top = 243
  end
  object DATASET: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 219
    Top = 243
    object DATASETidPagamento: TIntegerField
      FieldName = 'idPagamento'
      Required = True
    end
    object DATASETidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object DATASETidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Required = True
    end
    object DATASETvalorModalidade: TSingleField
      FieldName = 'valorModalidade'
    end
    object DATASETvalorCobrado: TSingleField
      FieldName = 'valorCobrado'
    end
    object DATASETdataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
    object DATASETdataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
    object DATASETidstatusPagamento: TIntegerField
      FieldName = 'idstatusPagamento'
    end
    object DATASETLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Required = True
      Size = 50
    end
    object DATASETDESCRICAOMODALIDADE: TStringField
      FieldName = 'DESCRICAOMODALIDADE'
      Size = 50
    end
    object DATASETDESCRICAOSTATUSPAGAMENTO: TStringField
      FieldName = 'DESCRICAOSTATUSPAGAMENTO'
      Size = 50
    end
  end
  object DATASOURCE: TDataSource
    DataSet = DATASET
    Left = 243
    Top = 243
  end
end
