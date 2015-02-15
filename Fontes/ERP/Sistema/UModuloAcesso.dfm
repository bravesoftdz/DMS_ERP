object ModuloAcesso: TModuloAcesso
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 470
  Width = 783
  object CRUD_Perfil: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_perf')
    Left = 48
    Top = 8
  end
  object CRUD_Usuarios: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sis_usu'
      
        '  (usu_cod, emp_cod, usu_login, usu_senha, usu_nome, usu_email, ' +
        'usu_sit, usu_ult_login, sis_versao, per_cod, dep_cod)'
      'VALUES'
      
        '  (:usu_cod, :emp_cod, :usu_login, :usu_senha, :usu_nome, :usu_e' +
        'mail, :usu_sit, :usu_ult_login, :sis_versao, :per_cod, :dep_cod)')
    SQLDelete.Strings = (
      'DELETE FROM sis_usu'
      'WHERE'
      '  usu_cod = :Old_usu_cod AND emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE sis_usu'
      'SET'
      
        '  usu_cod = :usu_cod, emp_cod = :emp_cod, usu_login = :usu_login' +
        ', usu_senha = :usu_senha, usu_nome = :usu_nome, usu_email = :usu' +
        '_email, usu_sit = :usu_sit, usu_ult_login = :usu_ult_login, sis_' +
        'versao = :sis_versao, per_cod = :per_cod, dep_cod = :dep_cod'
      'WHERE'
      '  usu_cod = :Old_usu_cod AND emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM sis_usu'
      'WHERE'
      '  usu_cod = :Old_usu_cod AND emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT usu_cod, emp_cod, usu_login, usu_senha, usu_nome, usu_ema' +
        'il, usu_sit, usu_ult_login, sis_versao, per_cod, dep_cod FROM si' +
        's_usu'
      'WHERE'
      '  usu_cod = :usu_cod AND emp_cod = :emp_cod')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_usu where usu_cod =:usu_cod')
    Left = 136
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu_cod'
      end
      item
        DataType = ftUnknown
        Name = 'emp_cod'
      end>
  end
  object ConsUsuarios: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_usu where emp_cod =:emp_cod')
    Left = 136
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
      end>
  end
  object ConsPerfil: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from sis_perf')
    Left = 48
    Top = 88
  end
  object CRUD_Perimssoes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sis_perm'
      '  (emp_cod, per_cod, descmodulo, nomeform, numtag, sis_versao)'
      'VALUES'
      
        '  (:emp_cod, :per_cod, :descmodulo, :nomeform, :numtag, :sis_ver' +
        'sao)')
    SQLDelete.Strings = (
      'DELETE FROM sis_perm'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND per_cod = :Old_per_cod AND descmodu' +
        'lo = :Old_descmodulo AND nomeform = :Old_nomeform AND numtag = :' +
        'Old_numtag')
    SQLUpdate.Strings = (
      'UPDATE sis_perm'
      'SET'
      
        '  emp_cod = :emp_cod, per_cod = :per_cod, descmodulo = :descmodu' +
        'lo, nomeform = :nomeform, numtag = :numtag, sis_versao = :sis_ve' +
        'rsao'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND per_cod = :Old_per_cod AND descmodu' +
        'lo = :Old_descmodulo AND nomeform = :Old_nomeform AND numtag = :' +
        'Old_numtag')
    SQLLock.Strings = (
      'SELECT * FROM sis_perm'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND per_cod = :Old_per_cod AND descmodu' +
        'lo = :Old_descmodulo AND nomeform = :Old_nomeform AND numtag = :' +
        'Old_numtag'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, per_cod, descmodulo, nomeform, numtag, sis_versa' +
        'o FROM sis_perm'
      'WHERE'
      
        '  emp_cod = :emp_cod AND per_cod = :per_cod AND descmodulo = :de' +
        'scmodulo AND nomeform = :nomeform AND numtag = :numtag')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from sis_perm where emp_cod =:emp_cod and per_cod =:per' +
        '_cod')
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
      end
      item
        DataType = ftUnknown
        Name = 'per_cod'
      end>
  end
end
