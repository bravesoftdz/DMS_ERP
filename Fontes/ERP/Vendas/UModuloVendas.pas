unit UModuloVendas;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TModuloVendas = class(TDataModule)
    Crud_Tipos_Vendas: TUniQuery;
    Crud_Troca_Tipos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloVendas: TModuloVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UModuloPrincipal;

{$R *.dfm}

end.
