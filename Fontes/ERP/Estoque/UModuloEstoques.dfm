object ModuloEstoques: TModuloEstoques
  OldCreateOrder = False
  Height = 402
  Width = 742
  object Crud_Grupos_Produtos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos_grupos'
      '  (emp_cod, grupo_prod_codigo, grupo_prod_descricao)'
      'VALUES'
      '  (:emp_cod, :grupo_prod_codigo, :grupo_prod_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM produtos_grupos'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND grupo_prod_codigo = :Old_grupo_prod' +
        '_codigo')
    SQLUpdate.Strings = (
      'UPDATE produtos_grupos'
      'SET'
      
        '  emp_cod = :emp_cod, grupo_prod_codigo = :grupo_prod_codigo, gr' +
        'upo_prod_descricao = :grupo_prod_descricao'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND grupo_prod_codigo = :Old_grupo_prod' +
        '_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produtos_grupos'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND grupo_prod_codigo = :Old_grupo_prod' +
        '_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, grupo_prod_codigo, grupo_prod_descricao FROM pro' +
        'dutos_grupos'
      'WHERE'
      '  emp_cod = :emp_cod AND grupo_prod_codigo = :grupo_prod_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produtos_grupos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from produtos_grupos where grupo_prod_codigo =:grupo_pr' +
        'od_codigo')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
  object Crud_Sub_grupo_prod: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos_sub_grupos'
      '  (emp_cod, sub_grup_prod_codigo, sub_grup_prod_descricao)'
      'VALUES'
      '  (:emp_cod, :sub_grup_prod_codigo, :sub_grup_prod_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM produtos_sub_grupos'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND sub_grup_prod_codigo = :Old_sub_gru' +
        'p_prod_codigo')
    SQLUpdate.Strings = (
      'UPDATE produtos_sub_grupos'
      'SET'
      
        '  emp_cod = :emp_cod, sub_grup_prod_codigo = :sub_grup_prod_codi' +
        'go, sub_grup_prod_descricao = :sub_grup_prod_descricao'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND sub_grup_prod_codigo = :Old_sub_gru' +
        'p_prod_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produtos_sub_grupos'
      'WHERE'
      
        '  emp_cod = :Old_emp_cod AND sub_grup_prod_codigo = :Old_sub_gru' +
        'p_prod_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, sub_grup_prod_codigo, sub_grup_prod_descricao FR' +
        'OM produtos_sub_grupos'
      'WHERE'
      
        '  emp_cod = :emp_cod AND sub_grup_prod_codigo = :sub_grup_prod_c' +
        'odigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produtos_sub_grupos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from produtos_sub_grupos where sub_grup_prod_codigo =:s' +
        'ub_grup_prod_codigo')
    Left = 56
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
  object Crud_Familia_Produtos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos_familias'
      '  (emp_cod, familia_prod_codigo, familia_prod_descricao)'
      'VALUES'
      '  (:emp_cod, :familia_prod_codigo, :familia_prod_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM produtos_familias'
      'WHERE'
      '  familia_prod_codigo = :Old_familia_prod_codigo')
    SQLUpdate.Strings = (
      'UPDATE produtos_familias'
      'SET'
      
        '  emp_cod = :emp_cod, familia_prod_codigo = :familia_prod_codigo' +
        ', familia_prod_descricao = :familia_prod_descricao'
      'WHERE'
      '  familia_prod_codigo = :Old_familia_prod_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produtos_familias'
      'WHERE'
      '  familia_prod_codigo = :Old_familia_prod_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_cod, familia_prod_codigo, familia_prod_descricao FROM' +
        ' produtos_familias'
      'WHERE'
      '  familia_prod_codigo = :familia_prod_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produtos_familias'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from produtos_familias where emp_cod =:emp_cod')
    Left = 56
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
end
