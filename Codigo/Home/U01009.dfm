object F01009: TF01009
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'F01009'
  ClientHeight = 229
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelStatus: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '  BACKUP'
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
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 394
    Height = 203
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 6
      Width = 185
      Height = 185
      Caption = 'BACKUP'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 199
      Top = 6
      Width = 185
      Height = 185
      Caption = 'RESTORE'
    end
  end
end
