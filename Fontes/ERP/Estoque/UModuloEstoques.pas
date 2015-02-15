unit UModuloEstoques;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TModuloEstoques = class(TDataModule)
    Crud_Grupos_Produtos: TUniQuery;
    Crud_Sub_grupo_prod: TUniQuery;
    Crud_Familia_Produtos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloEstoques: TModuloEstoques;

implementation

{$R *.dfm}

uses UModuloPrincipal;

end.
