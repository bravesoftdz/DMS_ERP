unit UAltera_BD_Tabelas;

{
       @unit_nome: AlteraCampos
       @autor: Niko
       @data: 03/11/2011
       @descricao: Esse módulo servirá para declarar todas as funções e procedures
       @descricao: pertinentes ao sistema em geral.
}
interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, UniProvider, PostgreSQLUniProvider, Dialogs,
  UniDacVcl, InterBaseUniProvider, MySQLUniProvider, IniFiles, MidasLib, forms,
  MemDS, IdHashMessageDigest, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, Provider, DBClient, StdCtrls, IdAttachmentFile, WinInet,
  DAScript, UniScript;


   procedure CriaTabelas;

   procedure Atualiza_Dicionario;
   procedure inserir_tabela_dicionario(tabela:string);
   procedure inserir_campo_dicionario(tabela, nome_campo, tipo_dados:string);
   function campo_existe_no_dicionario(tabela, nome_campo:string):boolean;

implementation

uses  UModuloPrincipal;

procedure CriaTabelas;
begin
  with ModuloPrincipal do
  begin
    cdscriatabelas.close;
    cdscriatabelas.CreateDataSet;

    //----------------------------------------------------------------------------
  {  cdscriatabelas.Append;
    cdscriatabelastabela.AsString  := 'pessoas_dependentes';
    cdscriatabelassql.asstring     := 'CREATE TABLE pessoas_dependentes (' +
                                      'codpessoa INTEGER,codemp INTEGER,codigo INTEGER,' +
                                      'tipo VARCHAR(40),nome VARCHAR(100),data_nasc DATE,' +
                                      'sexo VARCHAR(1), ' +
                                      'PRIMARY KEY(codpessoa, codemp, codigo), ' +
                                      'FOREIGN KEY (codpessoa, codemp)' +
                                      'REFERENCES pessoas(codpessoa, codemp) ' +
                                      'ON DELETE CASCADE ' +
                                      'ON UPDATE CASCADE ' +
                                      'NOT DEFERRABLE);';
    cdscriatabelas.Post; }



  end;
end;

procedure Atualiza_Dicionario();
var uqrTab,Cons:TUniQuery;
begin
  uqrTab := TUniQuery.Create(nil);
  uqrTab.Connection := Moduloprincipal.conexao;

  Cons := TUniQuery.Create(nil);
  Cons.Connection := Moduloprincipal.conexao;

  uqrTab.sql.clear;
  uqrTab.sql.add('select table_name from information_schema.tables '+
                 'where table_schema= ''public'' and table_type=''BASE TABLE'' '+
                 'and table_name <> ''sis_tab'' and table_name <> ''sis_tab_cam''' +
                 'order by table_name');
  uqrTab.Open;

  if not uqrTab.eof then
  begin
    while not uqrTab.eof do
    begin
      Cons.Close;
      Cons.sql.clear;
      Cons.sql.add('select * from sis_tab where tab_cod =:tab_cod');
      Cons.params[0].asstring := uqrTab.FieldbyName('table_name').asstring;
      Cons.open;
      if Cons.eof then  // não encontrou a tabela, insere todos os campos
      begin
        inserir_tabela_dicionario(uqrTab.FieldbyName('table_name').asstring);
        Cons.Close;
        Cons.sql.clear;
        Cons.sql.add('SELECT table_name, cast(column_name as varchar(40)) column_name ,udt_name '+
                     'FROM information_schema.columns WHERE table_name =:tab_cod order by ordinal_position asc');
        Cons.params[0].asstring := uqrTab.FieldbyName('table_name').asstring;
        Cons.open;
        if not Cons.eof then
        begin
          while not Cons.eof do
          begin
            inserir_campo_dicionario(uqrTab.FieldbyName('table_name').asstring,
                                     Cons.FieldByName('column_name').asstring,
                                     Cons.FieldByName('udt_name').asstring);
            Cons.next;
          end;
        end;
      end
      else
      begin   // se tem a tabela, verifica se existe o campo antes de inserir
        Cons.Close;
        Cons.sql.clear;
        Cons.sql.add('SELECT table_name, cast(column_name as varchar(40)) column_name ,udt_name '+
                     'FROM information_schema.columns WHERE table_name =:tab_cod ' +
                     'order by table_name, ordinal_position asc');
        Cons.params[0].asstring := uqrTab.FieldbyName('table_name').asstring;
        Cons.open;
        if not Cons.eof then
        begin
          while not Cons.eof do
          begin
            if not campo_existe_no_dicionario(uqrTab.FieldbyName('table_name').asstring,
                                              Cons.FieldByName('column_name').asstring) then
                inserir_campo_dicionario(uqrTab.FieldbyName('table_name').asstring,
                                          Cons.FieldByName('column_name').asstring,
                                          Cons.FieldByName('udt_name').asstring);
            Cons.next;
          end;
        end;
      end;

      uqrTab.next;
    end;
  end;
end;

procedure inserir_tabela_dicionario(tabela:string);
var Mysql:TUniQuery;
begin
  Mysql := TUniQuery.Create(nil);
  Mysql.Connection := Moduloprincipal.conexao;
  Mysql.sql.add('INSERT INTO sis_tab(tab_cod) VALUES (:tab_cod)');
  Mysql.params[0].asstring := tabela;
  Mysql.ExecSQL;
  FreeAndNil(Mysql);
end;

procedure inserir_campo_dicionario(tabela, nome_campo, tipo_dados:string);
var Mysql:TUniQuery;
begin
  Mysql := TUniQuery.Create(nil);
  Mysql.Connection := Moduloprincipal.conexao;
  Mysql.sql.add('INSERT INTO sis_tab_cam(tab_cod,cam_cod,cam_tip_dad)  ' +
                'VALUES (:tab_cod,:cam_cod,:cam_tip_dad)');
  Mysql.params[0].asstring := tabela;
  Mysql.params[1].asstring := nome_campo;
  Mysql.params[2].asstring := tipo_dados;
  Mysql.ExecSQL;
  FreeAndNil(Mysql);
end;

function campo_existe_no_dicionario(tabela, nome_campo:string):boolean;
var Cons:TUniQuery;
begin
  Cons := TUniQuery.Create(nil);
  Cons.Connection := Moduloprincipal.conexao;
  Cons.sql.add('SELECT column_name '+
               'FROM information_schema.columns WHERE table_name =:tab_cod and column_name =:column_name ');
  Cons.params[0].asstring := tabela;
  Cons.params[1].asstring := nome_campo;
  Cons.open;
  if Cons.eof then
    result := false
  else
    result := true;

  freeandnil(Cons);

end;

end.
