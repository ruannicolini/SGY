object FConfig: TFConfig
  Left = 0
  Top = 0
  Caption = 'CONFIGURA'#199#213'ES'
  ClientHeight = 360
  ClientWidth = 447
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
    Top = 0
    Width = 447
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelBtns: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 316
      Width = 441
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object btnCancelar: TButton
        Left = 296
        Top = 3
        Width = 139
        Height = 33
        Caption = 'FECHAR'
        TabOrder = 0
        OnClick = btnCancelarClick
      end
      object btnAltSalv: TButton
        Left = 151
        Top = 3
        Width = 139
        Height = 33
        Caption = 'ALTERAR'
        TabOrder = 1
        OnClick = btnAltSalvClick
      end
    end
    object panelConfig: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 441
      Height = 307
      Align = alClient
      BevelOuter = bvNone
      Color = 16316664
      Enabled = False
      ParentBackground = False
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 427
        Height = 177
        Caption = 'EMPRESA'
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 70
          Width = 82
          Height = 13
          Caption = 'NOME FANTASIA'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 17
          Top = 26
          Width = 25
          Height = 13
          Caption = 'CNPJ'
        end
        object Label3: TLabel
          Left = 143
          Top = 26
          Width = 75
          Height = 13
          Caption = 'RAZ'#195'O SOCIAL'
          FocusControl = cxDBTextEdit3
        end
        object Label4: TLabel
          Left = 17
          Top = 114
          Width = 50
          Height = 13
          Caption = 'TELEFONE'
        end
        object Label5: TLabel
          Left = 143
          Top = 114
          Width = 142
          Height = 13
          Caption = 'VENCIMENTO FICHA (MESES)'
          FocusControl = cxDBSpinEdit1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 17
          Top = 86
          DataBinding.DataField = 'nomeFantasia'
          DataBinding.DataSource = dsConfig
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 393
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 143
          Top = 42
          DataBinding.DataField = 'razaoSocial'
          DataBinding.DataSource = dsConfig
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 267
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 143
          Top = 130
          DataBinding.DataField = 'vencimentoFicha'
          DataBinding.DataSource = dsConfig
          TabOrder = 2
          Width = 90
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 42
          Width = 122
          Height = 21
          DataField = 'cnpj'
          DataSource = dsConfig
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 17
          Top = 130
          Width = 121
          Height = 21
          DataField = 'telefone'
          DataSource = dsConfig
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 192
        Width = 427
        Height = 98
        Caption = 'HABILITAR'
        TabOrder = 1
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 17
          Top = 51
          Caption = 'VIDEO YOUTUBE - CADASTRO DE EXERC'#205'CIO'
          DataBinding.DataField = 'videoYoutube'
          DataBinding.DataSource = dsConfig
          TabOrder = 0
          Width = 256
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 17
          Top = 19
          Caption = 'ANAMNESE'
          DataBinding.DataField = 'avaAnamnese'
          DataBinding.DataSource = dsConfig
          TabOrder = 1
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 17
          Top = 35
          Caption = 'AVALIA'#199#195'O F'#205'SICA'
          DataBinding.DataField = 'avaFisica'
          DataBinding.DataSource = dsConfig
          TabOrder = 2
          Width = 121
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 17
          Top = 67
          Caption = 'SERVIDOR DE IMAGENS'
          DataBinding.DataField = 'servidorImagens'
          DataBinding.DataSource = dsConfig
          TabOrder = 3
          Width = 240
        end
      end
    end
  end
  object qConfig: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT * FROM configuracaounidade WHERE IDconfiguracaounidade = ' +
        '1')
    Left = 3
    Top = 307
    object qConfigidConfiguracaoUnidade: TIntegerField
      FieldName = 'idConfiguracaoUnidade'
      Origin = 'idConfiguracaoUnidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConfigcnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Required = True
      Size = 50
    end
    object qConfigrazaoSocial: TStringField
      FieldName = 'razaoSocial'
      Origin = 'razaoSocial'
      Required = True
      Size = 100
    end
    object qConfignomeFantasia: TStringField
      FieldName = 'nomeFantasia'
      Origin = 'nomeFantasia'
      Required = True
      Size = 100
    end
    object qConfigtelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 50
    end
    object qConfigvencimentoFicha: TIntegerField
      FieldName = 'vencimentoFicha'
      Origin = 'vencimentoFicha'
      Required = True
    end
    object qConfigvideoYoutube: TBooleanField
      FieldName = 'videoYoutube'
      Origin = 'videoYoutube'
      Required = True
    end
    object qConfigavaAnamnese: TBooleanField
      FieldName = 'avaAnamnese'
      Origin = 'avaAnamnese'
      Required = True
    end
    object qConfigavaFisica: TBooleanField
      FieldName = 'avaFisica'
      Origin = 'avaFisica'
      Required = True
    end
    object qConfigavaPostural: TBooleanField
      FieldName = 'avaPostural'
      Origin = 'avaPostural'
      Required = True
    end
    object qConfigavaDadosClinicos: TBooleanField
      FieldName = 'avaDadosClinicos'
      Origin = 'avaDadosClinicos'
      Required = True
    end
    object qConfigservidorImagens: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'servidorImagens'
      Origin = 'servidorImagens'
    end
  end
  object pConfig: TDataSetProvider
    DataSet = qConfig
    Left = 35
    Top = 307
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pConfig'
    AfterPost = cdsConfigAfterPost
    AfterCancel = cdsConfigAfterCancel
    OnReconcileError = cdsConfigReconcileError
    Left = 59
    Top = 307
    object cdsConfigidConfiguracaoUnidade: TIntegerField
      FieldName = 'idConfiguracaoUnidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfigcnpj: TStringField
      FieldName = 'cnpj'
      Required = True
      EditMask = '99.999.999/9999-99;1'
      Size = 50
    end
    object cdsConfigrazaoSocial: TStringField
      FieldName = 'razaoSocial'
      Required = True
      Size = 100
    end
    object cdsConfignomeFantasia: TStringField
      FieldName = 'nomeFantasia'
      Required = True
      Size = 100
    end
    object cdsConfigtelefone: TStringField
      FieldName = 'telefone'
      EditMask = '!\(99\)9999-99999;1;_'
      Size = 50
    end
    object cdsConfigvencimentoFicha: TIntegerField
      FieldName = 'vencimentoFicha'
      Required = True
    end
    object cdsConfigvideoYoutube: TBooleanField
      FieldName = 'videoYoutube'
      Required = True
    end
    object cdsConfigavaAnamnese: TBooleanField
      FieldName = 'avaAnamnese'
      Required = True
    end
    object cdsConfigavaFisica: TBooleanField
      FieldName = 'avaFisica'
      Required = True
    end
    object cdsConfigavaPostural: TBooleanField
      FieldName = 'avaPostural'
      Required = True
    end
    object cdsConfigavaDadosClinicos: TBooleanField
      FieldName = 'avaDadosClinicos'
      Required = True
    end
    object cdsConfigservidorImagens: TBooleanField
      FieldName = 'servidorImagens'
    end
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 88
    Top = 307
  end
end
