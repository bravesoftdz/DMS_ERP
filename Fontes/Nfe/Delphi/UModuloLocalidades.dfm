object ModuloLocalidades: TModuloLocalidades
  OldCreateOrder = False
  Height = 398
  Width = 756
  object CRUD_Ceps: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loc_ruas'
      '  (rua_cep, rua_cod_mun, rua_nome, rua_bairro)'
      'VALUES'
      '  (:rua_cep, :rua_cod_mun, :rua_nome, :rua_bairro)')
    SQLDelete.Strings = (
      'DELETE FROM loc_ruas'
      'WHERE'
      '  rua_cep = :Old_rua_cep')
    SQLUpdate.Strings = (
      'UPDATE loc_ruas'
      'SET'
      
        '  rua_cep = :rua_cep, rua_cod_mun = :rua_cod_mun, rua_nome = :ru' +
        'a_nome, rua_bairro = :rua_bairro'
      'WHERE'
      '  rua_cep = :Old_rua_cep')
    SQLLock.Strings = (
      'SELECT * FROM loc_ruas'
      'WHERE'
      '  rua_cep = :Old_rua_cep'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT rua_cep, rua_cod_mun, rua_nome, rua_bairro FROM loc_ruas'
      'WHERE'
      '  rua_cep = :rua_cep')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from loc_ruas')
    Left = 48
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
  end
  object CRUD_Cidades: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loc_cid'
      '  (cid_cod, cid_cod_ibge, cid_des, est_cod, sis_versao, emp_cod)'
      'VALUES'
      
        '  (:cid_cod, :cid_cod_ibge, :cid_des, :est_cod, :sis_versao, :em' +
        'p_cod)')
    SQLDelete.Strings = (
      'DELETE FROM loc_cid'
      'WHERE'
      '  cid_cod = :Old_cid_cod')
    SQLUpdate.Strings = (
      'UPDATE loc_cid'
      'SET'
      
        '  cid_cod = :cid_cod, cid_cod_ibge = :cid_cod_ibge, cid_des = :c' +
        'id_des, est_cod = :est_cod, sis_versao = :sis_versao, emp_cod = ' +
        ':emp_cod'
      'WHERE'
      '  cid_cod = :Old_cid_cod')
    SQLLock.Strings = (
      'SELECT * FROM loc_cid'
      'WHERE'
      '  cid_cod = :Old_cid_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT cid_cod, cid_cod_ibge, cid_des, est_cod, sis_versao, emp_' +
        'cod FROM loc_cid'
      'WHERE'
      '  cid_cod = :cid_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM loc_cid'
      'WHERE'
      '  cid_cod = :cid_codigo')
    Left = 136
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cid_codigo'
      end>
  end
  object CRUD_Estados: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loc_est'
      '  (est_cod, est_uf, est_des, pai_cod, est_icms, sis_versao)'
      'VALUES'
      
        '  (:est_cod, :est_uf, :est_des, :pai_cod, :est_icms, :sis_versao' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM loc_est'
      'WHERE'
      '  est_cod = :Old_est_cod')
    SQLUpdate.Strings = (
      'UPDATE loc_est'
      'SET'
      
        '  est_cod = :est_cod, est_uf = :est_uf, est_des = :est_des, pai_' +
        'cod = :pai_cod, est_icms = :est_icms, sis_versao = :sis_versao'
      'WHERE'
      '  est_cod = :Old_est_cod')
    SQLLock.Strings = (
      'SELECT * FROM loc_est'
      'WHERE'
      '  est_cod = :Old_est_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT est_cod, est_uf, est_des, pai_cod, est_icms, sis_versao F' +
        'ROM loc_est'
      'WHERE'
      '  est_cod = :est_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM loc_est')
    Left = 224
    Top = 32
  end
  object ConsCidades: TUniQuery
    Connection = ModuloPrincipal.Conexao
    Left = 128
    Top = 96
  end
  object CRUD_Paises: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loc_pai'
      '  (pai_cod, pai_des, sis_versao, emp_cod)'
      'VALUES'
      '  (:pai_cod, :pai_des, :sis_versao, :emp_cod)')
    SQLDelete.Strings = (
      'DELETE FROM loc_pai'
      'WHERE'
      '  pai_cod = :Old_pai_cod')
    SQLUpdate.Strings = (
      'UPDATE loc_pai'
      'SET'
      
        '  pai_cod = :pai_cod, pai_des = :pai_des, sis_versao = :sis_vers' +
        'ao, emp_cod = :emp_cod'
      'WHERE'
      '  pai_cod = :Old_pai_cod')
    SQLLock.Strings = (
      'SELECT * FROM loc_pai'
      'WHERE'
      '  pai_cod = :Old_pai_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT pai_cod, pai_des, sis_versao, emp_cod FROM loc_pai'
      'WHERE'
      '  pai_cod = :pai_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      ' loc_pai where pai_cod =:pai_cod')
    Left = 320
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pai_cod'
      end>
  end
end
