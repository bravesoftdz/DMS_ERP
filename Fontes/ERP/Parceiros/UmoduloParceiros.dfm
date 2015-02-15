object ModuloParceiros: TModuloParceiros
  OldCreateOrder = False
  Height = 344
  Width = 520
  object Crud_TipoParceiros: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO parceiros_tipos'
      
        '  (tipo_cod, emp_cod, tipo_descricao, tipo_obr_cnpj, tipo_obr_ie' +
        ', tipo_obr_nome, tipo_obr_endereco)'
      'VALUES'
      
        '  (:tipo_cod, :emp_cod, :tipo_descricao, :tipo_obr_cnpj, :tipo_o' +
        'br_ie, :tipo_obr_nome, :tipo_obr_endereco)')
    SQLDelete.Strings = (
      'DELETE FROM parceiros_tipos'
      'WHERE'
      '  tipo_cod = :Old_tipo_cod AND emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE parceiros_tipos'
      'SET'
      
        '  tipo_cod = :tipo_cod, emp_cod = :emp_cod, tipo_descricao = :ti' +
        'po_descricao, tipo_obr_cnpj = :tipo_obr_cnpj, tipo_obr_ie = :tip' +
        'o_obr_ie, tipo_obr_nome = :tipo_obr_nome, tipo_obr_endereco = :t' +
        'ipo_obr_endereco'
      'WHERE'
      '  tipo_cod = :Old_tipo_cod AND emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM parceiros_tipos'
      'WHERE'
      '  tipo_cod = :Old_tipo_cod AND emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tipo_cod, emp_cod, tipo_descricao, tipo_obr_cnpj, tipo_ob' +
        'r_ie, tipo_obr_nome, tipo_obr_endereco FROM parceiros_tipos'
      'WHERE'
      '  tipo_cod = :tipo_cod AND emp_cod = :emp_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM parceiros_tipos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from parceiros_tipos where emp_cod =:emp_cod')
    Left = 48
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
  object Crud_TipoEndereço: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO parceiros_tipo_endr'
      '  (tipo_endr_cod, emp_cod, "tipo_endr_descri'#231#227'o")'
      'VALUES'
      '  (:tipo_endr_cod, :emp_cod, :"tipo_endr_descri'#231#227'o")')
    SQLDelete.Strings = (
      'DELETE FROM parceiros_tipo_endr'
      'WHERE'
      '  tipo_endr_cod = :Old_tipo_endr_cod AND emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE parceiros_tipo_endr'
      'SET'
      
        '  tipo_endr_cod = :tipo_endr_cod, emp_cod = :emp_cod, "tipo_endr' +
        '_descri'#231#227'o" = :"tipo_endr_descri'#231#227'o"'
      'WHERE'
      '  tipo_endr_cod = :Old_tipo_endr_cod AND emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM parceiros_tipo_endr'
      'WHERE'
      '  tipo_endr_cod = :Old_tipo_endr_cod AND emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tipo_endr_cod, emp_cod, "tipo_endr_descri'#231#227'o" FROM parcei' +
        'ros_tipo_endr'
      'WHERE'
      '  tipo_endr_cod = :tipo_endr_cod AND emp_cod = :emp_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM parceiros_tipo_endr'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from parceiros_tipo_endr where emp_cod =:emp_cod')
    Left = 48
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
  object Crud_Parceiros_enderecos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO parceiros_enderecos'
      
        '  (par_cod, emp_cod, end_tipo, end_logradouro, end_numero, end_c' +
        'ep, end_cod_mun, end_uf, end_bairro, end_compl)'
      'VALUES'
      
        '  (:par_cod, :emp_cod, :end_tipo, :end_logradouro, :end_numero, ' +
        ':end_cep, :end_cod_mun, :end_uf, :end_bairro, :end_compl)')
    SQLDelete.Strings = (
      'DELETE FROM parceiros_enderecos'
      'WHERE'
      '  par_cod = :Old_par_cod AND emp_cod = :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE parceiros_enderecos'
      'SET'
      
        '  par_cod = :par_cod, emp_cod = :emp_cod, end_tipo = :end_tipo, ' +
        'end_logradouro = :end_logradouro, end_numero = :end_numero, end_' +
        'cep = :end_cep, end_cod_mun = :end_cod_mun, end_uf = :end_uf, en' +
        'd_bairro = :end_bairro, end_compl = :end_compl'
      'WHERE'
      '  par_cod = :Old_par_cod AND emp_cod = :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM parceiros_enderecos'
      'WHERE'
      '  par_cod = :Old_par_cod AND emp_cod = :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT par_cod, emp_cod, end_tipo, end_logradouro, end_numero, e' +
        'nd_cep, end_cod_mun, end_uf, end_bairro, end_compl FROM parceiro' +
        's_enderecos'
      'WHERE'
      '  par_cod = :par_cod AND emp_cod = :emp_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM parceiros_enderecos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from parceiros_enderecos where emp_cod =:emp_cod')
    Left = 56
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
end
