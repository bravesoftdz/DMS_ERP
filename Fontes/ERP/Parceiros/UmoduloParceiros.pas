unit UmoduloParceiros;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TModuloParceiros = class(TDataModule)
    Crud_TipoParceiros: TUniQuery;
    Crud_TipoEndereço: TUniQuery;
    Crud_Parceiros_enderecos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloParceiros: TModuloParceiros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UModuloPrincipal;

{$R *.dfm}

end.
