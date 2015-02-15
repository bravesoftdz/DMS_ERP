unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, Buttons, Mask,
  DB, MemDS, DBAccess, Uni, DBClient,
  Provider, JvExControls, JvDBLookup, ExtCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Grids,
  IniFiles,
  jpeg, JvExExtCtrls, JvImage, pngimage;

type
  TFrmLogin = class(TForm)
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Panel1: TPanel;
    btnConfirma: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    JvImage1: TJvImage;
    procedure FormShow(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    _tentativas:integer;

    procedure MsgErro(msg:string);
  public
    vSenha, vUser : string;
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UModuloPrincipal, UAcesso, UMain;

{$R *.dfm}

procedure TFrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edtSenha.text <> '') then
  begin
    edtSenha.setfocus;
    edtSenha.SelectAll;
  end;
end;

procedure TFrmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edtusuario.text <> '') then
  begin
    edtSenha.setfocus;
    edtSenha.SelectAll;
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLogin := nil;

end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btnConfirmaClick(sender);
end;

procedure TFrmLogin.FormShow(Sender: TObject);
var
  ArqIni : TIniFile;
  usuario,senha,empresa:string;
begin
  Moduloprincipal.CarregaParametros();
  self.font.size := 10 ;
  self.refresh;


  if FileExists(ExtractFilePath(Application.ExeName) + '\login.ini') then
  begin
    ArqIni  := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\login.ini');
     usuario := ArqIni.ReadString('Dados', 'usuario', usuario);
     senha   := ArqIni.ReadString('Dados', 'senha', senha);
     empresa := ArqIni.ReadString('Dados', 'empresa', empresa);
    if (usuario <> '') and (senha <> '') and (empresa <> '') then
    begin
      edtUsuario.text := usuario;
      edtSenha.text   := senha;
      btnConfirmaClick(sender);
    end;
  end;

end;

procedure TFrmLogin.MsgErro(msg: string);
begin
  raise Exception.Create(msg);
end;

procedure TFrmLogin.btnConfirmaClick(Sender: TObject);
var mensagem:string;
begin
  vSenha := trim(edtSenha.text);
  vUser  := trim(edtUsuario.Text);

  ModuloPrincipal._loginValido := false;

  if (vUser = 'CONFIG') and (vSenha = 'CONFIG') then
  begin
    //ModuloPrincipal._codigoEmpresa := cdspadraocodigo.asinteger;
    ModuloPrincipal._loginValido   := true;
    ModuloPrincipal.CarregaParametros();
  end
  else
  begin
    if trim(vUser) = '' then
    begin
      MsgErro('Informe o Usuário');
      inc(_tentativas);
      ModalResult:=mrNone;
      edtUsuario.SelectAll;
      edtUsuario.Setfocus;
      ModuloPrincipal._loginValido := false;
      exit;
    end;

    if Trim(vSenha) = '' then
    begin
      inc(_tentativas);
      ModalResult:=mrNone;
      edtSenha.SelectAll;
      edtSenha.Setfocus;
      ModuloPrincipal._loginValido := false;
      MsgErro('Informe a senha');
      exit;
    end;

    if _tentativas > 3 then
    begin
      Msgerro('Número de tentativas excedido');
      Application.Terminate;
    end;

    if not UAcesso.EfetuarLogin(ModuloPrincipal.Conexao,
                                vUser,
                                vSenha) then
    begin
      if trim(mensagem) <> '' then
         msgErro(mensagem);
      inc(_tentativas);
      ModalResult := mrNone;
      edtUsuario.SelectAll;
      edtUsuario.Setfocus;
      ModuloPrincipal._loginValido := false;
      exit;
    end
    else
    begin
      ModuloPrincipal._loginValido := true;

    end;
  end;

  if ModuloPrincipal._loginValido = true then
  begin
    ModuloPrincipal.CarregaParametros();


    Application.CreateForm(TFrmMain, FrmMain);
    Close;
  end;

end;

procedure TFrmLogin.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
