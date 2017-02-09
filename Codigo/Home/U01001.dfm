inherited F01001: TF01001
  Caption = 'F01001'
  ClientHeight = 741
  ClientWidth = 829
  ExplicitLeft = -58
  ExplicitTop = -6
  ExplicitWidth = 845
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel [0]
    Left = 248
    Top = 252
    Width = 17
    Height = 13
    Caption = 'TEL'
  end
  inherited PageControl: TPageControl
    Width = 829
    Height = 706
    ActivePage = TbDados
    ExplicitWidth = 829
    ExplicitHeight = 706
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 821
      ExplicitHeight = 678
      inherited grDados: TGroupBox
        Width = 821
        Height = 678
        ExplicitWidth = 821
        ExplicitHeight = 678
        object cxPageControl1: TcxPageControl
          Left = 2
          Top = 15
          Width = 817
          Height = 661
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = 16382457
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = pag4
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npLeftTop
          Properties.Style = 9
          Properties.TabHeight = 30
          Properties.TabPosition = tpBottom
          Properties.TabSlants.Positions = [spLeft, spRight]
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          TabSlants.Positions = [spLeft, spRight]
          ClientRectBottom = 630
          ClientRectRight = 817
          ClientRectTop = 0
          object pag1: TcxTabSheet
            Caption = 'PERFIL'
            Color = 16382457
            ImageIndex = 0
            ParentColor = False
            object camera: TdxCameraControl
              Left = 756
              Top = 111
              Width = 55
              Height = 55
              Visible = False
            end
            object GroupBox1: TGroupBox
              Left = 17
              Top = 260
              Width = 638
              Height = 113
              TabOrder = 1
              object Label7: TLabel
                Left = 15
                Top = 5
                Width = 43
                Height = 16
                Caption = 'CIDADE'
                FocusControl = cxDBTextEdit4
              end
              object Label8: TLabel
                Left = 223
                Top = 5
                Width = 44
                Height = 16
                Caption = 'BAIRRO'
                FocusControl = cxDBTextEdit5
              end
              object Label9: TLabel
                Left = 430
                Top = 58
                Width = 50
                Height = 16
                Caption = 'NUMERO'
                FocusControl = cxDBSpinEdit2
              end
              object Label10: TLabel
                Left = 15
                Top = 58
                Width = 24
                Height = 16
                Caption = 'RUA'
                FocusControl = cxDBTextEdit6
              end
              object Label11: TLabel
                Left = 430
                Top = 5
                Width = 22
                Height = 16
                Caption = 'CEP'
              end
              object cxDBTextEdit4: TcxDBTextEdit
                Left = 15
                Top = 26
                DataBinding.DataField = 'cidade'
                DataBinding.DataSource = DS
                TabOrder = 0
                Width = 193
              end
              object cxDBTextEdit5: TcxDBTextEdit
                Left = 223
                Top = 26
                DataBinding.DataField = 'bairro'
                DataBinding.DataSource = DS
                TabOrder = 1
                Width = 193
              end
              object cxDBSpinEdit2: TcxDBSpinEdit
                Left = 430
                Top = 79
                DataBinding.DataField = 'numero'
                DataBinding.DataSource = DS
                TabOrder = 2
                Width = 193
              end
              object cxDBTextEdit6: TcxDBTextEdit
                Left = 15
                Top = 79
                DataBinding.DataField = 'rua'
                DataBinding.DataSource = DS
                TabOrder = 3
                Width = 401
              end
            end
            object cxDBMaskEdit1: TcxDBMaskEdit
              Left = 447
              Top = 292
              DataBinding.DataField = 'cep'
              DataBinding.DataSource = DS
              Properties.EditMask = '00000-000;0'
              TabOrder = 2
              Width = 193
            end
            object cxGroupBox1: TcxGroupBox
              Left = 16
              Top = 379
              Caption = 'RESPONS'#193'VEL'
              ParentColor = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = 16382457
              TabOrder = 3
              Height = 130
              Width = 638
              object Label1: TLabel
                Left = 15
                Top = 19
                Width = 34
                Height = 16
                Caption = 'NOME'
                FocusControl = cxDBTextEdit1
              end
              object Label2: TLabel
                Left = 15
                Top = 72
                Width = 78
                Height = 16
                Caption = 'PARENTESCO'
                FocusControl = cxDBTextEdit3
              end
              object Label4: TLabel
                Left = 326
                Top = 72
                Width = 21
                Height = 16
                Caption = 'TEL'
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 15
                Top = 40
                DataBinding.DataField = 'nomeResponsavel'
                DataBinding.DataSource = DS
                TabOrder = 0
                Width = 608
              end
              object cxDBTextEdit3: TcxDBTextEdit
                Left = 15
                Top = 93
                DataBinding.DataField = 'parentescoResponsavel'
                DataBinding.DataSource = DS
                TabOrder = 1
                Width = 297
              end
              object cxDBMaskEdit5: TcxDBMaskEdit
                Left = 326
                Top = 93
                DataBinding.DataField = 'telResponsavel'
                DataBinding.DataSource = DS
                Properties.EditMask = '!\(99\)0000-99999;1;_'
                TabOrder = 2
                Width = 297
              end
            end
            object cxGroupBox2: TcxGroupBox
              Left = 16
              Top = 0
              Caption = 'ALUNO'
              Style.BorderStyle = ebsUltraFlat
              TabOrder = 4
              Height = 254
              Width = 638
              object Label5: TLabel
                Left = 223
                Top = 34
                Width = 34
                Height = 16
                Caption = 'NOME'
                FocusControl = cxDBTextEdit7
              end
              object Label12: TLabel
                Left = 223
                Top = 144
                Width = 22
                Height = 16
                Caption = 'CPF'
              end
              object Label14: TLabel
                Left = 223
                Top = 197
                Width = 21
                Height = 16
                Caption = 'TEL'
              end
              object Label3: TLabel
                Left = 430
                Top = 197
                Width = 35
                Height = 16
                Caption = 'EMAIL'
                FocusControl = cxDBTextEdit2
              end
              object Label6: TLabel
                Left = 15
                Top = 197
                Width = 21
                Height = 16
                Caption = 'CEL'
              end
              object btnFoto: TSpeedButton
                Left = 341
                Top = 16
                Width = 168
                Height = 24
                Caption = 'Capturar Imagem'
                Visible = False
                OnClick = btnFotoClick
              end
              object btnMudarCamera: TSpeedButton
                Left = 507
                Top = 16
                Width = 30
                Height = 24
                Visible = False
                OnClick = btnMudarCameraClick
              end
              object cxDBTextEdit7: TcxDBTextEdit
                Left = 223
                Top = 55
                DataBinding.DataField = 'nomeAluno'
                DataBinding.DataSource = DS
                TabOrder = 0
                Width = 344
              end
              object DBEdit1: TDBEdit
                Left = 566
                Top = 55
                Width = 57
                Height = 24
                DataField = 'idAluno'
                DataSource = DS
                ReadOnly = True
                TabOrder = 1
              end
              object cxDBSpinEdit1: TcxDBSpinEdit
                Left = 430
                Top = 112
                DataBinding.DataField = 'idade'
                DataBinding.DataSource = DS
                Properties.ReadOnly = True
                TabOrder = 2
                Width = 193
              end
              object cxLabel1: TcxLabel
                Left = 430
                Top = 87
                Caption = 'IDADE'
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 223
                Top = 112
                DataBinding.DataField = 'dataNascimento'
                DataBinding.DataSource = DS
                Properties.OnChange = cxDBDateEdit1PropertiesChange
                TabOrder = 4
                Width = 192
              end
              object cxLabel2: TcxLabel
                Left = 223
                Top = 87
                Caption = 'DATA NASC.'
              end
              object cxDBMaskEdit3: TcxDBMaskEdit
                Left = 223
                Top = 165
                DataBinding.DataField = 'cpf'
                DataBinding.DataSource = DS
                Properties.EditMask = '000.000.000-00;0'
                TabOrder = 6
                Width = 193
              end
              object cxDBRadioGroup1: TcxDBRadioGroup
                Left = 430
                Top = 144
                Caption = 'SEXO'
                DataBinding.DataField = 'sexo'
                DataBinding.DataSource = DS
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'MASCULINO'
                    Value = 'M'
                  end
                  item
                    Caption = 'FEMININO'
                    Value = 'F'
                  end>
                TabOrder = 7
                Height = 45
                Width = 193
              end
              object cxDBImage1: TcxDBImage
                Left = 15
                Top = 34
                DataBinding.DataField = 'foto'
                DataBinding.DataSource = DS
                Properties.FitMode = ifmProportionalStretch
                Properties.OnAssignPicture = cxDBImage1PropertiesAssignPicture
                TabOrder = 8
                Height = 155
                Width = 193
              end
              object cxDBMaskEdit2: TcxDBMaskEdit
                Left = 15
                Top = 218
                DataBinding.DataField = 'tel1'
                DataBinding.DataSource = DS
                Properties.EditMask = '!\(99\)0000-99999;1;_'
                TabOrder = 9
                Width = 193
              end
              object cxDBMaskEdit4: TcxDBMaskEdit
                Left = 223
                Top = 218
                DataBinding.DataField = 'tel2'
                DataBinding.DataSource = DS
                Properties.EditMask = '!\(99\)0000-99999;1;_'
                TabOrder = 10
                Width = 193
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 430
                Top = 218
                DataBinding.DataField = 'email'
                DataBinding.DataSource = DS
                TabOrder = 11
                Width = 193
              end
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 564
                Top = 25
                Caption = 'ATIVO'
                DataBinding.DataField = 'ativo'
                DataBinding.DataSource = DS
                TabOrder = 12
                Width = 61
              end
            end
          end
          object pag2: TcxTabSheet
            Caption = 'ANAMNESE'
            ImageIndex = 1
            object cxGroupBox3: TcxGroupBox
              Left = 16
              Top = 0
              TabOrder = 0
              Height = 237
              Width = 794
              object Label15: TLabel
                Left = 171
                Top = 20
                Width = 31
                Height = 16
                Alignment = taCenter
                Caption = 'PESO'
              end
              object Label16: TLabel
                Left = 295
                Top = 20
                Width = 46
                Height = 16
                Alignment = taCenter
                Caption = 'ALTURA'
              end
              object Label17: TLabel
                Left = 419
                Top = 20
                Width = 22
                Height = 16
                Alignment = taCenter
                Caption = 'IMC'
              end
              object Label18: TLabel
                Left = 16
                Top = 20
                Width = 90
                Height = 16
                Caption = 'REFEI'#199#213'ES/DIA'
                FocusControl = cxDBSpinEdit3
              end
              object Label19: TLabel
                Left = 16
                Top = 73
                Width = 104
                Height = 16
                Caption = 'HORAS SONO/DIA'
                FocusControl = cxDBSpinEdit4
              end
              object Label20: TLabel
                Left = 171
                Top = 73
                Width = 57
                Height = 16
                Caption = 'OBJETIVO'
              end
              object Label21: TLabel
                Left = 16
                Top = 126
                Width = 159
                Height = 16
                Caption = 'INFORMA'#199#213'ES ADICIONAIS'
              end
              object cxDBSpinEdit3: TcxDBSpinEdit
                Left = 16
                Top = 41
                DataBinding.DataField = 'qtdRefeicoesDia'
                DataBinding.DataSource = DS
                TabOrder = 0
                Width = 140
              end
              object cxDBSpinEdit4: TcxDBSpinEdit
                Left = 16
                Top = 94
                DataBinding.DataField = 'qtdHorasSono'
                DataBinding.DataSource = DS
                TabOrder = 1
                Width = 140
              end
              object cxDBCheckBox2: TcxDBCheckBox
                Left = 409
                Top = 163
                Caption = 'SUPLEMENTA'#199#195'O'
                DataBinding.DataField = 'suplementacao'
                DataBinding.DataSource = DS
                TabOrder = 2
                Width = 131
              end
              object cxDBCheckBox3: TcxDBCheckBox
                Left = 409
                Top = 144
                Caption = 'DIETA'
                DataBinding.DataField = 'dieta'
                DataBinding.DataSource = DS
                TabOrder = 3
                Width = 59
              end
              object cxDBCheckBox4: TcxDBCheckBox
                Left = 409
                Top = 182
                Caption = 'FUMANTE'
                DataBinding.DataField = 'fumante'
                DataBinding.DataSource = DS
                TabOrder = 4
                Width = 121
              end
              object cxDBCheckBox5: TcxDBCheckBox
                Left = 409
                Top = 200
                Caption = 'USO B. ALC'#211'OLICA'
                DataBinding.DataField = 'consomeBebidaAlcoolica'
                DataBinding.DataSource = DS
                TabOrder = 5
                Width = 172
              end
              object cxDBMemo1: TcxDBMemo
                Left = 16
                Top = 147
                DataBinding.DataField = 'informacaoAdicional'
                DataBinding.DataSource = DS
                TabOrder = 6
                Height = 73
                Width = 387
              end
              object cxDBSpinEdit6: TcxDBSpinEdit
                Left = 295
                Top = 41
                DataBinding.DataField = 'altura'
                DataBinding.DataSource = DS
                Properties.AssignedValues.MinValue = True
                Properties.DisplayFormat = '0.00'
                Properties.EditFormat = '0.00'
                Properties.MaxValue = 3.000000000000000000
                Properties.ValueType = vtFloat
                TabOrder = 7
                Width = 122
              end
              object cxDBSpinEdit7: TcxDBSpinEdit
                Left = 171
                Top = 41
                DataBinding.DataField = 'peso'
                DataBinding.DataSource = DS
                Properties.AssignedValues.MaxValue = True
                Properties.AssignedValues.MinValue = True
                Properties.DisplayFormat = '#.##'
                Properties.EditFormat = '#.##'
                Properties.Nullstring = '0'
                Properties.ValueType = vtFloat
                TabOrder = 8
                Width = 122
              end
              object cxDBMaskEdit6: TcxDBMaskEdit
                Left = 419
                Top = 41
                DataBinding.DataField = 'IMC'
                DataBinding.DataSource = DS
                Properties.EditMask = '99,99;1'
                Properties.ReadOnly = True
                TabOrder = 9
                Width = 122
              end
              object DBEdit2: TDBEdit
                Left = 171
                Top = 96
                Width = 24
                Height = 21
                Color = 15132390
                DataField = 'idObjetivo'
                DataSource = DS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
              end
              object DBEditBeleza1: TDBEditBeleza
                Left = 195
                Top = 96
                Width = 345
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
                TabOrder = 11
                Ativar_Pesquisa = True
                mostrar_Botao = True
                sql.Strings = (
                  
                    'select idobjetivo, DESCRICAOOBJETIVO from objetivo where DESCRIC' +
                    'AOOBJETIVO like :varDescricao')
                database = 'GYM'
                campo = 'DESCRICAOOBJETIVO'
                Sempre_Mostrar_Janela = False
                Outro_Edit = DBEdit2
                campo_outro_edit = 'IDOBJETIVO'
                CorBorda = clGray
                NovoLayout = False
              end
            end
            object cxGroupBox4: TcxGroupBox
              Left = 16
              Top = 240
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = 'PATOLOGIAS E RELATOS F'#205'SICOS'
              PanelStyle.OfficeBackgroundKind = pobkGradient
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              TabOrder = 1
              Height = 315
              Width = 794
              object cxGroupBox5: TcxGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 72
                Align = alLeft
                Caption = 'DESCRI'#199#195'O'
                TabOrder = 0
                Height = 238
                Width = 185
                object DBGridBeleza2: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 24
                  Width = 175
                  Height = 209
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSPAtologia
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
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'NOMEPATOLOGIA'
                      Visible = True
                    end>
                end
              end
              object cxGroupBox6: TcxGroupBox
                AlignWithMargins = True
                Left = 196
                Top = 72
                Align = alClient
                Caption = 'OBSERVA'#199#213'ES M'#201'DICAS'
                TabOrder = 1
                Height = 238
                Width = 593
                object Panel3: TPanel
                  Left = 2
                  Top = 209
                  Width = 589
                  Height = 27
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 14737632
                  ParentBackground = False
                  TabOrder = 0
                  object BTNALTERAR: TSpeedButton
                    Left = 414
                    Top = 0
                    Width = 175
                    Height = 27
                    Align = alRight
                    Caption = 'ALTERAR'
                    Enabled = False
                    OnClick = BTNALTERARClick
                    ExplicitLeft = 184
                  end
                  object BTNCANCELAR: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 175
                    Height = 27
                    Align = alLeft
                    Caption = 'CANCELAR'
                    Enabled = False
                    OnClick = BTNCANCELARClick
                  end
                end
                object cxDBMemo2: TcxDBMemo
                  Left = 2
                  Top = 21
                  Align = alClient
                  DataBinding.DataField = 'observacaoMedica'
                  DataBinding.DataSource = DSPAtologia
                  Properties.ReadOnly = True
                  TabOrder = 1
                  Height = 188
                  Width = 589
                end
              end
              object cxGroupBox7: TcxGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 21
                Margins.Top = 0
                Align = alTop
                TabOrder = 2
                Height = 45
                Width = 784
                object SpeedButton1: TSpeedButton
                  AlignWithMargins = True
                  Left = 716
                  Top = 14
                  Width = 63
                  Height = 25
                  Margins.Top = 9
                  Margins.Bottom = 4
                  Align = alRight
                  Caption = 'ADD'
                  OnClick = SpeedButton1Click
                  ExplicitLeft = 479
                  ExplicitTop = 9
                end
                object Edit1: TEdit
                  Left = 5
                  Top = 16
                  Width = 30
                  Height = 21
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
                  Left = 35
                  Top = 16
                  Width = 438
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
                    
                      'select idPatologia, nomePatologia from Patologia where nomePatol' +
                      'ogia like :varDescricao')
                  database = 'GYM'
                  campo = 'nomePATOLOGIA'
                  Sempre_Mostrar_Janela = False
                  Outro_Edit = Edit1
                  campo_outro_edit = 'IDPATOLOGIA'
                  CorBorda = clGray
                  NovoLayout = False
                end
              end
            end
          end
          object pag3: TcxTabSheet
            Caption = 'FICHA DE EXERCICIOS'
            ImageIndex = 2
            object cxGroupBox10: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
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
                Height = 508
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
                  object SpeedButton2: TSpeedButton
                    Left = 706
                    Top = 15
                    Width = 71
                    Height = 40
                    Caption = 'ADD'
                    OnClick = SpeedButton2Click
                  end
                  object Label22: TLabel
                    Left = 13
                    Top = 15
                    Width = 44
                    Height = 16
                    Caption = 'TREINO'
                  end
                  object Label23: TLabel
                    Left = 125
                    Top = 15
                    Width = 40
                    Height = 16
                    Caption = 'GRUPO'
                  end
                  object Label24: TLabel
                    Left = 312
                    Top = 15
                    Width = 63
                    Height = 16
                    Caption = 'EXERCICIO'
                  end
                  object Label25: TLabel
                    Left = 530
                    Top = 15
                    Width = 34
                    Height = 16
                    Caption = 'S'#201'RIE'
                  end
                  object Label26: TLabel
                    Left = 619
                    Top = 15
                    Width = 73
                    Height = 16
                    Caption = 'REPETI'#199#213'ES'
                  end
                  object Edittreino: TEdit
                    Left = 13
                    Top = 33
                    Width = 29
                    Height = 21
                    Color = 15461355
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object EditBTreino: TEditBeleza
                    Left = 41
                    Top = 33
                    Width = 74
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
                    TabOrder = 2
                    Value = 1
                  end
                  object Editgrupo: TEdit
                    Left = 125
                    Top = 33
                    Width = 29
                    Height = 21
                    Color = 15461355
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
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
                    TabOrder = 4
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
                    Color = 15461355
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                  end
                  object EditBExercicio: TEditBeleza
                    Left = 340
                    Top = 33
                    Width = 180
                    Height = 21
                    Color = 15461355
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                    Ativar_Pesquisa = True
                    Ativar_MultiSelecao = False
                    mostrar_Botao = True
                    sql.Strings = (
                      
                        'select ex.idExercicio, ex.idGrupoExercicio, ex.nomeExercicio fro' +
                        'm Exercicio ex where ex.nomeExercicio like :varDescricao AND '
                      
                        ' ex.idGrupoExercicio =:idG and ex.idexercicio not in (select dis' +
                        'tinct idexercicio from serie where idAluno =:idA)')
                    database = 'gym'
                    campo = 'NOMEEXERCICIO'
                    Sempre_Mostrar_Janela = False
                    Outro_Edit = Editexercicio
                    campo_outro_edit = 'IDEXERCICIO'
                    CorBorda = clGray
                    NovoLayout = False
                    OnButtonClick = EditBExercicioButtonClick
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
                    TabOrder = 7
                    Value = 1
                  end
                end
                object DBGridBeleza3: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSerie
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
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'descricaoTreino'
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
                      Width = 364
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
                      Title.Caption = 'REPETI'#199#213'ES'
                      Visible = True
                    end>
                end
              end
              object Panel6: TPanel
                Left = 2
                Top = 513
                Width = 790
                Height = 37
                Align = alBottom
                BevelOuter = bvNone
                Color = 15329769
                ParentBackground = False
                TabOrder = 1
                object btnFicha: TSpeedButton
                  Left = 631
                  Top = 5
                  Width = 151
                  Height = 30
                  Align = alCustom
                  Caption = 'IMPRIMIR FICHA'
                  OnClick = btnFichaClick
                end
              end
            end
          end
          object pag4: TcxTabSheet
            Caption = 'MODALIDADES'
            ImageIndex = 4
            object cxGroupBox11: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object cxGroupBox12: TcxGroupBox
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
                Height = 545
                Width = 790
                object cxGroupBox13: TcxGroupBox
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
                  object SpeedButton3: TSpeedButton
                    Left = 342
                    Top = 31
                    Width = 47
                    Height = 23
                    Caption = 'ADD'
                    OnClick = SpeedButton3Click
                  end
                  object Label27: TLabel
                    Left = 15
                    Top = 11
                    Width = 76
                    Height = 16
                    Caption = 'MODALIDADE'
                  end
                  object EditModalidade: TEdit
                    Left = 15
                    Top = 32
                    Width = 29
                    Height = 21
                    Color = 15461355
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object editBModalidade: TEditBeleza
                    Left = 43
                    Top = 32
                    Width = 293
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
                      
                        'select ex.idModalidade, ex.descricaoModalidade from Modalidade e' +
                        'x where ex.descricaoModalidade like :varDescricao AND '
                      
                        'ex.idModalidade not in (select distinct idModalidade from alunom' +
                        'odalidade where idAluno =:idA)')
                    database = 'GYM'
                    campo = 'DESCRICAOMODALIDADE'
                    Sempre_Mostrar_Janela = False
                    Outro_Edit = EditModalidade
                    campo_outro_edit = 'IDMODALIDADE'
                    CorBorda = clGray
                    NovoLayout = False
                    OnButtonClick = editBModalidadeButtonClick
                  end
                end
                object DBGridBeleza4: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSModalidade
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
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'idmodalidade'
                      Title.Alignment = taCenter
                      Title.Caption = 'COD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DESCRICAOMODALIDADE'
                      Title.Caption = 'MODALIDADE'
                      Width = 376
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valor'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'diavencimento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DIA VENCIMENTO'
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataInscri'#231#227'o'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA INSCRI'#199#195'O'
                      Width = 120
                      Visible = True
                    end>
                end
                object Panel4: TPanel
                  Left = 2
                  Top = 506
                  Width = 786
                  Height = 37
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 15329769
                  ParentBackground = False
                  TabOrder = 2
                  object btnCancelaMatricula: TSpeedButton
                    Left = 631
                    Top = 5
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'CANCELAR MATR'#205'CULA'
                    OnClick = btnCancelaMatriculaClick
                  end
                end
              end
            end
          end
          object pagMensalidades: TcxTabSheet
            Caption = 'MENSALIDADES'
            ImageIndex = 3
            object cxGroupBox14: TcxGroupBox
              Left = 16
              Top = 0
              Align = alCustom
              TabOrder = 0
              Height = 552
              Width = 794
              object cxGroupBox15: TcxGroupBox
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
                Height = 545
                Width = 790
                object cxGroupBox16: TcxGroupBox
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
                end
                object DBGridBeleza5: TDBGridBeleza
                  AlignWithMargins = True
                  Left = 5
                  Top = 78
                  Width = 780
                  Height = 425
                  Hint = 'Clique no Titulo da Coluna para Ordenar'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSPagamento
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
                  OnDrawColumnCell = DBGridBeleza5DrawColumnCell
                  Cor_2 = 16382457
                  Direcao_Cor2 = dg_Horiz
                  Direcao_Enter = dg_Horiz
                  ClickTituloOrdenar = True
                  MarcarLinhaInteira = True
                  CorLinhaMarcada = 15854564
                  BloquearExportacoes = False
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'idPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'COD'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'descricaoModalidade'
                      Title.Caption = 'MODALIDADE'
                      Width = 200
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valorModalidade'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR MOD'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'valorCobrado'
                      Title.Alignment = taCenter
                      Title.Caption = 'VALOR COBRADO'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataVencimento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA VENC'
                      Width = 90
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'dataPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'DATA PAG'
                      Width = 90
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'descricaoStatusPagamento'
                      Title.Alignment = taCenter
                      Title.Caption = 'SITUA'#199#195'O'
                      Width = 130
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LOGUsuarioResponsavel'
                      Title.Caption = 'LOG'
                      Visible = True
                    end>
                end
                object Panel5: TPanel
                  Left = 2
                  Top = 506
                  Width = 786
                  Height = 37
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 15329769
                  ParentBackground = False
                  TabOrder = 2
                  object btnPagamento: TSpeedButton
                    Left = 631
                    Top = 5
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'EFETUAR PAGAMENTO'
                    Enabled = False
                    OnClick = btnPagamentoClick
                  end
                  object btnIsencao: TSpeedButton
                    Left = 474
                    Top = 5
                    Width = 151
                    Height = 30
                    Align = alCustom
                    Caption = 'CONCEDER ISEN'#199#195'O'
                    Enabled = False
                    OnClick = btnIsencaoClick
                  end
                  object btnCancelarPI: TSpeedButton
                    Left = 258
                    Top = 5
                    Width = 210
                    Height = 30
                    Align = alCustom
                    Caption = 'CANCELAR PAGAMENTO/ISEN'#199#195'O'
                    Enabled = False
                    OnClick = btnCancelarPIClick
                  end
                end
              end
            end
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 821
      ExplicitHeight = 678
      inherited GBFiltros: TGroupBox
        Width = 821
        ExplicitWidth = 821
        inherited Panel1: TPanel
          Width = 812
          ExplicitWidth = 812
          inherited BtnLimparFiltros: TButton
            Left = 767
            ExplicitLeft = 767
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 821
        Height = 567
      end
      inherited PanelFiltros: TPanel
        Width = 821
        ExplicitWidth = 821
        inherited btnFiltrar: TButton
          Left = 770
          ExplicitLeft = 770
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 829
    ExplicitWidth = 829
    inherited BFechar: TSpeedButton
      Left = 795
      ExplicitLeft = 792
    end
  end
  inherited DS: TDataSource
    Left = 720
    Top = 336
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 696
    Top = 336
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object ClientDataSet1idade: TIntegerField
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1email: TStringField
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ClientDataSet1sexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1cidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1bairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1rua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1numero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1cep: TIntegerField
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1tel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1tel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1nomeResponsavel: TStringField
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ClientDataSet1parentescoResponsavel: TStringField
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1telResponsavel: TStringField
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1peso: TSingleField
      FieldName = 'peso'
      Origin = 'peso'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1altura: TSingleField
      FieldName = 'altura'
      Origin = 'altura'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1frequenciaAtividadeFisica: TIntegerField
      FieldName = 'frequenciaAtividadeFisica'
      Origin = 'frequenciaAtividadeFisica'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1qtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1qtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1suplementacao: TBooleanField
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1dieta: TBooleanField
      FieldName = 'dieta'
      Origin = 'dieta'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1fumante: TBooleanField
      FieldName = 'fumante'
      Origin = 'fumante'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1consomeBebidaAlcoolica: TBooleanField
      FieldName = 'consomeBebidaAlcoolica'
      Origin = 'consomeBebidaAlcoolica'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1dataCadastro: TDateField
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1ativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1cpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ClientDataSet1foto: TBlobField
      FieldName = 'foto'
      Origin = 'foto'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1informacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object ClientDataSet1idObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
    end
    object ClientDataSet1DESCRICAOOBJETIVO: TStringField
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
    object ClientDataSet1IMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
    object ClientDataSet1dataComposicaoFicha: TDateField
      FieldName = 'dataComposicaoFicha'
      Origin = 'dataComposicaoFicha'
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    Left = 672
    Top = 336
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT a.*, OBJ.DESCRICAOOBJETIVO FROM ALUNO A'
      'LEFT OUTER JOIN OBJETIVO OBJ ON OBJ.IDOBJETIVO = A.IDOBJETIVO;')
    Left = 648
    Top = 336
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object FDQuery1idade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1dataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object FDQuery1sexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object FDQuery1cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1rua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1cep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1tel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1tel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1nomeResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQuery1parentescoResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1telResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1peso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1altura: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'altura'
      Origin = 'altura'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1frequenciaAtividadeFisica: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frequenciaAtividadeFisica'
      Origin = 'frequenciaAtividadeFisica'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1qtdRefeicoesDia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1qtdHorasSono: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1suplementacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1dieta: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'dieta'
      Origin = 'dieta'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1fumante: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fumante'
      Origin = 'fumante'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1consomeBebidaAlcoolica: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consomeBebidaAlcoolica'
      Origin = 'consomeBebidaAlcoolica'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1dataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1ativo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1foto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1informacaoAdicional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object FDQuery1idObjetivo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
    end
    object FDQuery1DESCRICAOOBJETIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
    object FDQuery1dataComposicaoFicha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicaoFicha'
      Origin = 'dataComposicaoFicha'
    end
  end
  inherited ImageListBase: TImageList
    Left = 776
    Top = 336
    Bitmap = {
      494C01010F002C00F80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 752
    Top = 337
  end
  object DSPAtologia: TDataSource
    DataSet = cdsPatologia
    Left = 734
    Top = 533
  end
  object cdsPatologia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPatologia'
    AfterPost = cdsPatologiaAfterPost
    AfterCancel = cdsPatologiaAfterCancel
    AfterDelete = cdsPatologiaAfterDelete
    OnReconcileError = cdsPatologiaReconcileError
    Left = 702
    Top = 533
    object cdsPatologiaidAluno: TIntegerField
      FieldName = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPatologiaidPatologia: TIntegerField
      FieldName = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPatologiaobservacaoMedica: TStringField
      FieldName = 'observacaoMedica'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsPatologiaNOMEPATOLOGIA: TStringField
      FieldName = 'NOMEPATOLOGIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object provPatologia: TDataSetProvider
    DataSet = QPATOLOGIA
    Left = 670
    Top = 533
  end
  object QPATOLOGIA: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AP.*, P.NOMEPATOLOGIA FROM ALUNOPATOLOGIA AP '
      'LEFT OUTER JOIN PATOLOGIA P ON P.IDPATOLOGIA = AP.IDPATOLOGIA '
      'WHERE AP.IDALUNO =:IDA')
    Left = 638
    Top = 533
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPATOLOGIAidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPATOLOGIAidPatologia: TIntegerField
      FieldName = 'idPatologia'
      Origin = 'idPatologia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPATOLOGIAobservacaoMedica: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacaoMedica'
      Origin = 'observacaoMedica'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QPATOLOGIANOMEPATOLOGIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPATOLOGIA'
      Origin = 'nomePatologia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object qSerie: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select s.*, t.descricaoTreino, e.nomeExercicio, e.idgrupoExercic' +
        'io, ge.descricaoGrupoExercicio from serie s '
      'left outer join treino t on t.idTreino = s.idTreino '
      'left outer join exercicio e on e.idexercicio = s.idExercicio '
      
        'left outer join grupoExercicio ge on ge.idGrupoExercicio = e.idg' +
        'rupoExercicio '
      'where s.idAluno =:idA;')
    Left = 648
    Top = 466
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qSerieidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSerieqtdSerie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object qSerieqtdRepeticao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
    object qSeriedescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      ProviderFlags = []
      Size = 50
    end
    object qSerienomeExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeExercicio'
      Origin = 'nomeExercicio'
      ProviderFlags = []
      Size = 50
    end
    object qSerieidgrupoExercicio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idgrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = [pfInUpdate]
    end
    object qSeriedescricaoGrupoExercicio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object pSerie: TDataSetProvider
    DataSet = qSerie
    Left = 672
    Top = 466
  end
  object CDSSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pSerie'
    AfterPost = CDSSerieAfterPost
    AfterCancel = CDSSerieAfterCancel
    AfterDelete = CDSSerieAfterDelete
    Left = 704
    Top = 466
    object CDSSerieidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieidExercicio: TIntegerField
      FieldName = 'idExercicio'
      Origin = 'idExercicio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSerieqtdSerie: TIntegerField
      FieldName = 'qtdSerie'
      Origin = 'qtdSerie'
    end
    object CDSSerieqtdRepeticao: TIntegerField
      FieldName = 'qtdRepeticao'
      Origin = 'qtdRepeticao'
    end
    object CDSSeriedescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      ProviderFlags = []
      Size = 50
    end
    object CDSSerienomeExercicio: TStringField
      FieldName = 'nomeExercicio'
      Origin = 'nomeExercicio'
      ProviderFlags = []
      Size = 50
    end
    object CDSSerieidgrupoExercicio: TIntegerField
      FieldName = 'idgrupoExercicio'
      Origin = 'idGrupoExercicio'
      ProviderFlags = [pfInUpdate]
    end
    object CDSSeriedescricaoGrupoExercicio: TStringField
      FieldName = 'descricaoGrupoExercicio'
      Origin = 'descricaoGrupoExercicio'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DSSerie: TDataSource
    DataSet = CDSSerie
    Left = 736
    Top = 466
  end
  object qTreino: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select * from treino')
    Left = 640
    Top = 396
    object qTreinoidTreino: TIntegerField
      FieldName = 'idTreino'
      Origin = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTreinodescricaoTreino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoTreino'
      Origin = 'descricaoTreino'
      Size = 50
    end
  end
  object pTreino: TDataSetProvider
    DataSet = qTreino
    Left = 672
    Top = 395
  end
  object CDSTreino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pTreino'
    Left = 704
    Top = 394
    object CDSTreinoidTreino: TIntegerField
      FieldName = 'idTreino'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTreinodescricaoTreino: TStringField
      FieldName = 'descricaoTreino'
      Size = 50
    end
  end
  object DSTreino: TDataSource
    DataSet = CDSTreino
    Left = 736
    Top = 393
  end
  object DSModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 760
    Top = 281
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pModalidade'
    AfterPost = cdsModalidadeAfterPost
    AfterCancel = cdsModalidadeAfterCancel
    AfterDelete = cdsModalidadeAfterDelete
    Left = 736
    Top = 281
    object cdsModalidadeidAluno: TIntegerField
      FieldName = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsModalidadeidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsModalidadedataInscrição: TDateField
      FieldName = 'dataInscri'#231#227'o'
    end
    object cdsModalidadediavencimento: TIntegerField
      FieldName = 'diavencimento'
    end
    object cdsModalidadeDESCRICAOMODALIDADE: TStringField
      FieldName = 'DESCRICAOMODALIDADE'
      Size = 50
    end
    object cdsModalidadevalor: TSingleField
      FieldName = 'valor'
    end
  end
  object pModalidade: TDataSetProvider
    DataSet = QMODALIDADE
    Left = 712
    Top = 281
  end
  object QMODALIDADE: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'SELECT AM.*, M.DESCRICAOMODALIDADE, M.valor FROM ALUNOMODALIDADE' +
        ' AM '
      
        'LEFT OUTER JOIN MODALIDADE M ON M.IDMODALIDADE = AM.IDMODALIDADE' +
        ' '
      'WHERE AM.IDALUNO =:IDA')
    Left = 680
    Top = 281
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMODALIDADEidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMODALIDADEidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Origin = 'idmodalidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMODALIDADEdataInscrição: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataInscri'#231#227'o'
      Origin = '`dataInscri'#231#227'o`'
    end
    object QMODALIDADEdiavencimento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'diavencimento'
      Origin = 'diavencimento'
    end
    object QMODALIDADEDESCRICAOMODALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOMODALIDADE'
      Origin = 'descricaoModalidade'
      ProviderFlags = []
      Size = 50
    end
    object QMODALIDADEvalor: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
    end
  end
  object pPagamento: TDataSetProvider
    DataSet = qPagamento
    Left = 696
    Top = 223
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPagamento'
    AfterInsert = cdsPagamentoAfterInsert
    AfterPost = cdsPagamentoAfterPost
    AfterCancel = cdsPagamentoAfterCancel
    AfterDelete = cdsPagamentoAfterDelete
    Left = 728
    Top = 223
    object cdsPagamentoidPagamento: TIntegerField
      FieldName = 'idPagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPagamentoidAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object cdsPagamentoidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Required = True
    end
    object cdsPagamentovalorModalidade: TSingleField
      FieldName = 'valorModalidade'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object cdsPagamentovalorCobrado: TSingleField
      FieldName = 'valorCobrado'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object cdsPagamentodataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
    object cdsPagamentodataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
    object cdsPagamentoidstatusPagamento: TIntegerField
      FieldName = 'idstatusPagamento'
    end
    object cdsPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Required = True
      Size = 50
    end
    object cdsPagamentodescricaoStatusPagamento: TStringField
      FieldName = 'descricaoStatusPagamento'
      Size = 50
    end
    object cdsPagamentodescricaoModalidade: TStringField
      FieldName = 'descricaoModalidade'
      Size = 50
    end
  end
  object DSPagamento: TDataSource
    DataSet = cdsPagamento
    OnDataChange = DSPagamentoDataChange
    Left = 760
    Top = 223
  end
  object qPagamento: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select P.*, m.descricaoModalidade, st.descricaoStatusPagamento f' +
        'rom pagamento P'
      'left outer join modalidade m on m.idModalidade = p.idModalidade'
      
        'left outer join statusPagamento st on st.idStatusPagamento = p.i' +
        'dstatusPagamento '
      'where p.idAluno =:idA order by(p.dataVencimento)')
    Left = 664
    Top = 223
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qPagamentoidPagamento: TIntegerField
      FieldName = 'idPagamento'
      Origin = 'idPagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPagamentoidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object qPagamentoidmodalidade: TIntegerField
      FieldName = 'idmodalidade'
      Origin = 'idmodalidade'
      Required = True
    end
    object qPagamentovalorModalidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorModalidade'
      Origin = 'valorModalidade'
    end
    object qPagamentovalorCobrado: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorCobrado'
      Origin = 'valorCobrado'
    end
    object qPagamentodataVencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataVencimento'
      Origin = 'dataVencimento'
    end
    object qPagamentodataPagamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataPagamento'
      Origin = 'dataPagamento'
    end
    object qPagamentoidstatusPagamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idstatusPagamento'
      Origin = 'idstatusPagamento'
    end
    object qPagamentoLOGUsuarioResponsavel: TStringField
      FieldName = 'LOGUsuarioResponsavel'
      Origin = 'LOGUsuarioResponsavel'
      Required = True
      Size = 50
    end
    object qPagamentodescricaoStatusPagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoStatusPagamento'
      Origin = 'descricaoStatusPagamento'
      ProviderFlags = []
      Size = 50
    end
    object qPagamentodescricaoModalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricaoModalidade'
      Origin = 'descricaoModalidade'
      ProviderFlags = []
      Size = 50
    end
  end
  object FDRelAluno: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT a.*, OBJ.DESCRICAOOBJETIVO FROM ALUNO A'
      'LEFT OUTER JOIN OBJETIVO OBJ ON OBJ.IDOBJETIVO = A.IDOBJETIVO '
      'where a.idAluno =:idA')
    Left = 528
    Top = 632
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDRelAlunoidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDRelAlunonomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      Required = True
      Size = 80
    end
    object FDRelAlunoidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
    end
    object FDRelAlunodataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object FDRelAlunoemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDRelAlunosexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object FDRelAlunocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object FDRelAlunobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object FDRelAlunorua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      Size = 50
    end
    object FDRelAlunonumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object FDRelAlunocep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
    end
    object FDRelAlunotel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 50
    end
    object FDRelAlunotel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 50
    end
    object FDRelAlunonomeResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      Size = 80
    end
    object FDRelAlunoparentescoResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      Size = 50
    end
    object FDRelAlunotelResponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      Size = 50
    end
    object FDRelAlunopeso: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
    end
    object FDRelAlunoaltura: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'altura'
      Origin = 'altura'
    end
    object FDRelAlunofrequenciaAtividadeFisica: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frequenciaAtividadeFisica'
      Origin = 'frequenciaAtividadeFisica'
    end
    object FDRelAlunoqtdRefeicoesDia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object FDRelAlunoqtdHorasSono: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object FDRelAlunosuplementacao: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object FDRelAlunodieta: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object FDRelAlunofumante: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'fumante'
      Origin = 'fumante'
    end
    object FDRelAlunoconsomeBebidaAlcoolica: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'consomeBebidaAlcoolica'
      Origin = 'consomeBebidaAlcoolica'
    end
    object FDRelAlunodataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
    object FDRelAlunoativo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object FDRelAlunocpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 50
    end
    object FDRelAlunofoto: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
    end
    object FDRelAlunoinformacaoAdicional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 200
    end
    object FDRelAlunoidObjetivo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
    end
    object FDRelAlunodataComposicaoFicha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataComposicaoFicha'
      Origin = 'dataComposicaoFicha'
    end
    object FDRelAlunoDESCRICAOOBJETIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
  end
  object pRelAlunoFicha: TDataSetProvider
    DataSet = FDRelAluno
    Left = 552
    Top = 632
  end
  object cdsRelAlunoFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pRelAlunoFicha'
    BeforeInsert = ClientDataSet1BeforeInsert
    AfterInsert = ClientDataSet1AfterInsert
    AfterPost = ClientDataSet1AfterPost
    AfterCancel = ClientDataSet1AfterCancel
    AfterDelete = ClientDataSet1AfterDelete
    OnCalcFields = ClientDataSet1CalcFields
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 576
    Top = 632
    object cdsRelAlunoFichaidAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRelAlunoFichanomeAluno: TStringField
      FieldName = 'nomeAluno'
      Origin = 'nomeAluno'
      Required = True
      Size = 80
    end
    object cdsRelAlunoFichaidade: TIntegerField
      FieldName = 'idade'
      Origin = 'idade'
    end
    object cdsRelAlunoFichadataNascimento: TDateField
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object cdsRelAlunoFichaemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object cdsRelAlunoFichasexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object cdsRelAlunoFichacidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object cdsRelAlunoFichabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object cdsRelAlunoFicharua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      Size = 50
    end
    object cdsRelAlunoFichanumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object cdsRelAlunoFichacep: TIntegerField
      FieldName = 'cep'
      Origin = 'cep'
    end
    object cdsRelAlunoFichatel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 50
    end
    object cdsRelAlunoFichatel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 50
    end
    object cdsRelAlunoFichanomeResponsavel: TStringField
      FieldName = 'nomeResponsavel'
      Origin = 'nomeResponsavel'
      Size = 80
    end
    object cdsRelAlunoFichaparentescoResponsavel: TStringField
      FieldName = 'parentescoResponsavel'
      Origin = 'parentescoResponsavel'
      Size = 50
    end
    object cdsRelAlunoFichatelResponsavel: TStringField
      FieldName = 'telResponsavel'
      Origin = 'telResponsavel'
      Size = 50
    end
    object cdsRelAlunoFichapeso: TSingleField
      FieldName = 'peso'
      Origin = 'peso'
    end
    object cdsRelAlunoFichaaltura: TSingleField
      FieldName = 'altura'
      Origin = 'altura'
    end
    object cdsRelAlunoFichafrequenciaAtividadeFisica: TIntegerField
      FieldName = 'frequenciaAtividadeFisica'
      Origin = 'frequenciaAtividadeFisica'
    end
    object cdsRelAlunoFichaqtdRefeicoesDia: TIntegerField
      FieldName = 'qtdRefeicoesDia'
      Origin = 'qtdRefeicoesDia'
    end
    object cdsRelAlunoFichaqtdHorasSono: TIntegerField
      FieldName = 'qtdHorasSono'
      Origin = 'qtdHorasSono'
    end
    object cdsRelAlunoFichasuplementacao: TBooleanField
      FieldName = 'suplementacao'
      Origin = 'suplementacao'
    end
    object cdsRelAlunoFichadieta: TBooleanField
      FieldName = 'dieta'
      Origin = 'dieta'
    end
    object cdsRelAlunoFichafumante: TBooleanField
      FieldName = 'fumante'
      Origin = 'fumante'
    end
    object cdsRelAlunoFichaconsomeBebidaAlcoolica: TBooleanField
      FieldName = 'consomeBebidaAlcoolica'
      Origin = 'consomeBebidaAlcoolica'
    end
    object cdsRelAlunoFichadataCadastro: TDateField
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
    object cdsRelAlunoFichaativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object cdsRelAlunoFichacpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 50
    end
    object cdsRelAlunoFichafoto: TBlobField
      FieldName = 'foto'
      Origin = 'foto'
    end
    object cdsRelAlunoFichainformacaoAdicional: TStringField
      FieldName = 'informacaoAdicional'
      Origin = 'informacaoAdicional'
      Size = 200
    end
    object cdsRelAlunoFichaidObjetivo: TIntegerField
      FieldName = 'idObjetivo'
      Origin = 'idObjetivo'
    end
    object cdsRelAlunoFichadataComposicaoFicha: TDateField
      FieldName = 'dataComposicaoFicha'
      Origin = 'dataComposicaoFicha'
    end
    object cdsRelAlunoFichaDESCRICAOOBJETIVO: TStringField
      FieldName = 'DESCRICAOOBJETIVO'
      Origin = 'descricaoObjetivo'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsRelAlunoFicha: TDataSource
    DataSet = cdsRelAlunoFicha
    OnStateChange = DSStateChange
    OnDataChange = DSDataChange
    Left = 600
    Top = 632
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42775.576585451390000000
    ReportOptions.LastChange = 42775.576585451390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 676
    Top = 640
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 708
    Top = 643
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 766
    Top = 642
  end
end
