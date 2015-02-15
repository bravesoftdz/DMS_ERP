unit Uconfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  StdCtrls, Mask, DBCtrls, DB, Buttons, ExtCtrls, IniFiles;

type
  TFrmConfig = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    edtMailServer: TEdit;
    edtUserMail: TEdit;
    edtPassMail: TEdit;
    edtPortMail: TEdit;
    edtEnderecoOrigem: TEdit;
    edtUsuarioOrigem: TEdit;
    edtH1: TMaskEdit;
    edtH2: TMaskEdit;
    edtFtpServer: TEdit;
    edtFtpPort: TEdit;
    edtFTPuser: TEdit;
    edtFTPPass: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

uses Umenu;

{$R *.dfm}

procedure TFrmConfig.FormShow(Sender: TObject);
Var IniFile  : String ;
    Ini     : TIniFile ;

begin
  if FileExists(FrmMenu._arquivo_config) then
  begin

      IniFile := FrmMenu._arquivo_config;

      Ini := TIniFile.Create( IniFile );
      try
        with Frmmenu do
        begin
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


          edtH1.Text             := _hora1;
          edtH2.Text             := _hora2;

          edtPortMail.Text       := _portmail;
          edtMailServer.Text     := _hostmail;
          edtPassMail.Text       := _passmail;
          edtUserMail.Text       := _usermail;

          edtEnderecoOrigem.Text :=  _origemmail;
          edtUsuarioOrigem.Text  :=  _origemmailuser;
          edtFtpServer.Text      :=  _hostftp;
          edtFTPuser.Text        :=  _userftp;
          edtFTPPass.Text        :=  _passftp;
          edtFtpPort.Text        :=  _portftp;

         end;
      finally
        FreeAndnil(ini);
      end;
  end
  else
  begin

  end;

end;

procedure TFrmConfig.SpeedButton1Click(Sender: TObject);
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := FrmMenu._arquivo_config;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Config','H1' ,edtH1.Text) ;
      Ini.WriteString( 'Config','H2'   ,edtH2.Text) ;

      Ini.WriteString( 'Config','FTPServer',edtFtpServer.Text) ;
      Ini.WriteString( 'Config','FTPPort',edtFtpPort.Text) ;
      Ini.WriteString( 'Config','FTPUser',edtFTPuser.Text) ;
      Ini.WriteString( 'Config','FTPPass',edtFTPPass.Text) ;

      Ini.WriteString( 'Config','Emailserver',edtMailServer.Text) ;
      Ini.WriteString( 'Config','Emailuser',edtUserMail.Text) ;
      Ini.WriteString( 'Config','Emailport',edtPortMail.Text) ;
      Ini.WriteString( 'Config','Emailpass',edtPassMail.Text) ;
      Ini.WriteString( 'Config','Emailorigem',edtEnderecoOrigem.Text) ;
      Ini.WriteString( 'Config','EmailUsuarioorigem',edtUsuarioOrigem.Text) ;
  finally
    freeAndnil(Ini);
  end;


  Close;
end;

procedure TFrmConfig.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
