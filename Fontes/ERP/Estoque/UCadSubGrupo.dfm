inherited FrmCadSubGrupo: TFrmCadSubGrupo
  Caption = 'Sub Grupos de Produtos'
  ClientHeight = 515
  ClientWidth = 738
  ExplicitWidth = 744
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 738
    Height = 515
    ExplicitWidth = 738
    ExplicitHeight = 515
    inherited Panel2: TPanel
      Width = 738
      Height = 515
      ExplicitWidth = 738
      ExplicitHeight = 515
      inherited pnlCrudPadrao: TPanel
        Width = 734
        ExplicitWidth = 734
        inherited btnIns: TSpeedButton
          Width = 57
          ExplicitWidth = 57
          ExplicitHeight = 29
        end
        inherited btnAlt: TSpeedButton
          Left = 63
          Width = 56
          ExplicitLeft = 63
          ExplicitWidth = 56
          ExplicitHeight = 29
        end
        inherited btnExc: TSpeedButton
          Left = 123
          Width = 57
          ExplicitLeft = 123
          ExplicitTop = 2
          ExplicitWidth = 57
        end
        inherited btnGra: TSpeedButton
          Left = 184
          Width = 56
          ExplicitLeft = 184
          ExplicitTop = 5
          ExplicitWidth = 56
          ExplicitHeight = 29
        end
        inherited btnCan: TSpeedButton
          Left = 244
          Width = 72
          ExplicitLeft = 244
          ExplicitWidth = 72
          ExplicitHeight = 29
        end
        inherited btnImp: TSpeedButton
          Left = 388
          Width = 7
          ExplicitLeft = 373
          ExplicitTop = 2
          ExplicitWidth = 7
        end
        inherited SpeedButton7: TSpeedButton
          Left = 679
          ExplicitLeft = 667
        end
        inherited btnPes: TSpeedButton
          Left = 320
          Width = 64
          ExplicitLeft = 305
          ExplicitWidth = 64
          ExplicitHeight = 29
        end
      end
      inherited pnlPri: TPanel
        Width = 734
        Height = 56
        ExplicitWidth = 734
        ExplicitHeight = 56
        object Label1: TLabel
          Left = 15
          Top = 9
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit3
        end
        object Label3: TLabel
          Left = 184
          Top = 11
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit1
        end
        object DBEdit3: TDBEdit
          Left = 15
          Top = 30
          Width = 130
          Height = 19
          DataField = 'sub_grup_prod_codigo'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 182
          Top = 30
          Width = 200
          Height = 19
          DataField = 'sub_grup_prod_descricao'
          DataSource = dsPadrao
          TabOrder = 1
        end
      end
      inherited pnlSec: TPanel
        Left = 2
        Top = 101
        Width = 734
        Height = 412
        Align = alClient
        Visible = True
        ExplicitLeft = 2
        ExplicitTop = 101
        ExplicitWidth = 734
        ExplicitHeight = 412
        object JvDBUltimGrid1: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 732
          Height = 410
          Align = alClient
          DataSource = dsPadrao
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
              FieldName = 'sub_grup_prod_codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sub_grup_prod_descricao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 496
    Top = 288
  end
  inherited cdsPadrao: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 288
    object cdsPadraosub_grup_prod_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sub_grup_prod_codigo'
      Required = True
    end
    object cdsPadraosub_grup_prod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'sub_grup_prod_descricao'
      Size = 60
    end
    object cdsPadraoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloEstoques.Crud_Sub_grupo_prod
    Left = 432
    Top = 288
  end
  inherited ActionList1: TActionList
    Left = 352
    Top = 280
  end
  inherited PopupMenu1: TPopupMenu
    Left = 696
    Top = 296
  end
  inherited imgListPadrao: TImageList
    Bitmap = {
      494C010101000800600010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited frxDesigner1: TfrxDesigner
    Left = 728
    Top = 352
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 656
    Top = 352
  end
  inherited frxPadrao: TfrxReport
    Left = 528
    Top = 360
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
