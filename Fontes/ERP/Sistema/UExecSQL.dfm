inherited FrmexecSQL: TFrmexecSQL
  Caption = 'Executa comandos SQL'
  ClientHeight = 522
  ClientWidth = 1079
  ExplicitWidth = 1085
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1079
    Height = 522
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1079
    ExplicitHeight = 522
    inherited Panel2: TPanel
      Width = 1079
      Height = 522
      ExplicitWidth = 1079
      ExplicitHeight = 522
      inherited pnlCrudPadrao: TPanel
        Width = 1075
        ExplicitWidth = 1075
        inherited btnIns: TSpeedButton
          Visible = False
        end
        inherited btnAlt: TSpeedButton
          Visible = False
        end
        inherited btnExc: TSpeedButton
          Visible = False
        end
        inherited btnGra: TSpeedButton
          Visible = False
        end
        inherited btnCan: TSpeedButton
          Visible = False
        end
        inherited SpeedButton7: TSpeedButton
          Left = 1018
          Top = 4
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          ExplicitLeft = 1222
          ExplicitTop = 3
          ExplicitHeight = 28
        end
        inherited btnPes: TSpeedButton
          Action = ActGeraClasse
          Caption = 'Executar F8'
          Visible = False
          OnClick = ActPesExecute
        end
        object BitBtn1: TBitBtn
          Left = 688
          Top = 8
          Width = 75
          Height = 25
          Action = ActGeraClasse
          Caption = 'Gera Classe'
          TabOrder = 0
        end
      end
      inherited pnlPri: TPanel
        Width = 1075
        Height = 480
        ExplicitWidth = 1075
        ExplicitHeight = 480
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1073
          Height = 478
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 469
            Height = 470
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            Caption = 'Commandos'
            TabOrder = 0
            object memosql: TRichEdit
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 459
              Height = 110
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Zoom = 100
            end
            object JvDBUltimGrid1: TJvDBUltimGrid
              AlignWithMargins = True
              Left = 5
              Top = 136
              Width = 459
              Height = 329
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataSource = dsPadrao
              TabOrder = 1
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
            end
          end
          object ScrollBox2: TScrollBox
            Left = 797
            Top = 88
            Width = 253
            Height = 414
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ParentBackground = True
            TabOrder = 1
            object GroupBox2: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 245
              Height = 85
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Tipos de Comandos'
              TabOrder = 0
              object rbAtualiza: TRadioButton
                Left = 21
                Top = 55
                Width = 108
                Height = 21
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Atualiza'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object rbConsulta: TRadioButton
                Left = 21
                Top = 30
                Width = 89
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Caption = 'Consulta'
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TabStop = True
              end
            end
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 97
              Width = 245
              Height = 313
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Tabelas'
              TabOrder = 1
              object gridtabelas: TJvDBUltimGrid
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 235
                Height = 290
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                Ctl3D = True
                DataSource = dstabelas
                ParentCtl3D = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnCellClick = gridtabelasCellClick
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'table_name'
                    Title.Caption = 'Tabelas'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlack
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 191
                    Visible = True
                  end>
              end
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 481
            Top = 4
            Width = 272
            Height = 470
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            Caption = 'Campos'
            TabOrder = 2
            object JvDBUltimGrid2: TJvDBUltimGrid
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 262
              Height = 447
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataSource = dscampos
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
                  FieldName = 'column_name'
                  Title.Caption = 'Campos'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = []
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'udt_name'
                  Title.Caption = 'Tipo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = []
                  Width = 93
                  Visible = True
                end>
            end
          end
        end
      end
      inherited pnlSec: TPanel
        Left = 44
        Top = 556
        Width = 1226
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ExplicitLeft = 44
        ExplicitTop = 556
        ExplicitWidth = 1226
      end
    end
  end
  inherited dsPadrao: TDataSource
    Top = 56
  end
  inherited cdsPadrao: TClientDataSet
    Left = 112
    Top = 80
  end
  inherited dspPadrao: TDataSetProvider
    Left = 128
    Top = 296
  end
  inherited ActionList1: TActionList
    Left = 400
    Top = 336
    inherited ActPes: TAction
      Caption = 'Executar F8'
      OnExecute = ActPesExecute
    end
    object ActVerTabelas: TAction
      Category = 'Menu'
      Caption = 'Tabelas'
    end
    object ActScript: TAction
      Category = 'Menu'
      Caption = 'Script'
      OnExecute = ActScriptExecute
    end
    object ActGeraClasse: TAction
      Category = 'Menu'
      Caption = 'Gera Classe'
    end
  end
  inherited imgListPadrao: TImageList
    Bitmap = {
      494C0101010008003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088868700000000000000000000000000686767006867
      6700757072000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008886870088868700C7C4C4007E7A7A00242323003A383900817F7F00B5B1
      B400CBC9C9006867670000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000888687008886
      8700F8F8F800FFFFFF00CBC7C900878484002C2B2D000D0D0F000D0D0F001F1F
      1F004C4B4C006867670075707200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007875760088868700EBE9EA00FFFF
      FF00E9E5E500BBBABA0088868700757070007F7A7D006D6C6C00494848002524
      26000F101100100F110059575800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084808100E2E0E000DDDDDD00ABA9
      A900908E8E00A09D9D00B1B0B0008E8A8A007E797A00797777007F7A7D008280
      800075707200504F4F0068676700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D787900989697008E8A8A009C9A
      9A00BABABA00C4C6C600E7E7E500EBE9EB00D1CFCF00B5B4B400989696008280
      81007A7777007F7A7D0075707200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000787576009A989A00BAB7B700C0C0
      C000BABABA00D9D9D900C4C1C1008A968A00ABAAAA00BCC0C100C9C9C900C6C6
      C600B6B5B500A3A3A300807F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084818200C2C4C400C1C1
      C100D1D1D100BAB6B600A19CA0008FC49100A7B4AA00B5918A00988E8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084818200B0AD
      AD009A9898009D9C9C00DADADA00F3EFEF00E9E7E900E7D8D400D1CCCC000000
      00009C9C9C000000E10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008481
      8200CCCFCF00BBBBBC0086888900A9ADB000C6C9CB00C7CECE00C9C9C9000000
      000096949400000000000000E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FADDD800F6D7C700E2BAAB00DAB7AB00D9BDB700D4C6C000C2C0BD000000
      00000000000000000000000000000000E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0888600FFD4C000FFC1AB00FFB49A00FFA78C00FF9D8100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0888600FFD3C000FFBDAA00FEB19C00FFA98E00F4937900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0888600FFD3C000FFBDAA00FEB19C00FEA58C00F89C8100000000000000
      0000000000000000E10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C088
      8600F8D7C900FFCFBD00FFC0AB00FFB69D00FBA58C00F6988100000000000000
      000000000000000000000000E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C088
      8600C0888600C0888600C0888600EF988600EF98860000000000000000000000
      00000000000000000000000000000000E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FDC7000000000000F003000000000000
      C001000000000000000100000000000000010000000000000001000000000000
      00010000000000008001000000000000C001000000000000E005000000000000
      F000000000000000F03F000000000000F021000000000000F029000000000000
      E02D000000000000E06000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object uqrTabelas: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select table_name from information_schema.tables '
      'where table_schema='#39'public'#39' and table_type='#39'BASE TABLE'#39
      'order by table_name;')
    Left = 504
    Top = 72
  end
  object dstabelas: TDataSource
    AutoEdit = False
    DataSet = cdstabelas
    Left = 424
    Top = 56
  end
  object cdstabelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptabelas'
    Left = 424
    Top = 40
    object cdstabelastable_name: TMemoField
      DisplayWidth = 23
      FieldName = 'table_name'
      BlobType = ftFmtMemo
    end
  end
  object dsptabelas: TDataSetProvider
    DataSet = uqrTabelas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 336
  end
  object uqrCampos: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'SELECT cast(column_name as varchar(40)) column_name ,udt_name FR' +
        'OM information_schema.columns '
      'WHERE table_name =:tabela order by ordinal_position asc')
    Left = 904
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'tabela'
        Value = nil
      end>
  end
  object dscampos: TDataSource
    AutoEdit = False
    DataSet = cdscampos
    Left = 904
    Top = 192
  end
  object cdscampos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCampos'
    Left = 936
    Top = 288
    object cdscamposcolumn_name: TStringField
      FieldName = 'column_name'
      ReadOnly = True
      Size = 40
    end
    object cdscamposudt_name: TMemoField
      FieldName = 'udt_name'
      BlobType = ftMemo
    end
  end
  object dspCampos: TDataSetProvider
    DataSet = uqrCampos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 824
    Top = 312
  end
  object uScript: TUniScript
    Connection = ModuloPrincipal.Conexao
    Left = 80
    Top = 152
  end
  object od: TJvOpenDialog
    Filter = 'Script SQL|*.sql|Script SQL em Texto|*.txt'
    Height = 0
    Width = 0
    Left = 176
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = ModuloPrincipal.cdsChaveClasses
    Left = 704
    Top = 96
  end
  object uqrPadrao: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select table_name from information_schema.tables '
      'where table_schema='#39'public'#39' and table_type='#39'BASE TABLE'#39
      'order by table_name;')
    Left = 256
    Top = 264
  end
end
