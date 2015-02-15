unit UAltera_BD_Campos;
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


   procedure CriaCampos;
   procedure AlterarCampos;

implementation

uses  UModuloPrincipal;

procedure CriaCampos;
begin
  with ModuloPrincipal do
  begin
    cdsAtualizaBanco.close;
    cdsAtualizaBanco.CreateDataSet;

    //----------------------------------------------------------------------------
   { cdsAtualizaBanco.Append;
    cdsAtualizaBancocampo.AsString  := 'custo_unit';
    cdsAtualizaBancotabela.asstring := 'produtos_estoques';
    cdsAtualizaBancosql.asstring    := 'ALTER TABLE produtos_estoques ' +
                                       'ADD COLUMN "custo_unit" numeric(18,2);';
    cdsAtualizaBanco.Post;   }


  end;

end;

procedure AlterarCampos;
begin

end;


end.
