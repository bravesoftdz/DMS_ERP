unit UModuloFinanceiro;

interface

uses
  SysUtils, Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TModuloFinanceiro = class(TDataModule)
    Crud_Pagamentos_Tipo: TUniQuery;
    Crud_Contas_Receber_Pagar: TUniQuery;
    Crud_Pagamentos_Prazo: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloFinanceiro: TModuloFinanceiro;

implementation

{$R *.dfm}

uses UModuloPrincipal;

end.
