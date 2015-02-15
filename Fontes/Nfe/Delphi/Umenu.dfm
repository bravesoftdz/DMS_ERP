object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 405
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 386
    Width = 824
    Height = 19
    Panels = <>
    ExplicitTop = 664
    ExplicitWidth = 1176
  end
  object Timer1: TTimer
    Left = 184
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 160
    object Abir1: TMenuItem
      Caption = 'Abir'
      OnClick = Abir1Click
    end
    object minimizar1: TMenuItem
      Caption = 'Minimizar'
      OnClick = minimizar1Click
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
    Left = 80
    Top = 216
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 128
    Top = 216
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 424
    Top = 232
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 480
    Top = 240
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
    Left = 288
    Top = 208
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 64
    object Empresa1: TMenuItem
      Caption = 'Empresa'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
    end
    object NotasFiscais1: TMenuItem
      Caption = 'Notas Fiscais'
      object Consulta1: TMenuItem
        Caption = 'Consulta'
      end
      object ConsultaStatusSEFAZ1: TMenuItem
        Caption = 'Consulta Status SEFAZ'
      end
    end
  end
end
