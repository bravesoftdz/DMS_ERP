object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 301
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 286
    Width = 593
    Height = 15
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 452
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 176
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 96
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o'
      OnClick = Configurao1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object minimizar1: TMenuItem
      Caption = 'Minimizar'
    end
    object FecharServidor1: TMenuItem
      Caption = 'Fechar Servidor'
      OnClick = FecharServidor1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object estes1: TMenuItem
      Caption = 'Testes'
      object estarProcedureBI1: TMenuItem
        Caption = 'Testar Procedure BI'
      end
      object GeraArquivos1: TMenuItem
        Caption = 'Gera Arquivos'
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Verso11: TMenuItem
      Caption = 'Vers'#227'o 4'
    end
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 208
    Top = 96
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 256
    Top = 96
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 416
    Top = 32
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 472
    Top = 40
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 8
  end
end
