program DMS_ERP;

uses
  Vcl.Forms,
  UCadPadrao in 'UCadPadrao.pas' {FrmCadPadrao},
  UCadPadraoMestreDetalhe in 'UCadPadraoMestreDetalhe.pas' {FrmCadPadraoMestreDet},
  UConsGen in 'UConsGen.pas',
  UConsPadrao in 'UConsPadrao.pas' {FrmConsPadrao},
  UInputBox in 'UInputBox.pas' {FrmInputBox},
  ULogin in 'ULogin.pas' {FrmLogin},
  UMain in 'UMain.pas' {FrmMain},
  UModuloPrincipal in 'UModuloPrincipal.pas' {ModuloPrincipal: TDataModule},
  UModuloRelatorios in 'UModuloRelatorios.pas' {ModuloRelatorios: TDataModule},
  UCadEmpresas in 'Empresa\UCadEmpresas.pas' {FrmCadEmpresas},
  UModuloEmpresas in 'Empresa\UModuloEmpresas.pas' {ModuloEmpresas: TDataModule},
  UCadFamiliaProdutos in 'Estoque\UCadFamiliaProdutos.pas' {FrmCadFamiliaProdutos},
  UCadGruposProd in 'Estoque\UCadGruposProd.pas' {FrmCadGrupos},
  UCadSubGrupo in 'Estoque\UCadSubGrupo.pas' {FrmCadSubGrupo},
  UModuloEstoques in 'Estoque\UModuloEstoques.pas' {ModuloEstoques: TDataModule},
  UcadBancos in 'Financeiro\UcadBancos.pas' {FrmCadBancos},
  UCadContasPagarReceber in 'Financeiro\UCadContasPagarReceber.pas' {FrmCadTiposContasPagarReceber},
  UCadTipoCtaPagRec in 'Financeiro\UCadTipoCtaPagRec.pas' {FrmCadTipoPagRec},
  UModuloFinanceiro in 'Financeiro\UModuloFinanceiro.pas' {ModuloFinanceiro: TDataModule},
  UCadCfops in 'Fiscal\UCadCfops.pas' {FrmCad_Cfop},
  UCadImposto in 'Fiscal\UCadImposto.pas' {FrmCadImposto},
  UCadImpostos_Sit_Trib in 'Fiscal\UCadImpostos_Sit_Trib.pas' {FrmCadImpostos_Sit_Trib},
  UCadRegimes_tributarios in 'Fiscal\UCadRegimes_tributarios.pas' {FrmCadRegimesTributarios},
  UmoduloFiscal in 'Fiscal\UmoduloFiscal.pas' {ModuloFiscal: TDataModule},
  UCadCeps in 'Localidades\UCadCeps.pas' {FrmCadCeps},
  UCadCidades in 'Localidades\UCadCidades.pas' {FrmCadCidades},
  UCadEstados in 'Localidades\UCadEstados.pas' {FrmCadEstados},
  UCadPaises in 'Localidades\UCadPaises.pas' {FrmCadPaises},
  UConsCidades in 'Localidades\UConsCidades.pas' {FrmConsCidades},
  UModuloLocalidades in 'Localidades\UModuloLocalidades.pas' {ModuloLocalidades: TDataModule},
  UCadTipos_OS in 'OS\UCadTipos_OS.pas' {FrmCadTipos_OS},
  UcadTiposAtendimentos in 'OS\UcadTiposAtendimentos.pas' {FrmCadTiposAtendimentos},
  UModuloOrdemServico in 'OS\UModuloOrdemServico.pas' {Modulo_Ordem_servico: TDataModule},
  UCadTipoEndereco in 'Parceiros\UCadTipoEndereco.pas' {FrmCadTipoEndereco},
  UcadTipoParceiros in 'Parceiros\UcadTipoParceiros.pas' {FrmCadTipoParceiros},
  UmoduloParceiros in 'Parceiros\UmoduloParceiros.pas' {ModuloParceiros: TDataModule},
  UAcesso in 'Sistema\UAcesso.pas',
  UAltera_BD_Campos in 'Sistema\UAltera_BD_Campos.pas',
  UAltera_BD_Tabelas in 'Sistema\UAltera_BD_Tabelas.pas',
  UArquivoIni in 'Sistema\UArquivoIni.pas' {FArquivoIni},
  UAutoriza in 'Sistema\UAutoriza.pas' {FrmAutoriza},
  UCadDepto in 'Sistema\UCadDepto.pas' {FrmCadDeptos},
  UCadDicionarioDados in 'Sistema\UCadDicionarioDados.pas' {FrmCadDicionarioDados},
  UCadParametrosSistema in 'Sistema\UCadParametrosSistema.pas' {FrmCadParamSis},
  UCadPerfil in 'Sistema\UCadPerfil.pas' {FrmCadPerfil},
  UCadPermissoes in 'Sistema\UCadPermissoes.pas' {FrmCadPermissoes},
  UCadUsuarios in 'Sistema\UCadUsuarios.pas' {FrmCadUsuarios},
  UExecSQL in 'Sistema\UExecSQL.pas' {FrmexecSQL},
  UModuloAcesso in 'Sistema\UModuloAcesso.pas' {ModuloAcesso: TDataModule},
  UModuloSistema in 'Sistema\UModuloSistema.pas' {ModuloSistema: TDataModule},
  UTrocaSenha in 'Sistema\UTrocaSenha.pas' {FrmTrocaSenha},
  UCadCondPagamentos in 'Vendas\UCadCondPagamentos.pas' {FrmCadCondPagtos},
  UCadPrazoPagamentos in 'Vendas\UCadPrazoPagamentos.pas' {FrmCadPrazoPagamentos},
  UCadTipoPagamentos in 'Vendas\UCadTipoPagamentos.pas' {FrmCadTipoPagamentos},
  UCadTiposTroca in 'Vendas\UCadTiposTroca.pas' {FrmCadTiposTroca},
  UCadTiposVendas in 'Vendas\UCadTiposVendas.pas' {FrmCadTiposVendas},
  UModuloVendas in 'Vendas\UModuloVendas.pas' {ModuloVendas: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TModuloPrincipal, ModuloPrincipal);
  Application.CreateForm(TModuloAcesso, ModuloAcesso);
  Application.CreateForm(TModuloSistema, ModuloSistema);
  Application.CreateForm(TModuloRelatorios, ModuloRelatorios);
  Application.CreateForm(TModuloEmpresas, ModuloEmpresas);
  Application.CreateForm(TModuloEstoques, ModuloEstoques);
  Application.CreateForm(TModuloFinanceiro, ModuloFinanceiro);
  Application.CreateForm(TModuloFiscal, ModuloFiscal);
  Application.CreateForm(TModulo_Ordem_servico, Modulo_Ordem_servico);
  Application.CreateForm(TModuloParceiros, ModuloParceiros);
  Application.CreateForm(TModuloVendas, ModuloVendas);
  Application.CreateForm(TModuloLocalidades, ModuloLocalidades);
  Application.Run;
end.
