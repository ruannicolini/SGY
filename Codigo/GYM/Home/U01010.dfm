object F01010: TF01010
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'F01010'
  ClientHeight = 266
  ClientWidth = 299
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
  object PanelStatus: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = '  PAGAMENTO'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 26
    Width = 299
    Height = 240
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 22
      Height = 13
      Caption = 'COD'
    end
    object Label3: TLabel
      Left = 9
      Top = 145
      Width = 102
      Height = 13
      Caption = 'VALOR MODALIDADE'
    end
    object Label4: TLabel
      Left = 150
      Top = 98
      Width = 92
      Height = 13
      Caption = 'DATA PAGAMENTO'
      FocusControl = cxDBDateEdit1
    end
    object Label5: TLabel
      Left = 9
      Top = 98
      Width = 95
      Height = 13
      Caption = 'DATA VENCIMENTO'
      FocusControl = cxDBDateEdit2
    end
    object Label6: TLabel
      Left = 9
      Top = 51
      Width = 66
      Height = 13
      Caption = 'MODALIDADE'
    end
    object BTNPAGAMENTOISENCAO: TSpeedButton
      Left = 149
      Top = 193
      Width = 137
      Height = 33
      Caption = 'CONCLUIR PAGAMENTO'
      OnClick = BTNPAGAMENTOISENCAOClick
    end
    object SpeedButton2: TSpeedButton
      Left = 8
      Top = 193
      Width = 135
      Height = 33
      Caption = 'CANCELAR'
      OnClick = SpeedButton2Click
    end
    object Label2: TLabel
      Left = 150
      Top = 145
      Width = 86
      Height = 13
      Caption = 'VALOR COBRADO'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 150
      Top = 116
      DataBinding.DataField = 'dataPagamento'
      DataBinding.DataSource = dsPagamento
      TabOrder = 0
      Width = 134
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 10
      Top = 116
      TabStop = False
      DataBinding.DataField = 'dataVencimento'
      DataBinding.DataSource = dsPagamento
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 134
    end
    object DBEdit3: TDBEdit
      Left = 10
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'idPagamento'
      DataSource = dsPagamento
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 9
      Top = 69
      Width = 275
      Height = 21
      TabStop = False
      DataField = 'descricaoModalidade'
      DataSource = dsPagamento
      ReadOnly = True
      TabOrder = 4
    end
    object cxDBSpinEdit6: TcxDBSpinEdit
      Left = 10
      Top = 163
      TabStop = False
      DataBinding.DataField = 'valorModalidade'
      DataBinding.DataSource = dsPagamento
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '0.00'
      Properties.EditFormat = '0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 5
      Width = 134
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 150
      Top = 163
      DataBinding.DataField = 'valorCobrado'
      DataBinding.DataSource = dsPagamento
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.EditFormat = '###,###,##0.00'
      Properties.ValueType = vtFloat
      TabOrder = 1
      Width = 134
    end
  end
  object qPagamento: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select P.*, m.descricaoModalidade, st.descricaoStatusPagamento f' +
        'rom pagamento P'
      'left outer join modalidade m on m.idModalidade = p.idModalidade'
      
        'left outer join statusPagamento st on st.idStatusPagamento = p.i' +
        'dstatusPagamento '
      'where p.idPagamento =:idP;')
    Left = 184
    Top = 32
    ParamData = <
      item
        Name = 'IDP'
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
    object qPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Origin = 'LOGUsuarioResponsavel'
      Required = True
      Size = 50
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
  object pPagamento: TDataSetProvider
    DataSet = qPagamento
    Left = 216
    Top = 32
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPagamento'
    AfterPost = cdsPagamentoAfterPost
    AfterCancel = cdsPagamentoAfterCancel
    AfterDelete = cdsPagamentoAfterDelete
    Left = 248
    Top = 32
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
      Size = 50
    end
    object cdsPagamentodescricaoModalidade: TStringField
      FieldName = 'descricaoModalidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsPagamentodescricaoStatusPagamento: TStringField
      FieldName = 'descricaoStatusPagamento'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsPagamento: TDataSource
    DataSet = cdsPagamento
    Left = 272
    Top = 33
  end
end
