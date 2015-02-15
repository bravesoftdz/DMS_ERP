object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsSingle
  ClientHeight = 660
  ClientWidth = 998
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object imgfundo: TImage
    Left = 112
    Top = 178
    Width = 807
    Height = 416
  end
  object statusbar1: TStatusBar
    Left = 0
    Top = 639
    Width = 998
    Height = 21
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 300
      end
      item
        Width = 100
      end
      item
        Width = 500
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Left = 688
    Top = 40
  end
  object MainMenu1: TMainMenu
    Images = ModuloPrincipal.ImageList1
    OnChange = MainMenu1Change
    Left = 24
    Top = 152
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Mensagens1: TMenuItem
        Action = ActDic
        ImageIndex = 20
      end
      object ExecutaSQL1: TMenuItem
        Action = ActExecSQL
        ImageIndex = 67
      end
      object Parmetros1: TMenuItem
        Action = ActParamSIs
      end
      object UsuriosAcessos1: TMenuItem
        Caption = 'Usu'#225'rios/Acessos'
        object CadastrodeUsurios1: TMenuItem
          Action = ActPerfil
        end
        object PermissesdeUsurios1: TMenuItem
          Action = ActPermissoes
        end
        object CadastrodeUsurios2: TMenuItem
          Action = ActUsuarios
          Caption = 'Cadastro de Usu'#225'rios'
        end
        object N1: TMenuItem
          Caption = '-'
        end
      end
      object Localizaes1: TMenuItem
        Caption = 'Localiza'#231#245'es'
        object Cidades1: TMenuItem
          Action = ActCid
        end
        object Estados1: TMenuItem
          Action = ActEst
        end
        object Pases1: TMenuItem
          Action = ActPaises
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object orcarSenha1: TMenuItem
        Action = ActTrocaSenha
      end
    end
    object Empresa1: TMenuItem
      Caption = 'Empresa'
      object CadastrodeEmpresas1: TMenuItem
        Action = ActCadEmp
      end
      object Departamentos1: TMenuItem
        Action = ActDeptos
      end
    end
    object Produtos1: TMenuItem
      Caption = 'Produtos'
      object CadastrodeProdutos1: TMenuItem
        Action = ActCadProd
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object GrupodeProdutos1: TMenuItem
        Action = ActGrupoProd
      end
      object SubGruposdeProdutos1: TMenuItem
        Action = ActSubGrupo
      end
      object ClassesdeProdutos1: TMenuItem
        Action = ActFamilia
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ImportaodeDados1: TMenuItem
        Caption = 'Importa'#231#227'o de Dados'
        object ImportarPlanilhadeProdutos1: TMenuItem
          Caption = 'Importar Planilha de Produtos'
        end
      end
      object ExportaodeDados1: TMenuItem
        Caption = 'Exporta'#231#227'o de Dados'
        object GerarPlanilhadeImportao2: TMenuItem
          Caption = 'Gerar Planilha de Importa'#231#227'o de Produtos'
        end
        object GeraPlanilhaProdutosEquivalentes1: TMenuItem
          Caption = 'Gera Planilha de Produtos Equivalentes'
        end
        object GeraPlanilhadeImportaodeGrupos1: TMenuItem
          Caption = 'Gera Planilha de Grupos'
        end
        object GeraPlanilhadeImportaodeGrupos2: TMenuItem
          Caption = 'Gera Planilha de Sub Grupos'
        end
        object GeraPlanilhadeClasses1: TMenuItem
          Caption = 'Gera Planilha de Classes'
        end
      end
    end
    object Parceiros1: TMenuItem
      Caption = 'Parceiros'
      object Parceiros2: TMenuItem
        Action = ActCadParc
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object iposdeParceiros1: TMenuItem
        Action = ActTipoParc
      end
      object iposdeEndereos1: TMenuItem
        Action = ActTipoEnd
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ImportarPlanilhadeParceiros1: TMenuItem
        Action = ActImpPlanParc
      end
      object GerarPlanilhadeImportao1: TMenuItem
        Action = ActGerPlanImp
      end
    end
    object Comercial1: TMenuItem
      Caption = 'Comercial'
      object Pedidos1: TMenuItem
        Action = ActPedidos
      end
      object CondiesdePagamentos1: TMenuItem
        Action = ActCondPagts
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object GerarModelodetabeladepreos1: TMenuItem
        Action = ActGerModTabPreco
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Relatrios1: TMenuItem
        Caption = 'Relat'#243'rios'
        object abeladeProdutos1: TMenuItem
          Action = ActTabProd
        end
      end
    end
    object FInanceiro1: TMenuItem
      Caption = 'Financeiro'
      object iposdeContasaPagar1: TMenuItem
        Action = ActTipoCtaPag
      end
      object iposdeContasaReceber1: TMenuItem
        Action = ActTipoCtaRec
      end
      object CadastrodeBancos1: TMenuItem
        Action = ActCadBancos
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ContasaPagar1: TMenuItem
        Action = ActCtaPag
      end
      object ContasaReceber1: TMenuItem
        Action = ActCtaRec
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object GerenciamentodeContasaPagareReceber1: TMenuItem
        Action = ActGestaoCta
      end
      object FluxodeCaixa1: TMenuItem
        Action = ActFluxoCaixa
      end
    end
    object Atualizaes1: TMenuItem
      Caption = 'Atualiza'#231#245'es'
      object Servidor1: TMenuItem
        Action = ActTrans
      end
    end
  end
  object ActionList1: TActionList
    Images = ModuloPrincipal.ImageList1
    Left = 520
    Top = 128
    object ActFormPadrao: TAction
      Caption = 'Pessoas'
    end
    object ActDic: TAction
      Category = 'Sistema'
      Caption = 'Dicion'#225'rio de Dados'
      OnExecute = ActDicExecute
    end
    object ActExecSQL: TAction
      Category = 'Sistema'
      Caption = 'Executa SQL'
      OnExecute = ActExecSQLExecute
    end
    object ActCadEmp: TAction
      Category = 'Empresa'
      Caption = 'Cadastro de Empresas'
      OnExecute = ActCadEmpExecute
    end
    object ActParamSIs: TAction
      Category = 'Sistema'
      Caption = 'Par'#226'metros'
      OnExecute = ActParamSIsExecute
    end
    object ActPerfil: TAction
      Category = 'Sistema'
      Caption = 'Perfil de Usu'#225'rios'
      OnExecute = ActPerfilExecute
    end
    object ActPermissoes: TAction
      Category = 'Sistema'
      Caption = 'Permiss'#245'es de Usu'#225'rios'
      OnExecute = ActPermissoesExecute
    end
    object ActUsuarios: TAction
      Category = 'Sistema'
      ImageIndex = 3
      OnExecute = ActUsuariosExecute
    end
    object ActCid: TAction
      Category = 'Sistema'
      Caption = 'Cidades'
      OnExecute = ActCidExecute
    end
    object ActEst: TAction
      Category = 'Sistema'
      Caption = 'Estados'
      OnExecute = ActEstExecute
    end
    object ActPaises: TAction
      Category = 'Sistema'
      Caption = 'Pa'#237'ses'
      OnExecute = ActPaisesExecute
    end
    object ActDeptos: TAction
      Category = 'Empresa'
      Caption = 'Departamentos'
      OnExecute = ActDeptosExecute
    end
    object ActTrocaSenha: TAction
      Category = 'Sistema'
      Caption = 'Torcar Senha'
      OnExecute = ActTrocaSenhaExecute
    end
    object Action2: TAction
      Category = 'Sistema'
      Caption = 'Action2'
    end
    object ActCadParc: TAction
      Category = 'Parceiros'
      Caption = 'Cadastro de Parceiros'
      OnExecute = ActCadParcExecute
    end
    object ActTipoParc: TAction
      Category = 'Parceiros'
      Caption = 'Tipos de Parceiros'
      OnExecute = ActTipoParcExecute
    end
    object ActTipoEnd: TAction
      Category = 'Parceiros'
      Caption = 'Tipos de Endere'#231'os'
      OnExecute = ActTipoEndExecute
    end
    object ActGerPlanImp: TAction
      Category = 'Parceiros'
      Caption = 'Gerar Planilha de Importa'#231#227'o'
    end
    object ActImpPlanParc: TAction
      Category = 'Parceiros'
      Caption = 'Importar Planilha de Parceiros'
    end
    object ActCadProd: TAction
      Category = 'Estoque'
      Caption = 'Cadastro de Produtos'
    end
    object ActGrupoProd: TAction
      Category = 'Estoque'
      Caption = 'Grupo de Produtos'
      OnExecute = ActGrupoProdExecute
    end
    object ActSubGrupo: TAction
      Category = 'Estoque'
      Caption = 'Sub Grupos de Produtos'
      OnExecute = ActSubGrupoExecute
    end
    object ActPedidos: TAction
      Category = 'Comercial'
      Caption = 'Pedidos'
      OnExecute = ActPedidosExecute
    end
    object ActCondPagts: TAction
      Category = 'Comercial'
      Caption = 'Condi'#231#245'es de Pagamentos'
      OnExecute = ActCondPagtsExecute
    end
    object ActTipoCtaPag: TAction
      Category = 'Financeiro'
      Caption = 'Tipos de Contas a Pagar'
      OnExecute = ActTipoCtaPagExecute
    end
    object ActTipoCtaRec: TAction
      Category = 'Financeiro'
      Caption = 'Tipos de Contas a Receber'
      OnExecute = ActTipoCtaRecExecute
    end
    object ActCadBancos: TAction
      Category = 'Financeiro'
      Caption = 'Cadastro de Bancos'
      OnExecute = ActCadBancosExecute
    end
    object ActCtaPag: TAction
      Category = 'Financeiro'
      Caption = 'Contas a Pagar'
      OnExecute = ActCtaPagExecute
    end
    object ActCtaRec: TAction
      Category = 'Financeiro'
      Caption = 'Contas a Receber'
      OnExecute = ActCtaRecExecute
    end
    object ActGestaoCta: TAction
      Category = 'Financeiro'
      Caption = 'Gerenciamento de Contas a Pagar e Receber'
      OnExecute = ActGestaoCtaExecute
    end
    object ActTrans: TAction
      Category = 'Atualiza'#231#245'es'
      Caption = 'Transmiss'#227'o/Recep'#231#227'o'
    end
    object ActGerModTabPreco: TAction
      Category = 'Comercial'
      Caption = 'Gerar Modelo de tabela de pre'#231'os'
    end
    object ActFluxoCaixa: TAction
      Category = 'Financeiro'
      Caption = 'Fluxo de Caixa'
      OnExecute = ActFluxoCaixaExecute
    end
    object ActTabProd: TAction
      Category = 'Comercial'
      Caption = 'Tabela de Produtos'
      OnExecute = ActTabProdExecute
    end
    object ActFamilia: TAction
      Category = 'Estoque'
      Caption = 'Fam'#237'lias de Produto'
      OnExecute = ActFamiliaExecute
    end
  end
  object OD: TOpenDialog
    Left = 608
    Top = 112
  end
end
