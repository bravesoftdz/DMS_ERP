object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es'
  ClientHeight = 247
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 617
    Height = 241
    Align = alClient
    BevelKind = bkSoft
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 38
      Width = 263
      Height = 68
      Caption = 'Atualiza'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 13
        Caption = '1o Hor'#225'rio:'
      end
      object Label2: TLabel
        Left = 79
        Top = 16
        Width = 54
        Height = 13
        Caption = '2o Hor'#225'rio:'
      end
      object edtH1: TMaskEdit
        Left = 18
        Top = 30
        Width = 52
        Height = 21
        EditMask = '00:00;1;_'
        MaxLength = 5
        TabOrder = 0
        Text = '00:00'
      end
      object edtH2: TMaskEdit
        Left = 77
        Top = 31
        Width = 52
        Height = 21
        EditMask = '00:00;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '00:00'
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 112
      Width = 263
      Height = 116
      Caption = 'FTP'
      TabOrder = 1
      object Label3: TLabel
        Left = 10
        Top = 19
        Width = 44
        Height = 13
        Caption = 'Servidor:'
      end
      object Label4: TLabel
        Left = 10
        Top = 59
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object Label5: TLabel
        Left = 135
        Top = 59
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object Label12: TLabel
        Left = 222
        Top = 21
        Width = 30
        Height = 13
        Caption = 'Porta:'
      end
      object edtFtpServer: TEdit
        Left = 9
        Top = 32
        Width = 205
        Height = 21
        TabOrder = 0
      end
      object edtFtpPort: TEdit
        Left = 220
        Top = 32
        Width = 38
        Height = 21
        TabOrder = 1
      end
      object edtFTPuser: TEdit
        Left = 9
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edtFTPPass: TEdit
        Left = 136
        Top = 73
        Width = 122
        Height = 21
        TabOrder = 3
      end
    end
    object GroupBox4: TGroupBox
      Left = 277
      Top = 38
      Width = 320
      Height = 190
      Caption = 'Email'
      TabOrder = 2
      object Label6: TLabel
        Left = 11
        Top = 18
        Width = 44
        Height = 13
        Caption = 'Servidor:'
      end
      object Label7: TLabel
        Left = 11
        Top = 58
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object Label8: TLabel
        Left = 136
        Top = 58
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object Label9: TLabel
        Left = 266
        Top = 60
        Width = 30
        Height = 13
        Caption = 'Porta:'
      end
      object Label10: TLabel
        Left = 11
        Top = 104
        Width = 101
        Height = 13
        Caption = 'Endere'#231'o de Origem:'
      end
      object Label11: TLabel
        Left = 11
        Top = 144
        Width = 92
        Height = 13
        Caption = 'Usu'#225'rio de Origem:'
      end
      object edtMailServer: TEdit
        Left = 11
        Top = 31
        Width = 294
        Height = 21
        TabOrder = 0
      end
      object edtUserMail: TEdit
        Left = 11
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edtPassMail: TEdit
        Left = 138
        Top = 72
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
      object edtPortMail: TEdit
        Left = 265
        Top = 72
        Width = 42
        Height = 21
        TabOrder = 3
      end
      object edtEnderecoOrigem: TEdit
        Left = 11
        Top = 117
        Width = 294
        Height = 21
        TabOrder = 4
      end
      object edtUsuarioOrigem: TEdit
        Left = 11
        Top = 157
        Width = 294
        Height = 21
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 611
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 60
        Height = 31
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
          8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
          CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
          2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
          D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
          C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
          2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
          D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
          BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
          4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
          908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
          7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
          28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton1Click
        ExplicitLeft = -6
      end
      object SpeedButton2: TSpeedButton
        Left = 60
        Top = 0
        Width = 60
        Height = 31
        Cursor = crHandPoint
        Align = alLeft
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF000000
          9A00012AF200002CF600002CF8000733F6000031FE000431FE000134FF000C3C
          FF00123BF100103BF400143EF400103DFB001743F6001B46F6001C47F6001D48
          F6001342FF001A47F8001847FF00174AFD001A48F9001D4BFF001A4CFF001D50
          FF00224DF100224CF400204BF800214CF800214EFC002550F4002D59F4002655
          FA002355FF002659FF002E5BF9002C5FFF00325DF1003B66F3003664FA00386B
          FF004071FA004274FF00497AFC00000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000010100
          00000000000101000000000001150B010000000001040601000000000113180B
          010000010306030100000000000110180B010104060301000000000000000111
          190D060603010000000000000000000118120D05010000000000000000000001
          1D181312010000000000000000000124241D1D19110100000000000000012829
          2401011F191F010000000000012A2A26010000011F231D0100000000012C2701
          00000000011F1901000000000001010000000000000101000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = SpeedButton2Click
        ExplicitLeft = 0
      end
    end
  end
end
