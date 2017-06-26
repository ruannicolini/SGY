object DModule: TDModule
  OldCreateOrder = False
  Height = 375
  Width = 424
  object qAux: TFDQuery
    Connection = FDConnection
    Left = 80
    Top = 32
  end
  object FModulo: TFDQuery
    SQL.Strings = (
      'SELECT * FROM MODULO')
    Left = 120
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
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
      'Server=192.168.1.200'
      'Database=gym'
      'User_Name=usersogym'
      'Password=usersogym'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 24
    Top = 32
  end
end
