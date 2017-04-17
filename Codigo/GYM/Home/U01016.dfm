inherited F01016: TF01016
  BorderStyle = bsNone
  Caption = 'F01016'
  ClientHeight = 700
  ClientWidth = 684
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
      ExplicitLeft = 4
      ExplicitTop = 24
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
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 60
            Top = 64
            TabStop = False
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
            TabStop = False
            DataField = 'idAnamnese'
            DataSource = DS
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 16
            Top = 64
            Width = 45
            Height = 21
            TabStop = False
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
                ReadOnly = True
                TabOrder = 1
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
                TabOrder = 0
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
              TabOrder = 11
              Width = 140
            end
            object cxDBSpinEdit3: TcxDBSpinEdit
              Left = 16
              Top = 41
              DataBinding.DataField = 'qtdRefeicoesDia'
              DataBinding.DataSource = DS
              Properties.MinValue = 1.000000000000000000
              TabOrder = 0
              Width = 140
            end
            object cxDBSpinEdit4: TcxDBSpinEdit
              Left = 16
              Top = 94
              DataBinding.DataField = 'qtdHorasSono'
              DataBinding.DataSource = DS
              Properties.MinValue = 1.000000000000000000
              TabOrder = 3
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
              TabOrder = 2
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
              TabOrder = 1
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
              ReadOnly = True
              TabOrder = 12
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
              TabOrder = 4
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
              TabOrder = 6
            end
            object DBckbDIETA: TDBCheckBox
              Left = 495
              Top = 144
              Width = 134
              Height = 24
              Caption = 'DIETA'
              DataField = 'dieta'
              DataSource = DS
              TabOrder = 7
            end
            object DBCkBSUPLEMENTACAO: TDBCheckBox
              Left = 495
              Top = 163
              Width = 134
              Height = 24
              Caption = 'SUPLEMENTA'#199#195'O'
              DataField = 'suplementacao'
              DataSource = DS
              TabOrder = 8
            end
            object DBCKBFUMANTE: TDBCheckBox
              Left = 495
              Top = 182
              Width = 134
              Height = 23
              Caption = 'FUMANTE'
              DataField = 'fuma'
              DataSource = DS
              TabOrder = 9
            end
            object DBckbBebidaAlcoolica: TDBCheckBox
              Left = 495
              Top = 201
              Width = 134
              Height = 24
              Caption = 'USO B. ALC'#211'OLICA'
              DataField = 'consumoAlcoolico'
              DataSource = DS
              TabOrder = 10
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 479
              Top = 96
              DataBinding.DataField = 'frequenciaSemanalTreino'
              DataBinding.DataSource = DS
              TabOrder = 5
              Width = 140
            end
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
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
    Bitmap = {
      494C01010F002C00FC0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F708C3C3C33C77777788363636C9101010EF1E1E
      1EE1CACACA350000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F30CB4B4B44B525252AD0F0F0FF09E9E9E610000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB04BEBEBE41545454AB1B1B1BE4030303FC444444BBA0A0A05F4343
      43BC585858A7F6F6F60900000000000000000000000000000000000000000000
      000000000000E7E7E718595959A61F1F1FE0494949B61E1E1EE1868686790000
      0000000000000000000000000000000000000000000000000000A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A4A4A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB147474748B0E0E0EF1484848B7B5B5B54A9595956A6565659AE9E9E916C4C4
      C43B1F1F1FE0B0B0B04F00000000000000000000000000000000000000000000
      00000000000099999966252525DAC0C0C03FF1F1F10E434343BC8484847B0000
      0000000000000000000000000000000000000000000000000000F4F4F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F3F3F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E2E21D5050
      50AF303030CF8282827DA0A0A05FF9F9F90600000000DADADA25D8D8D827FDFD
      FD026262629D4C4C4CB3F6F6F609000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20D525252AD0808
      08F77E7E7E81DCDCDC23F1F1F10EFBFBFB040000000000000000FEFEFE010000
      0000C2C2C23D202020DFC1C1C13E000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC13686868974141
      41BE2A2A2AD5222222DD555555AABCBCBC43FBFBFB0400000000000000000000
      0000F5F5F50A484848B78181817E000000000000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F9F9
      F906E6E6E619B3B3B34C575757A81C1C1CE38282827DF6F6F609000000000000
      000000000000D5D5D52AD6D6D629FAFAFA050000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02ADADAD527171
      718EC8C8C83700000000F9F9F906A3A3A35C1C1C1CE39393936C000000000000
      0000EDEDED12ABABAB54585858A7C0C0C03F0000000000000000000000000000
      0000000000008484847B424242BDF8F8F807F8F8F807424242BD8484847B0000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D9D9261D1D1DE20000
      00FF404040BFF3F3F30C00000000FEFEFE01AAAAAA55B4B4B44BE2E2E21D9393
      936C383838C7040404FB1D1D1DE2CECECE310000000000000000000000000000
      0000FEFEFE017070708F252525DA9191916E9191916E252525DA7070708FFEFE
      FE01000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF20282828D70000
      00FF4E4E4EB1F6F6F609000000000000000000000000A2A2A25D222222DD0101
      01FE090909F6444444BBB2B2B24DFDFDFD020000000000000000000000000000
      0000A9A9A9561C1C1CE3313131CE363636C9363636C9313131CE1C1C1CE3A9A9
      A956000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01C6C6C6399797
      9768DBDBDB2400000000000000000000000000000000CACACA355D5D5DA26161
      619EA3A3A35CA1A1A15ECFCFCF3000000000000000000000000000000000B9B9
      B946202020DF7D7D7D82EFEFEF10F2F2F20DF2F2F20DEFEFEF107D7D7D822020
      20DFB9B9B9460000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C33CD4D4D42BFCFCFC03CACA
      CA35ECECEC130000000000000000000000000000000000000000FDFDFD020000
      00009B9B9B64050505FA68686897FEFEFE010000000000000000C8C8C8372727
      27D86B6B6B94F5F5F50A00000000000000000000000000000000F5F5F50A6B6B
      6B94272727D8C8C8C83700000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000111111EE4D4D4DB2EDEDED126A6A
      6A95C6C6C6390000000000000000000000000000000000000000000000000000
      0000D8D8D827212121DE252525DADCDCDC2300000000D6D6D629323232CD5959
      59A6EFEFEF10000000000000000000000000000000000000000000000000EFEF
      EF10595959A6323232CDD6D6D629000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494946BB1B1B14EFEFEFE01F4F4
      F40BFCFCFC030000000000000000000000000000000000000000000000000000
      0000000000008585857A060606F99595956ADDDDDD22434343BC4C4C4CB3E9E9
      E916000000000000000000000000000000000000000000000000000000000000
      0000E9E9E9164C4C4CB3434343BCDDDDDD220000000000000000F4F4F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00999999009B9B9B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E2E21D2C2C2CD33A3A3AC53F3F3FC0171717E896969669BBBB
      BB44B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8B847B8B8
      B847BBBBBB4496969669171717E83F3F3FC00000000000000000A6A6A600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009898980099999900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A8A8A75252525DA383838C7040404FB090909F60808
      08F7080808F7080808F7080808F7080808F7080808F7080808F7080808F70808
      08F7080808F7090909F6040404FB383838C70000000000000000000000000000
      0000000000000000000081818100F8F8F800F8F8F80080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979700CACACA00FBFBFB00FBFBFB00C9C9C900969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B0B000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600FFFFFF005656560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CDCDCD00B0B0B0000000000000000000000000000000000094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009292920000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000057575700FFFF
      FF00E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0B0B000CDCD
      CD00C8C8C8000000000000000000000000000000000098989800FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00969696000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B7B7B700000000000000000000000000000000000000
      00006F6F6F00EEEEEE00FDFDFD00BFBFBF006D6D6D00E8E8E800FFFFFF005757
      5700000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400CACACA00CDCDCD00C2C2C200B3B3B300C9C9C900CDCDCD00B0B0
      B0000000000000000000000000000000000000000000CBCBCB00FFFFFF00FFFF
      FF00FFFFFF007979790000000000F2F2F200F2F2F2000000000079797900FFFF
      FF00FFFFFF00FFFFFF00C9C9C9000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C20000000000000000000000000000000000B3B3
      B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E8000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00C9C9C9000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD0000000000000000000000000070707000F8F8
      F8006868680000000000000000000000000069696900FFFFFF006D6D6D000000
      0000000000000000000000000000000000000000000000000000B4B4B400CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B3B3B3000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00000000000000000000000000C1C1C1009C9C
      9C000000000000000000000000000000000000000000FFFFFF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000C2C2C200BCBC
      BC000000000000000000000000000000000000000000CDCDCD00C2C2C2000000
      00000000000000000000000000000000000000000000CCCCCC00FFFFFF00FFFF
      FF00FFFFFF007A7A7A0000000000F1F1F100F1F1F100000000007A7A7A00FFFF
      FF00FFFFFF00FFFFFF00CACACA000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C200000000000000000000000000FEFEFE004141
      41000000000000000000000000000000000000000000FFFFFF00FDFDFD000000
      0000000000000000000000000000000000000000000000000000CDCDCD00ACAC
      AC000000000000000000000000000000000000000000CDCDCD00CDCDCD000000
      0000000000000000000000000000000000000000000099999900FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00979797000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B8B8B800000000000000000000000000EFEFEF005656
      56000000000000000000000000000000000000000000FFFFFF00EEEEEE000000
      0000000000000000000000000000000000000000000000000000CACACA00B0B0
      B0000000000000000000000000000000000000000000CDCDCD00CACACA000000
      000000000000000000000000000000000000000000000000000096969600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009494940000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B7000000000000000000000000000000000072727200F7F7
      F7006767670000000000000000000000000068686800FFFFFF006F6F6F000000
      0000000000000000000000000000000000000000000000000000B5B5B500CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B4B4B4000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F70056565600414141009C9C9C00F8F8F800B3B3B300000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CBCBCB00B0B0B000ACACAC00BCBCBC00CBCBCB00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      000072727200EFEFEF00FEFEFE00C1C1C1007070700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500CACACA00CDCDCD00C2C2C200B4B4B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00FCFCFC00FCFCFC00CBCBCB00989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090909000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000B6B6B600CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B6B6
      B60000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008F8F8F0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB006767670068686800FBFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A2A2A2000000000000000000A4A4A400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0066666600000000000000000067676700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A0000000000000000000A2A2A200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00AFAFAF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000072727200EBEBEB00FFFFFF00FFFFFF00EBEBEB00727272000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B0B000C9C9C900CDCDCD00CDCDCD00C9C9C900B0B0B0000000
      000000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAF
      AF00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F0F000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CACACA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CBCBCB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FAFAFA008A8A8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CBCBCB00B5B5B500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FBFB
      FB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000008C8C
      8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00B8B8
      B80000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000007272
      7200EBEBEB00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD000000000000000000B0B0
      B000C9C9C9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D00FBFBFB00FFFFFF00FEFEFE000000
      0000AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD000000
      0000BFBFBF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000072727200FFFF
      FF00AFAFAF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD0000000000B0B0B000CDCD
      CD00BCBCBC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009999990000000000FFFF
      FF00FFFFFF00F4F4F40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B80000000000CDCD
      CD00CDCDCD00CACACA000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072727200EBEBEB00AFAF
      AF0000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B0B0B000C9C9C900BCBC
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA00FFFF
      FF00FFFFFF00B8B8B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00CDCD
      CD00CDCDCD00BEBEBE000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800B8B8B8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BEBEBE00000000000000000000000000000000000000000000000000F1F1
      F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00000000000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FC07FC1FFFFF0000F003F81FC0030000
      E003F81FC0030000C081F81FDFFB000080D1F81FDFFB00008071F81FDFFB0000
      C038F81FDFFB00008430F81FDFFB00008200F00FDFFB00008380F00FDFFB0000
      8781E007DFFB000007D0C3C3D81B000007F087E1D81B000007F80FF0C0030000
      FFF80000C0030000FFFC0000FC3F0000FFFFFFFFFFFFFFFFF81FF81FFFFFFFFF
      F00FF00FFFF7FFF7E007E007FFE3FFE3C003C003FFC7FFC784218421F00FF00F
      82418241E01FE01F81818181C71FC71F81818181CF9FCF9F82418241CF9FCF9F
      84218421CF9FCF9FC003C003C71FC71FE007E007E03FE03FF00FF00FF07FF07F
      F81FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F00FF00FC003C003F00FF00FC003C003F00FF00FC183C183F00FF00FC183C183
      F00FF00FC183C183F00FF00FC003C003F00FF00FC003C003F00FF00FC003C003
      F00FF00FDFC3DFC3FFFFFFFFDFC3DFC3E007E007DFC7DFC7F81FF81FC00FC00F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007FFFFFFFF
      E007E007C7FFC7FFE187E187C1FFC1FFE187E187C1FFC1FFE7E7E7E7E07FE07F
      E7E7E7E7E07FE07FE187E187F81FF81FE187E187F81FF81FE007E007FE0FFE0F
      E067E067FE17FE17E047E047FFA3FFA3E00FE00FFFC3FFC3E01FE01FFFE7FFE7
      E03FE03FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
