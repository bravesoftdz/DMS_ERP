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
    CRUD_Depto: TUniQuery;
    ConsDepto: TUniQuery;  private
    { Private declarations }
  public
    procedure CarregaEmpresa(codigo:integer);
    procedure VerificaAntesDeInserir(cdsPadrao:TClientDataSet);
    procedure VerificaAntesDeExcluir(emp_cod:integer);
    procedure VerificaAntesDeAlterar(emp_cod:integer);
    procedure AposIncluirEmpresaNova(emp_cod:integer);
    function ObterProximoCodigo:integer;
    function ValidaDocumento(tipo_doc, num_doc:string):boolean;
    procedure CriarGeneratorsEmpresa(emp_cod:integer);
    procedure IniciaEmpresaNova(emp_cod:integer);
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

procedure TModuloEmpresas.CriarGeneratorsEmpresa(emp_cod: integer);
var
  geradores : array[1..100] of string;
  i:integer;
begin
  geradores[1]  := 'gen_cx_mov_'        + inttostr(emp_cod);
  geradores[2]  := 'gen_pro_'        + inttostr(emp_cod);
  geradores[3]  := 'gen_cpa_ped_' + inttostr(emp_cod);
  geradores[4]  := 'gen_log_'            + inttostr(emp_cod);
  geradores[5]  := 'gen_cpa_rec_'  + inttostr(emp_cod);
  geradores[6]  := 'gen_rec_fin_'        + inttostr(emp_cod);
  geradores[7]  := 'gen_pes_'         + inttostr(emp_cod);
  geradores[8]  := 'gen_cta_rec_pag_'   + inttostr(emp_cod);
  geradores[9]  := 'gen_agen_'    + inttostr(emp_cod);
  geradores[10] := 'gen_cod_estq_'      + inttostr(emp_cod);
  geradores[11] := 'gen_vda_'          + inttostr(emp_cod);
  geradores[12] := 'gen_nfe_'              + inttostr(emp_cod);
  geradores[13] := 'gen_mov_estq_'   + inttostr(emp_cod);
  geradores[14] := 'gen_cta_cont_'     + inttostr(emp_cod);
  geradores[15] := 'gen_lan_cont_'     + inttostr(emp_cod);

  for i := 1 to length(geradores) do
  begin
    if geradores[i] <> '' then
    begin
      if not ModuloPrincipal.GeradorExiste(geradores[i]) then
      begin
        Mysql.Close;
        Mysql.SQL.Clear;
        Mysql.sql.Add('CREATE SEQUENCE '+ geradores[i] +' MINVALUE 0 START 0;');
        Mysql.ExecSQL;
      end;
    end;
  end;

end;

procedure TModuloEmpresas.IniciaEmpresaNova(emp_cod:integer);
begin
//
end;

function TModuloEmpresas.ObterProximoCodigo: integer;
begin
  ConsEmpresa.close;
  ConsEmpresa.sql.clear;
  ConsEmpresa.sql.add('select max(emp_cod) from sis_emp');
  ConsEmpresa.Open;
  result := ConsEmpresa.Fields[0].asinteger + 1;
end;

function TModuloEmpresas.ValidaDocumento(tipo_doc, num_doc: string): boolean;
begin

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
