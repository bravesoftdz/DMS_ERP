unit UModuloEmpresas;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni, frxExportXLS, frxExportXML,
  frxClass, frxExportPDF, frxDesgn, frxDBSet, DBClient;



type
  TModuloEmpresas = class(TDataModule)

    CRUD_Empresa: TUniQuery;
    ConsEmpresa: TUniQuery;
    frxDBEmpresa: TfrxDBDataset;
    MySql: TUniQuery;
    CRUD_Depto: TUniQuery;  private
    { Private declarations }
  public
    procedure CarregaEmpresa(codigo:integer);
    procedure VerificaAntesDeInserir(cdsPadrao:TClientDataSet);
    procedure VerificaAntesDeExcluir(emp_cod:integer);
    procedure VerificaAntesDeAlterar(emp_cod:integer);
    procedure AposIncluirEmpresaNova(emp_cod:integer);
    function ValidaDocumento(tipo_doc, num_doc:string):boolean;

  end;

var
  ModuloEmpresas: TModuloEmpresas;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TModuloEmpresas }

procedure TModuloEmpresas.AposIncluirEmpresaNova(emp_cod: integer);
begin
  Mysql.close;
  Mysql.sql.clear;
  Mysql.sql.add('INSERT INTO sis_perf (per_cod,emp_cod,per_desc) ' +
                'VALUES (1, '+inttostr(emp_cod)+', ''Administrador'' )');
  Mysql.ExecSQL;
end;

procedure TModuloEmpresas.CarregaEmpresa(codigo: integer);
begin
  ConsEmpresa.close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select * from sis_emp where Emp_cod =:Emp_cod');
  ConsEmpresa.params[0].asinteger := Moduloprincipal._codigoEmpresa;
  ConsEmpresa.Open;
end;

function TModuloEmpresas.ValidaDocumento(tipo_doc, num_doc: string): boolean;
begin
  result := true;
end;

procedure TModuloEmpresas.VerificaAntesDeAlterar(emp_cod: integer);
begin

end;

procedure TModuloEmpresas.VerificaAntesDeExcluir(emp_cod: integer);
begin
  ConsEmpresa.Close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select count(*) from doc_compras_pedidos_itens where codemp =:codemp');
  ConsEmpresa.params[0].asinteger := emp_cod;
  ConsEmpresa.Open;
  if ConsEmpresa.Fields[0].asinteger > 0 then
    Moduloprincipal.MsgErro('Não será possível excluir Empresa. Existem Pedidos cadastrados.');

  ConsEmpresa.Close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select count(*) from sis_usuarios where codemp =:codemp');
  ConsEmpresa.params[0].asinteger := emp_cod;
  ConsEmpresa.Open;
  if ConsEmpresa.Fields[0].asinteger > 0 then
    Moduloprincipal.MsgErro('Não será possível excluir Empresa. Existem Usuários cadastrados.');

  ConsEmpresa.Close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select count(*) from contas_recpag where codemp =:codemp');
  ConsEmpresa.params[0].asinteger := emp_cod;
  ConsEmpresa.Open;
  if ConsEmpresa.Fields[0].asinteger > 0 then
    Moduloprincipal.MsgErro('Não será possível excluir Empresa. Existem Contas a Pagar/Receber cadastrados.');


  ConsEmpresa.Close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select count(*) from pdv_vendas where codemp =:codemp');
  ConsEmpresa.params[0].asinteger := emp_cod;
  ConsEmpresa.Open;
  if ConsEmpresa.Fields[0].asinteger > 0 then
    Moduloprincipal.MsgErro('Não será possível excluir Empresa. Existem Vendas cadastrados.');
end;

procedure TModuloEmpresas.VerificaAntesDeInserir(cdsPadrao: TClientDataSet);
begin

end;

end.
