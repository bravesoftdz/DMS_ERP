unit UModuloLocalidades;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TModuloLocalidades = class(TDataModule)
    CRUD_Ceps: TUniQuery;
    CRUD_Cidades: TUniQuery;
    CRUD_Estados: TUniQuery;
    ConsCidades: TUniQuery;
    CRUD_Paises: TUniQuery;
  private
    { Private declarations }
  public
    procedure CarregaCidade(cod_cidade:integer);
  end;

var
  ModuloLocalidades: TModuloLocalidades;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TModuloLocalidades }

procedure TModuloLocalidades.CarregaCidade(cod_cidade: integer);
begin
  ConsCidades.Close;
  ConsCidades.sql.clear;
  ConsCidades.sql.add('SELECT * FROM loc_cid  '+
                      ' inner join loc_est on loc_cid.est_cod = loc_est.est_cod WHERE cid_cod = :cid_cod');
  ConsCidades.params[0].asinteger := cod_cidade;
  ConsCidades.open;
end;

end.
