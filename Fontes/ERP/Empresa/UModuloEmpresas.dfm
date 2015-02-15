object ModuloEmpresas: TModuloEmpresas
  OldCreateOrder = False
  Height = 365
  Width = 697
  object CRUD_Empresa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sis_emp'
      
        '  (emp_cod, emp_cnpj, emp_raz_soc, emp_nom_fan, emp_log, emp_end' +
        '_num, emp_end_com, emp_end_bai, cid_cod, emp_end_cep, emp_end_te' +
        'l, emp_ie, emp_reg_tri, emp_im, emp_email, emp_cnae, emp_cod_mat' +
        ', emp_ie_isen)'
      'VALUES'
      
        '  (:emp_cod, :emp_cnpj, :emp_raz_soc, :emp_nom_fan, :emp_log, :e' +
        'mp_end_num, :emp_end_com, :emp_end_bai, :cid_cod, :emp_end_cep, ' +
        ':emp_end_tel, :emp_ie, :emp_reg_tri, :emp_im, :emp_email, :emp_c' +
        'nae, :emp_cod_mat, :emp_ie_isen)')
    SQLDelete.Strings = (
      'DELETE FROM sis_emp'
      'WHERE'
      '  emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE sis_emp'
      'SET'
      
        '  emp_cod = :emp_cod, emp_cnpj = :emp_cnpj, emp_raz_soc = :emp_r' +
        'az_soc, emp_nom_fan = :emp_nom_fan, emp_log = :emp_log, emp_end_' +
        'num = :emp_end_num, emp_end_com = :emp_end_com, emp_end_bai = :e' +
        'mp_end_bai, cid_cod = :cid_cod, emp_end_cep = :emp_end_cep, emp_' +
        'end_tel = :emp_end_tel, emp_ie = :emp_ie, emp_reg_tri = :emp_reg' +
        '_tri, emp_im = :emp_im, emp_email = :emp_email, emp_cnae = :emp_' +
        'cnae, emp_cod_mat = :emp_cod_mat, emp_ie_isen = :emp_ie_isen'
      'WHERE'
      '  emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM sis_emp'
      'WHERE'
      '  emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, emp_cnpj, emp_raz_soc, emp_nom_fan, emp_log, emp' +
        '_end_num, emp_end_com, emp_end_bai, cid_cod, emp_end_cep, emp_en' +
        'd_tel, emp_ie, emp_reg_tri, emp_im, emp_email, emp_cnae, emp_cod' +
        '_mat, emp_ie_isen FROM sis_emp'
      'WHERE'
      '  emp_cod = :emp_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_emp where emp_cod =:emp_cod')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
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
      'emp_cod=emp_cod'
      'emp_cnpj=emp_cnpj'
      'emp_raz_soc=emp_raz_soc'
      'emp_nom_fan=emp_nom_fan'
      'emp_log=emp_log'
      'emp_end_num=emp_end_num'
      'emp_end_com=emp_end_com'
      'emp_end_bai=emp_end_bai'
      'cid_cod=cid_cod'
      'emp_end_cep=emp_end_cep'
      'emp_end_tel=emp_end_tel'
      'emp_ie=emp_ie'
      'emp_reg_tri=emp_reg_tri'
      'emp_im=emp_im'
      'emp_email=emp_email'
      'emp_cnae=emp_cnae'
      'emp_cod_mat=emp_cod_mat'
      'emp_ie_isen=emp_ie_isen')
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
  object ConsDepto: TUniQuery
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
    Top = 72
  end
end
