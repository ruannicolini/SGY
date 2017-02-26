inherited F01007: TF01007
  Caption = 'F01007'
  ExplicitWidth = 834
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 810
      ExplicitHeight = 455
      inherited grDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 22
          Height = 13
          Caption = 'COD'
        end
        object Label2: TLabel
          Left = 24
          Top = 64
          Width = 59
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object Label3: TLabel
          Left = 24
          Top = 104
          Width = 73
          Height = 13
          Caption = 'OBSERVA'#199#213'ES'
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 123
          Width = 537
          Height = 206
          DataField = 'observacao'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 40
          Width = 121
          Height = 21
          DataField = 'idpatologia'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 77
          Width = 537
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nomePatologia'
          DataSource = DS
          TabOrder = 2
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 810
      ExplicitHeight = 455
      inherited DBGridBeleza1: TDBGridBeleza
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idpatologia'
            Title.Alignment = taCenter
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomePatologia'
            Title.Caption = 'PATOLOGIA'
            Width = 1280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observacao'
            Visible = False
          end>
      end
      inherited PanelFiltros: TPanel
        inherited btnFiltrar: TButton
          OnClick = btnFiltrarClick
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
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idpatologia: TIntegerField
      FieldName = 'idpatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1nomePatologia: TStringField
      FieldName = 'nomePatologia'
      Required = True
      Size = 50
    end
    object ClientDataSet1observacao: TStringField
      FieldName = 'observacao'
      Size = 200
    end
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from patologia')
    object FDQuery1idpatologia: TIntegerField
      FieldName = 'idpatologia'
      Origin = 'idpatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nomePatologia: TStringField
      FieldName = 'nomePatologia'
      Origin = 'nomePatologia'
      Required = True
      Size = 50
    end
    object FDQuery1observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 200
    end
  end
end
