unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, DBClient, DB, MemDS, DBAccess, Uni, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, UniProvider, MySQLUniProvider,
  SQLServerUniProvider, ExtCtrls, ShellAPI, Menus, midas;

const
  WM_TRAYICON = WM_USER + 1;

type
  TFrmMenu = class(TForm)
    UniConnection1: TUniConnection;
    sqlCli: TUniQuery;
    cdsCli: TClientDataSet;
    dspCli: TDataSetProvider;
    dsCli: TDataSource;
    SQLServerUniProvider1: TSQLServerUniProvider;
    dsTerritorio: TDataSource;
    cdsTerritorio: TClientDataSet;
    dspTerritorio: TDataSetProvider;
    sqlTerritorio: TUniQuery;
    sqlVendedores: TUniQuery;
    dsVendedores: TDataSource;
    cdsVendedores: TClientDataSet;
    dspVendedor: TDataSetProvider;
    sqlCondPagto: TUniQuery;
    dsCondpagto: TDataSource;
    cdsCondPagto: TClientDataSet;
    dspCondpagto: TDataSetProvider;
    dsprodutos: TDataSource;
    cdsProdutos: TClientDataSet;
    dspProdutos: TDataSetProvider;
    sqlProdutos: TUniQuery;
    cdsProdutosCodigo: TWideStringField;
    cdsProdutosNome: TWideStringField;
    cdsProdutosGrupo: TWideMemoField;
    cdsProdutosSubGrupo: TWideMemoField;
    cdsProdutosFamilia: TWideMemoField;
    cdsProdutosEtiqueta: TWideMemoField;
    cdsProdutosModelo: TWideMemoField;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Configurao1: TMenuItem;
    N1: TMenuItem;
    minimizar1: TMenuItem;
    FecharServidor1: TMenuItem;
    cdsConfig: TClientDataSet;
    cdsConfigAtualizaH1: TTimeField;
    cdsConfigAtualizaH2: TTimeField;
    cdsConfigFtpHost: TStringField;
    cdsConfigFtpUser: TStringField;
    cdsConfigFtpSenha: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LerConfig;
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

procedure TFrmMenu.FormCreate(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin
  Application.ShowMainForm := False;
  with NotifyIconData do
  begin
    //cbSize := sizeof(TNotifyIconData);
    Wnd := Self.Handle;
    uId := 0;
    uCallBackMessage := WM_TRAYICON;
    uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
    hIcon := Application.Icon.Handle;
    szTip := 'Gerador dados';
  end;
  Shell_NotifyIcon(NIM_ADD,@NotifyIconData);
end;

procedure TFrmMenu.LerConfig;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + '\config.xml') then
    cdsConfig.loadFromFile(ExtractFilePath(Application.ExeName) + '\config.xml');

end;

end.
