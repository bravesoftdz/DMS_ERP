inherited FrmConsCidades: TFrmConsCidades
  Caption = 'Consulta de Cidades'
  ClientHeight = 482
  ClientWidth = 677
  Visible = False
  ExplicitWidth = 685
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Left = 3
    Top = 3
    Width = 671
    Margins.Left = 3
    Margins.Top = 3
    Margins.Right = 3
    Margins.Bottom = 3
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 671
    inherited SpeedButton1: TSpeedButton
      Left = 3
      Top = 3
      Height = 29
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited SpeedButton2: TSpeedButton
      Left = 127
      Top = 3
      Height = 29
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitLeft = 127
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited SpeedButton7: TSpeedButton
      Left = 588
      Top = 3
      Height = 29
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitLeft = 593
      ExplicitTop = 3
      ExplicitHeight = 35
    end
  end
  inherited ScrollBox1: TScrollBox
    Left = 0
    Top = 155
    Width = 677
    Height = 327
    Margins.Left = 3
    Margins.Top = 3
    Margins.Right = 3
    Margins.Bottom = 3
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 155
    ExplicitWidth = 677
    ExplicitHeight = 327
    object JvDBUltimGrid1: TJvDBUltimGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 671
      Height = 321
      Align = alClient
      DataSource = dsConsPadrao
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = JvDBUltimGrid1DblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'est_uf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'est_des'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cid_cod'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cid_des'
          Visible = True
        end>
    end
  end
  inherited GroupBox1: TGroupBox
    Tag = -1
    Left = 3
    Top = 46
    Width = 671
    Height = 106
    Margins.Left = 3
    Margins.Top = 3
    Margins.Right = 3
    Margins.Bottom = 3
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 46
    ExplicitWidth = 671
    ExplicitHeight = 106
    object Label1: TLabel
      Left = 11
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label2: TLabel
      Left = 12
      Top = 60
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lkpTipo: TJvDBLookupCombo
      Left = 11
      Top = 35
      Width = 175
      Height = 20
      LookupField = 'est_cod'
      LookupDisplay = 'est_des'
      LookupSource = dsUF
      TabOrder = 0
      OnCloseUp = lkpTipoCloseUp
    end
    object edtNomeCidade: TEdit
      Left = 11
      Top = 73
      Width = 398
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = edtNomeCidadeChange
    end
    object chkTipo: TCheckBox
      Left = 192
      Top = 35
      Width = 12
      Height = 18
      Caption = 'chkTipo'
      TabOrder = 2
    end
  end
  inherited cdsConsPadrao: TClientDataSet
    object cdsConsPadraoest_uf: TStringField
      FieldName = 'est_uf'
      ReadOnly = True
      Size = 2
    end
    object cdsConsPadraoest_des: TStringField
      FieldName = 'est_des'
      ReadOnly = True
      Size = 40
    end
    object cdsConsPadraocid_cod: TIntegerField
      FieldName = 'cid_cod'
      Required = True
    end
    object cdsConsPadraocid_des: TStringField
      FieldName = 'cid_des'
      Size = 100
    end
  end
  inherited dspConsPadrao: TDataSetProvider
    DataSet = uqrCidades
  end
  inherited ActionList1: TActionList
    Left = 464
    Top = 240
  end
  inherited frxPadrao: TfrxReport
    Left = 280
    Top = 280
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object uqrCidades: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'SELECT'
      '  loc_est.est_uf,'
      '  loc_est.est_des,'
      '  loc_cid.cid_cod,'
      '  loc_cid.cid_des'
      'FROM'
      '  loc_cid'
      '  INNER JOIN loc_est ON (loc_cid.est_cod = loc_est.est_cod)')
    Left = 376
    Top = 304
  end
  object dsUF: TDataSource
    AutoEdit = False
    DataSet = cdsUF
    Left = 40
    Top = 376
  end
  object dspUF: TDataSetProvider
    DataSet = uqrUF
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 80
    Top = 376
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codemp'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspUF'
    Left = 128
    Top = 376
    object cdsUFest_cod: TIntegerField
      FieldName = 'est_cod'
      Required = True
    end
    object cdsUFest_uf: TStringField
      FieldName = 'est_uf'
      Size = 2
    end
    object cdsUFest_des: TStringField
      FieldName = 'est_des'
      Size = 40
    end
    object cdsUFpai_cod: TStringField
      FieldName = 'pai_cod'
      Size = 10
    end
    object cdsUFest_icms: TFloatField
      FieldName = 'est_icms'
    end
  end
  object uqrUF: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos_subgrupo'
      
        '  (codsubgrupo, codgrupo, codemp, descricao, usucad, datacad, da' +
        'taalt)'
      'VALUES'
      
        '  (:codsubgrupo, :codgrupo, :codemp, :descricao, :usucad, :datac' +
        'ad, :dataalt)')
    SQLDelete.Strings = (
      'DELETE FROM produtos_subgrupo'
      'WHERE'
      
        '  codsubgrupo = :Old_codsubgrupo AND codgrupo = :Old_codgrupo AN' +
        'D codemp = :Old_codemp')
    SQLUpdate.Strings = (
      'UPDATE produtos_subgrupo'
      'SET'
      
        '  codsubgrupo = :codsubgrupo, codgrupo = :codgrupo, codemp = :co' +
        'demp, descricao = :descricao, usucad = :usucad, datacad = :datac' +
        'ad, dataalt = :dataalt'
      'WHERE'
      
        '  codsubgrupo = :Old_codsubgrupo AND codgrupo = :Old_codgrupo AN' +
        'D codemp = :Old_codemp')
    SQLLock.Strings = (
      'SELECT * FROM produtos_subgrupo'
      'WHERE'
      
        '  codsubgrupo = :Old_codsubgrupo AND codgrupo = :Old_codgrupo AN' +
        'D codemp = :Old_codemp'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT codsubgrupo, codgrupo, codemp, descricao, usucad, datacad' +
        ', dataalt FROM produtos_subgrupo'
      'WHERE'
      
        '  codsubgrupo = :codsubgrupo AND codgrupo = :codgrupo AND codemp' +
        ' = :codemp')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from loc_est')
    Left = 184
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codemp'
        Value = nil
      end>
  end
end
