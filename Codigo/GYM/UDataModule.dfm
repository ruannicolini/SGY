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
      'Server='
      'Database=gym'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 24
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
  object qLog: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *  FROM LOGSISTEMA')
    Left = 24
    Top = 192
    object qLogidlogSistema: TIntegerField
      FieldName = 'idlogSistema'
      Origin = 'idlogSistema'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLogtabelaBanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tabelaBanco'
      Origin = 'tabelaBanco'
      Size = 50
    end
    object qLogdataLog: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataLog'
      Origin = 'dataLog'
    end
    object qLoghoraLog: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'horaLog'
      Origin = 'horaLog'
    end
    object qLogidUsuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idUsuario'
      Origin = 'idUsuario'
    end
    object qLognomeUsuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeUsuario'
      Origin = 'nomeUsuario'
      Size = 50
    end
    object qLogidPkRegistro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idPkRegistro'
      Origin = 'idPkRegistro'
    end
    object qLogidPkRegistro2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idPkRegistro2'
      Origin = 'idPkRegistro2'
    end
    object qLogtipoCRUD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipoCRUD'
      Origin = 'tipoCRUD'
      Size = 50
    end
    object qLogdescricaoInterface: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoInterface'
      Origin = 'descricaoInterface'
      Size = 50
    end
  end
  object pLog: TDataSetProvider
    DataSet = qLog
    Left = 56
    Top = 192
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pLog'
    AfterInsert = cdsLogAfterInsert
    AfterPost = cdsLogAfterPost
    AfterCancel = cdsLogAfterCancel
    AfterDelete = cdsLogAfterDelete
    Left = 88
    Top = 192
    object cdsLogidlogSistema: TIntegerField
      FieldName = 'idlogSistema'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLogtabelaBanco: TStringField
      FieldName = 'tabelaBanco'
      Size = 50
    end
    object cdsLogdataLog: TDateField
      FieldName = 'dataLog'
    end
    object cdsLoghoraLog: TTimeField
      FieldName = 'horaLog'
    end
    object cdsLogidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object cdsLognomeUsuario: TStringField
      FieldName = 'nomeUsuario'
      Size = 50
    end
    object cdsLogidPkRegistro: TIntegerField
      FieldName = 'idPkRegistro'
    end
    object cdsLogidPkRegistro2: TIntegerField
      FieldName = 'idPkRegistro2'
    end
    object cdsLogtipoCRUD: TStringField
      FieldName = 'tipoCRUD'
      Size = 50
    end
    object cdsLogdescricaoInterface: TStringField
      FieldName = 'descricaoInterface'
      Size = 50
    end
  end
  object qCampoLog: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CAMPOLOG')
    Left = 24
    Top = 256
    object qCampoLogidCampolog: TIntegerField
      FieldName = 'idCampolog'
      Origin = 'idCampolog'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCampoLognomeField: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeField'
      Origin = 'nomeField'
      Size = 50
    end
    object qCampoLogvalorAntigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'valorAntigo'
      Origin = 'valorAntigo'
      Size = 50
    end
    object qCampoLogvalornovo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'valornovo'
      Origin = 'valornovo'
      Size = 50
    end
    object qCampoLogidLogSistema: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idLogSistema'
      Origin = 'idLogSistema'
    end
  end
  object pCampoLog: TDataSetProvider
    DataSet = qCampoLog
    Left = 56
    Top = 256
  end
  object cdsCampoLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCampoLog'
    AfterInsert = cdsCampoLogAfterInsert
    AfterPost = cdsCampoLogAfterPost
    AfterCancel = cdsCampoLogAfterCancel
    AfterDelete = cdsCampoLogAfterDelete
    Left = 88
    Top = 256
    object cdsCampoLogidCampolog: TIntegerField
      FieldName = 'idCampolog'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCampoLognomeField: TStringField
      FieldName = 'nomeField'
      Size = 50
    end
    object cdsCampoLogvalorAntigo: TStringField
      FieldName = 'valorAntigo'
      Size = 50
    end
    object cdsCampoLogvalornovo: TStringField
      FieldName = 'valornovo'
      Size = 50
    end
    object cdsCampoLogidLogSistema: TIntegerField
      FieldName = 'idLogSistema'
    end
  end
end
