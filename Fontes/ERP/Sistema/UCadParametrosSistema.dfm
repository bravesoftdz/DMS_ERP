inherited FrmCadParamSis: TFrmCadParamSis
  Caption = 'Parametros do Sistema'
  ClientHeight = 583
  ClientWidth = 765
  ExplicitWidth = 773
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 765
    Height = 583
    ExplicitWidth = 765
    ExplicitHeight = 583
    inherited Panel2: TPanel
      Width = 765
      Height = 583
      ExplicitWidth = 765
      ExplicitHeight = 583
      inherited pnlCrudPadrao: TPanel
        Width = 761
        ExplicitWidth = 761
        inherited btnIns: TSpeedButton
          Width = 7
          Visible = False
          ExplicitWidth = 7
          ExplicitHeight = 29
        end
        inherited btnAlt: TSpeedButton
          Left = 13
          ExplicitLeft = 13
        end
        inherited btnExc: TSpeedButton
          Left = 96
          ExplicitLeft = 96
        end
        inherited btnGra: TSpeedButton
          Left = 180
          ExplicitLeft = 180
        end
        inherited btnCan: TSpeedButton
          Left = 263
          ExplicitLeft = 263
        end
        inherited btnImp: TSpeedButton
          Left = 353
          Width = 15
          ExplicitLeft = 426
          ExplicitTop = 2
          ExplicitWidth = 15
        end
        inherited SpeedButton7: TSpeedButton
          Left = 706
          ExplicitLeft = 662
          ExplicitHeight = 27
        end
        inherited btnPes: TSpeedButton
          Left = 347
          Width = 2
          Visible = False
          ExplicitLeft = 418
          ExplicitWidth = 2
          ExplicitHeight = 29
        end
      end
      inherited pnlPri: TPanel
        Width = 761
        Height = 540
        Align = alClient
        ParentCtl3D = True
        ExplicitWidth = 761
        ExplicitHeight = 540
        object PageControl1: TPageControl
          Tag = -1
          Left = 0
          Top = 0
          Width = 759
          Height = 538
          Cursor = crHandPoint
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ActivePage = TabSheet1
          Align = alClient
          Style = tsButtons
          TabOrder = 0
          object TabSheet1: TTabSheet
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Sistema'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox1: TGroupBox
              Left = 0
              Top = 0
              Width = 751
              Height = 507
              Align = alClient
              TabOrder = 0
              object Label9: TLabel
                Left = 11
                Top = 55
                Width = 167
                Height = 13
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Caption = 'Caminho dos arquivos no Servidor:'
                FocusControl = DBEdit8
              end
              object Label1: TLabel
                Left = 11
                Top = 14
                Width = 112
                Height = 13
                Caption = 'Cor campo Obrigat'#243'rio:'
              end
              object Label2: TLabel
                Left = 11
                Top = 97
                Width = 94
                Height = 13
                Caption = 'Qtd de Casas Dec.:'
                FocusControl = edt_sis_cas_dec
              end
              object Label3: TLabel
                Left = 120
                Top = 97
                Width = 100
                Height = 13
                Caption = 'Tmp Timer em Miliseg'
                FocusControl = DBEdit2
              end
              object Label11: TLabel
                Left = 355
                Top = 119
                Width = 36
                Height = 13
                Caption = 'Tipo PC'
              end
              object DBEdit8: TDBEdit
                Left = 11
                Top = 69
                Width = 286
                Height = 19
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                DataField = 'sis_path'
                DataSource = dsPadrao
                TabOrder = 0
              end
              object edtColor: TJvDBComboEdit
                Left = 11
                Top = 28
                Width = 112
                Height = 19
                DataField = 'sis_cor_cam_obr'
                DataSource = dsPadrao
                TabOrder = 1
                OnButtonClick = edtColorButtonClick
                OnChange = edtColorChange
              end
              object edt_sis_cas_dec: TDBEdit
                Left = 11
                Top = 113
                Width = 94
                Height = 19
                DataField = 'sis_cas_dec'
                DataSource = dsPadrao
                TabOrder = 2
              end
              object DBEdit2: TDBEdit
                Left = 120
                Top = 113
                Width = 100
                Height = 19
                DataField = 'sis_int_tim'
                DataSource = dsPadrao
                TabOrder = 3
              end
              object DBCheckBox1: TDBCheckBox
                Left = 355
                Top = 13
                Width = 97
                Height = 17
                Caption = 'Msg ao Gravar?'
                DataField = 'sis_msg_crud'
                DataSource = dsPadrao
                TabOrder = 4
              end
              object DBCheckBox2: TDBCheckBox
                Left = 355
                Top = 36
                Width = 125
                Height = 17
                Caption = 'Reg. Log. ao Alt.?'
                DataField = 'sis_reg_log_alt'
                DataSource = dsPadrao
                TabOrder = 5
              end
              object DBCheckBox3: TDBCheckBox
                Left = 355
                Top = 59
                Width = 125
                Height = 17
                Caption = 'Reg. Log. ao Ins.?'
                DataField = 'sis_reg_log_ins'
                DataSource = dsPadrao
                TabOrder = 6
              end
              object DBCheckBox4: TDBCheckBox
                Left = 355
                Top = 82
                Width = 125
                Height = 17
                Caption = 'Reg. Log. ao Exc.?'
                DataField = 'sis_reg_log_exc'
                DataSource = dsPadrao
                TabOrder = 7
              end
              object GroupBox3: TGroupBox
                Left = 11
                Top = 144
                Width = 286
                Height = 153
                Caption = 'FTP'
                TabOrder = 8
                object Label5: TLabel
                  Left = 11
                  Top = 16
                  Width = 22
                  Height = 13
                  Caption = 'Host'
                  FocusControl = DBEdit3
                end
                object Label6: TLabel
                  Left = 11
                  Top = 56
                  Width = 36
                  Height = 13
                  Caption = 'Usu'#225'rio'
                  FocusControl = DBEdit4
                end
                object Label10: TLabel
                  Left = 11
                  Top = 96
                  Width = 30
                  Height = 13
                  Caption = 'Senha'
                  FocusControl = DBEdit5
                end
                object DBEdit3: TDBEdit
                  Left = 11
                  Top = 32
                  Width = 252
                  Height = 19
                  DataField = 'sis_ftp_host'
                  DataSource = dsPadrao
                  TabOrder = 0
                end
                object DBEdit4: TDBEdit
                  Left = 11
                  Top = 72
                  Width = 252
                  Height = 19
                  DataField = 'sis_ftp_user'
                  DataSource = dsPadrao
                  TabOrder = 1
                end
                object DBEdit5: TDBEdit
                  Left = 11
                  Top = 112
                  Width = 252
                  Height = 19
                  DataField = 'sis_ftp_pass'
                  DataSource = dsPadrao
                  PasswordChar = '*'
                  TabOrder = 2
                end
              end
              object JvDBComboBox1: TJvDBComboBox
                Left = 355
                Top = 138
                Width = 145
                Height = 21
                DataField = 'sis_pc_tipo'
                DataSource = dsPadrao
                Items.Strings = (
                  'Cliente'
                  'Servidos')
                TabOrder = 9
                Values.Strings = (
                  'C'
                  'S')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
            end
          end
          object TabSheet6: TTabSheet
            Tag = -1
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Pessoas'
            ImageIndex = 5
            object GroupBox8: TGroupBox
              Tag = -1
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 747
              Height = 503
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              TabOrder = 0
              object GroupBox2: TGroupBox
                Tag = -1
                Left = 13
                Top = 2
                Width = 331
                Height = 175
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Caption = 'Tipos de Pessoas'
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                object Label7: TLabel
                  Left = 10
                  Top = 18
                  Width = 42
                  Height = 13
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Caption = 'Clientes:'
                  FocusControl = edtCodprazo
                end
                object Label8: TLabel
                  Left = 10
                  Top = 55
                  Width = 50
                  Height = 13
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Caption = 'Vendedor:'
                  FocusControl = DBEdit7
                end
                object Label20: TLabel
                  Left = 10
                  Top = 94
                  Width = 70
                  Height = 13
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Caption = 'Fornecedores:'
                  FocusControl = DBEdit12
                end
                object Label4: TLabel
                  Left = 10
                  Top = 134
                  Width = 56
                  Height = 13
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Caption = 'Fabricantes'
                  FocusControl = DBEdit1
                end
                object edtCodprazo: TDBEdit
                  Left = 9
                  Top = 31
                  Width = 39
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Ctl3D = False
                  DataField = 'pes_cod_tip_cli'
                  DataSource = dsPadrao
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 9
                  Top = 68
                  Width = 39
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Ctl3D = False
                  DataField = 'pes_cod_tip_ven'
                  DataSource = dsPadrao
                  ParentCtl3D = False
                  TabOrder = 1
                end
                object DBEdit12: TDBEdit
                  Left = 9
                  Top = 107
                  Width = 39
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Ctl3D = False
                  DataField = 'pes_cod_tip_for'
                  DataSource = dsPadrao
                  ParentCtl3D = False
                  TabOrder = 2
                end
                object edtTipoCli: TJvDBComboEdit
                  Tag = 98
                  Left = 49
                  Top = 31
                  Width = 244
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  DataField = 'nomeTipoCli'
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
                  TabOrder = 3
                  OnButtonClick = edtTipoCliButtonClick
                end
                object JvDBComboEdit2: TJvDBComboEdit
                  Tag = 98
                  Left = 52
                  Top = 68
                  Width = 244
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  DataField = 'nomeTipoVendedor'
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
                  TabOrder = 4
                  OnButtonClick = JvDBComboEdit2ButtonClick
                end
                object JvDBComboEdit4: TJvDBComboEdit
                  Tag = 98
                  Left = 49
                  Top = 107
                  Width = 244
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  DataField = 'nomeTipoForne'
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
                  TabOrder = 5
                  OnButtonClick = JvDBComboEdit4ButtonClick
                end
                object DBEdit1: TDBEdit
                  Left = 9
                  Top = 147
                  Width = 39
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Ctl3D = False
                  DataField = 'pes_cod_tip_fabr'
                  DataSource = dsPadrao
                  ParentCtl3D = False
                  TabOrder = 6
                end
                object JvDBComboEdit1: TJvDBComboEdit
                  Tag = 98
                  Left = 49
                  Top = 147
                  Width = 244
                  Height = 19
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  DataField = 'nomeTipoFab'
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
                  TabOrder = 7
                  OnButtonClick = JvDBComboEdit1ButtonClick
                end
              end
            end
          end
        end
      end
      inherited pnlSec: TPanel
        Left = 515
        Top = 358
        Width = 72
        Height = 34
        ExplicitLeft = 515
        ExplicitTop = 358
        ExplicitWidth = 72
        ExplicitHeight = 34
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 320
    Top = 376
  end
  inherited cdsPadrao: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'emp_cod'
        ParamType = ptInput
      end>
    OnCalcFields = cdsPadraoCalcFields
    Left = 136
    Top = 392
    object cdsPadraoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsPadraosis_cor_cam_obr: TIntegerField
      FieldName = 'sis_cor_cam_obr'
    end
    object cdsPadraopes_cod_tip_cli: TIntegerField
      FieldName = 'pes_cod_tip_cli'
    end
    object cdsPadraopes_cod_tip_for: TIntegerField
      FieldName = 'pes_cod_tip_for'
    end
    object cdsPadraopes_cod_tip_ven: TIntegerField
      FieldName = 'pes_cod_tip_ven'
    end
    object cdsPadraosis_cas_dec: TIntegerField
      FieldName = 'sis_cas_dec'
    end
    object cdsPadraosis_int_tim: TIntegerField
      FieldName = 'sis_int_tim'
    end
    object cdsPadraosis_msg_crud: TStringField
      FieldName = 'sis_msg_crud'
      Size = 1
    end
    object cdsPadraosis_reg_log_ins: TStringField
      FieldName = 'sis_reg_log_ins'
      Size = 1
    end
    object cdsPadraosis_reg_log_alt: TStringField
      FieldName = 'sis_reg_log_alt'
      Size = 1
    end
    object cdsPadraosis_reg_log_exc: TStringField
      FieldName = 'sis_reg_log_exc'
      Size = 1
    end
    object cdsPadraosis_path: TStringField
      FieldName = 'sis_path'
      Size = 300
    end
    object cdsPadraonomeTipoVendedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeTipoVendedor'
      Size = 60
      Calculated = True
    end
    object cdsPadraonomeTipoForne: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeTipoForne'
      Size = 60
      Calculated = True
    end
    object cdsPadraonomeTipoCli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeTipoCli'
      Size = 60
      Calculated = True
    end
    object cdsPadraosis_versao: TStringField
      FieldName = 'sis_versao'
      Size = 10
    end
    object cdsPadraopes_cod_tip_fabr: TIntegerField
      FieldName = 'pes_cod_tip_fabr'
    end
    object cdsPadraonomeTipoFab: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeTipoFab'
      Size = 60
      Calculated = True
    end
    object cdsPadraosis_ftp_host: TStringField
      FieldName = 'sis_ftp_host'
      Size = 100
    end
    object cdsPadraosis_ftp_user: TStringField
      FieldName = 'sis_ftp_user'
    end
    object cdsPadraosis_ftp_pass: TStringField
      FieldName = 'sis_ftp_pass'
    end
    object cdsPadraosis_pc_tipo: TStringField
      FieldName = 'sis_pc_tipo'
      Size = 1
    end
  end
  inherited dspPadrao: TDataSetProvider
    Left = 256
    Top = 376
  end
  inherited ActionList1: TActionList
    Left = 72
    Top = 384
  end
  inherited PopupMenu1: TPopupMenu
    Left = 760
    Top = 184
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
  inherited frxDesigner1: TfrxDesigner
    Left = 648
    Top = 224
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 632
    Top = 280
  end
  inherited frxPadrao: TfrxReport
    Left = 432
    Top = 360
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 680
    Top = 384
  end
  object clDialog: TJvColorDialog
    Left = 480
    Top = 384
  end
end
