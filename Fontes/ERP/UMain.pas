
{$WEAKLINKRTTI ON}



unit UMain;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList,StdCtrls, ExtCtrls, JvComponentBase, Buttons,
  ComCtrls, Menus, JvExControls, JvGradient, JvBaseDlg, JvDesktopAlert, DateUtils,
  ToolWin, JvExForms, JvScrollPanel, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, System.Actions;


type
  TFrmMain = class(TForm)
    statusbar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Mensagens1: TMenuItem;
    ActionList1: TActionList;
    ActFormPadrao: TAction;
    ActDic: TAction;
    ActExecSQL: TAction;
    ExecutaSQL1: TMenuItem;
    Empresa1: TMenuItem;
    ActCadEmp: TAction;
    CadastrodeEmpresas1: TMenuItem;
    ActParamSIs: TAction;
    Parmetros1: TMenuItem;
    ActPerfil: TAction;
    ActPermissoes: TAction;
    ActUsuarios: TAction;
    UsuriosAcessos1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    PermissesdeUsurios1: TMenuItem;
    CadastrodeUsurios2: TMenuItem;
    ActCid: TAction;
    ActEst: TAction;
    ActPaises: TAction;
    Localizaes1: TMenuItem;
    Cidades1: TMenuItem;
    Estados1: TMenuItem;
    Pases1: TMenuItem;
    ActDeptos: TAction;
    Departamentos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ActTrocaSenha: TAction;
    Action2: TAction;
    orcarSenha1: TMenuItem;
    Parceiros1: TMenuItem;
    ActCadParc: TAction;
    Parceiros2: TMenuItem;
    ActTipoParc: TAction;
    ActTipoEnd: TAction;
    iposdeParceiros1: TMenuItem;
    N3: TMenuItem;
    iposdeEndereos1: TMenuItem;
    ActGerPlanImp: TAction;
    ActImpPlanParc: TAction;
    N4: TMenuItem;
    ImportarPlanilhadeParceiros1: TMenuItem;
    GerarPlanilhadeImportao1: TMenuItem;
    ActCadProd: TAction;
    ActGrupoProd: TAction;
    Produtos1: TMenuItem;
    GrupodeProdutos1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    imgfundo: TImage;
    ActSubGrupo: TAction;
    SubGruposdeProdutos1: TMenuItem;
    N5: TMenuItem;
    ActPedidos: TAction;
    Comercial1: TMenuItem;
    Pedidos1: TMenuItem;
    ActCondPagts: TAction;
    CondiesdePagamentos1: TMenuItem;
    N6: TMenuItem;
    ImportarPlanilhadeProdutos1: TMenuItem;
    GerarPlanilhadeImportao2: TMenuItem;
    FInanceiro1: TMenuItem;
    ActTipoCtaPag: TAction;
    ActTipoCtaRec: TAction;
    iposdeContasaPagar1: TMenuItem;
    iposdeContasaReceber1: TMenuItem;
    ActCadBancos: TAction;
    CadastrodeBancos1: TMenuItem;
    ActCtaPag: TAction;
    ActCtaRec: TAction;
    N7: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    N8: TMenuItem;
    ActGestaoCta: TAction;
    GerenciamentodeContasaPagareReceber1: TMenuItem;
    Atualizaes1: TMenuItem;
    Servidor1: TMenuItem;
    ActTrans: TAction;
    N9: TMenuItem;
    ActGerModTabPreco: TAction;
    GerarModelodetabeladepreos1: TMenuItem;
    ActFluxoCaixa: TAction;
    FluxodeCaixa1: TMenuItem;
    GeraPlanilhaProdutosEquivalentes1: TMenuItem;
    GeraPlanilhadeImportaodeGrupos1: TMenuItem;
    GeraPlanilhadeImportaodeGrupos2: TMenuItem;
    ImportaodeDados1: TMenuItem;
    ExportaodeDados1: TMenuItem;
    ClassesdeProdutos1: TMenuItem;
    GeraPlanilhadeClasses1: TMenuItem;
    N10: TMenuItem;
    ActTabProd: TAction;
    Relatrios1: TMenuItem;
    abeladeProdutos1: TMenuItem;
    OD: TOpenDialog;
    ActFamilia: TAction;
    procedure ActCadEmpExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure ActDicExecute(Sender: TObject);
    procedure ActExecSQLExecute(Sender: TObject);
    procedure ActParamSIsExecute(Sender: TObject);
    procedure ActUsuariosExecute(Sender: TObject);
    procedure ActPermissoesExecute(Sender: TObject);
    procedure ActPerfilExecute(Sender: TObject);
    procedure ActCidExecute(Sender: TObject);
    procedure ActEstExecute(Sender: TObject);
    procedure ActPaisesExecute(Sender: TObject);
    procedure ActDeptosExecute(Sender: TObject);
    procedure ActTrocaSenhaExecute(Sender: TObject);
    procedure ActCadParcExecute(Sender: TObject);
    procedure ActTipoParcExecute(Sender: TObject);
    procedure ActTipoEndExecute(Sender: TObject);
    procedure ActGrupoProdExecute(Sender: TObject);
    procedure ActSubGrupoExecute(Sender: TObject);
    procedure ActPedidosExecute(Sender: TObject);
    procedure ActCondPagtsExecute(Sender: TObject);
    procedure ActCadBancosExecute(Sender: TObject);
    procedure ActTipoCtaPagExecute(Sender: TObject);
    procedure ActTipoCtaRecExecute(Sender: TObject);
    procedure ActCtaPagExecute(Sender: TObject);
    procedure ActCtaRecExecute(Sender: TObject);
    procedure ActAtuServerUpExecute(Sender: TObject);
    procedure ActGestaoCtaExecute(Sender: TObject);
    procedure ActFluxoCaixaExecute(Sender: TObject);
    procedure ActTabProdExecute(Sender: TObject);
    procedure ActFamiliaExecute(Sender: TObject);

  private

  protected
    { Protected declarations }
  public

  end;

var
  FrmMain: TFrmMain;

implementation

uses UCadEmpresas, UCadCidades, UCadDepto, UCadEstados, UModuloPrincipal,
  UcadBancos, UCadPaises, UCadPerfil, UCadPermissoes, UTrocaSenha, UCadUsuarios,
  UModuloEmpresas, UCadParametrosSistema, UCadDicionarioDados,
  UcadTipoParceiros, UCadTipoEndereco, UmoduloFiscal, UCadGruposProd,
  UCadSubGrupo, UCadTipoPagamentos, UCadContasPagarReceber, UCadFamiliaProdutos;



{$R *.dfm}



procedure TFrmMain.ActCadBancosExecute(Sender: TObject);
begin
  FrmCadBancos := TFrmCadBancos.Create(Self);
  FrmCadBancos.Show;
end;

procedure TFrmMain.ActCadEmpExecute(Sender: TObject);
begin
  FrmCadEmpresas := TFrmCadEmpresas.Create(Self);
  FrmCadEmpresas.Show;
end;

procedure TFrmMain.ActCadParcExecute(Sender: TObject);
begin
//  FrmCadParceiros := TFrmCadParceiros.Create(Self);
//  FrmCadParceiros.Show;
end;

procedure TFrmMain.ActCidExecute(Sender: TObject);
begin
  FrmCadCidades := TFrmCadCidades.Create(Self);
  FrmCadCidades.Show;
end;

procedure TFrmMain.ActAtuServerUpExecute(Sender: TObject);
begin
//  FrmAtualizacoes := TFrmAtualizacoes.Create(Self);
//  FrmAtualizacoes.Show;
end;

procedure TFrmMain.ActCondPagtsExecute(Sender: TObject);
begin
    FrmCadTipoPagamentos := TFrmCadTipoPagamentos.Create(Self);
    FrmCadTipoPagamentos.Show;
end;

procedure TFrmMain.ActCtaPagExecute(Sender: TObject);
begin
//  FrmCadCtaRecPag := TFrmCadCtaRecPag.Create(Self);
//  FrmCadCtaRecPag._tipo := 'P';
//  FrmCadCtaRecPag.Show;
end;

procedure TFrmMain.ActCtaRecExecute(Sender: TObject);
begin
//  FrmCadCtaRecPag := TFrmCadCtaRecPag.Create(Self);
//  FrmCadCtaRecPag._tipo := 'R';
//  FrmCadCtaRecPag.Show;
end;

procedure TFrmMain.ActDeptosExecute(Sender: TObject);
begin
  FrmCadDeptos := TFrmCadDeptos.Create(Self);
  FrmCadDeptos.Show;
end;

procedure TFrmMain.ActDicExecute(Sender: TObject);
begin
  FrmCadDicionarioDados := TFrmCadDicionarioDados.Create(Self);
  FrmCadDicionarioDados.Show;
end;

procedure TFrmMain.ActEstExecute(Sender: TObject);
begin
  FrmCadEstados := TFrmCadEstados.Create(Self);
  FrmCadEstados.Show;
end;

procedure TFrmMain.ActExecSQLExecute(Sender: TObject);
begin
//  FrmexecSQL := TFrmexecSQL.Create(Self);
//  FrmexecSQL.Show;
end;

procedure TFrmMain.ActFamiliaExecute(Sender: TObject);
begin
    FrmCadFamiliaProdutos := TFrmCadFamiliaProdutos.Create(Self);
    FrmCadFamiliaProdutos.Show;
end;

procedure TFrmMain.ActFluxoCaixaExecute(Sender: TObject);
begin
//  FrmConsFluxo:= TFrmConsFluxo.Create(Self);
//  FrmConsFluxo.Show;
end;

procedure TFrmMain.ActGestaoCtaExecute(Sender: TObject);
begin
//  FrmGerenFinan := TFrmGerenFinan.create(self);
//  FrmGerenFinan.show;
end;

procedure TFrmMain.ActGrupoProdExecute(Sender: TObject);
begin
    FrmCadGrupos := TFrmCadGrupos.Create(Self);
    FrmCadGrupos.Show;
end;

procedure TFrmMain.ActPaisesExecute(Sender: TObject);
begin
  FrmCadPaises := TFrmCadPaises.Create(Self);
  FrmCadPaises.Show;
end;

procedure TFrmMain.ActParamSIsExecute(Sender: TObject);
begin
  FrmCadParamSis := TFrmCadParamSis.Create(Self);
  FrmCadParamSis.Show;
end;

procedure TFrmMain.ActPedidosExecute(Sender: TObject);
begin
//  FrmCadPedidos := TFrmCadPedidos.Create(Self);
//  FrmCadPedidos.Show;
end;

procedure TFrmMain.ActPerfilExecute(Sender: TObject);
begin
  FrmCadPerfil := TFrmCadPerfil.Create(Self);
  FrmCadPerfil.Show;
end;

procedure TFrmMain.ActPermissoesExecute(Sender: TObject);
begin
  FrmCadPermissoes := TFrmCadPermissoes.Create(Self);
  FrmCadPermissoes.Show;
end;

procedure TFrmMain.ActSubGrupoExecute(Sender: TObject);
begin
    FrmCadSubGrupo := TFrmCadSubGrupo.Create(Self);
    FrmCadSubGrupo.Show;
end;

procedure TFrmMain.ActTabProdExecute(Sender: TObject);
begin
//  FrmConsTabProdutos := TFrmConsTabProdutos.Create(Self);
//  FrmConsTabProdutos.Show;
end;

procedure TFrmMain.ActTipoCtaPagExecute(Sender: TObject);
begin
    FrmCadTiposContasPagarReceber := TFrmCadTiposContasPagarReceber.Create(Self);
    FrmCadTiposContasPagarReceber._tipo := 'P';
    FrmCadTiposContasPagarReceber.Show;
end;

procedure TFrmMain.ActTipoCtaRecExecute(Sender: TObject);
begin
    FrmCadTiposContasPagarReceber := TFrmCadTiposContasPagarReceber.Create(Self);
    FrmCadTiposContasPagarReceber._tipo := 'R';
    FrmCadTiposContasPagarReceber.Show;
end;

procedure TFrmMain.ActTipoEndExecute(Sender: TObject);
begin
  FrmCadTipoEndereco := TFrmCadTipoEndereco.Create(Self);
  FrmCadTipoEndereco.Show;
end;

procedure TFrmMain.ActTipoParcExecute(Sender: TObject);
begin
  FrmCadTipoParceiros := TFrmCadTipoParceiros.Create(Self);
  FrmCadTipoParceiros.Show;
end;

procedure TFrmMain.ActTrocaSenhaExecute(Sender: TObject);
begin
{  FrmTrocaSenha := TFrmTrocaSenha.Create(self);

  FrmTrocaSenha.FormStyle := fsNormal;
  FrmTrocaSenha.Position  := poMainFormCenter;
  FrmTrocaSenha._usuario  := Moduloprincipal._obj_usu.usu_login;
  FrmTrocaSenha._email    := Moduloprincipal._obj_usu.usu_email;
  FrmTrocaSenha._codemp   := Moduloprincipal._codigoEmpresa;
  FrmTrocaSenha.Show; }

end;

procedure TFrmMain.ActUsuariosExecute(Sender: TObject);
begin
  FrmCadUsuarios := TFrmCadUsuarios.Create(Self);
  FrmCadUsuarios.Show;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
//  self.WindowState := wsMaximized;
//  Self.update;


end;

procedure TFrmMain.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  screen.Cursor := crDefault;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  ModuloPrincipal.cdsParams.close;
  ModuloPrincipal.cdsParams.params[0].asinteger := moduloprincipal._codigoempresa;
  ModuloPrincipal.cdsParams.open;

//  if ModuloPrincipal._obj_usu.Per_cod > 1 then
//    UAcesso.ConfigurarAcesso(Self, Self.Name, ModuloPrincipal.Conexao,
//                             ModuloPrincipal._obj_usu.Usu_login,ModuloPrincipal._codigoEmpresa);

  ModuloPrincipal.ShowStatusBar('');

  if FileExists(trim( ModuloPrincipal.cdsParamssis_path.AsString + '\logo.png')) then
    imgfundo.Picture.LoadFromFile(trim( ModuloPrincipal.cdsParamssis_path.AsString + '\logo.png'))
  else
  begin
    if FileExists(trim( ModuloPrincipal.cdsParamssis_path.AsString + '\logo.jpg')) then
      imgfundo.Picture.LoadFromFile(trim( ModuloPrincipal.cdsParamssis_path.AsString + '\logo.jpg'))
    else
      imgfundo.Picture := nil;
  end;

  if ModuloPrincipal._codigoEmpresa > 0 then
    MOduloEmpresas.CriarGeneratorsEmpresa(ModuloPrincipal._codigoEmpresa);

  ModuloPrincipal.FecharConexoes;





end;

procedure TFrmMain.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  screen.Cursor := crDefault;
end;

end.
