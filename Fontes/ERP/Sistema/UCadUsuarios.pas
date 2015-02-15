(*
       @unit_nome: Cadastro de usuários
       @unit_autor: Niko
       @unit_data: 12/12/2011
       @unit_descricao: Cadastro de usuários do Sistema.

*)
unit UCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao,
  ActnList, Provider, DB, DBClient, StdCtrls, Mask, DBCtrls,
  ExtCtrls,
  AppEvnts, JvExMask, JvToolEdit, JvDBControls,
  MemDS, DBAccess, Uni, Buttons, JvDBLookup, JvDBLookupComboEdit,
  Menus, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ImgList,
  JvExControls, frxClass, frxDBSet, frxDesgn, frxExportPDF, frxExportXML,
  frxExportXLS, ComCtrls, System.Actions;

type
  TFrmCadUsuarios = class(TFrmCadPadrao)
    dspDepto: TDataSetProvider;
    cdsDepto: TClientDataSet;
    dsDepto: TDataSource;
    dspPErfil: TDataSetProvider;
    cdsPerfil: TClientDataSet;
    dsPerfil: TDataSource;
    ActIns_e: TAction;
    Actalt_e: TAction;
    actexc_e: TAction;
    ActGra_e: TAction;
    ActCan_e: TAction;
    cdsPadraousu_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraousu_login: TStringField;
    cdsPadraousu_senha: TStringField;
    cdsPadraousu_email: TStringField;
    cdsPadraousu_sit: TSmallintField;
    cdsPadraousu_ult_login: TDateTimeField;
    cdsPadraosis_versao: TStringField;
    cdsPadraoper_cod: TIntegerField;
    cdsPadraodep_cod: TIntegerField;
    cdsPadraousu_nome: TStringField;
    cdsDeptodep_cod: TIntegerField;
    cdsDeptoemp_cod: TIntegerField;
    cdsDeptodep_desc: TStringField;
    cdsDeptodep_fone: TStringField;
    cdsDeptodep_ram: TStringField;
    cdsPerfilemp_cod: TIntegerField;
    cdsPerfilper_cod: TSmallintField;
    cdsPerfilper_desc: TStringField;
    cdsPerfilper_adm: TStringField;
    cdsPerfilper_ger: TStringField;
    cdsPerfilsis_versao: TStringField;
    dspEmpresas: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresaemp_cod: TIntegerField;
    cdsEmpresaemp_cnpj: TStringField;
    cdsEmpresaemp_raz_soc: TStringField;
    cdsEmpresaemp_nom_fan: TStringField;
    cdsEmpresaemp_log: TStringField;
    cdsEmpresaemp_end_num: TStringField;
    cdsEmpresaemp_end_com: TStringField;
    cdsEmpresaemp_end_bai: TStringField;
    cdsEmpresacid_cod: TIntegerField;
    cdsEmpresaemp_end_cep: TStringField;
    cdsEmpresaemp_end_tel: TStringField;
    cdsEmpresaemp_ie: TStringField;
    cdsEmpresaemp_reg_tri: TIntegerField;
    cdsEmpresaemp_im: TStringField;
    cdsEmpresaemp_email: TStringField;
    cdsEmpresaemp_cnae: TStringField;
    cdsEmpresaemp_cod_mat: TIntegerField;
    cdsEmpresaemp_ie_isen: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    edtLogin: TDBEdit;
    chkAtivo: TDBCheckBox;
    edtSenha: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActGraExecute(Sender: TObject);
    procedure ActInsExecute(Sender: TObject);
    procedure edtEmailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPesExecute(Sender: TObject);
    procedure cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ActCanExecute(Sender: TObject);
    procedure ActaltExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    procedure CarregaUsuario(codusu, emp_cod:integer);
    procedure habdesab_emp(controle:boolean);
  public
    { Public declarations }
  end;

var
  FrmCadUsuarios: TFrmCadUsuarios;

implementation

uses UModuloPrincipal, UConsGen, UModuloAcesso, UModuloEmpresas;

{$R *.dfm}

procedure TFrmCadUsuarios.ActaltExecute(Sender: TObject);
begin
  inherited;
  edtSenha.tag := 0;
  pintacampos;
end;

procedure TFrmCadUsuarios.ActCanExecute(Sender: TObject);
var codusu, emp_cod : integer;
begin
  codusu := cdsPadraousu_cod.AsInteger;
  emp_cod := cdsPadraoemp_cod.AsInteger;
  edtsenha.text := '';
  inherited;
  CarregaUsuario(codusu, emp_cod);
end;

procedure TFrmCadUsuarios.ActGraExecute(Sender: TObject);
begin
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    verifica();

    if cdsPadrao.State in [dsinsert] then
    begin

      if MOduloAcesso.UsuarioExistePeloLogin(trim(edtLogin.text)) then
      begin
        edtLogin.setfocus;
        edtLogin.selectall;
        Moduloprincipal.Msgerro('Já possui esse usuário cadastrado');
      end;
      cdsPadraousu_cod.AsInteger := MOduloAcesso.ObterProximoCodigoDoUsuario;
      cdsPadraousu_senha.asstring := ModuloPrincipal.MD5String(trim(UpperCase(edtsenha.text)));
    end
    else
    begin
      if trim(edtSenha.text) <> '' then
      begin
        if Moduloprincipal.msgPergunta('Deseja mesmo alterar a senha ?') = true then
          cdsPadraousu_senha.asstring := ModuloPrincipal.MD5String(trim(UpperCase(edtsenha.text)))
        else
          Moduloprincipal.msginfo('Sua senha não será alterada !');
      end;
    end;

  //  try
      ModuloPrincipal.preparaTransacao;

      cdsPadrao.post;
      if cdsPadrao.ApplyUpdates(0) = 0 then
      begin
        ModuloPrincipal.EfetivaTransacao;
        habdesab(true);
      end;
  end;

end;

procedure TFrmCadUsuarios.ActInsExecute(Sender: TObject);
begin
  inherited;
  edtLogin.setfocus;
  cdsPadraousu_sit.asinteger := 1;
  edtSenha.tag := 99;
  pintacampos;
end;

procedure TFrmCadUsuarios.ActPesExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Usuários';
    FrmConsGen.Width := 600;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'SELECT usu_cod, usu_login, usu_nome, emp_cod from sis_usu order by usu_login';
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Login',100,true);
      FrmConsGen.AdicionarOpcoes('Nome',500,true);
      FrmConsGen.campoPadraoConsulta := 'usu_login';
      FrmConsGen.criaGrid();
    end;

    if FrmConsGen.showmodal = mrOk then
    begin
      CarregaUsuario(FrmConsGen.cdsConsPadrao.Fields[0].AsInteger,FrmConsGen.cdsConsPadrao.Fields[3].AsInteger);
    end;
    FreeAndNil(FrmConsGen);
  end;
end;

procedure TFrmCadUsuarios.CarregaUsuario(codusu, emp_cod: integer);
begin
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := codusu;
  cdsPadrao.Params[1].AsInteger := codusu;
  cdsPadrao.Open;
end;

procedure TFrmCadUsuarios.cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ModuloPrincipal.DesfazTransacao;
  ActCan.Execute;
  Moduloprincipal.MsgErro('Operação não realizada. Erro : ' + e.Message);
end;

procedure TFrmCadUsuarios.edtEmailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
  if key = vk_return then
    ActGraExecute(sender);
end;

procedure TFrmCadUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  FrmCadUsuarios := nil;
end;

procedure TFrmCadUsuarios.FormCreate(Sender: TObject);
begin
  inherited;

  self.Width  := 447;
  self.Height := 265;

end;

procedure TFrmCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;

  cdsDepto.close;
  cdsDepto.open;

  cdsPerfil.close;
  cdsPerfil.open;

  cdsEmpresa.Close;
  cdsEmpresa.open;



end;

procedure TFrmCadUsuarios.habdesab_emp(controle: boolean);
begin
  ActIns_e.Enabled     := controle;
  ActGra_e.Enabled     := not controle;
  ActCan_e.Enabled     := not controle;
  Actalt_e.Enabled     := controle;
  Actexc_e.Enabled     := controle;
end;

end.
