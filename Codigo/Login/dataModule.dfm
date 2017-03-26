object dmPadrao: TdmPadrao
  OldCreateOrder = False
  Height = 205
  Width = 397
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=gym'
      'Server='
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM USUARIO'
      'WHERE USERNAME =:LOGIN'
      'AND SENHA =:SENHA')
    Left = 128
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Position = 2
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object FDQuery1idusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1username: TStringField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      Size = 50
    end
    object FDQuery1senha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 216
    Top = 32
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'DataSetProvider1'
    Left = 304
    Top = 32
    object ClientDataSetidusuario: TIntegerField
      FieldName = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSetusername: TStringField
      FieldName = 'username'
      Required = True
      Size = 50
    end
    object ClientDataSetsenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 50
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 64
    Top = 120
  end
end
