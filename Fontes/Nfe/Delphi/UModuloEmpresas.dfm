object ModuloEmpresas: TModuloEmpresas
  OldCreateOrder = False
  Height = 365
  Width = 697
  object CRUD_Empresa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO SIS_EMP'
      
        '  (EMP_CNPJ, EMP_RAZ_SOC, EMP_NOM_FAN, EMP_LOG, EMP_END_NUM, EMP' +
        '_END_COM, EMP_END_BAI, CID_COD, EMP_END_CEP, EMP_END_TEL, EMP_IE' +
        ', EMP_REG_TRI, EMP_IM, EMP_EMAIL, EMP_CNAE, EMP_COD_MAT, EMP_IE_' +
        'ISEN, EMP_NFE_AMBIENTE, EMP_NFE_EMAIL_ASSUNTO, EMP_NFE_LAYOUT, E' +
        'MP_NFE_PATH_CERT, EMP_NFE_PASS_CERT, EMP_NFE_SERIE_CERT, EMP_NFE' +
        '_TIPO_IMP, EMP_NFE_PATH_XML, EMP_NFE_MSG_EMAIL, EMP_UF)'
      'VALUES'
      
        '  (:EMP_CNPJ, :EMP_RAZ_SOC, :EMP_NOM_FAN, :EMP_LOG, :EMP_END_NUM' +
        ', :EMP_END_COM, :EMP_END_BAI, :CID_COD, :EMP_END_CEP, :EMP_END_T' +
        'EL, :EMP_IE, :EMP_REG_TRI, :EMP_IM, :EMP_EMAIL, :EMP_CNAE, :EMP_' +
        'COD_MAT, :EMP_IE_ISEN, :EMP_NFE_AMBIENTE, :EMP_NFE_EMAIL_ASSUNTO' +
        ', :EMP_NFE_LAYOUT, :EMP_NFE_PATH_CERT, :EMP_NFE_PASS_CERT, :EMP_' +
        'NFE_SERIE_CERT, :EMP_NFE_TIPO_IMP, :EMP_NFE_PATH_XML, :EMP_NFE_M' +
        'SG_EMAIL, :EMP_UF)')
    SQLDelete.Strings = (
      'DELETE FROM SIS_EMP'
      'WHERE'
      '  EMP_CNPJ = :Old_EMP_CNPJ')
    SQLUpdate.Strings = (
      'UPDATE SIS_EMP'
      'SET'
      
        '  EMP_CNPJ = :EMP_CNPJ, EMP_RAZ_SOC = :EMP_RAZ_SOC, EMP_NOM_FAN ' +
        '= :EMP_NOM_FAN, EMP_LOG = :EMP_LOG, EMP_END_NUM = :EMP_END_NUM, ' +
        'EMP_END_COM = :EMP_END_COM, EMP_END_BAI = :EMP_END_BAI, CID_COD ' +
        '= :CID_COD, EMP_END_CEP = :EMP_END_CEP, EMP_END_TEL = :EMP_END_T' +
        'EL, EMP_IE = :EMP_IE, EMP_REG_TRI = :EMP_REG_TRI, EMP_IM = :EMP_' +
        'IM, EMP_EMAIL = :EMP_EMAIL, EMP_CNAE = :EMP_CNAE, EMP_COD_MAT = ' +
        ':EMP_COD_MAT, EMP_IE_ISEN = :EMP_IE_ISEN, EMP_NFE_AMBIENTE = :EM' +
        'P_NFE_AMBIENTE, EMP_NFE_EMAIL_ASSUNTO = :EMP_NFE_EMAIL_ASSUNTO, ' +
        'EMP_NFE_LAYOUT = :EMP_NFE_LAYOUT, EMP_NFE_PATH_CERT = :EMP_NFE_P' +
        'ATH_CERT, EMP_NFE_PASS_CERT = :EMP_NFE_PASS_CERT, EMP_NFE_SERIE_' +
        'CERT = :EMP_NFE_SERIE_CERT, EMP_NFE_TIPO_IMP = :EMP_NFE_TIPO_IMP' +
        ', EMP_NFE_PATH_XML = :EMP_NFE_PATH_XML, EMP_NFE_MSG_EMAIL = :EMP' +
        '_NFE_MSG_EMAIL, EMP_UF = :EMP_UF'
      'WHERE'
      '  EMP_CNPJ = :Old_EMP_CNPJ')
    SQLLock.Strings = (
      'SELECT NULL FROM SIS_EMP'
      'WHERE'
      'EMP_CNPJ = :Old_EMP_CNPJ'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT EMP_CNPJ, EMP_RAZ_SOC, EMP_NOM_FAN, EMP_LOG, EMP_END_NUM,' +
        ' EMP_END_COM, EMP_END_BAI, CID_COD, EMP_END_CEP, EMP_END_TEL, EM' +
        'P_IE, EMP_REG_TRI, EMP_IM, EMP_EMAIL, EMP_CNAE, EMP_COD_MAT, EMP' +
        '_IE_ISEN, EMP_NFE_AMBIENTE, EMP_NFE_EMAIL_ASSUNTO, EMP_NFE_LAYOU' +
        'T, EMP_NFE_PATH_CERT, EMP_NFE_PASS_CERT, EMP_NFE_SERIE_CERT, EMP' +
        '_NFE_TIPO_IMP, EMP_NFE_PATH_XML, EMP_NFE_MSG_EMAIL, EMP_UF FROM ' +
        'SIS_EMP'
      'WHERE'
      '  EMP_CNPJ = :EMP_CNPJ')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_emp where emp_cnpj =:emp_cnpj')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cnpj'
      end>
  end
  object ConsEmpresa: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_emp')
    Left = 32
    Top = 72
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMP_CNPJ=EMP_CNPJ'
      'EMP_RAZ_SOC=EMP_RAZ_SOC'
      'EMP_NOM_FAN=EMP_NOM_FAN'
      'EMP_LOG=EMP_LOG'
      'EMP_END_NUM=EMP_END_NUM'
      'EMP_END_COM=EMP_END_COM'
      'EMP_END_BAI=EMP_END_BAI'
      'CID_COD=CID_COD'
      'EMP_END_CEP=EMP_END_CEP'
      'EMP_END_TEL=EMP_END_TEL'
      'EMP_IE=EMP_IE'
      'EMP_REG_TRI=EMP_REG_TRI'
      'EMP_IM=EMP_IM'
      'EMP_EMAIL=EMP_EMAIL'
      'EMP_CNAE=EMP_CNAE'
      'EMP_COD_MAT=EMP_COD_MAT'
      'EMP_IE_ISEN=EMP_IE_ISEN')
    DataSet = ConsEmpresa
    BCDToCurrency = False
    Left = 32
    Top = 128
  end
  object MySql: TUniQuery
    Connection = ModuloPrincipal.Conexao
    Left = 560
    Top = 8
  end
  object CRUD_Depto: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sis_dep'
      '  (dep_cod, emp_cod, dep_desc, dep_fone, dep_ram)'
      'VALUES'
      '  (:dep_cod, :emp_cod, :dep_desc, :dep_fone, :dep_ram)')
    SQLDelete.Strings = (
      'DELETE FROM sis_dep'
      'WHERE'
      '  dep_cod = :Old_dep_cod AND emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE sis_dep'
      'SET'
      
        '  dep_cod = :dep_cod, emp_cod = :emp_cod, dep_desc = :dep_desc, ' +
        'dep_fone = :dep_fone, dep_ram = :dep_ram'
      'WHERE'
      '  dep_cod = :Old_dep_cod AND emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM sis_dep'
      'WHERE'
      '  dep_cod = :Old_dep_cod AND emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT dep_cod, emp_cod, dep_desc, dep_fone, dep_ram FROM sis_de' +
        'p'
      'WHERE'
      '  dep_cod = :dep_cod AND emp_cod = :emp_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_dep')
    Left = 216
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
      end>
  end
end
