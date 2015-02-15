object FrmMonitor: TFrmMonitor
  Left = 0
  Top = 0
  Caption = 'Monitor'
  ClientHeight = 104
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 407
    Height = 99
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -527
    ExplicitTop = 208
    ExplicitWidth = 1170
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 185
      Height = 91
      Align = alLeft
      Caption = 'Monitorando diret'#243'rios'
      TabOrder = 0
      object lbGeradas: TLabel
        Left = 16
        Top = 24
        Width = 150
        Height = 13
        AutoSize = False
        Caption = 'lbGeradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbProcessadas: TLabel
        Left = 16
        Top = 43
        Width = 150
        Height = 13
        AutoSize = False
        Caption = 'lbProcessadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
