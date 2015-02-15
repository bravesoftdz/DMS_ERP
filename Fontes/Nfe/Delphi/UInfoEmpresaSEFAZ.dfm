object FrmInfoEmpresaSEFAZ: TFrmInfoEmpresaSEFAZ
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dados da empresa na SEFAZ'
  ClientHeight = 331
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 674
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 664
    ExplicitHeight = 315
    object Label1: TLabel
      Left = 55
      Top = 8
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label2: TLabel
      Left = 53
      Top = 45
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 67
      Top = 26
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label4: TLabel
      Left = 45
      Top = 64
      Width = 39
      Height = 13
      Caption = 'Regime:'
    end
    object Label5: TLabel
      Left = 53
      Top = 82
      Width = 31
      Height = 13
      Caption = 'CNAE:'
    end
    object Label6: TLabel
      Left = 3
      Top = 101
      Width = 81
      Height = 13
      Caption = 'In'#237'cio atividades:'
    end
    object Label7: TLabel
      Left = 35
      Top = 120
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label8: TLabel
      Left = 43
      Top = 139
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label9: TLabel
      Left = 52
      Top = 157
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label10: TLabel
      Left = 30
      Top = 176
      Width = 54
      Height = 13
      Caption = 'C'#243'd. Mun.:'
    end
    object Label11: TLabel
      Left = 37
      Top = 195
      Width = 47
      Height = 13
      Caption = 'Municipio:'
    end
    object Label12: TLabel
      Left = 61
      Top = 214
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object lbCNPJ: TLabel
      Left = 88
      Top = 8
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNome: TLabel
      Left = 88
      Top = 45
      Width = 35
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUF: TLabel
      Left = 88
      Top = 26
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbRegime: TLabel
      Left = 88
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Regime:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCNAE: TLabel
      Left = 88
      Top = 82
      Width = 31
      Height = 13
      Caption = 'CNAE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbIni: TLabel
      Left = 88
      Top = 101
      Width = 96
      Height = 13
      Caption = 'In'#237'cio atividades:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEnder: TLabel
      Left = 88
      Top = 120
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbnum: TLabel
      Left = 88
      Top = 139
      Width = 47
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbBairro: TLabel
      Left = 88
      Top = 157
      Width = 37
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodMun: TLabel
      Left = 88
      Top = 176
      Width = 57
      Height = 13
      Caption = 'C'#243'd. Mun.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMun: TLabel
      Left = 88
      Top = 195
      Width = 56
      Height = 13
      Caption = 'Municipio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCEP: TLabel
      Left = 88
      Top = 214
      Width = 23
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 256
      Width = 674
      Height = 69
      Cursor = crHandPoint
      Align = alBottom
      Caption = 'Fechar'
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000131
        0200013402000142030001450300014A0400014C0400034F0900044F09000251
        040003570600026906000365090006620F00036B0A0006680D0003790800027E
        090006780E00066B110008741200038C0A0003960A00029D0A00039E0C00049F
        0D000A991F0003A00B0003A00C0005A10E0003A60C0006A7160008A0120007A5
        18000AA318000AAB1F0009AF1C0010A61B0013A91E000D822300138C2A001399
        23001B9D3D000BA420000DAB28000EA92D0016AB2E001BAF2A000FB02D0011A3
        30001DA4350010AC300011AA340017AF390021A3360034B73E0017A3410016AF
        480017B641001FB2480018B54A001AB14C001CB24E001EB751002BA6490026B4
        410020B54F0023BC4F002DB84E003FBC490021B1510020B4520022B554002AB9
        5C002CBA5D002FBC5D0038B4540038BB520030BB600036BD670038BD67003EBD
        690042B8630046BC66004BBF67004CBD690044C6740049C7790056C5730050C7
        7A0054C57A0057CA810066CF8C006ACC880068D08E0070D0800078D99F0081D8
        990095DC9A0083DDA70089DAA70092DEB00090E0B10097E0B20098E0B10099E1
        B500A6E2AB00AFE5B400B1E6BC00A7E7C400AAE7C500BCEAC200BDEED400C4ED
        CE00C2EDD300C5F0D800D0F0D800D1F2DD00DAF3DD00D0F4E300DDF4E300E5F7
        ED00E9F8EE00EEFAEF00FFFFFF00000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000001
        0309090301000000000000000003031017171C171009060000000000070C1C1C
        1C171C1C1C1C0B010000000713232F20171717171C1C1E0B06000007332C5F22
        1717171C171C1C1C060009273A2C6F26171C17171717171C100309383C337B45
        1C171C371C171C1C170313463F467B744435336C621D171C170614514946677C
        796561767C6A251C1709105A563C4E727C7C7C7C7C7C6C211703105563463F49
        64747C7C7C784D21150600366E5E393C46495B7C71412B231300003658735C46
        3C464E693C33301A13000000295D77695A50494E4E43310C0000000000545567
        706D6960572A2A0000000000000000324C535340280000000000}
      OnClick = SpeedButton1Click
      ExplicitTop = 264
      ExplicitWidth = 512
    end
  end
end
