inherited FrmConsCotacoes: TFrmConsCotacoes
  Caption = 'Consulta de Cota'#231#245'es'
  ClientHeight = 486
  ClientWidth = 899
  Visible = False
  ExplicitWidth = 905
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 895
    ExplicitWidth = 895
    inherited SpeedButton7: TSpeedButton
      Left = 813
      ExplicitLeft = 813
    end
  end
  inherited ScrollBox1: TScrollBox
    Left = 0
    Top = 140
    Width = 899
    Height = 346
    Align = alClient
    ParentBackground = True
    ExplicitLeft = 0
    ExplicitTop = 140
    ExplicitWidth = 899
    ExplicitHeight = 346
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 899
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 577
        Height = 155
        Align = alLeft
        Caption = 'Cota'#231#245'es'
        TabOrder = 0
        object JvDBUltimGrid1: TJvDBUltimGrid
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 569
          Height = 134
          Align = alClient
          DataSource = dsConsPadrao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = JvDBUltimGrid1CellClick
          OnDblClick = JvDBUltimGrid1DblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          UseXPThemes = False
          Columns = <
            item
              Expanded = False
              FieldName = 'cot_id'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'emp_nome_fantasia'
              Title.Caption = 'Empresa'
              Width = 199
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'datacad'
              Title.Caption = 'Data de Cadastro'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cot_data_fim'
              Title.Caption = 'Data  deT'#233'rmino'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cot_hora_fim'
              Title.Caption = 'Hora de T'#233'rmino'
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 586
        Top = 3
        Width = 310
        Height = 155
        Align = alClient
        Caption = 'Fornecedores'
        TabOrder = 1
        object JvDBUltimGrid2: TJvDBUltimGrid
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 302
          Height = 134
          Align = alClient
          DataSource = dsFornecedores
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          UseXPThemes = False
          Columns = <
            item
              Expanded = False
              FieldName = 'pes_fantasia_apelido'
              Title.Caption = 'Fornecedor'
              Width = 232
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_email'
              Title.Caption = 'Email'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pes_cnpj_cpf'
              Title.Caption = 'CNPJ'
              Visible = True
            end>
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 161
      Width = 899
      Height = 185
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 893
        Height = 179
        Align = alClient
        Caption = 'Itens da Cota'#231#227'o'
        TabOrder = 0
        object JvDBUltimGrid3: TJvDBUltimGrid
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 885
          Height = 158
          Align = alClient
          DataSource = dsCotItens
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          UseXPThemes = False
          Columns = <
            item
              Expanded = False
              FieldName = 'prd_id'
              Title.Caption = 'C'#243'digo'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd'
              Title.Caption = 'Qtd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prd_descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_ult_compra'
              Title.Caption = 'Valor Ult Compra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_prevista'
              Title.Caption = 'Data Prevista'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itm_grp_descricao'
              Title.Caption = 'Grupo'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sub_descricao'
              Title.Caption = 'Sub Grupo'
              Width = 134
              Visible = True
            end>
        end
      end
    end
  end
  inherited GroupBox1: TGroupBox
    Left = 2
    Top = 43
    Width = 895
    Height = 95
    Align = alTop
    ExplicitLeft = 2
    ExplicitTop = 43
    ExplicitWidth = 895
    ExplicitHeight = 95
    object Label6: TLabel
      Left = 300
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label3: TLabel
      Left = 300
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label4: TLabel
      Left = 604
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object SpeedButton3: TSpeedButton
      Left = 591
      Top = 65
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        C6020000424DC602000000000000C60100002800000010000000100000000100
        08000000000000010000120B0000120B0000640000006400000000000000FFFF
        FF00FF00FF000086000000830000007B0000005E0000005C0000005800000054
        00000182020000650100005D010004880700068C0900048A0B00035A06000796
        0D0006630900046D0A00068E0F000CA015000C9D150008690E000B891300096D
        110011AA1D000D8217000E78180001500A001CB62F0013872300179928001890
        290021C239001C9A31001C982F0036E554002AD149002BCE49002CD44D000E91
        2D0035E05D0025AC460047F779001DA657000B63440012805B002D919700185F
        69003EABEE0045B4F70048B7FA00196DA3003DAAF400258BD80039A4F4003BA7
        F80040ACFE0041ADFA00025291000354950004579A00065B9F00197ACC001F81
        D4002581CE00319CF700359EF2003CA6FF000458A000065BAA00075CA9000962
        B4001676CA001E80D500268BE5002687DD002889E3002C8FEB002D95EF0038A1
        FF0038A3FF000C67C4000B64BB000F69BF002184E300278CEB000F6AC900126E
        D300116CCF001B6DC4002380E100136FDC001160C0001573E7001574E0001776
        E6001877EA00166AD40002020202020202626002020202020202020202020202
        615F5D5958020202020202020202024A4C57565A535449480202020202020237
        32334D364B5547463E3D020202021D43385B344D3B3941403F3C0202022E311D
        63425E4E3A44454550020202122B1E1E1E1D1D355C4F525102020219232C251E
        292F1E1E1D1D020202020224212A22150304142D300202020202020210201A0A
        050F0C0C02020202020202021F260D070C130202020202020202021C280E0902
        02020202020202020202172711080202020202020202020202021B1606020202
        02020202020202020202180B0202020202020202020202020202020202020202
        02020202020202020202}
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 861
      Top = 29
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        C6020000424DC602000000000000C60100002800000010000000100000000100
        08000000000000010000120B0000120B0000640000006400000000000000FFFF
        FF00FF00FF000086000000830000007B0000005E0000005C0000005800000054
        00000182020000650100005D010004880700068C0900048A0B00035A06000796
        0D0006630900046D0A00068E0F000CA015000C9D150008690E000B891300096D
        110011AA1D000D8217000E78180001500A001CB62F0013872300179928001890
        290021C239001C9A31001C982F0036E554002AD149002BCE49002CD44D000E91
        2D0035E05D0025AC460047F779001DA657000B63440012805B002D919700185F
        69003EABEE0045B4F70048B7FA00196DA3003DAAF400258BD80039A4F4003BA7
        F80040ACFE0041ADFA00025291000354950004579A00065B9F00197ACC001F81
        D4002581CE00319CF700359EF2003CA6FF000458A000065BAA00075CA9000962
        B4001676CA001E80D500268BE5002687DD002889E3002C8FEB002D95EF0038A1
        FF0038A3FF000C67C4000B64BB000F69BF002184E300278CEB000F6AC900126E
        D300116CCF001B6DC4002380E100136FDC001160C0001573E7001574E0001776
        E6001877EA00166AD40002020202020202626002020202020202020202020202
        615F5D5958020202020202020202024A4C57565A535449480202020202020237
        32334D364B5547463E3D020202021D43385B344D3B3941403F3C0202022E311D
        63425E4E3A44454550020202122B1E1E1E1D1D355C4F525102020219232C251E
        292F1E1E1D1D020202020224212A22150304142D300202020202020210201A0A
        050F0C0C02020202020202021F260D070C130202020202020202021C280E0902
        02020202020202020202172711080202020202020202020202021B1606020202
        02020202020202020202180B0202020202020202020202020202020202020202
        02020202020202020202}
      OnClick = SpeedButton4Click
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 20
      Width = 281
      Height = 67
      Caption = 'Por datas'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 43
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label2: TLabel
        Left = 149
        Top = 44
        Width = 20
        Height = 13
        Caption = 'at'#233':'
      end
      object rbDataCad: TRadioButton
        Left = 11
        Top = 18
        Width = 73
        Height = 17
        Caption = 'Cadastro'
        TabOrder = 0
      end
      object rbDataEncerramento: TRadioButton
        Left = 82
        Top = 18
        Width = 87
        Height = 17
        Caption = 'Encerramento'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object dataIni: TJvDateTimePicker
        Left = 48
        Top = 40
        Width = 96
        Height = 21
        Date = 41725.388480983800000000
        Time = 41725.388480983800000000
        TabOrder = 2
        DropDownDate = 41725.000000000000000000
      end
      object dataFin: TJvDateTimePicker
        Left = 175
        Top = 40
        Width = 96
        Height = 21
        Date = 41725.388480983800000000
        Time = 41725.388480983800000000
        TabOrder = 3
        DropDownDate = 41725.000000000000000000
      end
    end
    object edtEmpresa: TJvDBLookupCombo
      Tag = 99
      Left = 299
      Top = 29
      Width = 262
      Height = 19
      Hint = 'Empresa'
      DropDownWidth = 400
      DataField = 'emp_id'
      LookupField = 'emp_id'
      LookupDisplay = 'emp_nome_fantasia'
      LookupSource = dsEmpresas
      TabOrder = 1
    end
    object edtForn: TEdit
      Left = 300
      Top = 65
      Width = 69
      Height = 19
      TabOrder = 2
    end
    object edtProd: TEdit
      Left = 604
      Top = 29
      Width = 65
      Height = 19
      TabOrder = 3
    end
    object chkEmp: TCheckBox
      Left = 567
      Top = 30
      Width = 18
      Height = 17
      Caption = 'chkEmp'
      TabOrder = 4
    end
    object edtNomeFor: TJvComboEdit
      Left = 372
      Top = 65
      Width = 213
      Height = 19
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
      TabOrder = 5
      OnButtonClick = edtNomeForButtonClick
    end
    object edtNomeProd: TJvComboEdit
      Left = 671
      Top = 29
      Width = 187
      Height = 19
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
      TabOrder = 6
      OnButtonClick = edtNomeProdButtonClick
    end
  end
  inherited dsConsPadrao: TDataSource
    Left = 368
    Top = 240
  end
  inherited cdsConsPadrao: TClientDataSet
    Left = 424
    Top = 248
    object cdsConsPadraocot_id: TIntegerField
      FieldName = 'cot_id'
      Required = True
    end
    object cdsConsPadraoemp_nome_fantasia: TStringField
      FieldName = 'emp_nome_fantasia'
      ReadOnly = True
      Size = 60
    end
    object cdsConsPadraoemp_id: TIntegerField
      FieldName = 'emp_id'
    end
    object cdsConsPadraodatacad: TDateTimeField
      FieldName = 'datacad'
    end
    object cdsConsPadraousucad: TIntegerField
      FieldName = 'usucad'
    end
    object cdsConsPadraocot_data_fim: TDateField
      FieldName = 'cot_data_fim'
    end
    object cdsConsPadraocot_hora_fim: TTimeField
      FieldName = 'cot_hora_fim'
    end
  end
  inherited dspConsPadrao: TDataSetProvider
    DataSet = uqrConsPadrao
    Left = 248
    Top = 240
  end
  inherited ActionList1: TActionList
    Left = 520
    Top = 224
    inherited ActProc: TAction
      OnExecute = ActProcExecute
    end
  end
  inherited frxPadrao: TfrxReport
    Left = 496
    Top = 232
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dspEmpresas: TDataSetProvider
    DataSet = uqrEmpresas
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 16
    Top = 192
  end
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = cdsEmpresas
    Left = 72
    Top = 192
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresas'
    Left = 128
    Top = 192
    object cdsEmpresasemp_id: TIntegerField
      FieldName = 'emp_id'
      Required = True
    end
    object cdsEmpresasemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Required = True
      Size = 18
    end
    object cdsEmpresasemp_razao_social: TStringField
      FieldName = 'emp_razao_social'
      Size = 60
    end
    object cdsEmpresasemp_nome_fantasia: TStringField
      FieldName = 'emp_nome_fantasia'
      Size = 60
    end
    object cdsEmpresasemp_logradouro: TStringField
      FieldName = 'emp_logradouro'
      Size = 60
    end
    object cdsEmpresasemp_numero: TStringField
      FieldName = 'emp_numero'
      Size = 10
    end
    object cdsEmpresasemp_complemento: TStringField
      FieldName = 'emp_complemento'
      Size = 60
    end
    object cdsEmpresasemp_bairro: TStringField
      FieldName = 'emp_bairro'
      Size = 60
    end
    object cdsEmpresasemp_id_municipio: TIntegerField
      FieldName = 'emp_id_municipio'
    end
    object cdsEmpresasemp_cep: TStringField
      FieldName = 'emp_cep'
      Size = 10
    end
    object cdsEmpresasemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Size = 15
    end
    object cdsEmpresasemp_ie: TStringField
      FieldName = 'emp_ie'
      Size = 15
    end
    object cdsEmpresasemp_regime_trib: TIntegerField
      FieldName = 'emp_regime_trib'
    end
    object cdsEmpresasemp_im: TStringField
      FieldName = 'emp_im'
      Size = 15
    end
    object cdsEmpresasemp_email: TStringField
      FieldName = 'emp_email'
      Size = 100
    end
    object cdsEmpresasemp_cnae: TStringField
      FieldName = 'emp_cnae'
      Size = 7
    end
    object cdsEmpresasusu_id: TIntegerField
      FieldName = 'usu_id'
    end
    object cdsEmpresasemp_cod_matriz: TIntegerField
      FieldName = 'emp_cod_matriz'
    end
  end
  object uqrEmpresas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO compras_cotacoes_forn'
      '  (cot_id, pes_id, emp_id)'
      'VALUES'
      '  (:cot_id, :pes_id, :emp_id)')
    SQLDelete.Strings = (
      'DELETE FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id')
    SQLUpdate.Strings = (
      'UPDATE compras_cotacoes_forn'
      'SET'
      '  cot_id = :cot_id, pes_id = :pes_id, emp_id = :emp_id'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id')
    SQLLock.Strings = (
      'SELECT * FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT cot_id, pes_id, emp_id FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :cot_id AND pes_id = :pes_id')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_empresas')
    Left = 176
    Top = 192
  end
  object uqrConsPadrao: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'SELECT '
      '  compras_cotacoes.*,sis_empresas.emp_nome_fantasia'
      'FROM'
      '  compras_cotacoes'
      
        '  LEFT OUTER JOIN compras_cotacoes_forn ON (compras_cotacoes.cot' +
        '_id = compras_cotacoes_forn.cot_id)'
      
        '  LEFT OUTER JOIN compras_cotacoes_itens ON (compras_cotacoes.co' +
        't_id = compras_cotacoes_itens.cot_id)'
      
        '  LEFT OUTER JOIN pessoas ON (compras_cotacoes_forn.pes_id = pes' +
        'soas.pes_id)'
      
        '  LEFT OUTER JOIN itens_produtos ON (compras_cotacoes_itens.prd_' +
        'id = itens_produtos.prd_id)'
      
        '  INNER JOIN sis_empresas ON (public.compras_cotacoes.emp_id = p' +
        'ublic.sis_empresas.emp_id)')
    Left = 312
    Top = 240
  end
  object dspFornecedores: TDataSetProvider
    DataSet = uqrFornecedores
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 224
  end
  object dsFornecedores: TDataSource
    AutoEdit = False
    DataSet = cdsFornecedores
    Left = 696
    Top = 224
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'cot_id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspFornecedores'
    Left = 752
    Top = 224
    object cdsFornecedorescot_id: TIntegerField
      FieldName = 'cot_id'
      Required = True
    end
    object cdsFornecedorespes_id: TIntegerField
      FieldName = 'pes_id'
      Required = True
    end
    object cdsFornecedoresemp_id: TIntegerField
      FieldName = 'emp_id'
    end
    object cdsFornecedorespes_fantasia_apelido: TStringField
      FieldName = 'pes_fantasia_apelido'
      ReadOnly = True
      Size = 100
    end
    object cdsFornecedorespes_email: TStringField
      FieldName = 'pes_email'
      ReadOnly = True
      Size = 100
    end
    object cdsFornecedorespes_cnpj_cpf: TStringField
      FieldName = 'pes_cnpj_cpf'
      ReadOnly = True
      Size = 14
    end
  end
  object uqrFornecedores: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO compras_cotacoes_forn'
      '  (cot_id, pes_id, emp_id)'
      'VALUES'
      '  (:cot_id, :pes_id, :emp_id)')
    SQLDelete.Strings = (
      'DELETE FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id')
    SQLUpdate.Strings = (
      'UPDATE compras_cotacoes_forn'
      'SET'
      '  cot_id = :cot_id, pes_id = :pes_id, emp_id = :emp_id'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id')
    SQLLock.Strings = (
      'SELECT * FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :Old_cot_id AND pes_id = :Old_pes_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT cot_id, pes_id, emp_id FROM compras_cotacoes_forn'
      'WHERE'
      '  cot_id = :cot_id AND pes_id = :pes_id')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select compras_cotacoes_forn.*,pessoas.pes_fantasia_apelido, pes' +
        'soas.pes_email, pes_cnpj_cpf '
      'from compras_cotacoes_forn '
      
        'inner join pessoas on compras_cotacoes_forn.pes_id = pessoas.pes' +
        '_id'
      'where cot_id =:cot_id')
    Left = 800
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cot_id'
      end>
  end
  object cdsCotItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'cot_id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCotItens'
    Left = 432
    Top = 416
    object cdsCotItenscot_id: TIntegerField
      FieldName = 'cot_id'
    end
    object cdsCotItensprd_id: TIntegerField
      FieldName = 'prd_id'
    end
    object cdsCotItensvalor_ult_compra: TFloatField
      FieldName = 'valor_ult_compra'
    end
    object cdsCotItensprd_descricao: TStringField
      FieldName = 'prd_descricao'
      Size = 120
    end
    object cdsCotItensitm_grp_descricao: TStringField
      FieldName = 'itm_grp_descricao'
      Size = 60
    end
    object cdsCotItenssub_descricao: TStringField
      FieldName = 'sub_descricao'
      Size = 60
    end
    object cdsCotItensqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '0.00'
    end
    object cdsCotItensdata_prevista: TDateField
      FieldName = 'data_prevista'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCotItensprd_cod_un_cpa: TStringField
      FieldName = 'prd_cod_un_cpa'
      ReadOnly = True
      Size = 3
    end
  end
  object uqrCotItens: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO compras_cotacoes_itens'
      '  (cot_id, prd_id, qtd, valor_ult_compra, data_prevista)'
      'VALUES'
      '  (:cot_id, :prd_id, :qtd, :valor_ult_compra, :data_prevista)')
    SQLDelete.Strings = (
      'DELETE FROM compras_cotacoes_itens'
      'WHERE'
      '  cot_id = :Old_cot_id AND prd_id = :Old_prd_id')
    SQLUpdate.Strings = (
      'UPDATE compras_cotacoes_itens'
      'SET'
      
        '  cot_id = :cot_id, prd_id = :prd_id, qtd = :qtd, valor_ult_comp' +
        'ra = :valor_ult_compra, data_prevista = :data_prevista'
      'WHERE'
      '  cot_id = :Old_cot_id AND prd_id = :Old_prd_id')
    SQLLock.Strings = (
      'SELECT * FROM compras_cotacoes_itens'
      'WHERE'
      '  cot_id = :Old_cot_id AND prd_id = :Old_prd_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT cot_id, prd_id, qtd, valor_ult_compra, data_prevista FROM' +
        ' compras_cotacoes_itens'
      'WHERE'
      '  cot_id = :cot_id AND prd_id = :prd_id')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'SELECT compras_cotacoes_itens.*,itens_produtos.prd_descricao, it' +
        'm_grp_descricao,'
      'sub_descricao, prd_cod_un_cpa'
      'FROM'
      '  compras_cotacoes_itens'
      
        '  INNER JOIN itens_produtos ON (compras_cotacoes_itens.prd_id = ' +
        'itens_produtos.prd_id)'
      
        '  LEFT OUTER JOIN itens_grupos ON (itens_produtos.prd_cod_grupo ' +
        '= itens_grupos.itm_grp_id)'
      
        '  LEFT OUTER JOIN itens_subgrupos ON (itens_grupos.itm_grp_id = ' +
        'itens_subgrupos.grp_id)'
      
        '  AND (itens_produtos.prd_cod_subgrupo = public.itens_subgrupos.' +
        'sub_id)'
      
        '  AND (itens_produtos.prd_cod_grupo = public.itens_subgrupos.grp' +
        '_id)'
      'WHERE'
      '  cot_id = :cot_id')
    Left = 472
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cot_id'
      end>
  end
  object dsCotItens: TDataSource
    AutoEdit = False
    DataSet = cdsCotItens
    Left = 368
    Top = 424
  end
  object dspCotItens: TDataSetProvider
    DataSet = uqrCotItens
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 424
  end
end
