object ModuloFinanceiro: TModuloFinanceiro
  OldCreateOrder = False
  Height = 464
  Width = 936
  object Crud_Pagamentos_Tipo: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO pagamentos_tipo'
      '  (emp_cod, tipo_pag_codigo, tipo_pag_descricao)'
      'VALUES'
      '  (:emp_cod, :tipo_pag_codigo, :tipo_pag_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM pagamentos_tipo'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND tipo_pag_codigo = :Old_tipo_pag_cod' +
        'igo')
    SQLUpdate.Strings = (
      'UPDATE pagamentos_tipo'
      'SET'
      
        '  emp_cod = :emp_cod, tipo_pag_codigo = :tipo_pag_codigo, tipo_p' +
        'ag_descricao = :tipo_pag_descricao'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND tipo_pag_codigo = :Old_tipo_pag_cod' +
        'igo')
    SQLLock.Strings = (
      'SELECT * FROM pagamentos_tipo'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND tipo_pag_codigo = :Old_tipo_pag_cod' +
        'igo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, tipo_pag_codigo, tipo_pag_descricao FROM pagamen' +
        'tos_tipo'
      'WHERE'
      '  emp_cod = :emp_cod AND tipo_pag_codigo = :tipo_pag_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM pagamentos_tipo'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from pagamentos_tipo where tipo_pag_codigo =:tipo_pag_c' +
        'odigo')
    Left = 56
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo_pag_codigo'
        Value = nil
      end>
  end
  object Crud_Contas_Receber_Pagar: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from contas_pagar_receber_tipo where tipo_rec_pag_codig' +
        'o =:tipo_rec_pag_codigo')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo_rec_pag_codigo'
        Value = nil
      end>
  end
  object Crud_Pagamentos_Prazo: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO pagamentos_prazo'
      
        '  (emp_cod, prazo_pag_codigo, prazo_pag_descricao, prazo_pag_qtd' +
        '_parcelas, prazo_pag_intervalo, prazo_pag_perc, prazo_pag_status' +
        ')'
      'VALUES'
      
        '  (:emp_cod, :prazo_pag_codigo, :prazo_pag_descricao, :prazo_pag' +
        '_qtd_parcelas, :prazo_pag_intervalo, :prazo_pag_perc, :prazo_pag' +
        '_status)')
    SQLDelete.Strings = (
      'DELETE FROM pagamentos_prazo'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND prazo_pag_codigo = :Old_prazo_pag_c' +
        'odigo')
    SQLUpdate.Strings = (
      'UPDATE pagamentos_prazo'
      'SET'
      
        '  emp_cod = :emp_cod, prazo_pag_codigo = :prazo_pag_codigo, praz' +
        'o_pag_descricao = :prazo_pag_descricao, prazo_pag_qtd_parcelas =' +
        ' :prazo_pag_qtd_parcelas, prazo_pag_intervalo = :prazo_pag_inter' +
        'valo, prazo_pag_perc = :prazo_pag_perc, prazo_pag_status = :praz' +
        'o_pag_status'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND prazo_pag_codigo = :Old_prazo_pag_c' +
        'odigo')
    SQLLock.Strings = (
      'SELECT * FROM pagamentos_prazo'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND prazo_pag_codigo = :Old_prazo_pag_c' +
        'odigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, prazo_pag_codigo, prazo_pag_descricao, prazo_pag' +
        '_qtd_parcelas, prazo_pag_intervalo, prazo_pag_perc, prazo_pag_st' +
        'atus FROM pagamentos_prazo'
      'WHERE'
      '  emp_cod = :emp_cod AND prazo_pag_codigo = :prazo_pag_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM pagamentos_prazo'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from pagamentos_prazo where prazo_pag_codigo =:prazo_pa' +
        'g_codigo')
    Left = 56
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prazo_pag_codigo'
        Value = nil
      end>
  end
end
