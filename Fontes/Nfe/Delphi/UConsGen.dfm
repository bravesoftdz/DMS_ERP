inherited FrmConsGen: TFrmConsGen
  Caption = 'Consulta'
  ClientHeight = 438
  ClientWidth = 952
  Position = poOwnerFormCenter
  Visible = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 958
  ExplicitHeight = 467
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 952
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 952
    inherited SpeedButton1: TSpeedButton
      Left = 4
      Top = 4
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited SpeedButton2: TSpeedButton
      Left = 130
      Top = 4
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 130
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited SpeedButton7: TSpeedButton
      Left = 868
      Top = 4
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 873
      ExplicitTop = 4
      ExplicitHeight = 33
    end
  end
  inherited ScrollBox1: TScrollBox
    Left = 0
    Top = 111
    Width = 952
    Height = 327
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 111
    ExplicitWidth = 952
    ExplicitHeight = 327
    object grid: TJvDBUltimGrid
      Left = 0
      Top = 0
      Width = 952
      Height = 327
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DataSource = dsConsPadrao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = gridCellClick
      OnTitleClick = gridTitleClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      OnUserSort = gridUserSort
    end
  end
  inherited GroupBox1: TGroupBox
    Left = 4
    Top = 41
    Width = 944
    Height = 66
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    ExplicitLeft = 4
    ExplicitTop = 41
    ExplicitWidth = 944
    ExplicitHeight = 66
    object Label1: TLabel
      Left = 669
      Top = 20
      Width = 40
      Height = 13
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Campo :'
      Visible = False
    end
    object Label2: TLabel
      Left = 18
      Top = 15
      Width = 31
      Height = 13
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Valor :'
    end
    object descricao: TEdit
      Left = 16
      Top = 29
      Width = 447
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      CharCase = ecUpperCase
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = descricaoChange
    end
    object cbocampo: TJvDBLookupComboEdit
      Left = 669
      Top = 36
      Width = 182
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      LookupDisplay = 'CAPTIONCAMPO'
      LookupField = 'NOMECAMPO'
      LookupSource = dsCampos
      Flat = False
      ParentFlat = False
      TabOrder = 1
      Text = 'cbocampo'
      Visible = False
      DataField = 'CAPTIONCAMPO'
      DataSource = dsCampos
    end
  end
  inherited dsConsPadrao: TDataSource
    Left = 216
    Top = 304
  end
  inherited cdsConsPadrao: TClientDataSet
    StoreDefs = True
    Left = 128
  end
  inherited dspConsPadrao: TDataSetProvider
    DataSet = ModuloPrincipal.uqrConsGen
  end
  inherited ActionList1: TActionList
    Left = 504
    Top = 168
    inherited ActProc: TAction
      OnExecute = ActProcExecute
    end
  end
  inherited frxPadrao: TfrxReport
    Left = 328
    Top = 184
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cdsCampos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOMECAMPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CAPTIONCAMPO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 152
    Top = 367
    object cdsCamposNOMECAMPO: TStringField
      FieldName = 'NOMECAMPO'
    end
    object cdsCamposCAPTIONCAMPO: TStringField
      FieldName = 'CAPTIONCAMPO'
    end
  end
  object dsCampos: TDataSource
    AutoEdit = False
    DataSet = cdsCampos
    Left = 216
    Top = 367
  end
  object cdsColuna: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'posicao'
        DataType = ftInteger
      end
      item
        Name = 'tamanho'
        DataType = ftInteger
      end
      item
        Name = 'caption'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aparece'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'cdsColunaIndex1'
        Fields = 'posicao'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'posicao'
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 272
    object cdsColunaposicao: TIntegerField
      FieldName = 'posicao'
    end
    object cdsColunatamanho: TIntegerField
      FieldName = 'tamanho'
    end
    object cdsColunacaption: TStringField
      FieldName = 'caption'
    end
    object cdsColunaaparece: TBooleanField
      FieldName = 'aparece'
    end
  end
  object DataSource1: TDataSource
    Left = 416
    Top = 272
  end
end
