inherited FrmCadPadrao1: TFrmCadPadrao1
  Caption = 'Regras de Impostos'
  ClientHeight = 787
  ClientWidth = 1069
  ExplicitWidth = 1075
  ExplicitHeight = 816
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1069
    Height = 787
    inherited Panel2: TPanel
      Width = 1069
      Height = 787
      inherited pnlCrudPadrao: TPanel
        Width = 1065
        ExplicitLeft = -22
        ExplicitTop = -21
        ExplicitWidth = 1065
        inherited SpeedButton7: TSpeedButton
          Left = 1010
        end
      end
      inherited pnlPri: TPanel
        Width = 1065
        Height = 512
        ExplicitWidth = 1065
        ExplicitHeight = 512
        object Label1: TLabel
          Left = 70
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 60
          Top = 40
          Width = 43
          Height = 13
          Caption = 'Imposto:'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 53
          Top = 65
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 20
          Top = 89
          Width = 83
          Height = 13
          Caption = 'CFOP mesma UF:'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 18
          Top = 114
          Width = 85
          Height = 13
          Caption = 'CFOP fora da UF:'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 31
          Top = 139
          Width = 72
          Height = 13
          Caption = 'CFOP exterior:'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 608
          Top = 56
          Width = 38
          Height = 13
          Caption = 'Aliq IPI:'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 597
          Top = 83
          Width = 49
          Height = 13
          Caption = 'Aliq ICMS:'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 606
          Top = 107
          Width = 40
          Height = 13
          Caption = 'Aliq PIS:'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 584
          Top = 131
          Width = 62
          Height = 13
          Caption = 'Aliq COFINS:'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 30
          Top = 166
          Width = 73
          Height = 13
          Caption = 'Sit. Trib. ICMS:'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 39
          Top = 191
          Width = 64
          Height = 13
          Caption = 'Sit. Trib. PIS:'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 42
          Top = 217
          Width = 62
          Height = 13
          Caption = 'Sit. Trib. IPI:'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 17
          Top = 241
          Width = 86
          Height = 13
          Caption = 'Sit. Trib. COFINS:'
          FocusControl = DBEdit14
        end
        object Label15: TLabel
          Left = -9
          Top = 368
          Width = 111
          Height = 13
          Caption = 'Regra para Devolu'#231#227'o:'
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 312
          Top = 336
          Width = 83
          Height = 13
          Caption = 'Perc. Red. ICMS:'
          FocusControl = DBEdit16
        end
        object Label17: TLabel
          Left = 323
          Top = 361
          Width = 72
          Height = 13
          Caption = 'Perc. Red. IPI:'
          FocusControl = DBEdit17
        end
        object Label18: TLabel
          Left = 325
          Top = 387
          Width = 70
          Height = 13
          Caption = 'Perc. Red. ST:'
          FocusControl = DBEdit18
        end
        object DBEdit1: TDBEdit
          Left = 109
          Top = 14
          Width = 66
          Height = 19
          DataField = 'regra_codigo'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 109
          Top = 39
          Width = 130
          Height = 19
          DataField = 'imp_codigo'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 109
          Top = 64
          Width = 457
          Height = 19
          DataField = 'regra_descricao'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 109
          Top = 89
          Width = 78
          Height = 19
          DataField = 'regra_cfop_uf'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 109
          Top = 114
          Width = 78
          Height = 19
          DataField = 'regra_cfop_uf_fora'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 109
          Top = 139
          Width = 78
          Height = 19
          DataField = 'regra_cfop_uf_ex'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 652
          Top = 54
          Width = 84
          Height = 19
          DataField = 'regra_ali_ipi'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 652
          Top = 79
          Width = 84
          Height = 19
          DataField = 'regra_ali_icms'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 652
          Top = 104
          Width = 84
          Height = 19
          DataField = 'regra_ali_pis'
          DataSource = dsPadrao
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 652
          Top = 129
          Width = 84
          Height = 19
          DataField = 'regra_ali_cofins'
          DataSource = dsPadrao
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 109
          Top = 164
          Width = 65
          Height = 19
          DataField = 'regra_sit_trib_icms'
          DataSource = dsPadrao
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 109
          Top = 189
          Width = 65
          Height = 19
          DataField = 'regra_sit_trib_pis'
          DataSource = dsPadrao
          TabOrder = 11
        end
        object DBEdit13: TDBEdit
          Left = 109
          Top = 214
          Width = 65
          Height = 19
          DataField = 'regra_sit_trib_ipi'
          DataSource = dsPadrao
          TabOrder = 12
        end
        object DBEdit14: TDBEdit
          Left = 109
          Top = 239
          Width = 65
          Height = 19
          DataField = 'regra_sit_trib_cofins'
          DataSource = dsPadrao
          TabOrder = 13
        end
        object DBCheckBox1: TDBCheckBox
          Left = 42
          Top = 264
          Width = 79
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Credita IPI ?'
          DataField = 'regra_cred_ipi'
          DataSource = dsPadrao
          TabOrder = 14
        end
        object DBCheckBox2: TDBCheckBox
          Left = 31
          Top = 284
          Width = 90
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Credita ICMS ?'
          DataField = 'regra_cred_icms'
          DataSource = dsPadrao
          TabOrder = 15
        end
        object DBCheckBox3: TDBCheckBox
          Left = 2
          Top = 303
          Width = 119
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Movimenta Estoque ?'
          DataField = 'regra_cred_icms'
          DataSource = dsPadrao
          TabOrder = 16
        end
        object DBCheckBox4: TDBCheckBox
          Left = 20
          Top = 322
          Width = 100
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Gera Financeiro ?'
          DataField = 'regra_cred_icms'
          DataSource = dsPadrao
          TabOrder = 17
        end
        object DBEdit15: TDBEdit
          Left = 108
          Top = 366
          Width = 60
          Height = 19
          DataField = 'regra_cod_devol'
          DataSource = dsPadrao
          TabOrder = 18
        end
        object DBCheckBox5: TDBCheckBox
          Left = 37
          Top = 343
          Width = 83
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Destaca IPI ?'
          DataField = 'regra_destaca_ipi'
          DataSource = dsPadrao
          TabOrder = 19
        end
        object DBEdit16: TDBEdit
          Left = 401
          Top = 334
          Width = 90
          Height = 19
          DataField = 'regra_perc_red_icms'
          DataSource = dsPadrao
          TabOrder = 20
        end
        object DBEdit17: TDBEdit
          Left = 401
          Top = 359
          Width = 90
          Height = 19
          DataField = 'regra_perc_red_ipi'
          DataSource = dsPadrao
          TabOrder = 21
        end
        object DBEdit18: TDBEdit
          Left = 401
          Top = 385
          Width = 90
          Height = 19
          DataField = 'regra_perc_red_icms_st'
          DataSource = dsPadrao
          TabOrder = 22
        end
      end
      inherited pnlSec: TPanel
        Left = 700
        Top = 664
        ExplicitLeft = 700
        ExplicitTop = 664
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 368
    Top = 592
  end
  inherited cdsPadrao: TClientDataSet
    Left = 416
    Top = 592
    object cdsPadraoregra_codigo: TIntegerField
      FieldName = 'regra_codigo'
      Required = True
    end
    object cdsPadraoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsPadraoimp_codigo: TStringField
      FieldName = 'imp_codigo'
      Required = True
      Size = 10
    end
    object cdsPadraoreg_trib_codigo: TIntegerField
      FieldName = 'reg_trib_codigo'
      Required = True
    end
    object cdsPadraoregra_descricao: TStringField
      FieldName = 'regra_descricao'
      Size = 60
    end
    object cdsPadraoregra_cfop_uf: TStringField
      FieldName = 'regra_cfop_uf'
      Size = 6
    end
    object cdsPadraoregra_cfop_uf_fora: TStringField
      FieldName = 'regra_cfop_uf_fora'
      Size = 6
    end
    object cdsPadraoregra_cfop_uf_ex: TStringField
      FieldName = 'regra_cfop_uf_ex'
      Size = 6
    end
    object cdsPadraoregra_ali_ipi: TFloatField
      DisplayLabel = 'Aliq IPI:'
      FieldName = 'regra_ali_ipi'
    end
    object cdsPadraoregra_ali_icms: TFloatField
      DisplayLabel = 'Aliq ICMS:'
      FieldName = 'regra_ali_icms'
    end
    object cdsPadraoregra_ali_pis: TFloatField
      DisplayLabel = 'Aliq PIS:'
      FieldName = 'regra_ali_pis'
    end
    object cdsPadraoregra_ali_cofins: TFloatField
      DisplayLabel = 'Aliq COFINS:'
      FieldName = 'regra_ali_cofins'
    end
    object cdsPadraoregra_sit_trib_icms: TStringField
      DisplayLabel = 'Sit. Trib. ICMS:'
      FieldName = 'regra_sit_trib_icms'
      Size = 5
    end
    object cdsPadraoregra_sit_trib_pis: TStringField
      DisplayLabel = 'Sit. Trib. PIS:'
      FieldName = 'regra_sit_trib_pis'
      Size = 5
    end
    object cdsPadraoregra_sit_trib_ipi: TStringField
      DisplayLabel = 'Sit. Trib. IPI:'
      FieldName = 'regra_sit_trib_ipi'
      Size = 5
    end
    object cdsPadraoregra_sit_trib_cofins: TStringField
      DisplayLabel = 'Sit. Trib. COFINS:'
      FieldName = 'regra_sit_trib_cofins'
      Size = 5
    end
    object cdsPadraoregra_cred_ipi: TStringField
      FieldName = 'regra_cred_ipi'
      Size = 1
    end
    object cdsPadraoregra_cred_icms: TStringField
      FieldName = 'regra_cred_icms'
      Size = 1
    end
    object cdsPadraoregra_mov_estoque: TStringField
      FieldName = 'regra_mov_estoque'
      Size = 1
    end
    object cdsPadraoregra_gera_fin: TStringField
      FieldName = 'regra_gera_fin'
      Size = 1
    end
    object cdsPadraoregra_cod_devol: TIntegerField
      FieldName = 'regra_cod_devol'
    end
    object cdsPadraoregra_ipi_bc: TStringField
      FieldName = 'regra_ipi_bc'
      Size = 1
    end
    object cdsPadraoregra_tipo_calc_ipi: TIntegerField
      FieldName = 'regra_tipo_calc_ipi'
    end
    object cdsPadraoregra_perc_red_icms: TFloatField
      FieldName = 'regra_perc_red_icms'
    end
    object cdsPadraoregra_perc_red_ipi: TFloatField
      FieldName = 'regra_perc_red_ipi'
    end
    object cdsPadraoregra_perc_red_icms_st: TFloatField
      FieldName = 'regra_perc_red_icms_st'
    end
    object cdsPadraoregra_mod_bc: TIntegerField
      FieldName = 'regra_mod_bc'
    end
    object cdsPadraoregra_mod_bc_st: TFloatField
      FieldName = 'regra_mod_bc_st'
    end
    object cdsPadraoregra_pmvast: TFloatField
      FieldName = 'regra_pmvast'
    end
    object cdsPadraoregra_mot_red_icms: TIntegerField
      FieldName = 'regra_mot_red_icms'
    end
    object cdsPadraoregra_mot_des_icms: TIntegerField
      FieldName = 'regra_mot_des_icms'
    end
    object cdsPadraoregra_destaca_ipi: TStringField
      FieldName = 'regra_destaca_ipi'
      Size = 1
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloFiscal.CRUD_Regras_impostos
    Left = 304
    Top = 592
  end
  inherited ActionList1: TActionList
    Left = 176
    Top = 576
  end
  inherited PopupMenu1: TPopupMenu
    Left = 568
    Top = 600
  end
  inherited imgListPadrao: TImageList
    Left = 776
    Top = 168
    Bitmap = {
      494C0101010008007C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 600
    Top = 656
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 528
    Top = 656
  end
  inherited frxPadrao: TfrxReport
    Left = 400
    Top = 664
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
