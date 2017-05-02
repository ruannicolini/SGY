object FPrincipalAdmin: TFPrincipalAdmin
  Left = 0
  Top = 0
  Width = 1031
  Height = 768
  AutoScroll = True
  Caption = 'SOGYM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1015
    Height = 729
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelMenu: TPanel
      Left = 0
      Top = 23
      Width = 230
      Height = 706
      Align = alLeft
      BevelOuter = bvNone
      Color = 13553358
      ParentBackground = False
      TabOrder = 0
      object ScrollBox1: TScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 227
        Height = 700
        Margins.Right = 0
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        DoubleBuffered = False
        Ctl3D = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        TabOrder = 0
        object dxTileControl1: TdxTileControl
          Left = 0
          Top = 0
          Width = 225
          Height = 698
          LookAndFeel.NativeStyle = True
          OptionsView.CenterContentHorz = True
          OptionsView.GroupLayout = glVertical
          OptionsView.GroupMaxRowCount = 11
          OptionsView.IndentHorz = 0
          OptionsView.IndentVert = 0
          OptionsView.ItemHeight = 52
          OptionsView.ItemIndent = 1
          OptionsView.ItemWidth = 110
          TabOrder = 0
          object dxTileControl1Group1: TdxTileControlGroup
            Index = 0
          end
          object dxTileControl1Item1: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 0
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'ALUNO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item1Click
          end
          object dxTileControl1Item4: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 1
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'PAGAMENTO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item4Click
          end
          object dxTileControl1Item2: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 2
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'EQUIPAMENTO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item2Click
          end
          object dxTileControl1Item5: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 4
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'GRUPO EXERC'#205'CIO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item5Click
          end
          object dxTileControl1Item3: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 3
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'EXERC'#205'CIO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item3Click
          end
          object dxTileControl1Item6: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 5
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'PATOLOGIA'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item6Click
          end
          object dxTileControl1Item7: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 6
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'FICHA'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item7Click
          end
          object dxTileControl1Item8: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 7
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'USU'#193'RIO'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item8Click
          end
          object dxTileControl1Item10: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 8
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'MODALIDADE'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item10Click
          end
          object dxTileControl1Item11: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 9
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'BACKUP'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = dxTileControl1Item11Click
          end
          object dxTileControl1Item9: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 10
            Size = tcisLarge
            Style.Gradient = gmForwardDiagonal
            Style.GradientBeginColor = 6316128
            Style.GradientEndColor = clBlack
            Text1.Align = oaMiddleLeft
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -13
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = []
            Text1.Value = 'CONFIGURA'#199#213'ES'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
          end
        end
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1015
      Height = 23
      Align = alTop
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 7
      Caption = 'ADMINISTRADOR    '
      Color = 1973790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13224393
      Font.Height = -11
      Font.Name = '@Malgun Gothic Semilight'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object PanelIndicadores: TPanel
      Left = 230
      Top = 23
      Width = 785
      Height = 706
      Align = alClient
      BevelOuter = bvNone
      Color = 13553358
      ParentBackground = False
      TabOrder = 2
      object PageControlIndicadores: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 779
        Height = 700
        ActivePage = tbsIndAluno
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabPosition = tpRight
        object tbsIndAluno: TTabSheet
          Caption = 'Alunos'
          object ScrollBoxIndAluno: TScrollBox
            Left = 0
            Top = 0
            Width = 751
            Height = 692
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            DoubleBuffered = False
            Ctl3D = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            TabOrder = 0
            object ScrollBoxGrafico3: TScrollBox
              AlignWithMargins = True
              Left = 3
              Top = 214
              Width = 743
              Height = 208
              Margins.Bottom = 0
              HorzScrollBar.Range = 738
              VertScrollBar.Range = 208
              VertScrollBar.Visible = False
              Align = alTop
              AutoScroll = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object Panel4: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 743
                Height = 208
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                Color = clMoneyGreen
                ParentBackground = False
                TabOrder = 0
                object ChartObjetivo: TChart
                  AlignWithMargins = True
                  Left = 275
                  Top = 3
                  Width = 461
                  Height = 198
                  Margins.Left = 0
                  BackImage.Inside = True
                  Title.Font.Color = 2565927
                  Title.Font.Style = [fsBold]
                  Title.Text.Strings = (
                    'OBJETIVO - ALUNOS')
                  View3D = False
                  View3DOptions.Elevation = 315
                  View3DOptions.Orthogonal = False
                  View3DOptions.Perspective = 0
                  View3DOptions.Rotation = 360
                  Align = alRight
                  Color = clBtnHighlight
                  TabOrder = 0
                  DefaultCanvas = 'TGDIPlusCanvas'
                  ColorPaletteIndex = 13
                  object PieSeries2: TPieSeries
                    Marks.Emboss.Color = 8487297
                    Marks.Font.Name = '@Malgun Gothic Semilight'
                    Marks.Frame.Color = -1157627904
                    Marks.Frame.Width = 0
                    Marks.Shadow.Color = 8487297
                    Marks.Visible = False
                    Marks.Callout.Style = psSmallDot
                    Marks.Callout.ArrowHeadSize = 0
                    Marks.Callout.Length = 0
                    XValues.Order = loAscending
                    YValues.Name = 'Pie'
                    YValues.Order = loNone
                    Frame.InnerBrush.BackColor = clRed
                    Frame.InnerBrush.Gradient.EndColor = clGray
                    Frame.InnerBrush.Gradient.MidColor = clWhite
                    Frame.InnerBrush.Gradient.StartColor = 4210752
                    Frame.InnerBrush.Gradient.Visible = True
                    Frame.MiddleBrush.BackColor = clYellow
                    Frame.MiddleBrush.Gradient.EndColor = 8553090
                    Frame.MiddleBrush.Gradient.MidColor = clWhite
                    Frame.MiddleBrush.Gradient.StartColor = clGray
                    Frame.MiddleBrush.Gradient.Visible = True
                    Frame.OuterBrush.BackColor = clGreen
                    Frame.OuterBrush.Gradient.EndColor = 4210752
                    Frame.OuterBrush.Gradient.MidColor = clWhite
                    Frame.OuterBrush.Gradient.StartColor = clSilver
                    Frame.OuterBrush.Gradient.Visible = True
                    Frame.Width = 1
                    Shadow.Visible = False
                    Bevel.UseBorder = False
                    Gradient.EndColor = 6144242
                    Gradient.StartColor = 6144242
                    OtherSlice.Legend.Visible = False
                    PiePen.EndStyle = esFlat
                    PiePen.Fill.Gradient.EndColor = clWhite
                    PiePen.Fill.Gradient.MidColor = clWhite
                    PiePen.Fill.Gradient.Visible = True
                    PiePen.JoinStyle = jsMitter
                  end
                end
                object ChartIdade: TChart
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 269
                  Height = 198
                  Title.Font.Color = 2565927
                  Title.Font.Style = [fsBold]
                  Title.Text.Strings = (
                    'FAIXA ET'#193'RIA - ALUNOS')
                  View3D = False
                  View3DOptions.Elevation = 315
                  View3DOptions.Orthogonal = False
                  View3DOptions.Perspective = 0
                  View3DOptions.Rotation = 360
                  Align = alClient
                  Color = clBtnHighlight
                  TabOrder = 1
                  DefaultCanvas = 'TGDIPlusCanvas'
                  ColorPaletteIndex = 12
                  object BarSeries2: TBarSeries
                    Legend.Visible = False
                    BarBrush.Gradient.EndColor = 15790320
                    BarBrush.Gradient.Visible = True
                    ConePercent = 3
                    Marks.Frame.Visible = False
                    Marks.Style = smsValue
                    ShowInLegend = False
                    Transparency = 10
                    BarStyle = bsRectGradient
                    Dark3D = False
                    Gradient.EndColor = 15790320
                    Gradient.Visible = True
                    Sides = 44
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                  end
                end
              end
            end
            object ScrollBoxGrafico1: TScrollBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 743
              Height = 208
              Margins.Bottom = 0
              HorzScrollBar.Range = 738
              VertScrollBar.Range = 208
              VertScrollBar.Visible = False
              Align = alTop
              AutoScroll = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              object Panel2: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 743
                Height = 208
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                Color = clMoneyGreen
                ParentBackground = False
                TabOrder = 0
                object ChartAlunoModalidade: TChart
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 450
                  Height = 198
                  Title.Font.Color = 2565927
                  Title.Font.Style = [fsBold]
                  Title.Text.Strings = (
                    'ALUNOS - MODALIDADE')
                  View3D = False
                  View3DOptions.Elevation = 315
                  View3DOptions.Orthogonal = False
                  View3DOptions.Perspective = 0
                  View3DOptions.Rotation = 360
                  Align = alLeft
                  Color = clBtnHighlight
                  TabOrder = 0
                  DefaultCanvas = 'TGDIPlusCanvas'
                  ColorPaletteIndex = 12
                  object BarSeries1: TBarSeries
                    Legend.Visible = False
                    BarBrush.Gradient.EndColor = 15790320
                    BarBrush.Gradient.Visible = True
                    ConePercent = 3
                    Marks.Frame.Visible = False
                    Marks.Style = smsValue
                    ShowInLegend = False
                    Transparency = 10
                    BarStyle = bsRectGradient
                    Dark3D = False
                    Gradient.EndColor = 15790320
                    Gradient.Visible = True
                    Sides = 44
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                  end
                end
                object Panel3: TPanel
                  AlignWithMargins = True
                  Left = 456
                  Top = 3
                  Width = 280
                  Height = 198
                  Margins.Left = 0
                  Align = alClient
                  Caption = 'PROFESSORES'
                  TabOrder = 1
                  ExplicitLeft = 410
                  ExplicitWidth = 326
                  object DBGridBeleza1: TDBGridBeleza
                    Left = 1
                    Top = 1
                    Width = 278
                    Height = 196
                    Hint = 'Clique no Titulo da Coluna para Ordenar'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = dsProf
                    FixedColor = 16762447
                    GradientEndColor = 16382457
                    GradientStartColor = clSilver
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBackground
                    TitleFont.Height = -12
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    Cor_2 = 16382457
                    Direcao_Cor2 = dg_Horiz
                    Direcao_Enter = dg_Horiz
                    ClickTituloOrdenar = True
                    MarcarLinhaInteira = True
                    CorLinhaMarcada = 15854564
                    CorFonteLinhaMarcada = clGreen
                    BloquearExportacoes = False
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NOMEUSUARIO'
                        Title.Caption = 'PROFESSOR'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clBackground
                        Title.Font.Height = -11
                        Title.Font.Name = '@Malgun Gothic Semilight'
                        Title.Font.Style = []
                        Width = 150
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'QTDALUNO'
                        Title.Alignment = taCenter
                        Title.Caption = 'TOTAL ALUNOS'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clBackground
                        Title.Font.Height = -11
                        Title.Font.Name = '@Malgun Gothic Semilight'
                        Title.Font.Style = []
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'qtfFichasAtrasadas'
                        Title.Alignment = taCenter
                        Title.Caption = 'FICHAS PENDENTES'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clBackground
                        Title.Font.Height = -11
                        Title.Font.Name = '@Malgun Gothic Semilight'
                        Title.Font.Style = []
                        Width = 109
                        Visible = True
                      end>
                  end
                end
              end
            end
          end
        end
        object tbsIndFat: TTabSheet
          Caption = 'Faturamento'
          ImageIndex = 1
          object ScrollBoxIndFaturamento: TScrollBox
            Left = 0
            Top = 0
            Width = 751
            Height = 692
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            DoubleBuffered = False
            Ctl3D = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            TabOrder = 0
            object ScrollBox5: TScrollBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 743
              Height = 208
              Margins.Bottom = 0
              HorzScrollBar.Range = 738
              VertScrollBar.Range = 208
              VertScrollBar.Visible = False
              Align = alTop
              AutoScroll = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object Panel7: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 743
                Height = 208
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                Color = clMenu
                ParentBackground = False
                TabOrder = 0
                object Panel5: TPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 404
                  Height = 199
                  Margins.Bottom = 2
                  Align = alLeft
                  BevelOuter = bvNone
                  Caption = 'Panel5'
                  Color = clMenu
                  ParentBackground = False
                  TabOrder = 0
                  object PanelCabecarioGrafFatMes: TPanel
                    Left = 0
                    Top = 0
                    Width = 404
                    Height = 27
                    Margins.Bottom = 0
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = ' FATURAMENTO - M'#202'S'
                    Color = clBtnHighlight
                    ParentBackground = False
                    TabOrder = 0
                    ExplicitLeft = -18
                    ExplicitTop = -13
                    object DateTimePicker1: TDateTimePicker
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 68
                      Height = 21
                      Margins.Right = 1
                      Align = alLeft
                      Date = 42856.681952951390000000
                      Format = 'MM/yyyy'
                      Time = 42856.681952951390000000
                      DateMode = dmUpDown
                      TabOrder = 0
                      OnChange = DateTimePicker1Change
                    end
                  end
                  object ChartFaturamentoMes: TChart
                    AlignWithMargins = True
                    Left = 0
                    Top = 27
                    Width = 404
                    Height = 172
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    BackImage.Inside = True
                    Legend.CheckBoxesStyle = cbsRadio
                    MarginLeft = 1
                    MarginRight = 1
                    MarginTop = 1
                    Title.Font.Color = 2565927
                    Title.Font.Style = [fsBold]
                    Title.Text.Strings = (
                      'OBJETIVO - ALUNOS')
                    Title.Visible = False
                    Hover.Visible = False
                    View3D = False
                    View3DOptions.Elevation = 315
                    View3DOptions.Orthogonal = False
                    View3DOptions.Perspective = 0
                    View3DOptions.Rotation = 360
                    Align = alClient
                    Color = clBtnHighlight
                    TabOrder = 1
                    ExplicitLeft = -30
                    ExplicitTop = 30
                    ExplicitHeight = 168
                    DefaultCanvas = 'TGDIPlusCanvas'
                    ColorPaletteIndex = 13
                    object PieSeries1: TPieSeries
                      Marks.Emboss.Color = 8487297
                      Marks.Font.Name = '@Malgun Gothic Semilight'
                      Marks.Frame.Color = -1157627904
                      Marks.Frame.Width = 0
                      Marks.Shadow.Color = 8487297
                      Marks.Visible = False
                      Marks.Callout.Style = psSmallDot
                      Marks.Callout.ArrowHeadSize = 0
                      Marks.Callout.Length = 0
                      XValues.Order = loAscending
                      YValues.Name = 'Pie'
                      YValues.Order = loNone
                      Frame.InnerBrush.BackColor = clRed
                      Frame.InnerBrush.Gradient.EndColor = clGray
                      Frame.InnerBrush.Gradient.MidColor = clWhite
                      Frame.InnerBrush.Gradient.StartColor = 4210752
                      Frame.InnerBrush.Gradient.Visible = True
                      Frame.MiddleBrush.BackColor = clYellow
                      Frame.MiddleBrush.Gradient.EndColor = 8553090
                      Frame.MiddleBrush.Gradient.MidColor = clWhite
                      Frame.MiddleBrush.Gradient.StartColor = clGray
                      Frame.MiddleBrush.Gradient.Visible = True
                      Frame.OuterBrush.BackColor = clGreen
                      Frame.OuterBrush.Gradient.EndColor = 4210752
                      Frame.OuterBrush.Gradient.MidColor = clWhite
                      Frame.OuterBrush.Gradient.StartColor = clSilver
                      Frame.OuterBrush.Gradient.Visible = True
                      Frame.Width = 1
                      Shadow.Visible = False
                      Bevel.Bright = 34
                      Bevel.UseBorder = False
                      Gradient.EndColor = 6144242
                      Gradient.StartColor = 6144242
                      OtherSlice.Legend.Visible = False
                      PiePen.EndStyle = esFlat
                      PiePen.Fill.Gradient.EndColor = clWhite
                      PiePen.Fill.Gradient.MidColor = clWhite
                      PiePen.Fill.Gradient.Visible = True
                      PiePen.JoinStyle = jsMitter
                    end
                  end
                end
              end
            end
            object ScrollBoxGrafico2: TScrollBox
              AlignWithMargins = True
              Left = 3
              Top = 214
              Width = 743
              Height = 260
              Margins.Bottom = 0
              HorzScrollBar.Range = 738
              VertScrollBar.Range = 208
              VertScrollBar.Visible = False
              Align = alTop
              AutoScroll = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              object Panel1: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 743
                Height = 260
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                Caption = 'Panel1'
                Color = clMoneyGreen
                ParentBackground = False
                TabOrder = 0
                object ChartFaturamento: TChart
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 733
                  Height = 250
                  Title.Font.Color = 2565927
                  Title.Font.Style = [fsBold]
                  Title.Text.Strings = (
                    'FATURAMENTO - '#218'LTIMOS 12 MESES')
                  View3D = False
                  View3DOptions.Elevation = 315
                  View3DOptions.Orthogonal = False
                  View3DOptions.Perspective = 0
                  View3DOptions.Rotation = 360
                  View3DWalls = False
                  Align = alClient
                  Color = clBtnHighlight
                  TabOrder = 0
                  ExplicitHeight = 198
                  DefaultCanvas = 'TGDIPlusCanvas'
                  ColorPaletteIndex = 0
                  object FastLineSeries1: TFastLineSeries
                    Legend.Visible = False
                    Marks.Children = <
                      item
                        Shape.ShapeStyle = fosRectangle
                        Shape.Visible = False
                        Shape.Style = smsValue
                      end>
                    Marks.Emboss.Color = 8487297
                    Marks.Font.Color = clSilver
                    Marks.Shadow.Color = 8487297
                    Marks.Visible = True
                    Marks.Style = smsValue
                    Marks.BackColor = clBlack
                    Marks.Callout.Length = 20
                    Marks.Color = clBlack
                    SeriesColor = 4210688
                    ShowInLegend = False
                    LinePen.Color = 1279279104
                    LinePen.Width = 6
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    YValues.Name = 'Y'
                    YValues.Order = loNone
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object qProf: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'SELECT U.IDUSUARIO, U.NOMEUSUARIO, '
      'COUNT(A.idInstrutor) as QTDALUNO FROM USUARIO U '#13#10#10
      'LEFT OUTER JOIN ALUNO A ON A.idInstrutor = U.idusuario '#13#10#10
      'WHERE U.INSTRUTOR = TRUE AND U.ATIVO =TRUE'#10' AND A.IDALUNO IN '
      
        '(SELECT IDALUNO from alunomodalidade WHERE idmodalidade =:idMod)' +
        #13#10#10
      'GROUP BY U.idusuario;')
    Left = 685
    Top = 630
    ParamData = <
      item
        Name = 'IDMOD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qProfIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProfNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Origin = 'nomeUsuario'
      Required = True
      Size = 50
    end
    object qProfQTDALUNO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDALUNO'
      Origin = 'QTDALUNO'
      ProviderFlags = []
    end
  end
  object pProf: TDataSetProvider
    DataSet = qProf
    Left = 717
    Top = 630
  end
  object cdsProf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pProf'
    OnCalcFields = cdsProfCalcFields
    Left = 749
    Top = 630
    object cdsProfIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProfNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 50
    end
    object cdsProfQTDALUNO: TLargeintField
      FieldName = 'QTDALUNO'
    end
    object cdsProfqtfFichasAtrasadas: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'qtfFichasAtrasadas'
    end
  end
  object dsProf: TDataSource
    DataSet = cdsProf
    Left = 781
    Top = 630
  end
end
