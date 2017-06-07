object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 309
  Width = 494
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 416
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 448
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=gym'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 384
    Top = 8
  end
  object qAluno: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno')
    Left = 8
    Top = 40
  end
  object pAluno: TDataSetProvider
    DataSet = qAluno
    Left = 40
    Top = 40
  end
  object cdsAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAluno'
    Left = 72
    Top = 40
  end
end
