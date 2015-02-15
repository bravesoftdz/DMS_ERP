inherited FrmCadDicionarioDados: TFrmCadDicionarioDados
  Caption = 'Dicion'#225'rio de Dados'
  ClientHeight = 420
  ClientWidth = 944
  ExplicitWidth = 950
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 944
    Height = 420
    ExplicitWidth = 944
    ExplicitHeight = 420
    inherited Panel2: TPanel
      Width = 944
      Height = 420
      ExplicitWidth = 944
      ExplicitHeight = 420
      inherited pnlCrudPadrao: TPanel
        Width = 940
        ExplicitWidth = 940
        inherited btnIns: TSpeedButton
          Visible = False
        end
        inherited btnExc: TSpeedButton
          Visible = False
        end
        inherited SpeedButton7: TSpeedButton
          Left = 885
          ExplicitLeft = 862
        end
        inherited btnPes: TSpeedButton
          Visible = False
        end
      end
      inherited pnlPri: TPanel
        Width = 239
        Height = 377
        Align = alLeft
        ExplicitWidth = 239
        ExplicitHeight = 377
        object Label4: TLabel
          Left = 8
          Top = 256
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 8
          Top = 296
          Width = 28
          Height = 13
          Caption = 'Ajuda'
        end
        object DBEdit2: TDBEdit
          Left = 8
          Top = 272
          Width = 200
          Height = 19
          DataField = 'tab_des'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object JvDBUltimGrid2: TJvDBUltimGrid
          AlignWithMargins = True
          Left = 3
          Top = 16
          Width = 231
          Height = 228
          Align = alTop
          DataSource = dsPadrao
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = JvDBUltimGrid2CellClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'tab_cod'
              Width = 194
              Visible = True
            end>
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 312
          Width = 214
          Height = 57
          DataField = 'tab_aju'
          DataSource = dsPadrao
          TabOrder = 2
        end
      end
      inherited pnlSec: TPanel
        Left = 245
        Top = 41
        Width = 697
        Height = 377
        ParentCtl3D = True
        ExplicitLeft = 245
        ExplicitTop = 41
        ExplicitWidth = 697
        ExplicitHeight = 377
        inherited Label2: TLabel
          Width = 695
        end
        inherited pnlCrudDetalhe: TPanel
          Width = 691
          ExplicitWidth = 691
          inherited btnInsDet: TSpeedButton
            Visible = False
            ExplicitLeft = 1
            ExplicitHeight = 29
          end
          inherited btnExcDet: TSpeedButton
            Visible = False
          end
        end
        inherited pcDet: TPageControl
          Width = 695
          Height = 323
          ExplicitWidth = 695
          ExplicitHeight = 323
          inherited TabSheet2: TTabSheet
            ExplicitWidth = 687
            ExplicitHeight = 292
            inherited gridDet: TJvDBUltimGrid
              Width = 687
              Height = 292
              DrawingStyle = gdsClassic
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cam_cod'
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cam_des'
                  Width = 185
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cam_aju'
                  Width = 174
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cam_mas'
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cam_req'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cam_tip_dad'
                  Visible = True
                end>
            end
          end
          inherited TabSheet1: TTabSheet
            ExplicitWidth = 687
            ExplicitHeight = 292
            inherited Panel3: TPanel
              Width = 687
              Height = 292
              ExplicitWidth = 687
              ExplicitHeight = 292
              object Label3: TLabel
                Left = 24
                Top = 8
                Width = 33
                Height = 13
                Caption = 'Campo'
                FocusControl = DBEdit1
              end
              object Label6: TLabel
                Left = 24
                Top = 56
                Width = 46
                Height = 13
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit4
              end
              object Label7: TLabel
                Left = 24
                Top = 152
                Width = 28
                Height = 13
                Caption = 'Ajuda'
              end
              object Label8: TLabel
                Left = 24
                Top = 104
                Width = 40
                Height = 13
                Caption = 'M'#225'scara'
                FocusControl = DBEdit6
              end
              object Label9: TLabel
                Left = 276
                Top = 104
                Width = 54
                Height = 13
                Caption = 'Requerido?'
              end
              object Label10: TLabel
                Left = 352
                Top = 104
                Width = 68
                Height = 13
                Caption = 'Tipo de Dados'
                FocusControl = DBEdit8
              end
              object DBEdit1: TDBEdit
                Tag = 98
                Left = 24
                Top = 24
                Width = 200
                Height = 19
                DataField = 'cam_cod'
                DataSource = dsPadraoDet
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 24
                Top = 72
                Width = 345
                Height = 19
                DataField = 'cam_des'
                DataSource = dsPadraoDet
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 24
                Top = 120
                Width = 243
                Height = 19
                DataField = 'cam_mas'
                DataSource = dsPadraoDet
                TabOrder = 2
              end
              object DBEdit8: TDBEdit
                Left = 352
                Top = 120
                Width = 130
                Height = 19
                DataField = 'cam_tip_dad'
                DataSource = dsPadraoDet
                TabOrder = 3
              end
              object DBCheckBox1: TDBCheckBox
                Left = 296
                Top = 121
                Width = 25
                Height = 17
                DataField = 'cam_req'
                DataSource = dsPadraoDet
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBMemo2: TDBMemo
                Left = 24
                Top = 171
                Width = 457
                Height = 89
                TabOrder = 5
              end
            end
          end
        end
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 32
    Top = 192
  end
  inherited cdsPadrao: TClientDataSet
    Left = 32
    Top = 136
    object cdsPadraotab_cod: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'tab_cod'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsPadraotab_des: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tab_des'
      Size = 100
    end
    object cdsPadraotab_aju: TStringField
      DisplayLabel = 'Ajuda'
      FieldName = 'tab_aju'
      Size = 5000
    end
    object cdsPadraosis_versao: TStringField
      FieldName = 'sis_versao'
      Size = 10
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloPrincipal.CRUD_Dicionario
    Left = 96
    Top = 192
  end
  inherited ActionList1: TActionList
    Left = 672
    Top = 368
  end
  inherited PopupMenu1: TPopupMenu
    Left = 576
    Top = 352
  end
  inherited imgListPadrao: TImageList
    Bitmap = {
      494C0101010008005C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited dspPadraoDet: TDataSetProvider
    DataSet = ModuloPrincipal.CRUD_Campos
    Left = 808
    Top = 232
  end
  inherited dsPadraoDet: TDataSource
    Left = 816
    Top = 288
  end
  inherited cdsPadraoDet: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'tab_cod'
        ParamType = ptInput
      end>
    Left = 808
    Top = 176
    object cdsPadraoDettab_cod: TStringField
      FieldName = 'tab_cod'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsPadraoDetcam_cod: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'cam_cod'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsPadraoDetcam_des: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'cam_des'
      Size = 100
    end
    object cdsPadraoDetcam_aju: TStringField
      DisplayLabel = 'Ajuda'
      FieldName = 'cam_aju'
      Size = 5000
    end
    object cdsPadraoDetcam_mas: TStringField
      DisplayLabel = 'M'#225'scara'
      FieldName = 'cam_mas'
      Size = 60
    end
    object cdsPadraoDetcam_req: TStringField
      DisplayLabel = 'Requerido?'
      FieldName = 'cam_req'
      Size = 1
    end
    object cdsPadraoDetcam_tip_dad: TStringField
      DisplayLabel = 'Tipo de Dados'
      FieldName = 'cam_tip_dad'
      Size = 10
    end
    object cdsPadraoDetsis_versao: TStringField
      FieldName = 'sis_versao'
      Size = 10
    end
  end
  inherited uqrPadraoDet: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sis_tab_cam'
      
        '  (tab_cod, cam_cod, cam_des, cam_aju, cam_mas, cam_req, cam_tip' +
        '_dad, sis_versao)'
      'VALUES'
      
        '  (:tab_cod, :cam_cod, :cam_des, :cam_aju, :cam_mas, :cam_req, :' +
        'cam_tip_dad, :sis_versao)')
    SQLDelete.Strings = (
      'DELETE FROM sis_tab_cam'
      'WHERE'
      '  tab_cod = :Old_tab_cod AND cam_cod = :Old_cam_cod')
    SQLUpdate.Strings = (
      'UPDATE sis_tab_cam'
      'SET'
      
        '  tab_cod = :tab_cod, cam_cod = :cam_cod, cam_des = :cam_des, ca' +
        'm_aju = :cam_aju, cam_mas = :cam_mas, cam_req = :cam_req, cam_ti' +
        'p_dad = :cam_tip_dad, sis_versao = :sis_versao'
      'WHERE'
      '  tab_cod = :Old_tab_cod AND cam_cod = :Old_cam_cod')
    SQLLock.Strings = (
      'SELECT * FROM sis_tab_cam'
      'WHERE'
      '  tab_cod = :Old_tab_cod AND cam_cod = :Old_cam_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tab_cod, cam_cod, cam_des, cam_aju, cam_mas, cam_req, cam' +
        '_tip_dad, sis_versao FROM sis_tab_cam'
      'WHERE'
      '  tab_cod = :tab_cod AND cam_cod = :cam_cod')
    Left = 464
  end
  inherited frxDBPadraoDet: TfrxDBDataset
    Left = 600
    Top = 208
  end
end
