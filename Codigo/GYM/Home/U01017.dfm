inherited F01017: TF01017
  BorderStyle = bsNone
  Caption = 'F01017'
  ClientHeight = 680
  ClientWidth = 884
  Position = poOwnerFormCenter
  ExplicitLeft = -97
  ExplicitTop = -186
  ExplicitWidth = 884
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 884
    Height = 645
    ActivePage = TbDados
    ExplicitWidth = 924
    ExplicitHeight = 645
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 916
      ExplicitHeight = 617
      inherited grDados: TGroupBox
        Width = 876
        Height = 617
        ExplicitLeft = 2
        ExplicitWidth = 916
        ExplicitHeight = 617
        object Label1: TLabel
          Left = 12
          Top = 14
          Width = 22
          Height = 13
          Caption = 'COD'
        end
        object Label2: TLabel
          Left = 12
          Top = 55
          Width = 34
          Height = 13
          Caption = 'ALUNO'
        end
        object DBEdit1: TDBEdit
          Left = 12
          Top = 30
          Width = 81
          Height = 21
          TabStop = False
          DataField = 'idAvaliacaoFisica'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 12
          Top = 71
          Width = 41
          Height = 21
          TabStop = False
          DataField = 'idAluno'
          DataSource = DS
          ReadOnly = True
          TabOrder = 1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 52
          Top = 71
          TabStop = False
          DataBinding.DataField = 'NOMEALUNO'
          DataBinding.DataSource = DS
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 464
        end
        object GroupBox1: TGroupBox
          Left = 12
          Top = 102
          Width = 504
          Height = 281
          Caption = ' MEDIDAS '
          TabOrder = 3
          object Label3: TLabel
            Left = 14
            Top = 21
            Width = 52
            Height = 11
            Caption = 'PESO (kg)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 177
            Top = 21
            Width = 65
            Height = 11
            Caption = 'ALTURA (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 14
            Top = 62
            Width = 80
            Height = 11
            Caption = 'CERVICAL (cm)'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 14
            Top = 103
            Width = 64
            Height = 11
            Caption = 'TORAX (cm)'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 14
            Top = 185
            Width = 75
            Height = 11
            Caption = 'QUADRIL (cm)'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 14
            Top = 226
            Width = 75
            Height = 11
            Caption = 'CINTURA (cm)'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 14
            Top = 144
            Width = 79
            Height = 11
            Caption = 'ABD'#212'MEN (cm)'
            FocusControl = DBEdit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 177
            Top = 62
            Width = 153
            Height = 11
            Caption = 'BRA'#199'O DIR CONTRA'#205'DO (cm)'
            FocusControl = DBEdit10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 177
            Top = 103
            Width = 146
            Height = 11
            Caption = 'BRA'#199'O DIR RELAXADO (cm)'
            FocusControl = DBEdit11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 177
            Top = 144
            Width = 113
            Height = 11
            Caption = 'ANTIBRA'#199'O DIR (cm)'
            FocusControl = DBEdit12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 177
            Top = 185
            Width = 79
            Height = 11
            Caption = 'COXA DIR (cm)'
            FocusControl = DBEdit13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 177
            Top = 226
            Width = 126
            Height = 11
            Caption = 'PANTURRILHA DIR (cm)'
            FocusControl = DBEdit14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 340
            Top = 62
            Width = 154
            Height = 11
            Caption = 'BRA'#199'O ESQ CONTRA'#205'DO (cm)'
            FocusControl = DBEdit15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 340
            Top = 103
            Width = 147
            Height = 11
            Caption = 'BRA'#199'O ESQ RELAXADO (cm)'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 340
            Top = 144
            Width = 114
            Height = 11
            Caption = 'ANTIBRA'#199'O ESQ (cm)'
            FocusControl = DBEdit17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 340
            Top = 185
            Width = 80
            Height = 11
            Caption = 'COXA ESQ (cm)'
            FocusControl = DBEdit18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 340
            Top = 226
            Width = 127
            Height = 11
            Caption = 'PANTURRILHA ESQ (cm)'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 340
            Top = 21
            Width = 21
            Height = 11
            Caption = 'IMC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 14
            Top = 78
            Width = 150
            Height = 21
            DataField = 'med_cervical_cm'
            DataSource = DS
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 14
            Top = 119
            Width = 150
            Height = 21
            DataField = 'med_torax_cm'
            DataSource = DS
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 201
            Width = 150
            Height = 21
            DataField = 'med_quadril_cm'
            DataSource = DS
            TabOrder = 11
          end
          object DBEdit8: TDBEdit
            Left = 14
            Top = 242
            Width = 150
            Height = 21
            DataField = 'med_cintura_cm'
            DataSource = DS
            TabOrder = 14
          end
          object DBEdit9: TDBEdit
            Left = 14
            Top = 160
            Width = 150
            Height = 21
            DataField = 'med_abdomen_cm'
            DataSource = DS
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 177
            Top = 78
            Width = 150
            Height = 21
            DataField = 'med_bracoDireitoContraido_cm'
            DataSource = DS
            TabOrder = 3
          end
          object DBEdit11: TDBEdit
            Left = 177
            Top = 119
            Width = 150
            Height = 21
            DataField = 'med_bracoDireitoRelaxado_cm'
            DataSource = DS
            TabOrder = 6
          end
          object DBEdit12: TDBEdit
            Left = 177
            Top = 160
            Width = 150
            Height = 21
            DataField = 'med_antibracoDireito_cm'
            DataSource = DS
            TabOrder = 9
          end
          object DBEdit13: TDBEdit
            Left = 177
            Top = 201
            Width = 150
            Height = 21
            DataField = 'med_coxaDireita_cm'
            DataSource = DS
            TabOrder = 12
          end
          object DBEdit14: TDBEdit
            Left = 177
            Top = 242
            Width = 150
            Height = 21
            DataField = 'med_panturrilhaDireita_cm'
            DataSource = DS
            TabOrder = 15
          end
          object DBEdit15: TDBEdit
            Left = 340
            Top = 78
            Width = 150
            Height = 21
            DataField = 'med_bracoEsquerdoContraido_cm'
            DataSource = DS
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 340
            Top = 119
            Width = 150
            Height = 21
            DataField = 'med_bracoEsquerdoRelaxado_cm'
            DataSource = DS
            TabOrder = 7
          end
          object DBEdit17: TDBEdit
            Left = 340
            Top = 160
            Width = 150
            Height = 21
            DataField = 'med_antibracoEsquerdo_cm'
            DataSource = DS
            TabOrder = 10
          end
          object DBEdit18: TDBEdit
            Left = 340
            Top = 201
            Width = 150
            Height = 21
            DataField = 'med_coxaEsquerda_cm'
            DataSource = DS
            TabOrder = 13
          end
          object DBEdit19: TDBEdit
            Left = 340
            Top = 242
            Width = 150
            Height = 21
            DataField = 'med_panturrilhaEsquerda_cm'
            DataSource = DS
            TabOrder = 16
          end
          object cxDBMaskEdit6: TcxDBMaskEdit
            Left = 340
            Top = 37
            TabStop = False
            DataBinding.DataField = 'IMC'
            DataBinding.DataSource = DS
            Properties.EditMask = '99,99;1'
            Properties.ReadOnly = True
            TabOrder = 17
            Width = 150
          end
          object cxDBSpinEdit8: TcxDBSpinEdit
            Left = 177
            Top = 37
            DataBinding.DataField = 'med_altura_cm'
            DataBinding.DataSource = DS
            Properties.DisplayFormat = '0.00'
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 3.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 150
          end
          object cxDBSpinEdit9: TcxDBSpinEdit
            Left = 14
            Top = 37
            DataBinding.DataField = 'med_peso_cm'
            DataBinding.DataSource = DS
            Properties.AssignedValues.MaxValue = True
            Properties.DisplayFormat = '#.##'
            Properties.EditFormat = '#.##'
            Properties.MinValue = 1.000000000000000000
            Properties.Nullstring = '0'
            Properties.ValueType = vtFloat
            TabOrder = 0
            Width = 150
          end
        end
        object GroupBox2: TGroupBox
          Left = 525
          Top = 102
          Width = 339
          Height = 281
          Caption = 'DOBRAS'
          TabOrder = 4
          object Label21: TLabel
            Left = 13
            Top = 62
            Width = 90
            Height = 11
            Caption = 'TRICIPTAL (mm)'
            FocusControl = DBEdit21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 13
            Top = 21
            Width = 113
            Height = 11
            Caption = 'SUBESCAPULAR (mm)'
            FocusControl = DBEdit22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 13
            Top = 103
            Width = 115
            Height = 11
            Caption = 'AXILIAR M'#201'DIA (mm)'
            FocusControl = DBEdit23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 13
            Top = 144
            Width = 96
            Height = 11
            Caption = 'ABDOMINAL (mm)'
            FocusControl = DBEdit24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 13
            Top = 185
            Width = 61
            Height = 11
            Caption = 'COXA (mm)'
            FocusControl = DBEdit25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 13
            Top = 226
            Width = 108
            Height = 11
            Caption = 'PANTURRILHA (mm)'
            FocusControl = DBEdit26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 176
            Top = 62
            Width = 83
            Height = 11
            Caption = 'BICIPTAL (mm)'
            FocusControl = DBEdit27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 176
            Top = 21
            Width = 85
            Height = 11
            Caption = 'PEITORAL (mm)'
            FocusControl = DBEdit28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 176
            Top = 102
            Width = 100
            Height = 11
            Caption = 'SUPRA ILIAC (mm)'
            FocusControl = DBEdit29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit21: TDBEdit
            Left = 13
            Top = 78
            Width = 150
            Height = 21
            DataField = 'dobra_triciptal_mm'
            DataSource = DS
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 13
            Top = 37
            Width = 150
            Height = 21
            DataField = 'dobra_subescapular_mm'
            DataSource = DS
            TabOrder = 0
          end
          object DBEdit23: TDBEdit
            Left = 13
            Top = 119
            Width = 150
            Height = 21
            DataField = 'dobra_axiliar_mm'
            DataSource = DS
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 13
            Top = 160
            Width = 150
            Height = 21
            DataField = 'dobra_abdominal_mm'
            DataSource = DS
            TabOrder = 3
          end
          object DBEdit25: TDBEdit
            Left = 13
            Top = 201
            Width = 150
            Height = 21
            DataField = 'dobra_coxa_mm'
            DataSource = DS
            TabOrder = 4
          end
          object DBEdit26: TDBEdit
            Left = 13
            Top = 242
            Width = 150
            Height = 21
            DataField = 'dobra_panturrilha_mm'
            DataSource = DS
            TabOrder = 5
          end
          object DBEdit27: TDBEdit
            Left = 176
            Top = 78
            Width = 150
            Height = 21
            DataField = 'dobra_biciptal_mm'
            DataSource = DS
            TabOrder = 7
          end
          object DBEdit28: TDBEdit
            Left = 176
            Top = 37
            Width = 150
            Height = 21
            DataField = 'dobra_peitoral_mm'
            DataSource = DS
            TabOrder = 6
          end
          object DBEdit29: TDBEdit
            Left = 176
            Top = 119
            Width = 150
            Height = 21
            DataField = 'dobra_suprailiac_mm'
            DataSource = DS
            TabOrder = 8
          end
        end
        object GroupBox3: TGroupBox
          Left = 12
          Top = 386
          Width = 504
          Height = 197
          Caption = ' FLEXIBILIDADE (EM GRAUS)'
          TabOrder = 5
          object Label30: TLabel
            Left = 14
            Top = 21
            Width = 204
            Height = 11
            Caption = 'COLUNA CERVICAL (FLEX'#195'O LATERAL)'
            FocusControl = cxDBSpinEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 14
            Top = 62
            Width = 98
            Height = 11
            Caption = 'TRONCO (FLEX'#195'O)'
            FocusControl = cxDBSpinEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 14
            Top = 103
            Width = 126
            Height = 11
            Caption = 'OMBRO DIR (ABDU'#199#195'O)'
            FocusControl = cxDBSpinEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 14
            Top = 144
            Width = 127
            Height = 11
            Caption = 'OMBRO ESQ (ABDU'#199#195'O)'
            FocusControl = cxDBSpinEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 258
            Top = 21
            Width = 124
            Height = 11
            Caption = 'QUADRIL DIR (FLEX'#195'O)'
            FocusControl = cxDBSpinEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 258
            Top = 62
            Width = 125
            Height = 11
            Caption = 'QUADRIL ESQ (FLEX'#195'O)'
            FocusControl = cxDBSpinEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 258
            Top = 103
            Width = 113
            Height = 11
            Caption = 'QUADRIL (ABDU'#199#195'O)'
            FocusControl = cxDBSpinEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 14
            Top = 37
            DataBinding.DataField = 'flex_colunaCervicalFlexaoLateral_grau'
            DataBinding.DataSource = DS
            TabOrder = 0
            Width = 232
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 14
            Top = 78
            DataBinding.DataField = 'flex_troncoFlexao_grau'
            DataBinding.DataSource = DS
            TabOrder = 2
            Width = 232
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 14
            Top = 119
            DataBinding.DataField = 'flex_ombroDireitoAbducao_grau'
            DataBinding.DataSource = DS
            TabOrder = 4
            Width = 232
          end
          object cxDBSpinEdit4: TcxDBSpinEdit
            Left = 14
            Top = 160
            DataBinding.DataField = 'flex_ombroEsquerdoAbducao_grau'
            DataBinding.DataSource = DS
            TabOrder = 6
            Width = 232
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 258
            Top = 37
            DataBinding.DataField = 'flex_quadrilDireitoFlexao_grau'
            DataBinding.DataSource = DS
            TabOrder = 1
            Width = 232
          end
          object cxDBSpinEdit6: TcxDBSpinEdit
            Left = 258
            Top = 78
            DataBinding.DataField = 'flex_quadrilEsquerdoFlexao_grau'
            DataBinding.DataSource = DS
            TabOrder = 3
            Width = 232
          end
          object cxDBSpinEdit7: TcxDBSpinEdit
            Left = 258
            Top = 119
            DataBinding.DataField = 'flex_quadrilAbducao_grau'
            DataBinding.DataSource = DS
            TabOrder = 5
            Width = 232
          end
        end
        object GroupBox4: TGroupBox
          Left = 525
          Top = 386
          Width = 339
          Height = 197
          Caption = 'DI'#194'METROS '#211'SSEOS'
          TabOrder = 6
          object Label37: TLabel
            Left = 13
            Top = 62
            Width = 142
            Height = 11
            Caption = 'BIEPIC'#212'NDILIANO - C (cm)'
            FocusControl = DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 13
            Top = 21
            Width = 112
            Height = 11
            Caption = 'BIESTIL'#211'IDE - P (cm)'
            FocusControl = DBEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 13
            Top = 103
            Width = 122
            Height = 11
            Caption = 'BIC'#212'NDILIANO - J (cm)'
            FocusControl = DBEdit20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 13
            Top = 144
            Width = 114
            Height = 11
            Caption = 'BIMALEOLAR - T (cm)'
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 13
            Top = 78
            Width = 150
            Height = 21
            DataField = 'do_BIEPICONDILIANO_cm'
            DataSource = DS
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 13
            Top = 37
            Width = 150
            Height = 21
            DataField = 'do_BIESTILOIDE_cm'
            DataSource = DS
            TabOrder = 0
          end
          object DBEdit20: TDBEdit
            Left = 13
            Top = 119
            Width = 150
            Height = 21
            DataField = 'do_BICONDILIANO_cm'
            DataSource = DS
            TabOrder = 2
          end
          object DBEdit30: TDBEdit
            Left = 13
            Top = 160
            Width = 150
            Height = 21
            DataField = 'do_BIMALEOLAR_cm'
            DataSource = DS
            TabOrder = 3
          end
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 916
      ExplicitHeight = 617
      inherited GBFiltros: TGroupBox
        Width = 876
        ExplicitWidth = 916
        inherited Panel1: TPanel
          Width = 867
          ExplicitWidth = 907
          inherited BtnLimparFiltros: TButton
            Left = 822
            ExplicitLeft = 862
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 876
        Height = 506
      end
      inherited PanelFiltros: TPanel
        Width = 876
        ExplicitWidth = 916
        inherited btnFiltrar: TButton
          Left = 825
          ExplicitLeft = 865
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 884
    ExplicitWidth = 924
    inherited BFechar: TSpeedButton
      Left = 850
      ExplicitLeft = 690
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
    Left = 592
    Top = 0
  end
  inherited ClientDataSet1: TClientDataSet
    OnCalcFields = ClientDataSet1CalcFields
    Left = 568
    Top = 0
    object ClientDataSet1IMC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMC'
    end
    object ClientDataSet1idAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1idAluno: TIntegerField
      FieldName = 'idAluno'
      Required = True
    end
    object ClientDataSet1dataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Required = True
    end
    object ClientDataSet1nomeAvaliador: TStringField
      FieldName = 'nomeAvaliador'
      Size = 60
    end
    object ClientDataSet1med_peso_cm: TSingleField
      FieldName = 'med_peso_cm'
    end
    object ClientDataSet1med_altura_cm: TSingleField
      FieldName = 'med_altura_cm'
    end
    object ClientDataSet1med_cervical_cm: TSingleField
      FieldName = 'med_cervical_cm'
    end
    object ClientDataSet1med_torax_cm: TSingleField
      FieldName = 'med_torax_cm'
    end
    object ClientDataSet1med_quadril_cm: TSingleField
      FieldName = 'med_quadril_cm'
    end
    object ClientDataSet1med_cintura_cm: TSingleField
      FieldName = 'med_cintura_cm'
    end
    object ClientDataSet1med_abdomen_cm: TSingleField
      FieldName = 'med_abdomen_cm'
    end
    object ClientDataSet1med_bracoDireitoContraido_cm: TSingleField
      FieldName = 'med_bracoDireitoContraido_cm'
    end
    object ClientDataSet1med_bracoDireitoRelaxado_cm: TSingleField
      FieldName = 'med_bracoDireitoRelaxado_cm'
    end
    object ClientDataSet1med_antibracoDireito_cm: TSingleField
      FieldName = 'med_antibracoDireito_cm'
    end
    object ClientDataSet1med_coxaDireita_cm: TSingleField
      FieldName = 'med_coxaDireita_cm'
    end
    object ClientDataSet1med_panturrilhaDireita_cm: TSingleField
      FieldName = 'med_panturrilhaDireita_cm'
    end
    object ClientDataSet1med_bracoEsquerdoContraido_cm: TSingleField
      FieldName = 'med_bracoEsquerdoContraido_cm'
    end
    object ClientDataSet1med_bracoEsquerdoRelaxado_cm: TSingleField
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
    end
    object ClientDataSet1med_antibracoEsquerdo_cm: TSingleField
      FieldName = 'med_antibracoEsquerdo_cm'
    end
    object ClientDataSet1med_coxaEsquerda_cm: TSingleField
      FieldName = 'med_coxaEsquerda_cm'
    end
    object ClientDataSet1med_panturrilhaEsquerda_cm: TSingleField
      FieldName = 'med_panturrilhaEsquerda_cm'
    end
    object ClientDataSet1dobra_triciptal_mm: TSingleField
      FieldName = 'dobra_triciptal_mm'
    end
    object ClientDataSet1dobra_subescapular_mm: TSingleField
      FieldName = 'dobra_subescapular_mm'
    end
    object ClientDataSet1dobra_axiliar_mm: TSingleField
      FieldName = 'dobra_axiliar_mm'
    end
    object ClientDataSet1dobra_abdominal_mm: TSingleField
      FieldName = 'dobra_abdominal_mm'
    end
    object ClientDataSet1dobra_coxa_mm: TSingleField
      FieldName = 'dobra_coxa_mm'
    end
    object ClientDataSet1dobra_panturrilha_mm: TSingleField
      FieldName = 'dobra_panturrilha_mm'
    end
    object ClientDataSet1dobra_biciptal_mm: TSingleField
      FieldName = 'dobra_biciptal_mm'
    end
    object ClientDataSet1dobra_peitoral_mm: TSingleField
      FieldName = 'dobra_peitoral_mm'
    end
    object ClientDataSet1dobra_suprailiac_mm: TSingleField
      FieldName = 'dobra_suprailiac_mm'
    end
    object ClientDataSet1flex_colunaCervicalFlexaoLateral_grau: TIntegerField
      FieldName = 'flex_colunaCervicalFlexaoLateral_grau'
    end
    object ClientDataSet1flex_troncoFlexao_grau: TIntegerField
      FieldName = 'flex_troncoFlexao_grau'
    end
    object ClientDataSet1flex_ombroDireitoAbducao_grau: TIntegerField
      FieldName = 'flex_ombroDireitoAbducao_grau'
    end
    object ClientDataSet1flex_ombroEsquerdoAbducao_grau: TIntegerField
      FieldName = 'flex_ombroEsquerdoAbducao_grau'
    end
    object ClientDataSet1flex_quadrilDireitoFlexao_grau: TIntegerField
      FieldName = 'flex_quadrilDireitoFlexao_grau'
    end
    object ClientDataSet1flex_quadrilEsquerdoFlexao_grau: TIntegerField
      FieldName = 'flex_quadrilEsquerdoFlexao_grau'
    end
    object ClientDataSet1flex_quadrilAbducao_grau: TIntegerField
      FieldName = 'flex_quadrilAbducao_grau'
    end
    object ClientDataSet1tipoProtocolo: TStringField
      FieldName = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1do_BIESTILOIDE_cm: TSingleField
      FieldName = 'do_BIESTILOIDE_cm'
    end
    object ClientDataSet1do_BIEPICONDILIANO_cm: TSingleField
      FieldName = 'do_BIEPICONDILIANO_cm'
    end
    object ClientDataSet1do_BICONDILIANO_cm: TSingleField
      FieldName = 'do_BICONDILIANO_cm'
    end
    object ClientDataSet1do_BIMALEOLAR_cm: TSingleField
      FieldName = 'do_BIMALEOLAR_cm'
    end
    object ClientDataSet1NOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 80
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 0
  end
  inherited FDQuery1: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT AVF.*, A.NOMEALUNO FROM AVALIACAOFISICA AVF '
      'LEFT OUTER JOIN ALUNO A ON A.IDALUNO = AVF.IDALUNO '
      'WHERE AVF.IDALUNO =:IDA')
    Left = 520
    Top = 0
    ParamData = <
      item
        Name = 'IDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery1idAvaliacaoFisica: TIntegerField
      FieldName = 'idAvaliacaoFisica'
      Origin = 'idAvaliacaoFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1idAluno: TIntegerField
      FieldName = 'idAluno'
      Origin = 'idAluno'
      Required = True
    end
    object FDQuery1dataAvaliacaoFisica: TDateField
      FieldName = 'dataAvaliacaoFisica'
      Origin = 'dataAvaliacaoFisica'
      Required = True
    end
    object FDQuery1nomeAvaliador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeAvaliador'
      Origin = 'nomeAvaliador'
      Size = 60
    end
    object FDQuery1med_peso_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_peso_cm'
      Origin = 'med_peso_cm'
    end
    object FDQuery1med_altura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_altura_cm'
      Origin = 'med_altura_cm'
    end
    object FDQuery1med_cervical_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cervical_cm'
      Origin = 'med_cervical_cm'
    end
    object FDQuery1med_torax_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_torax_cm'
      Origin = 'med_torax_cm'
    end
    object FDQuery1med_quadril_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_quadril_cm'
      Origin = 'med_quadril_cm'
    end
    object FDQuery1med_cintura_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_cintura_cm'
      Origin = 'med_cintura_cm'
    end
    object FDQuery1med_abdomen_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_abdomen_cm'
      Origin = 'med_abdomen_cm'
    end
    object FDQuery1med_bracoDireitoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoContraido_cm'
      Origin = 'med_bracoDireitoContraido_cm'
    end
    object FDQuery1med_bracoDireitoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoDireitoRelaxado_cm'
      Origin = 'med_bracoDireitoRelaxado_cm'
    end
    object FDQuery1med_antibracoDireito_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoDireito_cm'
      Origin = 'med_antibracoDireito_cm'
    end
    object FDQuery1med_coxaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaDireita_cm'
      Origin = 'med_coxaDireita_cm'
    end
    object FDQuery1med_panturrilhaDireita_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaDireita_cm'
      Origin = 'med_panturrilhaDireita_cm'
    end
    object FDQuery1med_bracoEsquerdoContraido_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoContraido_cm'
      Origin = 'med_bracoEsquerdoContraido_cm'
    end
    object FDQuery1med_bracoEsquerdoRelaxado_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_bracoEsquerdoRelaxado_cm'
      Origin = 'med_bracoEsquerdoRelaxado_cm'
    end
    object FDQuery1med_antibracoEsquerdo_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_antibracoEsquerdo_cm'
      Origin = 'med_antibracoEsquerdo_cm'
    end
    object FDQuery1med_coxaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_coxaEsquerda_cm'
      Origin = 'med_coxaEsquerda_cm'
    end
    object FDQuery1med_panturrilhaEsquerda_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'med_panturrilhaEsquerda_cm'
      Origin = 'med_panturrilhaEsquerda_cm'
    end
    object FDQuery1dobra_triciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_triciptal_mm'
      Origin = 'dobra_triciptal_mm'
    end
    object FDQuery1dobra_subescapular_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_subescapular_mm'
      Origin = 'dobra_subescapular_mm'
    end
    object FDQuery1dobra_axiliar_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_axiliar_mm'
      Origin = 'dobra_axiliar_mm'
    end
    object FDQuery1dobra_abdominal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_abdominal_mm'
      Origin = 'dobra_abdominal_mm'
    end
    object FDQuery1dobra_coxa_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_coxa_mm'
      Origin = 'dobra_coxa_mm'
    end
    object FDQuery1dobra_panturrilha_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_panturrilha_mm'
      Origin = 'dobra_panturrilha_mm'
    end
    object FDQuery1dobra_biciptal_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_biciptal_mm'
      Origin = 'dobra_biciptal_mm'
    end
    object FDQuery1dobra_peitoral_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_peitoral_mm'
      Origin = 'dobra_peitoral_mm'
    end
    object FDQuery1dobra_suprailiac_mm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dobra_suprailiac_mm'
      Origin = 'dobra_suprailiac_mm'
    end
    object FDQuery1flex_colunaCervicalFlexaoLateral_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_colunaCervicalFlexaoLateral_grau'
      Origin = 'flex_colunaCervicalFlexaoLateral_grau'
    end
    object FDQuery1flex_troncoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_troncoFlexao_grau'
      Origin = 'flex_troncoFlexao_grau'
    end
    object FDQuery1flex_ombroDireitoAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_ombroDireitoAbducao_grau'
      Origin = 'flex_ombroDireitoAbducao_grau'
    end
    object FDQuery1flex_ombroEsquerdoAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_ombroEsquerdoAbducao_grau'
      Origin = 'flex_ombroEsquerdoAbducao_grau'
    end
    object FDQuery1flex_quadrilDireitoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilDireitoFlexao_grau'
      Origin = 'flex_quadrilDireitoFlexao_grau'
    end
    object FDQuery1flex_quadrilEsquerdoFlexao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilEsquerdoFlexao_grau'
      Origin = 'flex_quadrilEsquerdoFlexao_grau'
    end
    object FDQuery1flex_quadrilAbducao_grau: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'flex_quadrilAbducao_grau'
      Origin = 'flex_quadrilAbducao_grau'
    end
    object FDQuery1tipoProtocolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipoProtocolo'
      Origin = 'tipoProtocolo'
      FixedChar = True
      Size = 1
    end
    object FDQuery1do_BIESTILOIDE_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIESTILOIDE_cm'
      Origin = 'do_BIESTILOIDE_cm'
    end
    object FDQuery1do_BIEPICONDILIANO_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIEPICONDILIANO_cm'
      Origin = 'do_BIEPICONDILIANO_cm'
    end
    object FDQuery1do_BICONDILIANO_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BICONDILIANO_cm'
      Origin = 'do_BICONDILIANO_cm'
    end
    object FDQuery1do_BIMALEOLAR_cm: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'do_BIMALEOLAR_cm'
      Origin = 'do_BIMALEOLAR_cm'
    end
    object FDQuery1NOMEALUNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEALUNO'
      Origin = 'nomeAluno'
      ProviderFlags = []
      Size = 80
    end
  end
  inherited ImageListBase: TImageList
    Left = 640
    Top = 0
    Bitmap = {
      494C01010F002C000C0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 616
    Top = 1
  end
end
