inherited F01004: TF01004
  Caption = 'F01004'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    inherited TbDados: TTabSheet
      inherited grDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 23
          Height = 13
          Caption = 'COD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 75
          Width = 64
          Height = 13
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 47
          Width = 121
          Height = 21
          DataField = 'idGrupoExercicio'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 91
          Width = 369
          Height = 21
          DataField = 'descricaoGrupoExercicio'
          DataSource = DS
          TabOrder = 1
        end
      end
    end
    inherited TbFiltros: TTabSheet
      inherited DBGridBeleza1: TDBGridBeleza
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idGrupoExercicio'
            Title.Alignment = taCenter
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricaoGrupoExercicio'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 1250
            Visible = True
          end>
      end
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idGrupoExercicio: TIntegerField
      FieldName = 'idGrupoExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1descricaoGrupoExercicio: TStringField
      FieldName = 'descricaoGrupoExercicio'
      Size = 50
    end
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from grupoExercicio')
    object FDQuery1idGrupoExercicio: TIntegerField
      FieldName = 'idGrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1descricaoGrupoExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      Size = 50
    end
  end
end
