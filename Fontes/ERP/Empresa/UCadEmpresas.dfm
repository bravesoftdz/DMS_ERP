inherited FrmCadEmpresas: TFrmCadEmpresas
  Caption = 'Cadastro de Empresas'
  ClientHeight = 282
  ClientWidth = 777
  Position = poDesktopCenter
  ExplicitWidth = 783
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 777
    Height = 282
    ExplicitWidth = 777
    ExplicitHeight = 282
    inherited Panel2: TPanel
      Width = 777
      Height = 282
      ExplicitWidth = 777
      ExplicitHeight = 282
      inherited pnlCrudPadrao: TPanel
        Left = 3
        Top = 3
        Width = 771
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 771
        inherited SpeedButton7: TSpeedButton
          Left = 715
          Top = 3
          Height = 27
          Margins.Left = 3
          Margins.Top = 3
          Margins.Right = 3
          Margins.Bottom = 3
          ExplicitLeft = 590
          ExplicitTop = 3
          ExplicitHeight = 25
        end
      end
      inherited pnlPri: TPanel
        Top = 43
        Width = 773
        Height = 237
        Align = alClient
        ExplicitTop = 43
        ExplicitWidth = 773
        ExplicitHeight = 237
        object Label1: TLabel
          Left = 43
          Top = 13
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
          FocusControl = edtCodigo
        end
        object Label2: TLabel
          Left = 373
          Top = 37
          Width = 64
          Height = 13
          Caption = 'Raz'#227'o Social:'
          FocusControl = edtRazao
        end
        object Label3: TLabel
          Left = 7
          Top = 38
          Width = 75
          Height = 13
          Caption = 'Nome Fantasia:'
          FocusControl = edtFantasia
        end
        object Label11: TLabel
          Left = 236
          Top = 63
          Width = 67
          Height = 13
          Caption = 'Ins. Estadual:'
          FocusControl = edtIE
        end
        object Label13: TLabel
          Left = 525
          Top = 64
          Width = 74
          Height = 13
          Caption = 'Insc. Municipal:'
          FocusControl = edtIM
        end
        object Label14: TLabel
          Left = 55
          Top = 111
          Width = 28
          Height = 13
          Caption = 'Email:'
          FocusControl = DBEdit14
        end
        object Label16: TLabel
          Left = 52
          Top = 63
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = edtCNPJ
        end
        object Label10: TLabel
          Left = 538
          Top = 88
          Width = 46
          Height = 13
          Caption = 'Telefone:'
          FocusControl = edtTelefone
        end
        object Label15: TLabel
          Left = 51
          Top = 86
          Width = 31
          Height = 13
          Caption = 'CNAE:'
          FocusControl = edtCNAE
        end
        object Label4: TLabel
          Left = 191
          Top = 145
          Width = 59
          Height = 13
          Caption = 'Logradouro:'
          FocusControl = edtRua
        end
        object Label5: TLabel
          Left = 636
          Top = 148
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
          FocusControl = edtNumero
        end
        object Label6: TLabel
          Left = 11
          Top = 167
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          FocusControl = edtComplemento
        end
        object Label7: TLabel
          Left = 405
          Top = 170
          Width = 32
          Height = 13
          Caption = 'Bairro:'
          FocusControl = edtBairro
        end
        object Label8: TLabel
          Left = 31
          Top = 195
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
          FocusControl = edtCodMun
        end
        object Label9: TLabel
          Left = 57
          Top = 145
          Width = 23
          Height = 13
          Caption = 'CEP:'
          FocusControl = edtCEP
        end
        object Label12: TLabel
          Left = 232
          Top = 88
          Width = 86
          Height = 13
          Caption = 'Regime tribut'#225'rio:'
        end
        object Label22: TLabel
          Left = 496
          Top = 195
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit3
        end
        object Bevel1: TBevel
          Left = 33
          Top = 136
          Width = 722
          Height = 2
        end
        object edtCodigo: TDBEdit
          Tag = 98
          Left = 84
          Top = 11
          Width = 61
          Height = 19
          Ctl3D = False
          DataField = 'emp_cod'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 15
        end
        object edtRazao: TDBEdit
          Tag = 99
          Left = 443
          Top = 36
          Width = 312
          Height = 19
          Hint = 'Raz'#227'o Social'
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'emp_raz_soc'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object edtFantasia: TDBEdit
          Tag = 99
          Left = 84
          Top = 36
          Width = 269
          Height = 19
          Hint = 'Nome Fantasia'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_nom_fan'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 0
        end
        object edtIE: TDBEdit
          Tag = 99
          Left = 307
          Top = 61
          Width = 152
          Height = 19
          Hint = 'Inscri'#231#227'o Estadual'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_ie'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 3
        end
        object edtIM: TDBEdit
          Left = 605
          Top = 61
          Width = 150
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_im'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Tag = 99
          Left = 84
          Top = 111
          Width = 293
          Height = 19
          Hint = 'Email'
          Ctl3D = False
          DataField = 'emp_email'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 8
        end
        object edtCNPJ: TDBEdit
          Tag = 99
          Left = 84
          Top = 61
          Width = 136
          Height = 19
          Hint = 'CNPJ'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_cnpj'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 2
          OnExit = edtCNPJExit
        end
        object edtTelefone: TDBEdit
          Tag = 99
          Left = 590
          Top = 86
          Width = 165
          Height = 19
          Hint = 'Telefone'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_end_tel'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 7
        end
        object edtCNAE: TDBEdit
          Left = 84
          Top = 86
          Width = 133
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_cnae'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 5
        end
        object edtRua: TDBEdit
          Tag = 99
          Left = 256
          Top = 144
          Width = 365
          Height = 19
          Hint = 'Logradouro'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_log'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 10
        end
        object edtNumero: TDBEdit
          Tag = 99
          Left = 683
          Top = 144
          Width = 72
          Height = 19
          Hint = 'N'#250'mero'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_end_num'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 11
        end
        object edtComplemento: TDBEdit
          Left = 84
          Top = 168
          Width = 311
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_end_com'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 12
        end
        object edtBairro: TDBEdit
          Tag = 99
          Left = 441
          Top = 168
          Width = 314
          Height = 19
          Hint = 'Bairro'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_end_bai'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 13
        end
        object edtCodMun: TDBEdit
          Tag = 99
          Left = 84
          Top = 193
          Width = 54
          Height = 19
          Hint = 'C'#243'digo do Municipio'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cid_cod'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 14
        end
        object edtCEP: TDBEdit
          Tag = 99
          Left = 84
          Top = 143
          Width = 93
          Height = 19
          Hint = 'CEP'
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emp_end_cep'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 9
        end
        object JvDBComboEdit1: TJvDBComboEdit
          Tag = 98
          Left = 144
          Top = 193
          Width = 337
          Height = 19
          Cursor = crHandPoint
          TabStop = False
          DataField = 'desccidade'
          DataSource = dsPadrao
          Flat = True
          ParentFlat = False
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFD5B9BFDFDFDFDFDFDFDFDFDFDFDFDFDFD671E9C
            FDFDFDFDFDFDFDFDFDFDFDFDFDFD6F1EA4FDFDFDFDFDFDFDFDFDFDFDFDFDFD6F
            1E9CFD9BEDE4FDFDFDFDFDFDFDFDFDFD77A4ECFFFFFFE3FDFDFDFDFDFDFDFDFD
            AE0909FFFFFFFFE4FDFDFDFDFDFDFDFDE40909FFFFFFFFE4FDFDFDFDFDFDFDFD
            0909F4FFFFFFFFECFDFDFDFDFDFDFDFDE409090909FF09E4FDFDFDFDFDFDFDFD
            FDF5F6090909E4FDFDFDFDFDFDFDFDFDFDFDECEDEDECFDFDFDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
          ButtonWidth = 26
          TabOrder = 16
          OnButtonClick = JvDBComboEdit1ButtonClick
        end
        object cboRegTrib: TJvDBComboBox
          Tag = 99
          Left = 324
          Top = 86
          Width = 193
          Height = 21
          Hint = 'Regime Tribut'#225'rio'
          DataField = 'emp_reg_tri'
          DataSource = dsPadrao
          Items.Strings = (
            '1 - Simples nacional'
            '2 - Simples nacional - excesso de sublime'
            '3 - Normal')
          TabOrder = 6
          Values.Strings = (
            '1'
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object DBEdit3: TDBEdit
          Tag = 99
          Left = 515
          Top = 193
          Width = 30
          Height = 19
          Hint = 'UF'
          Ctl3D = False
          DataField = 'emp_end_uf'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 17
        end
        object chkIEIsenta: TDBCheckBox
          Tag = -1
          Left = 464
          Top = 64
          Width = 45
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taLeftJustify
          Caption = 'Isenta'
          DataField = 'emp_ie_isen'
          DataSource = dsPadrao
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'F'
          OnClick = chkIEIsentaClick
        end
      end
      inherited pnlSec: TPanel
        Left = 638
        Top = 503
        Width = 529
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 638
        ExplicitTop = 503
        ExplicitWidth = 529
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 616
    Top = 8
  end
  inherited cdsPadrao: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    OnCalcFields = cdsPadraoCalcFields
    Left = 664
    Top = 8
    object cdsPadraoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsPadraoemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Required = True
      Size = 18
    end
    object cdsPadraoemp_raz_soc: TStringField
      FieldName = 'emp_raz_soc'
      Size = 60
    end
    object cdsPadraoemp_nom_fan: TStringField
      FieldName = 'emp_nom_fan'
      Size = 60
    end
    object cdsPadraoemp_log: TStringField
      FieldName = 'emp_log'
      Size = 60
    end
    object cdsPadraoemp_end_num: TStringField
      FieldName = 'emp_end_num'
      Size = 10
    end
    object cdsPadraoemp_end_com: TStringField
      FieldName = 'emp_end_com'
      Size = 60
    end
    object cdsPadraoemp_end_bai: TStringField
      FieldName = 'emp_end_bai'
      Size = 60
    end
    object cdsPadraocid_cod: TIntegerField
      FieldName = 'cid_cod'
    end
    object cdsPadraoemp_end_cep: TStringField
      FieldName = 'emp_end_cep'
      Size = 10
    end
    object cdsPadraoemp_end_tel: TStringField
      FieldName = 'emp_end_tel'
      Size = 15
    end
    object cdsPadraoemp_ie: TStringField
      FieldName = 'emp_ie'
      Size = 15
    end
    object cdsPadraoemp_reg_tri: TIntegerField
      FieldName = 'emp_reg_tri'
    end
    object cdsPadraoemp_im: TStringField
      FieldName = 'emp_im'
      Size = 15
    end
    object cdsPadraoemp_email: TStringField
      FieldName = 'emp_email'
      Size = 100
    end
    object cdsPadraoemp_cnae: TStringField
      FieldName = 'emp_cnae'
      Size = 7
    end
    object cdsPadraoemp_cod_mat: TIntegerField
      FieldName = 'emp_cod_mat'
    end
    object cdsPadraoemp_ie_isen: TStringField
      FieldName = 'emp_ie_isen'
      Size = 1
    end
    object cdsPadraoemp_end_uf: TStringField
      FieldKind = fkCalculated
      FieldName = 'emp_end_uf'
      Size = 2
      Calculated = True
    end
    object cdsPadraodesccidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'desccidade'
      Size = 100
      Calculated = True
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloEmpresas.CRUD_Empresa
    Left = 704
    Top = 8
  end
  inherited ActionList1: TActionList
    Left = 760
    Top = 16
    inherited ActPes: TAction
      OnExecute = ActPesExecute
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 984
    Top = 248
  end
  inherited imgListPadrao: TImageList
    Left = 832
    Top = 128
    Bitmap = {
      494C010101000800440010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 128
    Top = 472
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 88
    Top = 416
  end
  inherited frxPadrao: TfrxReport
    Left = 32
    Top = 416
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 320
    Top = 416
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 240
    Top = 376
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 144
    Top = 400
  end
end
