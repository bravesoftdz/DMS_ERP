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
  object CRUD_Regras_impostos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO impostos_regras'
      
        '  (regra_codigo, emp_cod, imp_codigo, reg_trib_codigo, regra_des' +
        'cricao, regra_cfop_uf, regra_cfop_uf_fora, regra_cfop_uf_ex, reg' +
        'ra_ali_ipi, regra_ali_icms, regra_ali_pis, regra_ali_cofins, reg' +
        'ra_sit_trib_icms, regra_sit_trib_pis, regra_sit_trib_ipi, regra_' +
        'sit_trib_cofins, regra_cred_ipi, regra_cred_icms, regra_mov_esto' +
        'que, regra_gera_fin, regra_cod_devol, regra_destaca_ip, regra_ip' +
        'i_bc, regra_tipo_calc_ipi, regra_perc_red_icms, regra_perc_red_i' +
        'pi, regra_perc_red_icms_st, regra_mod_bc, regra_mod_bc_st, regra' +
        '_pmvast, regra_mot_red_icms, regra_mot_des_icms)'
      'VALUES'
      
        '  (:regra_codigo, :emp_cod, :imp_codigo, :reg_trib_codigo, :regr' +
        'a_descricao, :regra_cfop_uf, :regra_cfop_uf_fora, :regra_cfop_uf' +
        '_ex, :regra_ali_ipi, :regra_ali_icms, :regra_ali_pis, :regra_ali' +
        '_cofins, :regra_sit_trib_icms, :regra_sit_trib_pis, :regra_sit_t' +
        'rib_ipi, :regra_sit_trib_cofins, :regra_cred_ipi, :regra_cred_ic' +
        'ms, :regra_mov_estoque, :regra_gera_fin, :regra_cod_devol, :regr' +
        'a_destaca_ip, :regra_ipi_bc, :regra_tipo_calc_ipi, :regra_perc_r' +
        'ed_icms, :regra_perc_red_ipi, :regra_perc_red_icms_st, :regra_mo' +
        'd_bc, :regra_mod_bc_st, :regra_pmvast, :regra_mot_red_icms, :reg' +
        'ra_mot_des_icms)')
    SQLDelete.Strings = (
      'DELETE FROM impostos_regras'
      'WHERE'
      
        '  regra_codigo = :Old_regra_codigo AND emp_cod = :Old_emp_cod AN' +
        'D imp_codigo = :Old_imp_codigo AND reg_trib_codigo = :Old_reg_tr' +
        'ib_codigo')
    SQLUpdate.Strings = (
      'UPDATE impostos_regras'
      'SET'
      
        '  regra_codigo = :regra_codigo, emp_cod = :emp_cod, imp_codigo =' +
        ' :imp_codigo, reg_trib_codigo = :reg_trib_codigo, regra_descrica' +
        'o = :regra_descricao, regra_cfop_uf = :regra_cfop_uf, regra_cfop' +
        '_uf_fora = :regra_cfop_uf_fora, regra_cfop_uf_ex = :regra_cfop_u' +
        'f_ex, regra_ali_ipi = :regra_ali_ipi, regra_ali_icms = :regra_al' +
        'i_icms, regra_ali_pis = :regra_ali_pis, regra_ali_cofins = :regr' +
        'a_ali_cofins, regra_sit_trib_icms = :regra_sit_trib_icms, regra_' +
        'sit_trib_pis = :regra_sit_trib_pis, regra_sit_trib_ipi = :regra_' +
        'sit_trib_ipi, regra_sit_trib_cofins = :regra_sit_trib_cofins, re' +
        'gra_cred_ipi = :regra_cred_ipi, regra_cred_icms = :regra_cred_ic' +
        'ms, regra_mov_estoque = :regra_mov_estoque, regra_gera_fin = :re' +
        'gra_gera_fin, regra_cod_devol = :regra_cod_devol, regra_destaca_' +
        'ip = :regra_destaca_ip, regra_ipi_bc = :regra_ipi_bc, regra_tipo' +
        '_calc_ipi = :regra_tipo_calc_ipi, regra_perc_red_icms = :regra_p' +
        'erc_red_icms, regra_perc_red_ipi = :regra_perc_red_ipi, regra_pe' +
        'rc_red_icms_st = :regra_perc_red_icms_st, regra_mod_bc = :regra_' +
        'mod_bc, regra_mod_bc_st = :regra_mod_bc_st, regra_pmvast = :regr' +
        'a_pmvast, regra_mot_red_icms = :regra_mot_red_icms, regra_mot_de' +
        's_icms = :regra_mot_des_icms'
      'WHERE'
      
        '  regra_codigo = :Old_regra_codigo AND emp_cod = :Old_emp_cod AN' +
        'D imp_codigo = :Old_imp_codigo AND reg_trib_codigo = :Old_reg_tr' +
        'ib_codigo')
    SQLLock.Strings = (
      'SELECT * FROM impostos_regras'
      'WHERE'
      
        '  regra_codigo = :Old_regra_codigo AND emp_cod = :Old_emp_cod AN' +
        'D imp_codigo = :Old_imp_codigo AND reg_trib_codigo = :Old_reg_tr' +
        'ib_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT regra_codigo, emp_cod, imp_codigo, reg_trib_codigo, regra' +
        '_descricao, regra_cfop_uf, regra_cfop_uf_fora, regra_cfop_uf_ex,' +
        ' regra_ali_ipi, regra_ali_icms, regra_ali_pis, regra_ali_cofins,' +
        ' regra_sit_trib_icms, regra_sit_trib_pis, regra_sit_trib_ipi, re' +
        'gra_sit_trib_cofins, regra_cred_ipi, regra_cred_icms, regra_mov_' +
        'estoque, regra_gera_fin, regra_cod_devol, regra_destaca_ip, regr' +
        'a_ipi_bc, regra_tipo_calc_ipi, regra_perc_red_icms, regra_perc_r' +
        'ed_ipi, regra_perc_red_icms_st, regra_mod_bc, regra_mod_bc_st, r' +
        'egra_pmvast, regra_mot_red_icms, regra_mot_des_icms FROM imposto' +
        's_regras'
      'WHERE'
      
        '  regra_codigo = :regra_codigo AND emp_cod = :emp_cod AND imp_co' +
        'digo = :imp_codigo AND reg_trib_codigo = :reg_trib_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM impostos_regras'
      ''
      ') t')
    Connection = ModuloPrincipal.Conexao
    SQL.Strings = (
      
        'select * from impostos_regras where regra_codigo =:regra_codigo ' +
        'and emp_cod =:emp_cod')
    Left = 232
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'regra_codigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp_cod'
        Value = nil
      end>
  end
end
