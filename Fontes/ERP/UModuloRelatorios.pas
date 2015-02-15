unit UModuloRelatorios;

interface

uses
  SysUtils, Classes, frxClass, frxDesgn;

type
  TModuloRelatorios = class(TDataModule)
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
  private
    { Private declarations }
  public
    procedure CarregaRelatorio(Componente:TfrxReport;nomeArq:string; carrega:boolean);

    procedure CriarAlterarrelatorio(Componente: TfrxReport; nomeArq: string);
  end;

var
  ModuloRelatorios: TModuloRelatorios;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TModuloRelatorios }

procedure TModuloRelatorios.CarregaRelatorio(Componente: TfrxReport; nomeArq: string; carrega: boolean);
var caminho : string;
begin
  caminho := Moduloprincipal.cdsParamssis_path.AsString + '\Relatorios';

  if not DirectoryExists(caminho) then
    createDir(caminho);

  if copy(caminho,0,length(caminho) -1) <> '\' then
    caminho := caminho + '\';

  if FileExists(caminho + nomeArq) then
  begin
    if carrega then
    begin
      Componente.LoadFromFile(caminho + nomeArq);
      Componente.ShowReport();
    end;
  end
  else
    moduloprincipal.MsgErro('Relatório ' + nomearq + ' não encontrado no diretório ' +  caminho);
end;

procedure TModuloRelatorios.CriarAlterarrelatorio(Componente: TfrxReport; nomeArq: string);
var Des:TfrxDesigner;
var caminho : string;
begin
  caminho := Moduloprincipal.cdsParamssis_path.AsString + '\Relatorios';
  if copy(caminho,0,length(caminho) -1) <> '\' then
    caminho := caminho + '\';

  if FileExists(caminho + nomeArq) then
  begin
    Des := TfrxDesigner.create(nil);
    Componente.LoadFromFile(caminho + nomeArq);
    Componente.DesignReport();
    FreeAndNil(Des);
  end
  else
    moduloprincipal.MsgErro('Relatório ' + nomearq + ' não encontrado no diretório ' +  caminho);

end;

end.
