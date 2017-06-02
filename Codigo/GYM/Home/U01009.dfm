object F01009: TF01009
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'F01009'
  ClientHeight = 105
  ClientWidth = 274
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 274
    Height = 105
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 89
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object PanelCOMPLEMENTO: TPanel
      Left = 0
      Top = 26
      Width = 274
      Height = 79
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object btnIniciarOk: TSpeedButton
        Left = 12
        Top = 46
        Width = 121
        Height = 26
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = 'INICIAR'
        OnClick = btnIniciarOkClick
        ExplicitTop = 72
      end
      object PanelCAPTION: TPanel
        Left = 0
        Top = 0
        Width = 274
        Height = 47
        Align = alTop
        BevelOuter = bvNone
        Caption = 'INICIAR BACKUP'
        TabOrder = 0
      end
      object btnCancelar: TButton
        Left = 139
        Top = 46
        Width = 121
        Height = 26
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = 'CANCELAR'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
    object PanelStatus: TPanel
      Left = 0
      Top = 0
      Width = 274
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
      TabOrder = 1
    end
  end
end
