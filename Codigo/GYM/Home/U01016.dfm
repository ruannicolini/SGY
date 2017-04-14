inherited F01016: TF01016
  BorderStyle = bsNone
  Caption = 'F01016'
  ClientHeight = 700
  ClientWidth = 684
  ExplicitLeft = 8
  ExplicitWidth = 684
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 684
    Height = 665
    ActivePage = TbDados
    ExplicitWidth = 684
    ExplicitHeight = 665
    inherited TbDados: TTabSheet
      ExplicitWidth = 676
      ExplicitHeight = 637
      inherited grDados: TGroupBox
        Width = 676
        Height = 637
        ExplicitWidth = 676
        ExplicitHeight = 637
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 15
          Width = 672
          Height = 620
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 8
            Width = 22
            Height = 13
            Caption = 'COD'
          end
          object Label2: TLabel
            Left = 16
            Top = 48
            Width = 34
            Height = 13
            Caption = 'ALUNO'
          end
          object Label5: TLabel
            Left = 162
            Top = 8
            Width = 71
            Height = 13
            Caption = 'nomeAvaliador'
            FocusControl = cxDBTextEdit3
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 60
            Top = 64
            DataBinding.DataField = 'NOMEALUNO'
            DataBinding.DataSource = DS
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 594
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 24
            Width = 81
            Height = 21
            DataField = 'idAnamnese'
            DataSource = DS
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 16
            Top = 64
            Width = 45
            Height = 21
            DataField = 'idAluno'
            DataSource = DS
            ReadOnly = True
            TabOrder = 2
          end
          object GroupBox6: TGroupBox
            Left = 16
            Top = 332
            Width = 638
            Height = 270
            Caption = 'PATOLOGIAS E RELATOS F'#205'SICOS'
            TabOrder = 3
            object GroupBox3: TGroupBox
              Left = 2
              Top = 15
              Width = 634
              Height = 45
              Align = alTop
              TabOrder = 0
              object SpeedButton1: TSpeedButton
                Left = 581
                Top = 12
                Width = 46
                Height = 23
                Caption = 'ADD'
                OnClick = SpeedButton1Click
              end
              object SpeedButton2: TSpeedButton
                Left = 8
                Top = 12
                Width = 24
                Height = 23
                Caption = '+'
                OnClick = SpeedButton2Click
              end
              object Edit1: TEdit
                Left = 32
                Top = 13
                Width = 30
                Height = 21
                TabStop = False
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object EditBeleza1: TEditBeleza
                Left = 61
                Top = 13
                Width = 518
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select P.idPatologia, P.nomePatologia from Patologia P where P.n' +
                    'omePatologia like :varDescricao AND'
                  
                    'P.idPatologia NOT IN (SELECT DISTINCT idPatologia FROM ANAMNESEP' +
                    'ATOLOGIA where idANAMNESE =:idA)')
                database = 'GYM'
                campo = 'nomePATOLOGIA'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Edit1
                campo_outro_edit = 'IDPATOLOGIA'
                CorBorda = clGray
                NovoLayout = False
                OnButtonClick = EditBeleza1ButtonClick
              end
            end
            object GroupBox4: TGroupBox
              Left = 2
              Top = 60
              Width = 185
              Height = 208
              Align = alLeft
              Caption = 'DESCRI'#199#195'O'
              TabOrder = 1
              object DBGridBeleza2: TDBGridBeleza
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 175
                Height = 185
                Hint = 'Clique no Titulo da Coluna para Ordenar'
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSPatologiaAnam
                DrawingStyle = gdsGradient
                FixedColor = 16762447
                GradientEndColor = 16382457
                GradientStartColor = clInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnKeyDown = DBGridBeleza2KeyDown
                Cor_2 = 16382457
                Direcao_Cor2 = dg_Horiz
                Direcao_Enter = dg_Horiz
                ClickTituloOrdenar = True
                MarcarLinhaInteira = True
                CorLinhaMarcada = 15854564
                CorFonteLinhaMarcada = clBlack
                BloquearExportacoes = False
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOMEPATOLOGIA'
                    Title.Caption = ' '
                    Visible = True
                  end>
              end
            end
            object GroupBox5: TGroupBox
              Left = 187
              Top = 60
              Width = 449
              Height = 208
              Align = alClient
              Caption = 'OBSERVA'#199#213'ES M'#201'DICAS'
              TabOrder = 2
              object cxDBMemo2: TDBMemo
                Left = 2
                Top = 15
                Width = 445
                Height = 164
                Align = alClient
                DataField = 'observacaoMedica'
                DataSource = DSPatologiaAnam
                ScrollBars = ssVertical
                TabOrder = 0
              end
              object Panel3: TPanel
                Left = 2
                Top = 179
                Width = 445
                Height = 27
                Align = alBottom
                BevelOuter = bvNone
                Color = 14737632
                ParentBackground = False
                TabOrder = 1
                object BTNALTERAR: TSpeedButton
                  Left = 222
                  Top = 0
                  Width = 223
                  Height = 27
                  Align = alRight
                  Caption = 'ALTERAR'
                  Enabled = False
                  OnClick = BTNALTERARClick
                  ExplicitLeft = 223
                end
                object BTNCANCELAR: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 223
                  Height = 27
                  Align = alLeft
                  Caption = 'CANCELAR'
                  Enabled = False
                  OnClick = BTNCANCELARClick
                end
              end
            end
          end
          object GroupBox_PAnamnese: TGroupBox
            Left = 16
            Top = 100
            Width = 638
            Height = 229
            TabOrder = 4
            object Label15: TLabel
              Left = 171
              Top = 20
              Width = 26
              Height = 13
              Alignment = taCenter
              Caption = 'PESO'
            end
            object Label16: TLabel
              Left = 325
              Top = 20
              Width = 39
              Height = 13
              Alignment = taCenter
              Caption = 'ALTURA'
            end
            object Label17: TLabel
              Left = 479
              Top = 20
              Width = 19
              Height = 13
              Alignment = taCenter
              Caption = 'IMC'
            end
            object Label18: TLabel
              Left = 16
              Top = 20
              Width = 78
              Height = 13
              Caption = 'REFEI'#199#213'ES/DIA'
              FocusControl = cxDBSpinEdit3
            end
            object Label19: TLabel
              Left = 16
              Top = 73
              Width = 89
              Height = 13
              Caption = 'HORAS SONO/DIA'
              FocusControl = cxDBSpinEdit4
            end
            object Label20: TLabel
              Left = 171
              Top = 73
              Width = 49
              Height = 13
              Caption = 'OBJETIVO'
            end
            object Label21: TLabel
              Left = 16
              Top = 126
              Width = 138
              Height = 13
              Caption = 'INFORMA'#199#213'ES ADICIONAIS'
            end
            object Label3: TLabel
              Left = 480
              Top = 80
              Width = 114
              Height = 13
              Caption = 'FREQUENCIA SEMANAL'
              FocusControl = cxDBSpinEdit1
            end
            object cxDBMaskEdit6: TcxDBMaskEdit
              Left = 479
              Top = 41
              TabStop = False
              DataBinding.DataField = 'IMC'
              DataBinding.DataSource = DS
              Properties.EditMask = '99,99;1'
              Properties.ReadOnly = True
              TabOrder = 0
              Width = 140
            end
            object cxDBSpinEdit3: TcxDBSpinEdit
              Left = 16
              Top = 41
              DataBinding.DataField = 'qtdRefeicoesDia'
              DataBinding.DataSource = DS
              Properties.MinValue = 1.000000000000000000
              TabOrder = 1
              Width = 140
            end
            object cxDBSpinEdit4: TcxDBSpinEdit
              Left = 16
              Top = 94
              DataBinding.DataField = 'qtdHorasSono'
              DataBinding.DataSource = DS
              Properties.MinValue = 1.000000000000000000
              TabOrder = 2
              Width = 140
            end
            object cxDBSpinEdit6: TcxDBSpinEdit
              Left = 325
              Top = 41
              DataBinding.DataField = 'altura'
              DataBinding.DataSource = DS
              Properties.DisplayFormat = '0.00'
              Properties.EditFormat = '0.00'
              Properties.MaxValue = 3.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Properties.ValueType = vtFloat
              TabOrder = 3
              Width = 140
            end
            object cxDBSpinEdit7: TcxDBSpinEdit
              Left = 171
              Top = 41
              DataBinding.DataField = 'peso'
              DataBinding.DataSource = DS
              Properties.AssignedValues.MaxValue = True
              Properties.DisplayFormat = '#.##'
              Properties.EditFormat = '#.##'
              Properties.MinValue = 1.000000000000000000
              Properties.Nullstring = '0'
              Properties.ValueType = vtFloat
              TabOrder = 4
              Width = 140
            end
            object DBEdit3: TDBEdit
              Left = 171
              Top = 96
              Width = 24
              Height = 21
              TabStop = False
              Color = 15132390
              DataField = 'idObjetivo'
              DataSource = DS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEditBeleza1: TDBEditBeleza
              Left = 194
              Top = 96
              Width = 271
              Height = 21
              Color = 15132390
              DataField = 'DESCRICAOOBJETIVO'
              DataSource = DS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Ativar_Pesquisa = True
              mostrar_Botao = True
              sql.Strings = (
                
                  'select idobjetivo, DESCRICAOOBJETIVO from objetivo where DESCRIC' +
                  'AOOBJETIVO like :varDescricao')
              database = 'GYM'
              campo = 'DESCRICAOOBJETIVO'
              Sempre_Mostrar_Janela = False
              Outro_Edit = DBEdit3
              campo_outro_edit = 'IDOBJETIVO'
              CorBorda = clGray
              NovoLayout = False
            end
            object DBMemo1: TDBMemo
              Left = 16
              Top = 147
              Width = 469
              Height = 73
              DataField = 'informacaoAdicional'
              DataSource = DS
              ScrollBars = ssVertical
              TabOrder = 7
            end
            object DBckbDIETA: TDBCheckBox
              Left = 495
              Top = 144
              Width = 134
              Height = 24
              Caption = 'DIETA'
              DataField = 'dieta'
              DataSource = DS
              TabOrder = 8
            end
            object DBCkBSUPLEMENTACAO: TDBCheckBox
              Left = 495
              Top = 163
              Width = 134
              Height = 24
              Caption = 'SUPLEMENTA'#199#195'O'
              DataField = 'suplementacao'
              DataSource = DS
              TabOrder = 9
            end
            object DBCKBFUMANTE: TDBCheckBox
              Left = 495
              Top = 182
              Width = 134
              Height = 23
              Caption = 'FUMANTE'
              DataField = 'fuma'
              DataSource = DS
              TabOrder = 10
            end
            object DBckbBebidaAlcoolica: TDBCheckBox
              Left = 495
              Top = 201
              Width = 134
              Height = 24
              Caption = 'USO B. ALC'#211'OLICA'
              DataField = 'consumoAlcoolico'
              DataSource = DS
              TabOrder = 11
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 479
              Top = 96
              DataBinding.DataField = 'frequenciaSemanalTreino'
              DataBinding.DataSource = DS
              TabOrder = 12
              Width = 140
            end
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 162
            Top = 24
            DataBinding.DataField = 'nomeAvaliador'
            DataBinding.DataSource = DS
            TabOrder = 5
            Width = 121
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitWidth = 676
      ExplicitHeight = 637
      inherited GBFiltros: TGroupBox
        Width = 676
        ExplicitWidth = 676
        inherited Panel1: TPanel
          Width = 667
          ExplicitWidth = 667
          inherited BtnLimparFiltros: TButton
            Left = 622
            ExplicitLeft = 622
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 676
        Height = 526
      end
      inherited PanelFiltros: TPanel
        Width = 676
        ExplicitWidth = 676
        inherited btnFiltrar: TButton
          Left = 625
          ExplicitLeft = 625
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 684
    ExplicitWidth = 684
    inherited BFechar: TSpeedButton
      Left = 650
      ExplicitLeft = 801
    end
    inherited BFirst: TSpeedButton
      Visible = False
    end
    inherited BPrior: TSpeedButton
      Visible = False
    end
    inherited BNext: TSpeedButton
      Visible = False
    end
    inherited BLast: TSpeedButton
      Visible = False
    end
    inherited bRelatorio: TSpeedButton
      Visible = False
    end
  end
  inherited DS: TDataSource
    Left = 608
    Top = 8
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 584
    Top = 8
    object ClientDataSet1idAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object ClientDataSet1NOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 80
    end
    object ClientDataSet1frequenciaSemanalTreino: TIntegerField
      FieldName = 'frequenciaSemanalTreino'
    end
    object ClientDataSet1peso: TSingleField
      FieldName = 'peso'
    end
    object ClientDataSet1altura: TSingleField
      FieldName = 'altura'
    end
    object ClientDataSet1qtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
    end
    object ClientDataSet1qtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
    end
    object ClientDataSet1dieta: TBooleanField
      FieldName = 'dieta'
    end
    object ClientDataSet1suplementacao: TBooleanField
      FieldName = 'suplementacao'
    end
    object ClientDataSet1consumoAlcoolico: TBooleanField
      FieldName = 'consumoAlcoolico'
    end
    object ClientDataSet1fuma: TBooleanField
      FieldName = 'fuma'
    end
    object ClientDataSet1dataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Required = True
    end
    object ClientDataSet1IMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
    object ClientDataSet1informacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Size = 700
    end
    object ClientDataSet1idObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Required = True
    end
    object ClientDataSet1DESCRICAOOBJETIVO: TStringField
      FieldName = 'DESCRICAOOBJETIVO'
      Size = 50
    end
    object ClientDataSet1nomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Required = True
      Size = 60
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 8
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT ANAM.*, A.NOMEALUNO, O.DESCRICAOOBJETIVO FROM ANAMNESE AN' +
        'AM '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = ANAM.IDALUNO '
      'LEFT OUTER JOIN OBJETIVO O ON O.IDOBJETIVO = ANAM.IDOBJETIVO'
      'WHERE ANAM.IDALUNO =:IDA')
    Left = 520
    Top = 8
    ParamData = <
      item
        Name = 'IDA'
        ParamType = ptInput
      end>
    object FDQuery1idAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object FDQuery1frequenciaSemanalTreino: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frequenciaSemanalTreino'
      Origin = 'frequenciaSemanalTreino'
    end
    object FDQuery1peso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
    end
    object FDQuery1altura: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'altura'
      Origin = 'altura'
    end
    object FDQuery1qtdHorasSono: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object C: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object FDQuery1dieta: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object FDQuery1suplementacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object FDQuery1dataAnamnese: TDateField
      FieldName = 'dataAnamnese'
      Origin = 'dataAnamnese'
      Required = True
    end
    object FDQuery1NOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object FDQuery1consumoAlcoolico: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consumoAlcoolico'
      Origin = 'consumoAlcoolico'
    end
    object FDQuery1fuma: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fuma'
      Origin = 'fuma'
    end
    object FDQuery1informacaoAdicional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 700
    end
    object FDQuery1idObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
      Required = True
    end
    object FDQuery1DESCRICAOOBJETIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
    object FDQuery1nomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Required = True
      Size = 60
    end
  end
  inherited ImageListBase: TImageList
    Left = 664
    Top = 8
  end
  inherited Acoes: TActionList
    Left = 632
    Top = 9
  end
  object qPatologiaAnam: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AP.*, P.NOMEPATOLOGIA FROM ANAMNESEPATOLOGIA AP '
      'LEFT OUTER JOIN PATOLOGIA P ON P.IDPATOLOGIA = AP.IDPATOLOGIA'
      'WHERE AP.IDanamnese =:IDA')
    Left = 516
    Top = 75
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qPatologiaAnamidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      Origin = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPatologiaAnamidPatologia: TIntegerField
      FieldName = 'idPatologia'
      Origin = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPatologiaAnamobservacaoMedica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacaoMedica'
      Origin = 'observacaoMedica'
      Size = 700
    end
    object qPatologiaAnamNOMEPATOLOGIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPATOLOGIA'
      Origin = 'nomePatologia'
      ProviderFlags = []
      Size = 50
    end
  end
  object pPatologiaAnam: TDataSetProvider
    DataSet = qPatologiaAnam
    Left = 540
    Top = 75
  end
  object CDSPatologiaAnam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPatologiaAnam'
    AfterPost = CDSPatologiaAnamAfterPost
    AfterCancel = CDSPatologiaAnamAfterCancel
    AfterDelete = CDSPatologiaAnamAfterDelete
    Left = 572
    Top = 75
    object CDSPatologiaAnamidAnamnese: TIntegerField
      FieldName = 'idAnamnese'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPatologiaAnamidPatologia: TIntegerField
      FieldName = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPatologiaAnamobservacaoMedica: TStringField
      FieldName = 'observacaoMedica'
      Size = 700
    end
    object CDSPatologiaAnamNOMEPATOLOGIA: TStringField
      FieldName = 'NOMEPATOLOGIA'
      Size = 50
    end
  end
  object DSPatologiaAnam: TDataSource
    DataSet = CDSPatologiaAnam
    OnDataChange = DSPatologiaAnamDataChange
    Left = 604
    Top = 75
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 328
    Top = 336
  end
end
