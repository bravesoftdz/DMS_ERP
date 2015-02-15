inherited FrmCadEmpresas: TFrmCadEmpresas
  Caption = 'Cadastro de Empresas'
  ClientHeight = 545
  ClientWidth = 851
  Position = poDesktopCenter
  ExplicitWidth = 859
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 851
    Height = 526
    ExplicitWidth = 781
    ExplicitHeight = 526
    inherited Panel2: TPanel
      Width = 851
      Height = 526
      ExplicitWidth = 781
      ExplicitHeight = 526
      inherited pnlCrudPadrao: TPanel
        Left = 3
        Top = 3
        Width = 845
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 775
        inherited SpeedButton7: TSpeedButton
          Left = 789
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
        object SpeedButton1: TSpeedButton
          Left = 600
          Top = 0
          Width = 121
          Height = 33
          Action = ActConsSefaz
          Align = alLeft
          Flat = True
        end
      end
      inherited pnlPri: TPanel
        Top = 43
        Width = 847
        Height = 481
        Align = alClient
        ExplicitTop = 43
        ExplicitWidth = 777
        ExplicitHeight = 481
        object Label2: TLabel
          Left = 373
          Top = 14
          Width = 64
          Height = 13
          Caption = 'Raz'#227'o Social:'
          FocusControl = edtRazao
        end
        object Label3: TLabel
          Left = 7
          Top = 15
          Width = 75
          Height = 13
          Caption = 'Nome Fantasia:'
          FocusControl = edtFantasia
        end
        object Label11: TLabel
          Left = 236
          Top = 40
          Width = 67
          Height = 13
          Caption = 'Ins. Estadual:'
          FocusControl = edtIE
        end
        object Label13: TLabel
          Left = 525
          Top = 41
          Width = 74
          Height = 13
          Caption = 'Insc. Municipal:'
          FocusControl = edtIM
        end
        object Label14: TLabel
          Left = 55
          Top = 88
          Width = 28
          Height = 13
          Caption = 'Email:'
          FocusControl = DBEdit14
        end
        object Label16: TLabel
          Left = 52
          Top = 40
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = edtCNPJ
        end
        object Label10: TLabel
          Left = 538
          Top = 65
          Width = 46
          Height = 13
          Caption = 'Telefone:'
          FocusControl = edtTelefone
        end
        object Label15: TLabel
          Left = 51
          Top = 63
          Width = 31
          Height = 13
          Caption = 'CNAE:'
          FocusControl = edtCNAE
        end
        object Label4: TLabel
          Left = 191
          Top = 122
          Width = 59
          Height = 13
          Caption = 'Logradouro:'
          FocusControl = edtRua
        end
        object Label5: TLabel
          Left = 636
          Top = 125
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
          FocusControl = edtNumero
        end
        object Label6: TLabel
          Left = 11
          Top = 144
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          FocusControl = edtComplemento
        end
        object Label7: TLabel
          Left = 405
          Top = 147
          Width = 32
          Height = 13
          Caption = 'Bairro:'
          FocusControl = edtBairro
        end
        object Label8: TLabel
          Left = 31
          Top = 172
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
          FocusControl = edtCodMun
        end
        object Label9: TLabel
          Left = 57
          Top = 122
          Width = 23
          Height = 13
          Caption = 'CEP:'
          FocusControl = edtCEP
        end
        object Label12: TLabel
          Left = 232
          Top = 65
          Width = 86
          Height = 13
          Caption = 'Regime tribut'#225'rio:'
        end
        object Label22: TLabel
          Left = 496
          Top = 172
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit3
        end
        object Bevel1: TBevel
          Left = 33
          Top = 113
          Width = 722
          Height = 2
        end
        object Bevel2: TBevel
          Left = 41
          Top = 201
          Width = 722
          Height = 2
        end
        object edtRazao: TDBEdit
          Tag = 99
          Left = 443
          Top = 13
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
          Top = 13
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
          Top = 38
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
          Top = 38
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
          Top = 88
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
          Top = 38
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
          Top = 63
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
          Top = 63
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
          Top = 121
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
          Top = 121
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
          Top = 145
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
          Top = 145
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
          Top = 170
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
          Top = 120
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
          Top = 170
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
          TabOrder = 15
          OnButtonClick = JvDBComboEdit1ButtonClick
        end
        object cboRegTrib: TJvDBComboBox
          Tag = 99
          Left = 324
          Top = 63
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
          Top = 170
          Width = 30
          Height = 19
          Hint = 'UF'
          Ctl3D = False
          DataField = 'EMP_UF'
          DataSource = dsPadrao
          ParentCtl3D = False
          TabOrder = 16
        end
        object chkIEIsenta: TDBCheckBox
          Tag = -1
          Left = 464
          Top = 41
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
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'F'
          OnClick = chkIEIsentaClick
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 209
          Width = 752
          Height = 256
          Caption = 'Dados referentes '#224' Nota Fiscal Eletr'#244'nica'
          TabOrder = 18
          object Label1: TLabel
            Left = 87
            Top = 32
            Width = 49
            Height = 13
            Caption = 'Ambiente:'
          end
          object Label17: TLabel
            Left = 51
            Top = 58
            Width = 85
            Height = 13
            Caption = 'Assunto do email:'
            FocusControl = DBEdit2
          end
          object Label18: TLabel
            Left = 39
            Top = 91
            Width = 97
            Height = 13
            Caption = 'Mensagem do Email:'
          end
          object Label19: TLabel
            Left = 568
            Top = 32
            Width = 81
            Height = 13
            Caption = 'Vers'#227'o do layout'
            FocusControl = DBEdit5
          end
          object Label20: TLabel
            Left = 5
            Top = 205
            Width = 131
            Height = 13
            Caption = 'Caminho do Certificado A1:'
            FocusControl = DBEdit6
          end
          object Label21: TLabel
            Left = 374
            Top = 179
            Width = 104
            Height = 13
            Caption = 'Senha do Certificado:'
            FocusControl = DBEdit7
          end
          object Label23: TLabel
            Left = 38
            Top = 178
            Width = 98
            Height = 13
            Caption = 'S'#233'rie do Certificado:'
          end
          object Label24: TLabel
            Left = 313
            Top = 32
            Width = 88
            Height = 13
            Caption = 'Tipo de Impress'#227'o'
          end
          object Label25: TLabel
            Left = 54
            Top = 226
            Width = 82
            Height = 13
            Caption = 'Caminho do XML:'
            FocusControl = DBEdit10
          end
          object DBEdit2: TDBEdit
            Left = 142
            Top = 56
            Width = 577
            Height = 19
            DataField = 'EMP_NFE_EMAIL_ASSUNTO'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 655
            Top = 29
            Width = 65
            Height = 19
            DataField = 'EMP_NFE_LAYOUT'
            DataSource = dsPadrao
            TabOrder = 1
          end
          object DBEdit6: TDBEdit
            Left = 419
            Top = 7
            Width = 578
            Height = 19
            DataField = 'EMP_NFE_PATH_CERT'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 480
            Top = 176
            Width = 240
            Height = 19
            DataField = 'EMP_NFE_PASS_CERT'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object DBEdit10: TDBEdit
            Left = 142
            Top = 226
            Width = 578
            Height = 19
            DataField = 'EMP_NFE_PATH_XML'
            DataSource = dsPadrao
            TabOrder = 4
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 142
            Top = 29
            Width = 145
            Height = 21
            DataField = 'EMP_NFE_AMBIENTE'
            DataSource = dsPadrao
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            TabOrder = 5
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox2: TJvDBComboBox
            Left = 407
            Top = 29
            Width = 145
            Height = 21
            DataField = 'EMP_NFE_TIPO_IMP'
            DataSource = dsPadrao
            Items.Strings = (
              'Retrato'
              'Paisagem')
            TabOrder = 6
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object DBMemo1: TDBMemo
            Left = 142
            Top = 81
            Width = 578
            Height = 89
            DataField = 'EMP_NFE_MSG_EMAIL'
            DataSource = dsPadrao
            TabOrder = 7
          end
          object JvDBComboEdit2: TJvDBComboEdit
            Left = 142
            Top = 201
            Width = 578
            Height = 19
            DataField = 'EMP_NFE_PATH_CERT'
            DataSource = dsPadrao
            TabOrder = 8
            OnButtonClick = JvDBComboEdit2ButtonClick
          end
          object JvDBComboEdit3: TJvDBComboEdit
            Left = 142
            Top = 176
            Width = 226
            Height = 19
            DataField = 'EMP_NFE_SERIE_CERT'
            DataSource = dsPadrao
            TabOrder = 9
            OnButtonClick = JvDBComboEdit3ButtonClick
          end
        end
      end
      inherited pnlSec: TPanel
        Left = 1240
        Top = 99
        Width = 529
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 1240
        ExplicitTop = 99
        ExplicitWidth = 529
      end
    end
  end
  inherited statusBarPadrao: TStatusBar
    Top = 526
    Width = 851
    ExplicitTop = 526
    ExplicitWidth = 851
  end
  inherited dsPadrao: TDataSource
    Left = 672
    Top = 208
  end
  inherited cdsPadrao: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp_cnpj'
        ParamType = ptUnknown
      end>
    OnCalcFields = cdsPadraoCalcFields
    Left = 720
    Top = 208
    object cdsPadraoEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Required = True
      Size = 18
    end
    object cdsPadraoEMP_RAZ_SOC: TStringField
      FieldName = 'EMP_RAZ_SOC'
      Size = 60
    end
    object cdsPadraoEMP_NOM_FAN: TStringField
      FieldName = 'EMP_NOM_FAN'
      Size = 60
    end
    object cdsPadraoEMP_LOG: TStringField
      FieldName = 'EMP_LOG'
      Size = 60
    end
    object cdsPadraoEMP_END_NUM: TStringField
      FieldName = 'EMP_END_NUM'
      Size = 10
    end
    object cdsPadraoEMP_END_COM: TStringField
      FieldName = 'EMP_END_COM'
      Size = 60
    end
    object cdsPadraoEMP_END_BAI: TStringField
      FieldName = 'EMP_END_BAI'
      Size = 60
    end
    object cdsPadraoCID_COD: TIntegerField
      FieldName = 'CID_COD'
    end
    object cdsPadraoEMP_END_CEP: TStringField
      FieldName = 'EMP_END_CEP'
      Size = 10
    end
    object cdsPadraoEMP_END_TEL: TStringField
      FieldName = 'EMP_END_TEL'
      Size = 15
    end
    object cdsPadraoEMP_IE: TStringField
      FieldName = 'EMP_IE'
      Size = 15
    end
    object cdsPadraoEMP_REG_TRI: TIntegerField
      FieldName = 'EMP_REG_TRI'
    end
    object cdsPadraoEMP_IM: TStringField
      FieldName = 'EMP_IM'
      Size = 15
    end
    object cdsPadraoEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Size = 100
    end
    object cdsPadraoEMP_CNAE: TStringField
      FieldName = 'EMP_CNAE'
      Size = 7
    end
    object cdsPadraoEMP_COD_MAT: TIntegerField
      FieldName = 'EMP_COD_MAT'
    end
    object cdsPadraoEMP_IE_ISEN: TStringField
      FieldName = 'EMP_IE_ISEN'
      Size = 1
    end
    object cdsPadraodesccidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'desccidade'
      Size = 100
      Calculated = True
    end
    object cdsPadraoEMP_NFE_AMBIENTE: TSmallintField
      FieldName = 'EMP_NFE_AMBIENTE'
    end
    object cdsPadraoEMP_NFE_EMAIL_ASSUNTO: TStringField
      FieldName = 'EMP_NFE_EMAIL_ASSUNTO'
      Size = 100
    end
    object cdsPadraoEMP_NFE_LAYOUT: TStringField
      FieldName = 'EMP_NFE_LAYOUT'
      Size = 5
    end
    object cdsPadraoEMP_NFE_PATH_CERT: TStringField
      FieldName = 'EMP_NFE_PATH_CERT'
      Size = 200
    end
    object cdsPadraoEMP_NFE_PASS_CERT: TStringField
      FieldName = 'EMP_NFE_PASS_CERT'
      Size = 50
    end
    object cdsPadraoEMP_NFE_SERIE_CERT: TStringField
      FieldName = 'EMP_NFE_SERIE_CERT'
      Size = 50
    end
    object cdsPadraoEMP_NFE_TIPO_IMP: TSmallintField
      FieldName = 'EMP_NFE_TIPO_IMP'
    end
    object cdsPadraoEMP_NFE_PATH_XML: TStringField
      FieldName = 'EMP_NFE_PATH_XML'
      Size = 200
    end
    object cdsPadraoEMP_NFE_MSG_EMAIL: TStringField
      FieldName = 'EMP_NFE_MSG_EMAIL'
      Size = 3000
    end
    object cdsPadraoEMP_UF: TStringField
      FieldName = 'EMP_UF'
      Size = 2
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloEmpresas.CRUD_Empresa
    Left = 760
    Top = 208
  end
  inherited ActionList1: TActionList
    Left = 760
    Top = 16
    inherited ActPes: TAction
      OnExecute = ActPesExecute
    end
    object ActConsSefaz: TAction
      Category = 'Menu'
      Caption = 'Consultar na SEFAZ'
      OnExecute = ActConsSefazExecute
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
      494C010101000800540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 976
    Top = 184
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 976
    Top = 112
  end
  inherited frxPadrao: TfrxReport
    Left = 920
    Top = 112
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 1208
    Top = 112
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 1128
    Top = 72
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 1032
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    Left = 752
    Top = 96
  end
end
