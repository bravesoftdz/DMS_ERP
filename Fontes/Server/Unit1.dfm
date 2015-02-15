object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 383
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniConnection1: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'SBOTESTE'
    Username = 'sa'
    Password = 'dentbras2k11...'
    Server = 'dentbras01'
    Connected = True
    Left = 24
    Top = 360
  end
  object sqlCli: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT distinct'
      'OCRD.cardcode as '#39'Codigo'#39','
      'OCRD.cardname as '#39'Nome'#39','
      #39'('#39'+OCRD.Phone2 +'#39')'#39' + OCRD.Phone1 as '#39'Fone'#39','
      'OCRD.E_Mail as '#39'Email'#39','
      'OCRD.SlpCode as '#39'CodVendedor'#39','
      'OCRD.AgentCode as '#39'Assessor'#39','
      'OCRD.U_Supervisor as '#39'Supervisor'#39','
      'CRD1.AddrType as '#39'EndTipo'#39','
      'CRD1.Street as '#39'Endere'#231'o'#39','
      'CRD1.StreetNo as '#39'Numero'#39','
      'CRD1.City as '#39'Cidade'#39','
      'CRD1.State as '#39'Estado'#39','
      'CRD7.TaxId0 as '#39'CNPJ'#39','
      'CRD7.TaxId1 as '#39'I.E.'#39','
      'OCRD.Territory as '#39'Territorio'#39
      'FROM OCRD'
      'LEFT OUTER join crd1 ON ocrd.CardCode = crd1.CardCode'
      'LEFT OUTER join crd7 ON ocrd.CardCode = crd7.CardCode'
      'where CardType = '#39'C'#39
      
        'and CRD7.TaxId0 is not null and CRD7.Address <> '#39#39' and CRD1.line' +
        'num = 0 '
      'order by OCRD.CardCode')
    Left = 8
    Top = 40
  end
  object cdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli'
    Left = 80
    Top = 40
  end
  object dspCli: TDataSetProvider
    DataSet = sqlCli
    Left = 40
    Top = 40
  end
  object dsCli: TDataSource
    DataSet = cdsCli
    Left = 112
    Top = 40
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 104
    Top = 360
  end
  object dsTerritorio: TDataSource
    DataSet = cdsTerritorio
    Left = 144
    Top = 88
  end
  object cdsTerritorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTerritorio'
    Left = 96
    Top = 88
  end
  object dspTerritorio: TDataSetProvider
    DataSet = sqlTerritorio
    Left = 48
    Top = 88
  end
  object sqlTerritorio: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select territryID,descript from OTER ORDER BY territryID')
    Left = 8
    Top = 88
  end
  object sqlVendedores: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select SlpCode,SlpName from OSLP ORDER BY SlpCode')
    Left = 8
    Top = 152
  end
  object dsVendedores: TDataSource
    DataSet = cdsVendedores
    Left = 168
    Top = 144
  end
  object cdsVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 104
    Top = 152
  end
  object dspVendedor: TDataSetProvider
    DataSet = sqlVendedores
    Left = 56
    Top = 152
  end
  object sqlCondPagto: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select GroupNum, PymntGroup from OCTG order by GroupNum')
    Left = 16
    Top = 216
  end
  object dsCondpagto: TDataSource
    DataSet = cdsCondPagto
    Left = 200
    Top = 216
  end
  object cdsCondPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondpagto'
    Left = 136
    Top = 216
  end
  object dspCondpagto: TDataSetProvider
    DataSet = sqlCondPagto
    Left = 72
    Top = 216
  end
  object dsprodutos: TDataSource
    DataSet = cdsProdutos
    Left = 200
    Top = 272
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 136
    Top = 264
    object cdsProdutosCodigo: TWideStringField
      FieldName = 'Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutosNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsProdutosGrupo: TWideMemoField
      FieldName = 'Grupo'
      BlobType = ftWideMemo
    end
    object cdsProdutosSubGrupo: TWideMemoField
      FieldName = 'SubGrupo'
      BlobType = ftWideMemo
    end
    object cdsProdutosFamilia: TWideMemoField
      FieldName = 'Familia'
      BlobType = ftWideMemo
    end
    object cdsProdutosEtiqueta: TWideMemoField
      FieldName = 'Etiqueta'
      BlobType = ftWideMemo
    end
    object cdsProdutosModelo: TWideMemoField
      FieldName = 'Modelo'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = sqlProdutos
    Left = 72
    Top = 272
  end
  object sqlProdutos: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select ItemCode as '#39'Codigo'#39','
      '       ItemName as '#39'Nome'#39','
      '       U_GProd as '#39'Grupo'#39','
      '       U_LG_SubGProd as '#39'SubGrupo'#39','
      '       U_lg_famprod as '#39'Familia'#39','
      '       U_LG_Descetiqueta '#39'Etiqueta'#39','
      '       (SELECT SUBSTRING(U_LG_Descetiqueta,1,4)) as '#39'Modelo'#39
      '       from OITM'
      'where ItemType = '#39'I'#39' '
      'and SellItem = '#39'Y'#39' '
      'and AssetItem = '#39'N'#39' '
      'and MatType = 1'
      'order by ItemCode')
    Left = 16
    Top = 272
  end
  object Timer1: TTimer
    Left = 176
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 264
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object minimizar1: TMenuItem
      Caption = 'Minimizar'
    end
    object FecharServidor1: TMenuItem
      Caption = 'Fechar Servidor'
    end
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AtualizaH1'
        DataType = ftTime
      end
      item
        Name = 'AtualizaH2'
        DataType = ftTime
      end
      item
        Name = 'FtpHost'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FtpUser'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FtpSenha'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 288
    Top = 48
    object cdsConfigAtualizaH1: TTimeField
      FieldName = 'AtualizaH1'
    end
    object cdsConfigAtualizaH2: TTimeField
      FieldName = 'AtualizaH2'
    end
    object cdsConfigFtpHost: TStringField
      FieldName = 'FtpHost'
      Size = 50
    end
    object cdsConfigFtpUser: TStringField
      FieldName = 'FtpUser'
    end
    object cdsConfigFtpSenha: TStringField
      FieldName = 'FtpSenha'
    end
  end
end
