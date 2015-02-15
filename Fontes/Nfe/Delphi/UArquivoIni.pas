unit UArquivoIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, StdCtrls, ToolWin, Mask, JvExMask, JvToolEdit,
  DBAccess, UniDacVcl, JvExControls, JvXPCore, JvXPButtons, DB, Uni,
  InterBaseUniProvider, UniProvider, MySQLUniProvider, Buttons, ExtCtrls,
  PostgreSQLUniProvider;

type
  TFArquivoIni = class(TForm)
    ConexaoTeste: TUniConnection;
    ProvMySql: TMySQLUniProvider;
    ProvFirebird: TInterBaseUniProvider;
    ProvPostgreSQL: TPostgreSQLUniProvider;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox1: TGroupBox;
    pnCon2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ldDB2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    lbCon2: TLabel;
    SpeedButton2: TSpeedButton;
    edtServer2: TEdit;
    edtUsuario2: TEdit;
    edtSenha2: TEdit;
    chkSenha2: TCheckBox;
    edtDb2: TEdit;
    cboBanco2: TComboBox;
    edtPort2: TEdit;
    chkUtilizaCon2: TCheckBox;
    GroupBox2: TGroupBox;
    lbCon1: TLabel;
    lbEnd: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ldDB1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    edtServer1: TEdit;
    edtUsuario1: TEdit;
    edtSenha1: TEdit;
    chkSenha1: TCheckBox;
    edtDB1: TEdit;
    cboBanco: TComboBox;
    edtPort1: TEdit;
    procedure chkSenha1Click(Sender: TObject);
    procedure chkSenha2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboBancoChange(Sender: TObject);
    procedure chkUtilizaCon2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ConfiguraBanco;
    procedure ValidaConexao1;
    procedure ValidaConexao2;
    procedure LimpaDadosCon2;
  end;

var
  FArquivoIni: TFArquivoIni;

implementation

uses UModuloPrincipal;




{$R *.dfm}

procedure TFArquivoIni.ValidaConexao1;
begin
  if cboBanco.Text = '' then
  begin
    cboBanco.SetFocus;
    cboBanco.SelectAll;
    Moduloprincipal.msgErro('Provider é obrigatório');
  end;

  if edtServer1.text = '' then
  begin
    edtServer1.SetFocus;
    edtServer1.SelectAll;
    Moduloprincipal.msgErro('Servidor é obrigatório');
  end;

  if edtDB1.text = '' then
  begin
    edtDB1.SetFocus;
    edtDB1.SelectAll;
    Moduloprincipal.msgErro('Database é obrigatório');
  end;

  if edtUsuario1.text = '' then
  begin
    edtUsuario1.SetFocus;
    edtUsuario1.SelectAll;
    Moduloprincipal.msgErro('Usuário é obrigatório');
  end;

end;

procedure TFArquivoIni.ValidaConexao2;
begin
  if cboBanco2.Text = '' then
  begin
    cboBanco2.SetFocus;
    cboBanco2.SelectAll;
    Moduloprincipal.msgErro('Provider é obrigatório');
  end;

  if edtServer2.text = '' then
  begin
    edtServer2.SetFocus;
    edtServer2.SelectAll;
    Moduloprincipal.msgErro('Servidor é obrigatório');
  end;

  if edtDB2.text = '' then
  begin
    edtDB2.SetFocus;
    edtDB2.SelectAll;
    Moduloprincipal.msgErro('Database é obrigatório');
  end;

  if edtUsuario2.text = '' then
  begin
    edtUsuario2.SetFocus;
    edtUsuario2.SelectAll;
    Moduloprincipal.msgErro('Usuário é obrigatório');
  end;
end;

procedure TFArquivoIni.cboBancoChange(Sender: TObject);
begin
  ConfiguraBanco;
end;

procedure TFArquivoIni.chkSenha1Click(Sender: TObject);
begin
  if chkSenha1.Checked = true then
    edtSenha1.PasswordChar := #0
  else
    edtSenha1.PasswordChar := '*';

  edtSenha1.SelectAll;
  edtSenha1.SetFocus;
end;

procedure TFArquivoIni.chkSenha2Click(Sender: TObject);
begin
  if chkSenha2.Checked = true then
    edtSenha2.PasswordChar := #0
  else
    edtSenha2.PasswordChar := '*';
  edtSenha2.SelectAll;
  edtSenha2.SetFocus;
end;

procedure TFArquivoIni.chkUtilizaCon2Click(Sender: TObject);
begin
  pnCon2.Enabled := chkUtilizaCon2.Checked;
end;

procedure TFArquivoIni.ConfiguraBanco;
begin
  // Firebird
  if cbobanco.ItemIndex = 0 then
  begin
    lbEnd.caption  := 'Servidor'; // Firebird


  end;

  if cbobanco.ItemIndex = 1 then
  begin
    lbEnd.caption  := 'Servidor';

  end;

  Self.update;

end;

procedure TFArquivoIni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFArquivoIni.FormShow(Sender: TObject);
begin
  cbobanco.Clear;
  cboBanco.Items.add(postgres);
  cboBanco.Items.add(mysql);
  cboBanco.Items.add(firebird);
  cboBanco.Items.add(sqlserver);
  cboBanco.Items.add(sqlite);

  cbobanco2.Clear;
  cboBanco2.Items.add(postgres);
  cboBanco2.Items.add(mysql);
  cboBanco2.Items.add(firebird);
  cboBanco2.Items.add(sqlserver);
end;

procedure TFArquivoIni.LimpaDadosCon2;
begin
  cboBanco2.text   := '';
  edtUsuario2.text := '';
  edtSenha2.text   := '';
  edtServer2.text  := '';
  edtDb2.text      := '';
end;

procedure TFArquivoIni.SpeedButton1Click(Sender: TObject);
begin
  ValidaConexao1;
  with ConexaoTeste do
  begin
    lbCon1.Caption := '';
    Close;
    ProviderName := cboBanco.Text;
    Username     := edtUsuario1.text;
    Password     := edtSenha1.text;
    Server       := edtServer1.Text;
    Database     := edtDB1.Text;
    try
      Connect;
      lbCon1.caption := 'Conexão está funcionando.';
      lbCon1.Font.Color := clBlue;
      Close;
      Except on E:Exception do
      begin
        lbCon1.Caption    := 'Falhou: ' + e.Message;
        lbCon1.Font.Color := clred;
      end;
    end;
  end;
end;

procedure TFArquivoIni.SpeedButton2Click(Sender: TObject);
begin
  ValidaConexao2;
  with ConexaoTeste do
  begin
    lbCon2.Caption := '';
    Close;
    ProviderName := cboBanco2.Text;
    Username     := edtUsuario2.text;
    Password     := edtSenha2.text;
    Server       := edtServer2.Text;
    Database     := edtDB2.Text;
    try
      Connect;
      lbCon2.caption := 'Conexão está funcionando.';
      lbCon2.Font.Color := clBlue;
      Close;
      Except on E:Exception do
      begin
        lbCon2.Caption    := 'Falhou: ' + e.Message;
        lbCon2.Font.Color := clred;
      end;
    end;
  end;
end;

procedure TFArquivoIni.SpeedButton4Click(Sender: TObject);
begin
  ValidaConexao1;
  if chkUtilizaCon2.checked = true then
    ValidaConexao2;

  ModuloPrincipal.gravaIniBanco(trim(edtServer1.Text),
                                trim(edtUsuario1.Text),
                                trim(edtSenha1.Text),
                                trim(edtDB1.text),
                                trim(cboBanco.Text),
                                trim(edtPort1.Text),
                                trim(edtServer2.Text),
                                trim(edtUsuario2.Text),
                                trim(edtSenha2.Text),
                                trim(edtDB2.text),
                                trim(cboBanco2.Text),
                                trim(edtPort2.Text));
  Close;
end;

procedure TFArquivoIni.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

end.
