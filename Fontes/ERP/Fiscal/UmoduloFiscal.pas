unit UmoduloFiscal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TModuloFiscal = class(TDataModule)
    Crud_Imposto: TUniQuery;
    Crud_regimes_tributarios: TUniQuery;
    Crud_Sit_Trib: TUniQuery;
    Crud_Cfop: TUniQuery;
    CRUD_Regras_impostos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloFiscal: TModuloFiscal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UModuloPrincipal;

{$R *.dfm}

end.
