object ModuloVendas: TModuloVendas
  OldCreateOrder = False
  Height = 300
  Width = 411
  object Crud_Tipos_Vendas: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from vendas_tipos where venda_tipo_codigo =:venda_tipo_' +
        'codigo')
    Left = 40
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'venda_tipo_codigo'
        Value = nil
      end>
  end
  object Crud_Troca_Tipos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO trocas_tipo'
      '  (troca_tipo_codigo, emp_cod, troca_tipo_descricao)'
      'VALUES'
      '  (:troca_tipo_codigo, :emp_cod, :troca_tipo_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM trocas_tipo'
      'WHERE'
      
        '  troca_tipo_codigo = :Old_troca_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod')
    SQLUpdate.Strings = (
      'UPDATE trocas_tipo'
      'SET'
      
        '  troca_tipo_codigo = :troca_tipo_codigo, emp_cod = :emp_cod, tr' +
        'oca_tipo_descricao = :troca_tipo_descricao'
      'WHERE'
      
        '  troca_tipo_codigo = :Old_troca_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod')
    SQLLock.Strings = (
      'SELECT * FROM trocas_tipo'
      'WHERE'
      
        '  troca_tipo_codigo = :Old_troca_tipo_codigo AND emp_cod = :Old_' +
        'emp_cod'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT troca_tipo_codigo, emp_cod, troca_tipo_descricao FROM tro' +
        'cas_tipo'
      'WHERE'
      '  troca_tipo_codigo = :troca_tipo_codigo AND emp_cod = :emp_cod')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM trocas_tipo'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from trocas_tipo where troca_tipo_codigo =:troca_tipo_c' +
        'odigo')
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'troca_tipo_codigo'
        Value = nil
      end>
  end
end
