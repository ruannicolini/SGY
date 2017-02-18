object DModule: TDModule
  OldCreateOrder = False
  Height = 375
  Width = 424
  object qAux: TFDQuery
    Connection = FDConnection
    Left = 96
    Top = 32
  end
  object FModulo: TFDQuery
    SQL.Strings = (
      'SELECT * FROM MODULO')
    Left = 136
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorLib = 'libmysql.dll'
    Left = 296
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 40
  end
  object FDConnection: TFDConnection
    ConnectionName = 'gym'
    Params.Strings = (
      'Database=gym'
      'User_Name=ruan'
      'Password=ruan'
      'Server=192.168.1.200'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 40
    Top = 32
  end
  object qAcesso: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'select s.*, i.idinterface as interface, m.idmodulo as modulo fro' +
        'm seguranca s '#10
      'left outer join interface i on i.idinterface = s.idinterface'#10' '
      'left outer join modulo m on m.idmodulo = i.idmodulo'
      'where s.idTipousuario =:idTU')
    Left = 32
    Top = 104
    ParamData = <
      item
        Name = 'IDTU'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qAcessoidSeguranca: TIntegerField
      FieldName = 'idSeguranca'
      Origin = 'idSeguranca'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAcessoidInterface: TIntegerField
      FieldName = 'idInterface'
      Origin = 'idInterface'
      Required = True
    end
    object qAcessoidTipoUsuario: TIntegerField
      FieldName = 'idTipoUsuario'
      Origin = 'idTipoUsuario'
      Required = True
    end
    object qAcessocadastrar: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'cadastrar'
      Origin = 'cadastrar'
    end
    object qAcessoalterar: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'alterar'
      Origin = 'alterar'
    end
    object qAcessoconsultar: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consultar'
      Origin = 'consultar'
    end
    object qAcessoexcluir: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'excluir'
      Origin = 'excluir'
    end
    object qAcessointerface: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'interface'
      Origin = 'idInterface'
    end
    object qAcessomodulo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'modulo'
      Origin = 'idModulo'
    end
  end
  object pAcesso: TDataSetProvider
    DataSet = qAcesso
    Left = 64
    Top = 104
  end
  object cdsAcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAcesso'
    Left = 96
    Top = 104
    object cdsAcessoidSeguranca: TIntegerField
      FieldName = 'idSeguranca'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcessoidInterface: TIntegerField
      FieldName = 'idInterface'
      Required = True
    end
    object cdsAcessoidTipoUsuario: TIntegerField
      FieldName = 'idTipoUsuario'
      Required = True
    end
    object cdsAcessocadastrar: TBooleanField
      FieldName = 'cadastrar'
    end
    object cdsAcessoalterar: TBooleanField
      FieldName = 'alterar'
    end
    object cdsAcessoconsultar: TBooleanField
      FieldName = 'consultar'
    end
    object cdsAcessoexcluir: TBooleanField
      FieldName = 'excluir'
    end
    object cdsAcessointerface: TIntegerField
      FieldName = 'interface'
    end
    object cdsAcessomodulo: TIntegerField
      FieldName = 'modulo'
    end
  end
end
