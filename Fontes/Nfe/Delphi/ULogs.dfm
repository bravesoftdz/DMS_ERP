object FrmLogs: TFrmLogs
  Left = 0
  Top = 0
  Caption = 'Logs'
  ClientHeight = 366
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 33
    Width = 928
    Height = 333
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'LOG_TIPO'
        Title.Caption = '#'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_ID'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_DATE'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_TITULO'
        Title.Caption = 'T'#237'tulo'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_SOLUCAO'
        Title.Caption = 'Solu'#231#227'o'
        Width = 201
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 33
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 643
    object btnImp: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 38
      Height = 27
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsLogs
    Left = 544
    Top = 72
  end
  object dspLogs: TDataSetProvider
    DataSet = ModuloPrincipal.CRUD_logs
    Left = 456
    Top = 72
  end
  object cdsLogs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogs'
    Left = 376
    Top = 72
    object cdsLogsLOG_ID: TIntegerField
      FieldName = 'LOG_ID'
      Required = True
    end
    object cdsLogsLOG_DATE: TDateTimeField
      FieldName = 'LOG_DATE'
    end
    object cdsLogsLOG_TITULO: TStringField
      FieldName = 'LOG_TITULO'
      Size = 50
    end
    object cdsLogsLOG_DESCRICAO: TStringField
      FieldName = 'LOG_DESCRICAO'
      Size = 1000
    end
    object cdsLogsLOG_SOLUCAO: TStringField
      FieldName = 'LOG_SOLUCAO'
      Size = 1000
    end
    object cdsLogsLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      Size = 1
    end
  end
end
