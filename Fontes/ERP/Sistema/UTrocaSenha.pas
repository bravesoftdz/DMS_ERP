unit UTrocaSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, StdCtrls, ImgList, Menus, DB, MemDS,
  DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls, frxExportPDF,
  frxExportXML, frxClass, frxExportXLS, frxDBSet, frxDesgn, System.Actions;

type
  TFrmTrocaSenha = class(TFrmCadPadrao)
    Label1: TLabel;
    Label3: TLabel;
    edtUser: TEdit;
    edtEmail: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtSenha: TEdit;
    edtNovaSenha: TEdit;
    edtNovaSenhaRep: TEdit;
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCanExecute(Sender: TObject);
  private

  public
    _usuario, _email : string;
    _codemp:integer;
  end;

var
  FrmTrocaSenha: TFrmTrocaSenha;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmTrocaSenha.ActCanExecute(Sender: TObject);
begin
  //inherited;
  Close;

end;

procedure TFrmTrocaSenha.ActGraExecute(Sender: TObject);
var Memo1 : Tmemo;
begin
  if trim(edtUser.text) = '' then
  begin
    Moduloprincipal.msgErro('Campo usuário é obrigatório');
  end;

  if trim(edtSenha.text) = '' then
  begin
    edtSenha.setfocus;
    Moduloprincipal.msgErro('Campo Senha é obrigatório');
  end;

  if trim(edtNovaSenha.text) = '' then
  begin
    edtNovaSenha.setfocus;
    Moduloprincipal.msgErro('Campo Nova Senha é obrigatório');
  end;

  if trim(edtNovaSenhaRep.text) = '' then
  begin
    edtNovaSenhaRep.setfocus;
    Moduloprincipal.msgErro('Campo Repetir Senha é obrigatório');
  end;

  if trim(edtNovaSenha.text) <> trim(edtNovaSenhaRep.text) then
  begin
    edtNovaSenha.selectAll;
    edtNovaSenha.setfocus;
    Moduloprincipal.msgErro('Campo Nova Senhe e Repetir Senha devem ser iguais');
  end;

  if ModuloPrincipal.MD5String(trim(edtSenha.text)) <> ModuloPrincipal._senhaDoUsuario then
  begin
    edtSenha.selectall;
    edtSenha.setfocus;
    Moduloprincipal.msgErro('Senha atual não confere com a cadastrada!');
  end;

  try
    Memo1 := TMemo.create(self);
    memo1.Parent := self;
    memo1.Lines.Clear;
    memo1.Visible := false;
    memo1.Width := 500;
    ModuloPrincipal.PreparaTransacao;
  //  ModuloPrincipal._obj_usu.usu_senha     := edtSenha.Text;
  //  ModuloPrincipal._obj_usu.NovaSenha := edtNovaSenhaRep.text;
  //  ModuloPrincipal._obj_usu.AlterarSenha();

    ModuloPrincipal.EfetivaTransacao;
    habdesab(true);
    memo1.Lines.add('Sua senha foi alterada para: ' + edtNovasenha.text +
                    ' em ' + formatdatetime('DD/MM/YYYY HH:MM:SS',ModuloPrincipal.HojeAgora));
   { if ModuloPrincipal.EnviaEmails(edtEmail.Text,
                                    '',
                                    '',
                                    'Mudanca de Senha',
                                    1,
                                    '',
                                    false,
                                    memo1) then }
    begin
      Messagedlg('Senha alterada com sucesso!',mtWarning,[mbok],0);
      FreeAndNil(memo1);
    end;
    Close;
    except on E:Exception do
    begin
      ModuloPrincipal.desfaztransacao;
      ModuloPrincipal.msgerro('Não foi possível alterar senha');
    end;

  end;

end;

procedure TFrmTrocaSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  inherited;

end;

procedure TFrmTrocaSenha.FormCreate(Sender: TObject);
begin

  _usuario := '';
  _email   := ''

end;

procedure TFrmTrocaSenha.FormShow(Sender: TObject);
begin
  if trim(_usuario) <> '' then
  begin
    edtUser.text    := trim(_usuario);
    edtUser.Enabled := false;
  end;

  if trim(_email) <> '' then
  begin
    edtEmail.Text    := trim(_email);
    edtEmail.Enabled := false;
  end;

  if ((trim(_usuario) <> '') and ( trim(_email) <> '')) then
  begin
    Habdesab(false);
  end;
end;

end.
