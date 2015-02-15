unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, DBClient, DB, MemDS, DBAccess, Uni, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, UniProvider, MySQLUniProvider,
  SQLServerUniProvider, ExtCtrls, ShellAPI, Menus, midas, StdCtrls, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, IdAttachmentFile,
  IdAntiFreezeBase, IdAntiFreeze, IdFTP, ComObj, JvComponentBase, JvDBGridExport,
  IniFiles, midaslib, dateutils, Zlib, IdHTTP, ComCtrls, ToolWin;

const
  WM_TRAYICON = WM_USER + 1;

type
  TFrmMenu = class(TForm)
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    minimizar1: TMenuItem;
    FecharServidor1: TMenuItem;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
    estes1: TMenuItem;
    N2: TMenuItem;
    estarProcedureBI1: TMenuItem;
    GeraArquivos1: TMenuItem;
    IdHTTP1: TIdHTTP;
    Verso11: TMenuItem;
    N3: TMenuItem;
    Abir1: TMenuItem;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Empresa1: TMenuItem;
    Cadastro1: TMenuItem;
    NotasFiscais1: TMenuItem;
    Consulta1: TMenuItem;
    ConsultaStatusSEFAZ1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FecharServidor1Click(Sender: TObject);
    procedure minimizar1Click(Sender: TObject);
    procedure Abir1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _caminho : string;
    _nome_log:string;
    _log:TextFile;

    procedure WMTrayIcon(var Msg: TMessage);
    message WM_TRAYICON;

    procedure CompactaArquivos;
    procedure CriarDiretorios;

  end;

var
  FrmMenu: TFrmMenu;

implementation

uses UCadEmpresas, ULogs, UInfoEmpresaSEFAZ, UModuloPrincipal;


{$R *.dfm}


procedure TFrmMenu.Abir1Click(Sender: TObject);
begin
  FrmMEnu.show;
end;

procedure TFrmMenu.Cadastro1Click(Sender: TObject);
begin
  FrmCadEmpresas := TFrmCadEmpresas.Create(self);
  FrmCadEmpresas.show;
end;

procedure TFrmMenu.CompactaArquivos;
var
  InFile, OutFile, TmpFile: TFileStream;
  Compr: TCompressionStream;
  I, L: Integer;
  S: String;
  ATempPath: array[0..255] of Char;
begin

end;

procedure TFrmMenu.CriarDiretorios;
begin
  if not DirectoryExists(_caminho + 'geradas') then
    CreateDir(_caminho + 'geradas');

  if not DirectoryExists(_caminho + 'processadas') then
    CreateDir(_caminho + 'processadas');

end;


procedure TFrmMenu.FecharServidor1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin

  _caminho := ExtractFilePath(ParamStr(0));

  _nome_log := FormatDateTime('ddmmYYYY',now)+'.log';

  Application.ShowMainForm := False;
  with NotifyIconData do
  begin
    //cbSize := sizeof(TNotifyIconData);
    Wnd := Self.Handle;
    uId := 0;
    uCallBackMessage := WM_TRAYICON;
    uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
    hIcon := Application.Icon.Handle;
    szTip := '';
  end;
  Shell_NotifyIcon(NIM_ADD,@NotifyIconData);

  CriarDiretorios;

end;

procedure TFrmMenu.FormDestroy(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin

  with NotifyIconData do
  begin
    //cbSize := sizeof(TNotifyIconData);
    Wnd := Self.Handle;
    uId := 0;
    uFlags := 0;
  end;
  Shell_NotifyIcon(NIM_DELETE,@NotifyIconData);

end;


procedure TFrmMenu.minimizar1Click(Sender: TObject);
begin
  self.WindowState := wsMinimized;
end;

procedure TFrmMenu.WMTrayIcon(var Msg: TMessage);
var
  Pt: TPoint;
begin
  if Msg.lParam = WM_RBUTTONDOWN then
  begin
    GetCursorPos(Pt);
    PopupMenu1.Popup(Pt.X,Pt.Y);
  end
  else
  if Msg.lParam = WM_LBUTTONDBLCLK then
    Self.Show;
end;

end.
