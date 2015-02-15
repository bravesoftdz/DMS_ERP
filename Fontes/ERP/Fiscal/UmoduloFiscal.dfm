object ModuloFiscal: TModuloFiscal
  OldCreateOrder = False
  Height = 388
  Width = 566
  object Crud_Imposto: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO impostos'
      '  (imp_codigo, imp_descricao, imp_finalidade)'
      'VALUES'
      '  (:imp_codigo, :imp_descricao, :imp_finalidade)')
    SQLDelete.Strings = (
      'DELETE FROM impostos'
      'WHERE'
      '  imp_codigo = :Old_imp_codigo')
    SQLUpdate.Strings = (
      'UPDATE impostos'
      'SET'
      
        '  imp_codigo = :imp_codigo, imp_descricao = :imp_descricao, imp_' +
        'finalidade = :imp_finalidade'
      'WHERE'
      '  imp_codigo = :Old_imp_codigo')
    SQLLock.Strings = (
      'SELECT * FROM impostos'
      'WHERE'
      '  imp_codigo = :Old_imp_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT imp_codigo, imp_descricao, imp_finalidade FROM impostos'
      'WHERE'
      '  imp_codigo = :imp_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM impostos'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from impostos where imp_codigo =:imp_codigo')
    Left = 64
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imp_codigo'
        Value = nil
      end>
  end
  object Crud_regimes_tributarios: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO regimes_tributarios'
      '  (reg_trib_codigo, reg_trib_descricao)'
      'VALUES'
      '  (:reg_trib_codigo, :reg_trib_descricao)')
    SQLDelete.Strings = (
      'DELETE FROM regimes_tributarios'
      'WHERE'
      '  reg_trib_codigo = :Old_reg_trib_codigo')
    SQLUpdate.Strings = (
      'UPDATE regimes_tributarios'
      'SET'
      
        '  reg_trib_codigo = :reg_trib_codigo, reg_trib_descricao = :reg_' +
        'trib_descricao'
      'WHERE'
      '  reg_trib_codigo = :Old_reg_trib_codigo')
    SQLLock.Strings = (
      'SELECT * FROM regimes_tributarios'
      'WHERE'
      '  reg_trib_codigo = :Old_reg_trib_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT reg_trib_codigo, reg_trib_descricao FROM regimes_tributar' +
        'ios'
      'WHERE'
      '  reg_trib_codigo = :reg_trib_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM regimes_tributarios'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from regimes_tributarios where reg_trib_codigo =:reg_tr' +
        'ib_codigo')
    Left = 64
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'reg_trib_codigo'
        Value = nil
      end>
  end
  object Crud_Sit_Trib: TUniQuery
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from impostos_sit_trib where sit_trib_codigo =:sit_trib' +
        '_codigo')
    Left = 64
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sit_trib_codigo'
        Value = nil
      end>
  end
  object Crud_Cfop: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cfops'
      '  (cfop_codigo, cfop_descricao, cfop_utilizacao)'
      'VALUES'
      '  (:cfop_codigo, :cfop_descricao, :cfop_utilizacao)')
    SQLDelete.Strings = (
      'DELETE FROM cfops'
      'WHERE'
      '  cfop_codigo = :Old_cfop_codigo')
    SQLUpdate.Strings = (
      'UPDATE cfops'
      'SET'
      
        '  cfop_codigo = :cfop_codigo, cfop_descricao = :cfop_descricao, ' +
        'cfop_utilizacao = :cfop_utilizacao'
      'WHERE'
      '  cfop_codigo = :Old_cfop_codigo')
    SQLLock.Strings = (
      'SELECT * FROM cfops'
      'WHERE'
      '  cfop_codigo = :Old_cfop_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT cfop_codigo, cfop_descricao, cfop_utilizacao FROM cfops'
      'WHERE'
      '  cfop_codigo = :cfop_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cfops'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      'select * from cfops where cfop_codigo =:cfop_codigo')
    Left = 64
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfop_codigo'
        Value = nil
      end>
  end
end
