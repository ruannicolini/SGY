inherited F01014: TF01014
  Caption = 'F01014'
  ClientHeight = 670
  ClientWidth = 833
  ExplicitWidth = 849
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 833
    Height = 635
    ActivePage = TbDados
    ExplicitWidth = 833
    ExplicitHeight = 635
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 825
      ExplicitHeight = 607
      inherited grDados: TGroupBox
        Width = 825
        Height = 607
        ExplicitWidth = 825
        ExplicitHeight = 607
        object Label1: TLabel
          Left = 20
          Top = 22
          Width = 56
          Height = 13
          Caption = 'COD FICHA'
        end
        object Label2: TLabel
          Left = 101
          Top = 22
          Width = 34
          Height = 13
          Caption = 'ALUNO'
        end
        object DBEdit1: TDBEdit
          Left = 20
          Top = 38
          Width = 73
          Height = 21
          DataField = 'idFichaAluno'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 101
          Top = 38
          Width = 709
          Height = 21
          DataField = 'NOMEALUNO'
          DataSource = DS
          ReadOnly = True
          TabOrder = 1
        end
        object cxGroupBox10: TcxGroupBox
          Left = 16
          Top = 65
          Align = alCustom
          TabOrder = 2
          Height = 464
          Width = 794
          object cxGroupBox8: TcxGroupBox
            Left = 2
            Top = 5
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            PanelStyle.OfficeBackgroundKind = pobkGradient
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 0
            Height = 420
            Width = 790
            object cxGroupBox9: TcxGroupBox
              Left = 2
              Top = 5
              Align = alTop
              PanelStyle.Active = True
              ParentBackground = False
              ParentColor = False
              Style.BorderColor = 12098947
              Style.BorderStyle = ebs3D
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 70
              Width = 786
              object btnAddExercicio: TSpeedButton
                Left = 704
                Top = 19
                Width = 71
                Height = 40
                Caption = 'ADD'
                OnClick = btnAddExercicioClick
              end
              object Label22: TLabel
                Left = 13
                Top = 15
                Width = 38
                Height = 13
                Caption = 'TREINO'
              end
              object Label23: TLabel
                Left = 125
                Top = 15
                Width = 35
                Height = 13
                Caption = 'GRUPO'
              end
              object Label24: TLabel
                Left = 312
                Top = 15
                Width = 55
                Height = 13
                Caption = 'EXERCICIO'
              end
              object Label25: TLabel
                Left = 530
                Top = 15
                Width = 29
                Height = 13
                Caption = 'S'#201'RIE'
              end
              object Label26: TLabel
                Left = 619
                Top = 15
                Width = 57
                Height = 13
                Caption = 'REPET/ MIN'
              end
              object Edittreino: TEdit
                Left = 13
                Top = 33
                Width = 29
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
                TabOrder = 5
                OnChange = EdittreinoChange
              end
              object EditBTreino: TEditBeleza
                Left = 41
                Top = 33
                Width = 75
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select idTREINO, DESCRICAOTREINO from TREINO where DESCRICAOTREI' +
                    'NO like :varDescricao')
                database = 'GYM'
                campo = 'DESCRICAOTREINO'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Edittreino
                campo_outro_edit = 'IDTREINO'
                CorBorda = clGray
                NovoLayout = False
              end
              object editSerie: TSpinEdit
                Left = 530
                Top = 33
                Width = 79
                Height = 22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 10
                MinValue = 1
                ParentFont = False
                TabOrder = 3
                Value = 1
              end
              object Editgrupo: TEdit
                Left = 125
                Top = 33
                Width = 29
                Height = 21
                TabStop = False
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnChange = EditgrupoChange
              end
              object EditBGrupo: TEditBeleza
                Left = 153
                Top = 33
                Width = 150
                Height = 21
                Color = 15461355
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select idGrupoExercicio, descricaoGrupoExercicio from GrupoExerc' +
                    'icio where descricaoGrupoExercicio like :varDescricao')
                database = 'GYM'
                campo = 'descricaoGrupoExercicio'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Editgrupo
                campo_outro_edit = 'IDGrupoExercicio'
                CorBorda = clGray
                NovoLayout = False
              end
              object Editexercicio: TEdit
                Left = 312
                Top = 33
                Width = 29
                Height = 21
                TabStop = False
                Color = 15461355
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object EditBExercicio: TEditBeleza
                Left = 340
                Top = 33
                Width = 182
                Height = 21
                Color = 15461355
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnKeyPress = EditBTreinoKeyPress
                Ativar_Pesquisa = True
                Ativar_MultiSelecao = False
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select ex.idExercicio, ex.idGrupoExercicio, ex.tipomedida,  ex.n' +
                    'omeExercicio from Exercicio ex where ex.nomeExercicio like :varD' +
                    'escricao AND '
                  
                    ' ex.idGrupoExercicio =:idG and ex.idexercicio not in (select dis' +
                    'tinct idexercicio from serieFichaAluno where idFichaAluno =:idFA' +
                    ' and idTreino =:idT)')
                database = 'gym'
                campo = 'NOMEEXERCICIO'
                Sempre_Mostrar_Janela = False
                Outro_Edit = Editexercicio
                campo_outro_edit = 'IDEXERCICIO'
                CorBorda = clGray
                NovoLayout = False
                OnButtonClick = EditBExercicioButtonClick
                DepoisPesquisa = EditBExercicioDepoisPesquisa
              end
              object editRepeticoes: TSpinEdit
                Left = 619
                Top = 33
                Width = 79
                Height = 22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 200
                MinValue = 1
                ParentFont = False
                TabOrder = 4
                Value = 1
              end
            end
            object DBGridBeleza3: TDBGridBeleza
              AlignWithMargins = True
              Left = 5
              Top = 78
              Width = 780
              Height = 337
              Hint = 'Clique no Titulo da Coluna para Ordenar'
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSserieFichaAluno
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnKeyDown = DBGridBeleza3KeyDown
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
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'descricaoTreino'
                  Title.Alignment = taCenter
                  Title.Caption = 'TREINO'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricaoGrupoExercicio'
                  Title.Caption = 'GRUPO'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nomeExercicio'
                  Title.Caption = 'EXERCICIO'
                  Width = 345
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'qtdSerie'
                  Title.Alignment = taCenter
                  Title.Caption = 'SERIE'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'qtdRepeticao'
                  Title.Alignment = taCenter
                  Title.Caption = 'REPET/ MIN'
                  Width = 84
                  Visible = True
                end>
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 425
            Width = 790
            Height = 37
            Align = alBottom
            BevelOuter = bvNone
            Color = 15329769
            ParentBackground = False
            TabOrder = 1
            object btnLimparFicha: TSpeedButton
              Left = 631
              Top = 3
              Width = 151
              Height = 30
              Align = alCustom
              Caption = 'LIMPAR'
              OnClick = btnLimparFichaClick
            end
            object btnImportarFicha: TSpeedButton
              Left = 474
              Top = 3
              Width = 151
              Height = 30
              Align = alCustom
              Caption = 'IMPORTAR'
              OnClick = btnImportarFichaClick
            end
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 825
      ExplicitHeight = 607
      inherited GBFiltros: TGroupBox
        Width = 825
        ExplicitWidth = 825
        inherited Panel1: TPanel
          Width = 816
          ExplicitWidth = 816
          inherited BtnLimparFiltros: TButton
            Left = 771
            ExplicitLeft = 771
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 825
        Height = 496
      end
      inherited PanelFiltros: TPanel
        Width = 825
        ExplicitWidth = 825
        inherited btnFiltrar: TButton
          Left = 774
          ExplicitLeft = 774
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 833
    ExplicitWidth = 833
    inherited BSalvar: TSpeedButton
      Left = 150
      ExplicitLeft = 150
    end
    inherited BCancelar: TSpeedButton
      Left = 186
      ExplicitLeft = 186
    end
    inherited BFechar: TSpeedButton
      Left = 799
      ExplicitLeft = 799
    end
    inherited BFirst: TSpeedButton
      Left = 240
      Visible = False
      ExplicitLeft = 240
    end
    inherited BPrior: TSpeedButton
      Left = 276
      Visible = False
      ExplicitLeft = 276
    end
    inherited BNext: TSpeedButton
      Left = 312
      Visible = False
      ExplicitLeft = 312
    end
    inherited BLast: TSpeedButton
      Left = 348
      Visible = False
      ExplicitLeft = 348
    end
    inherited bRelatorio: TSpeedButton
      Left = 384
      Visible = False
      ExplicitLeft = 384
    end
  end
  inherited DS: TDataSource
    Left = 696
    Top = 8
  end
  inherited ClientDataSet1: TClientDataSet
    Left = 664
    Top = 8
    object ClientDataSet1idFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Required = True
    end
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object ClientDataSet1dataComposicao: TDateField
      FieldName = 'dataComposicao'
    end
    object ClientDataSet1nomeInstrutor: TStringField
      FieldName = 'nomeInstrutor'
      Size = 100
    end
    object ClientDataSet1NOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 80
    end
    object ClientDataSet1dataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    Left = 632
    Top = 8
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT FA.*, A.NOMEALUNO FROM FICHAALUNO FA '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = FA.IDALUNO')
    Left = 600
    Top = 8
    object FDQuery1idFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Origin = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object FDQuery1dataComposicao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicao'
      Origin = 'dataComposicao'
    end
    object FDQuery1nomeInstrutor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeInstrutor'
      Origin = 'nomeInstrutor'
      Size = 100
    end
    object FDQuery1NOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
    object FDQuery1dataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
    end
  end
  inherited ImageListBase: TImageList
    Left = 760
    Top = 8
  end
  inherited Acoes: TActionList
    Left = 728
    Top = 9
  end
  object qserieFichaAluno: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select s.*, t.descricaoTreino, e.nomeExercicio, e.idgrupoExercic' +
        'io, '
      
        'ge.descricaoGrupoExercicio, eq.idequipamento, eq.descricaoequipa' +
        'mento '
      'from seriefichaAluno s '
      'left outer join treino t on t.idTreino = s.idTreino'
      'left outer join exercicio e on e.idexercicio = s.idExercicio'
      
        'left outer join equipamento eq on eq.idequipamento = e.idequipam' +
        'ento'
      
        'left outer join grupoExercicio ge on ge.idGrupoExercicio = e.idg' +
        'rupoExercicio'
      'where S.idFichaAluno =:idFA'
      'ORDER BY S.IDTREINO,  e.idgrupoExercicio;')
    Left = 596
    Top = 59
    ParamData = <
      item
        Name = 'IDFA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qserieFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      Origin = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qserieFichaAlunoqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object qserieFichaAlunoqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
    object qserieFichaAlunodescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunonomeExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeExercicio'
      Origin = 'nomeExercicio'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunoidgrupoExercicio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idgrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = []
    end
    object qserieFichaAlunodescricaoGrupoExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      ProviderFlags = []
      Size = 50
    end
    object qserieFichaAlunoidequipamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idequipamento'
      Origin = 'idEquipamento'
      ProviderFlags = []
    end
    object qserieFichaAlunodescricaoequipamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoequipamento'
      Origin = 'descricaoEquipamento'
      ProviderFlags = []
      Size = 50
    end
  end
  object pserieFichaAluno: TDataSetProvider
    DataSet = qserieFichaAluno
    Left = 628
    Top = 59
  end
  object CDSserieFichaAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pserieFichaAluno'
    AfterPost = CDSserieFichaAlunoAfterPost
    AfterCancel = CDSserieFichaAlunoAfterCancel
    AfterDelete = CDSserieFichaAlunoAfterDelete
    OnReconcileError = CDSserieFichaAlunoReconcileError
    Left = 668
    Top = 59
    object CDSserieFichaAlunoidFichaAluno: TIntegerField
      FieldName = 'idFichaAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoidExercicio: TIntegerField
      FieldName = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSserieFichaAlunoqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
    end
    object CDSserieFichaAlunoqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
    end
    object CDSserieFichaAlunodescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      Size = 50
    end
    object CDSserieFichaAlunonomeExercicio: TStringField
      FieldName = 'nomeExercicio'
      Size = 50
    end
    object CDSserieFichaAlunoidgrupoExercicio: TIntegerField
      FieldName = 'idgrupoExercicio'
    end
    object CDSserieFichaAlunodescricaoGrupoExercicio: TStringField
      FieldName = 'descricaoGrupoExercicio'
      Size = 50
    end
    object CDSserieFichaAlunoidequipamento: TIntegerField
      FieldName = 'idequipamento'
    end
    object CDSserieFichaAlunodescricaoequipamento: TStringField
      FieldName = 'descricaoequipamento'
      Size = 50
    end
  end
  object DSserieFichaAluno: TDataSource
    DataSet = CDSserieFichaAluno
    OnDataChange = DSserieFichaAlunoDataChange
    Left = 700
    Top = 59
  end
end
