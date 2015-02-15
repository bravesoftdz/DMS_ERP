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
  IniFiles, midaslib, dateutils, Zlib, IdHTTP;

const
  WM_TRAYICON = WM_USER + 1;

type
  TFrmMenu = class(TForm)
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Configurao1: TMenuItem;
    N1: TMenuItem;
    minimizar1: TMenuItem;
    FecharServidor1: TMenuItem;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    Memo1: TMemo;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
    estes1: TMenuItem;
    N2: TMenuItem;
    estarProcedureBI1: TMenuItem;
    GeraArquivos1: TMenuItem;
    IdHTTP1: TIdHTTP;
    Verso11: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FecharServidor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _caminho : string;
    _arquivo_config : string;
   _portmail:string;
   _hostmail:string;
   _passmail:string;
   _usermail:string;
   _origemmail:string;
   _origemmailuser:string;
   _hostftp, _userftp, _passftp:string;
   _portftp:string;
   _hora1,_hora2:string;

   _teste:boolean;

    procedure WMTrayIcon(var Msg: TMessage);
    message WM_TRAYICON;
    function LerConfig:boolean;

    procedure CompactaArquivos;

    procedure ApagaRastro;


  end;

var
  FrmMenu: TFrmMenu;

implementation

uses Uconfiguracoes;

{$R *.dfm}

procedure TFrmMenu.ApagaRastro;
var
  searchResult : TSearchRec;
begin

  if FindFirst(_caminho + 'up\' + '*.xml', faAnyFile, searchResult) = 0 then
  begin
    repeat
     if fileexists(_caminho + 'up\' + searchResult.Name) = true then
       deletefile(_caminho + 'up\' +  searchResult.Name);
    until FindNext(searchResult) <> 0;

    // Must free up resources used by these successful finds
    FindClose(searchResult);
  end;

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

procedure TFrmMenu.Configurao1Click(Sender: TObject);
begin
  Frmconfig := TFrmconfig.Create(self);
  Timer1.enabled := false;
  FrmConfig.showmodal;
  FreeAndNil(FrmConfig);
  Timer1.enabled := true;
end;


procedure TFrmMenu.FecharServidor1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
var
  NotifyIconData: TNotifyIconData;
begin
    _teste := false;
  _caminho := ExtractFilePath(ParamStr(0));

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


function TFrmMenu.LerConfig:boolean;
Var IniFile  : String ;
    Ini     : TIniFile ;

begin

  if FileExists(FrmMenu._arquivo_config) then
  begin

  IniFile := FrmMenu._arquivo_config;

  Ini := TIniFile.Create( IniFile );
  try
    _portmail       := Ini.ReadString( 'Config','Emailport' ,'') ;
    _hostmail       := Ini.ReadString( 'Config','Emailserver' ,'') ;
    _passmail       := Ini.ReadString( 'Config','Emailpass' ,'') ;
    _usermail       := Ini.ReadString( 'Config','Emailuser' ,'') ;
    _origemmail     := Ini.ReadString( 'Config','Emailorigem' ,'') ;
    _origemmailuser := Ini.ReadString( 'Config','EmailUsuarioorigem' ,'') ;
    _hostftp        := Ini.ReadString( 'Config','FTPServer' ,'') ;
    _userftp        := Ini.ReadString( 'Config','FTPUser' ,'') ;
    _passftp        := Ini.ReadString( 'Config','FTPPass' ,'') ;
    _portftp        := Ini.ReadString( 'Config','FTPPort' ,'') ;
    _hora1          := Ini.ReadString( 'Config','H1' ,'') ;
    _hora2          := Ini.ReadString( 'Config','H2' ,'') ;
  finally
    FreeAndnil(ini);
  end;

  result := true;
  end
  else
    result := false;

end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
var hora, min, horaatu1, minatu1, horaatu2, minatu2:string;
begin
  try
    LerConfig;

    hora := FormatDateTime('HH',now);
    min  := copy(FormatDateTime('HH:MM',now),4,2);

    horaatu1 := copy(_hora1,0,2);
    minatu1  := copy(_hora1,4,2);

    horaatu2 := copy(_hora2,0,2);
    minatu2  := copy(_hora2,4,2);


    if horaatu1 <> '' then
    begin
      if ((hora = horaatu1) and (min = minatu1)) then


      // tem q ser a ultima linha senao vai gerar varias vzs por causa do timer
      while min = minatu1 do
        min := copy(FormatDateTime('HH:MM',now),4,2);

    end;

    if horaatu2 <> '' then
    begin
      if ((hora = horaatu2) and (min = minatu2)) then


      // tem q ser a ultima linha senao vai gerar varias vzs por causa do timer
      while min = minatu2 do
        min := copy(FormatDateTime('HH:MM',now),4,2);
    end;


    except on exception do
    begin
      Timer1.Enabled := false;
      Timer1.Enabled := true;
    end;

  end;
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
