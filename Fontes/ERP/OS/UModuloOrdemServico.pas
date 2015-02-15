unit UModuloOrdemServico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TModulo_Ordem_servico = class(TDataModule)
    Crud_Tipos_OS: TUniQuery;
    CrudTipos_Atendimentos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo_Ordem_servico: TModulo_Ordem_servico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UModuloPrincipal;

{$R *.dfm}

end.
