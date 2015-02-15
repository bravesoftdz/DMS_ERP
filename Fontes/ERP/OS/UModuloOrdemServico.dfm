object Modulo_Ordem_servico: TModulo_Ordem_servico
  OldCreateOrder = False
  Height = 352
  Width = 446
  object Crud_Tipos_OS: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ordem_servicos_tipos'
      '  (ord_serv_tipo_codigo, emp_cod, ord_serv_tipo_descricao)'
      'VALUES'
      '  (:ord_serv_tipo_codigo, :emp_cod, :ord_serv_tipo_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ordem_servicos_tipos'
      'WHERE'
      
        '  ord_serv_tipo_codigo = :Old_ord_serv_tipo_codigo AND emp_cod =' +
        ' :Old_emp_cod')
    SQLUpdate.Strings = (
      'UPDATE ordem_servicos_tipos'
      'SET'
      
        '  ord_serv_tipo_codigo = :ord_serv_tipo_codigo, emp_cod = :emp_c' +
        'od, ord_serv_tipo_descricao = :ord_serv_tipo_descricao'
      'WHERE'
      
        '  ord_serv_tipo_codigo = :Old_ord_serv_tipo_codigo AND emp_cod =' +
        ' :Old_emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM ordem_servicos_tipos'
      'WHERE'
      
        '  ord_serv_tipo_codigo = :Old_ord_serv_tipo_codigo AND emp_cod =' +
        ' :Old_emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ord_serv_tipo_codigo, emp_cod, ord_serv_tipo_descricao FR' +
        'OM ordem_servicos_tipos'
      'WHERE'
      
        '  ord_serv_tipo_codigo = :ord_serv_tipo_codigo AND emp_cod = :em' +
        'p_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM ordem_servicos_tipos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from ordem_servicos_tipos where ord_serv_tipo_codigo =:' +
        'ord_serv_tipo_codigo')
    Left = 48
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ord_serv_tipo_codigo'
        Value = nil
      end>
  end
  object CrudTipos_Atendimentos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO atendimentos_tipos'
      '  (atend_tipo_codigo, emp_cod, atend_tipo_descricao)'
      'VALUES'
      '  (:atend_tipo_codigo, :emp_cod, :atend_tipo_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM atendimentos_tipos'
      'WHERE'
      
        '  atend_tipo_codigo = :Old_atend_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod')
    SQLUpdate.Strings = (
      'UPDATE atendimentos_tipos'
      'SET'
      
        '  atend_tipo_codigo = :atend_tipo_codigo, emp_cod = :emp_cod, at' +
        'end_tipo_descricao = :atend_tipo_descricao'
      'WHERE'
      
        '  atend_tipo_codigo = :Old_atend_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM atendimentos_tipos'
      'WHERE'
      
        '  atend_tipo_codigo = :Old_atend_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT atend_tipo_codigo, emp_cod, atend_tipo_descricao FROM ate' +
        'ndimentos_tipos'
      'WHERE'
      '  atend_tipo_codigo = :atend_tipo_codigo AND emp_cod = :emp_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM atendimentos_tipos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from atendimentos_tipos where atend_tipo_codigo =:atend' +
        '_tipo_codigo')
    Left = 48
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atend_tipo_codigo'
        Value = nil
      end>
  end
end
