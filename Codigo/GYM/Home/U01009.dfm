object F01009: TF01009
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'F01009'
  ClientHeight = 115
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelStatus: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '  AVISO'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object PanelCAPTION: TPanel
    Left = 0
    Top = 26
    Width = 390
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ROTINA DE BACKUP EXECUTANDO. AGUARDE!'
    TabOrder = 1
  end
  object PanelCOMPLEMENTO: TPanel
    Left = 0
    Top = 73
    Width = 390
    Height = 42
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 160
      Top = 6
      Width = 65
      Height = 24
      Caption = 'OK'
      Visible = False
      OnClick = SpeedButton1Click
    end
  end
end
