unit UModuloSistema;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TModuloSistema = class(TDataModule)
    uqrEmpresa: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloSistema: TModuloSistema;

implementation

uses UModuloPrincipal;

{$R *.dfm}

end.
