unit UModuloAcesso;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TModuloAcesso = class(TDataModule)
    CRUD_Perfil: TUniQuery;
    CRUD_Usuarios: TUniQuery;
    ConsUsuarios: TUniQuery;
    ConsPerfil: TUniQuery;
    CRUD_Perimssoes: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregaUsuarioLogado(usu_codigo:integer);
    function UsuarioExistePeloLogin(usu_login:string):boolean;
    function ObterProximoCodigoDoUsuario:integer;
  end;

var
  ModuloAcesso: TModuloAcesso;

implementation

uses UModuloPrincipal, ULogin;

{$R *.dfm}

{ TModuloAcesso }

procedure TModuloAcesso.CarregaUsuarioLogado(usu_codigo: integer);
begin
  // variaveis que acompanharao o usuario logado
  ConsUsuarios.close;
  ConsUsuarios.sql.clear;
  ConsUsuarios.sql.add('select * from sis_usu where usu_cod =:usu_cod');
  ConsUsuarios.ParamByName('usu_cod').asinteger := usu_codigo;
  ConsUsuarios.Open;
  Moduloprincipal._codigoUsuario  := ConsUsuarios.FieldByName('usu_cod').AsInteger;
  Moduloprincipal._nomeDoUsuario  := ConsUsuarios.FieldByName('usu_nome').asstring;
  Moduloprincipal._senhaDoUsuario := ConsUsuarios.FieldByName('usu_senha').asstring;
  Moduloprincipal._loginDoUsuario := ConsUsuarios.FieldByName('usu_login').asstring;
  Moduloprincipal._emailDoUsuario := ConsUsuarios.FieldByName('usu_email').asstring;
  Moduloprincipal._perfiUsuario   := ConsUsuarios.FieldByName('per_cod').asinteger;
end;

procedure TModuloAcesso.DataModuleCreate(Sender: TObject);
begin
  FrmLogin := TFrmLogin.create(self);
  FrmLogin.showmodal;
  FreeAndNil(FrmLogin);
end;

function TModuloAcesso.ObterProximoCodigoDoUsuario: integer;
begin
//
end;

function TModuloAcesso.UsuarioExistePeloLogin(usu_login: string): boolean;
begin
//
end;

end.
