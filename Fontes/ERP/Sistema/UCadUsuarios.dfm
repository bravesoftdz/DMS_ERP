inherited FrmCadUsuarios: TFrmCadUsuarios
  Anchors = [akLeft, akTop, akRight]
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 237
  ClientWidth = 439
  ParentBiDiMode = False
  ExplicitWidth = 445
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 439
    Height = 237
    ExplicitWidth = 439
    ExplicitHeight = 252
    inherited Panel2: TPanel
      Width = 439
      Height = 237
      ExplicitWidth = 439
      ExplicitHeight = 252
      inherited pnlCrudPadrao: TPanel
        Width = 435
        ParentCtl3D = True
        ExplicitWidth = 435
        inherited btnIns: TSpeedButton
          Width = 59
          ExplicitWidth = 59
          ExplicitHeight = 29
        end
        inherited btnAlt: TSpeedButton
          Left = 65
          Width = 58
          ExplicitLeft = 65
          ExplicitWidth = 58
          ExplicitHeight = 29
        end
        inherited btnExc: TSpeedButton
          Left = 127
          Width = 59
          ExplicitLeft = 127
          ExplicitTop = 2
          ExplicitWidth = 59
        end
        inherited btnGra: TSpeedButton
          Left = 190
          Width = 58
          ExplicitLeft = 190
          ExplicitWidth = 58
          ExplicitHeight = 29
        end
        inherited btnCan: TSpeedButton
          Left = 252
          Width = 59
          ExplicitLeft = 252
          ExplicitWidth = 59
          ExplicitHeight = 29
        end
        inherited btnImp: TSpeedButton
          Left = 385
          Width = 3
          ExplicitLeft = 382
          ExplicitTop = 2
          ExplicitWidth = 3
        end
        inherited SpeedButton7: TSpeedButton
          Left = 374
          Width = 57
          ExplicitLeft = 385
          ExplicitWidth = 57
          ExplicitHeight = 29
        end
        inherited btnPes: TSpeedButton
          Left = 315
          Width = 66
          ExplicitLeft = 315
          ExplicitWidth = 66
          ExplicitHeight = 29
        end
      end
      inherited pnlPri: TPanel
        Width = 435
        Height = 194
        Align = alClient
        ExplicitWidth = 435
        ExplicitHeight = 209
        object Label1: TLabel
          Left = 26
          Top = 14
          Width = 37
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'C'#243'digo:'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 34
          Top = 37
          Width = 29
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Login:'
          FocusControl = edtLogin
        end
        object Label3: TLabel
          Left = 223
          Top = 38
          Width = 34
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Senha:'
        end
        object Label11: TLabel
          Left = 36
          Top = 84
          Width = 28
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Perfil:'
        end
        object Label12: TLabel
          Left = 30
          Top = 111
          Width = 33
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Depto:'
        end
        object Label4: TLabel
          Left = 34
          Top = 61
          Width = 31
          Height = 13
          Caption = 'Nome:'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 37
          Top = 134
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 21
          Top = 160
          Width = 45
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Empresa:'
        end
        object DBEdit1: TDBEdit
          Tag = 98
          Left = 67
          Top = 12
          Width = 54
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabStop = False
          DataField = 'usu_cod'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtLogin: TDBEdit
          Tag = 99
          Left = 67
          Top = 35
          Width = 147
          Height = 19
          Hint = 'Login'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CharCase = ecUpperCase
          DataField = 'usu_login'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object chkAtivo: TDBCheckBox
          Left = 150
          Top = 15
          Width = 50
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taLeftJustify
          Caption = 'Ativo ?'
          DataField = 'usu_sit'
          DataSource = dsPadrao
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object edtSenha: TEdit
          Left = 261
          Top = 35
          Width = 139
          Height = 19
          Hint = 'Senha'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CharCase = ecUpperCase
          PasswordChar = '*'
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Tag = 99
          Left = 67
          Top = 83
          Width = 333
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataField = 'per_cod'
          DataSource = dsPadrao
          KeyField = 'per_cod'
          ListField = 'per_desc'
          ListSource = dsPerfil
          TabOrder = 4
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 67
          Top = 108
          Width = 333
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataField = 'dep_cod'
          DataSource = dsPadrao
          KeyField = 'dep_cod'
          ListField = 'dep_desc'
          ListSource = dsDepto
          TabOrder = 5
        end
        object DBEdit2: TDBEdit
          Left = 67
          Top = 59
          Width = 333
          Height = 19
          DataField = 'usu_nome'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 67
          Top = 133
          Width = 333
          Height = 19
          DataField = 'usu_email'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 67
          Top = 158
          Width = 333
          Height = 19
          DataField = 'emp_cod'
          DataSource = dsPadrao
          LookupField = 'emp_cod'
          LookupDisplay = 'emp_nom_fan'
          LookupSource = dsEmpresa
          TabOrder = 8
        end
      end
      inherited pnlSec: TPanel
        AlignWithMargins = False
        Left = 32
        Top = 311
        Width = 988
        Height = 60
        ExplicitLeft = 32
        ExplicitTop = 311
        ExplicitWidth = 988
        ExplicitHeight = 60
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 752
    Top = 184
  end
  inherited cdsPadrao: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'usu_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    Left = 704
    Top = 176
    object cdsPadraousu_cod: TIntegerField
      FieldName = 'usu_cod'
      Required = True
    end
    object cdsPadraoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsPadraousu_login: TStringField
      FieldName = 'usu_login'
      Size = 40
    end
    object cdsPadraousu_senha: TStringField
      FieldName = 'usu_senha'
      Size = 40
    end
    object cdsPadraousu_email: TStringField
      FieldName = 'usu_email'
      Size = 100
    end
    object cdsPadraousu_sit: TSmallintField
      FieldName = 'usu_sit'
    end
    object cdsPadraousu_ult_login: TDateTimeField
      FieldName = 'usu_ult_login'
    end
    object cdsPadraosis_versao: TStringField
      FieldName = 'sis_versao'
      Size = 10
    end
    object cdsPadraoper_cod: TIntegerField
      FieldName = 'per_cod'
    end
    object cdsPadraodep_cod: TIntegerField
      FieldName = 'dep_cod'
    end
    object cdsPadraousu_nome: TStringField
      FieldName = 'usu_nome'
      Size = 100
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = ModuloAcesso.CRUD_Usuarios
    Left = 640
    Top = 176
  end
  inherited ActionList1: TActionList
    Left = 592
    Top = 32
    inherited ActPes: TAction
      OnExecute = ActPesExecute
    end
    object ActIns_e: TAction
      Category = 'Menu'
      Caption = 'Inserir'
    end
    object Actalt_e: TAction
      Category = 'Menu'
      Caption = 'Alterar'
    end
    object actexc_e: TAction
      Category = 'Menu'
      Caption = 'Excluir'
    end
    object ActGra_e: TAction
      Category = 'Menu'
      Caption = 'Salvar'
      Enabled = False
    end
    object ActCan_e: TAction
      Category = 'Menu'
      Caption = 'Cancelar'
      Enabled = False
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 456
    Top = 232
  end
  inherited imgListPadrao: TImageList
    Left = 416
    Top = 256
    Bitmap = {
      494C010101000800400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 408
    Top = 288
  end
  inherited frxDBPadrao: TfrxDBDataset
    Left = 336
    Top = 296
  end
  inherited frxPadrao: TfrxReport
    Left = 552
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 360
    Top = 264
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 328
    Top = 280
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 312
    Top = 280
  end
  object dspDepto: TDataSetProvider
    DataSet = ModuloEmpresas.ConsDepto
    Left = 640
    Top = 120
  end
  object cdsDepto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDepto'
    Left = 680
    Top = 120
    object cdsDeptodep_cod: TIntegerField
      FieldName = 'dep_cod'
      Required = True
    end
    object cdsDeptoemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsDeptodep_desc: TStringField
      FieldName = 'dep_desc'
      Size = 50
    end
    object cdsDeptodep_fone: TStringField
      FieldName = 'dep_fone'
    end
    object cdsDeptodep_ram: TStringField
      FieldName = 'dep_ram'
      Size = 10
    end
  end
  object dsDepto: TDataSource
    DataSet = cdsDepto
    Left = 736
    Top = 120
  end
  object dspPErfil: TDataSetProvider
    DataSet = ModuloAcesso.ConsPerfil
    Left = 640
    Top = 56
  end
  object cdsPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPErfil'
    Left = 680
    Top = 56
    object cdsPerfilemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsPerfilper_cod: TSmallintField
      FieldName = 'per_cod'
      Required = True
    end
    object cdsPerfilper_desc: TStringField
      FieldName = 'per_desc'
      Size = 30
    end
    object cdsPerfilper_adm: TStringField
      FieldName = 'per_adm'
      Size = 1
    end
    object cdsPerfilper_ger: TStringField
      FieldName = 'per_ger'
      FixedChar = True
      Size = 1
    end
    object cdsPerfilsis_versao: TStringField
      FieldName = 'sis_versao'
      Size = 10
    end
  end
  object dsPerfil: TDataSource
    DataSet = cdsPerfil
    Left = 736
    Top = 56
  end
  object dspEmpresas: TDataSetProvider
    DataSet = ModuloEmpresas.ConsEmpresa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 248
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'usu_cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspEmpresas'
    OnReconcileError = cdsPadraoReconcileError
    Left = 704
    Top = 248
    object cdsEmpresaemp_cod: TIntegerField
      FieldName = 'emp_cod'
      Required = True
    end
    object cdsEmpresaemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Required = True
      Size = 18
    end
    object cdsEmpresaemp_raz_soc: TStringField
      FieldName = 'emp_raz_soc'
      Size = 60
    end
    object cdsEmpresaemp_nom_fan: TStringField
      FieldName = 'emp_nom_fan'
      Size = 60
    end
    object cdsEmpresaemp_log: TStringField
      FieldName = 'emp_log'
      Size = 60
    end
    object cdsEmpresaemp_end_num: TStringField
      FieldName = 'emp_end_num'
      Size = 10
    end
    object cdsEmpresaemp_end_com: TStringField
      FieldName = 'emp_end_com'
      Size = 60
    end
    object cdsEmpresaemp_end_bai: TStringField
      FieldName = 'emp_end_bai'
      Size = 60
    end
    object cdsEmpresacid_cod: TIntegerField
      FieldName = 'cid_cod'
    end
    object cdsEmpresaemp_end_cep: TStringField
      FieldName = 'emp_end_cep'
      Size = 10
    end
    object cdsEmpresaemp_end_tel: TStringField
      FieldName = 'emp_end_tel'
      Size = 15
    end
    object cdsEmpresaemp_ie: TStringField
      FieldName = 'emp_ie'
      Size = 15
    end
    object cdsEmpresaemp_reg_tri: TIntegerField
      FieldName = 'emp_reg_tri'
    end
    object cdsEmpresaemp_im: TStringField
      FieldName = 'emp_im'
      Size = 15
    end
    object cdsEmpresaemp_email: TStringField
      FieldName = 'emp_email'
      Size = 100
    end
    object cdsEmpresaemp_cnae: TStringField
      FieldName = 'emp_cnae'
      Size = 7
    end
    object cdsEmpresaemp_cod_mat: TIntegerField
      FieldName = 'emp_cod_mat'
    end
    object cdsEmpresaemp_ie_isen: TStringField
      FieldName = 'emp_ie_isen'
      Size = 1
    end
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = cdsEmpresa
    OnDataChange = dsPadraoDataChange
    Left = 768
    Top = 248
  end
end
