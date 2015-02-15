unit UCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao,  ActnList, Provider, DB, DBClient,
  ExtCtrls, StdCtrls, Mask, DBCtrls,
  MemDS, DBAccess, Uni, FileCtrl,
  ComCtrls, Buttons, JvExMask, JvToolEdit, JvDBControls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Menus,
  ImgList, frxClass, frxDBSet, frxDesgn, frxExportPDF,
  frxExportXML, frxExportXLS;

type
  TFrmCadEmpresas = class(TFrmCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label22: TLabel;
    edtRazao: TDBEdit;
    edtFantasia: TDBEdit;
    edtIE: TDBEdit;
    edtIM: TDBEdit;
    DBEdit14: TDBEdit;
    edtCNPJ: TDBEdit;
    edtTelefone: TDBEdit;
    edtCNAE: TDBEdit;
    edtRua: TDBEdit;
    edtNumero: TDBEdit;
    edtComplemento: TDBEdit;
    edtBairro: TDBEdit;
    edtCodMun: TDBEdit;
    edtCEP: TDBEdit;
    JvDBComboEdit1: TJvDBComboEdit;
    cboRegTrib: TJvDBComboBox;
    DBEdit3: TDBEdit;
    chkIEIsenta: TDBCheckBox;
    Bevel1: TBevel;
    cdsPadraoEMP_CNPJ: TStringField;
    cdsPadraoEMP_RAZ_SOC: TStringField;
    cdsPadraoEMP_NOM_FAN: TStringField;
    cdsPadraoEMP_LOG: TStringField;
    cdsPadraoEMP_END_NUM: TStringField;
    cdsPadraoEMP_END_COM: TStringField;
    cdsPadraoEMP_END_BAI: TStringField;
    cdsPadraoCID_COD: TIntegerField;
    cdsPadraoEMP_END_CEP: TStringField;
    cdsPadraoEMP_END_TEL: TStringField;
    cdsPadraoEMP_IE: TStringField;
    cdsPadraoEMP_REG_TRI: TIntegerField;
    cdsPadraoEMP_IM: TStringField;
    cdsPadraoEMP_EMAIL: TStringField;
    cdsPadraoEMP_CNAE: TStringField;
    cdsPadraoEMP_COD_MAT: TIntegerField;
    cdsPadraoEMP_IE_ISEN: TStringField;
    cdsPadraodesccidade: TStringField;
    cdsPadraoEMP_NFE_AMBIENTE: TSmallintField;
    cdsPadraoEMP_NFE_EMAIL_ASSUNTO: TStringField;
    cdsPadraoEMP_NFE_LAYOUT: TStringField;
    cdsPadraoEMP_NFE_PATH_CERT: TStringField;
    cdsPadraoEMP_NFE_PASS_CERT: TStringField;
    cdsPadraoEMP_NFE_SERIE_CERT: TStringField;
    cdsPadraoEMP_NFE_TIPO_IMP: TSmallintField;
    cdsPadraoEMP_NFE_PATH_XML: TStringField;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    cdsPadraoEMP_NFE_MSG_EMAIL: TStringField;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit10: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    DBMemo1: TDBMemo;
    SpeedButton1: TSpeedButton;
    ActConsSefaz: TAction;
    JvDBComboEdit2: TJvDBComboEdit;
    JvDBComboEdit3: TJvDBComboEdit;
    OpenDialog1: TOpenDialog;
    cdsPadraoEMP_UF: TStringField;
    procedure ActGraExecute(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure ActPesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActInsExecute(Sender: TObject);
    procedure ActInsMaisExecute(Sender: TObject);
    procedure cdsPadraoCalcFields(DataSet: TDataSet);
    procedure ConfiguraRegime;
    procedure FormActivate(Sender: TObject);
    procedure JvDBComboEdit1ButtonClick(Sender: TObject);
    procedure chkIEIsentaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActexcExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActConsSefazExecute(Sender: TObject);
    procedure JvDBComboEdit2ButtonClick(Sender: TObject);
    procedure JvDBComboEdit3ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FrmCadEmpresas: TFrmCadEmpresas;

implementation

uses UModuloPrincipal, UConsGen,   UConsCidades, UModuloEmpresas,
  UModuloLocalidades, UInfoEmpresaSEFAZ;

{$R *.dfm}

procedure TFrmCadEmpresas.ActConsSefazExecute(Sender: TObject);
var status:string;
begin
  Moduloprincipal.ConfiguraComponenteNFe(cdsPadraoEMP_CNPJ.asstring);
  Moduloprincipal.ACBrNFe1.WebServices.StatusServico.Executar;
 // Moduloprincipal.showstatusbar('Aguarde ...');
  status := Moduloprincipal.ACBrNFe1.WebServices.StatusServico.xMotivo;

  //Moduloprincipal.showstatusbar(status);

  if status = 'Servico em Operacao' then
  begin
    Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.UF  := cdsPadraoEMP_UF.asstring;
    if Length(cdsPadraoEMP_CNPJ.asstring) > 11 then
       Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := cdsPadraoEMP_CNPJ.asstring
    else
       Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.CPF := cdsPadraoEMP_CNPJ.asstring;
    Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.Executar;

    FrmInfoEmpresaSEFAZ := TFrmInfoEmpresaSEFAZ.Create(self);
    FrmInfoEmpresaSEFAZ.lbCNPJ.caption   := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CNPJ;
    FrmInfoEmpresaSEFAZ.lbNome.caption   := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome;
    FrmInfoEmpresaSEFAZ.lbUF.caption     := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].UF;
    FrmInfoEmpresaSEFAZ.lbRegime.caption := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xRegApur;
    FrmInfoEmpresaSEFAZ.lbCNAE.caption   := inttostr(Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CNAE);
    FrmInfoEmpresaSEFAZ.lbIni.caption    := Formatdatetime('dd/mm/yyyy',Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dIniAtiv);
    FrmInfoEmpresaSEFAZ.lbEnder.caption  := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xLgr;
    FrmInfoEmpresaSEFAZ.lbnum.caption    := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].nro;
    FrmInfoEmpresaSEFAZ.lbBairro.caption := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xBairro;
    FrmInfoEmpresaSEFAZ.lbCodMun.caption := inttostr(Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].cMun);
    FrmInfoEmpresaSEFAZ.lbMun.caption    := Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xMun;
    FrmInfoEmpresaSEFAZ.lbCEP.caption    := inttostr(Moduloprincipal.ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CEP);
    FrmInfoEmpresaSEFAZ.showmodal;
    FreeAndNil(FrmInfoEmpresaSEFAZ);
  end;

 // Moduloprincipal.showstatusbar('');

end;

procedure TFrmCadEmpresas.ActexcExecute(Sender: TObject);
begin
  //ModuloEmpresas.VerificaAntesDeExcluir(cdsPadraoemp_cod.asinteger);
  inherited;

end;

procedure TFrmCadEmpresas.ActGraExecute(Sender: TObject);
var inseriu:boolean;
begin
  inseriu := false;
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    verifica();

    if ModuloEmpresas.ValidaDocumento('CNPJ',trim(cdsPadraoemp_cnpj.text)) = false then
    begin
      edtCNPJ.SetFocus;
      edtCNPJ.SelectAll;
      Moduloprincipal.msgerro('CNPJ inválido');
    end;

    ModuloPrincipal.preparaTransacao;

    if cdspadrao.state in [dsinsert] then
      inseriu := true;

    cdsPadrao.post;
    if cdsPadrao.ApplyUpdates(0) = 0 then
    begin
      ModuloPrincipal.EfetivaTransacao;
      habdesab(true);
    end;
  end;
end;

procedure TFrmCadEmpresas.ActInsExecute(Sender: TObject);
begin
  inherited;
  edtrazao.SetFocus;
end;

procedure TFrmCadEmpresas.ActInsMaisExecute(Sender: TObject);
begin
  inherited;
  cboRegTrib.SetFocus;
end;

procedure TFrmCadEmpresas.ActPesExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Empresas';
    FrmConsGen.Width := 800;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select emp_cnpj, emp_raz_soc from sis_emp order by emp_raz_soc';
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'emp_raz_soc';
      FrmConsGen.criaGrid();
    end;

    if FrmConsGen.showmodal = mrOk then
    begin
      cdsPadrao.Close;
      cdsPadrao.Params[0].Asstring := FrmConsGen.cdsConsPadrao.Fields[0].Asstring;
      cdsPadrao.Open;
      ConfiguraRegime;
    end;
    FreeAndNil(FrmConsGen);
  end;

end;

procedure TFrmCadEmpresas.cdsPadraoCalcFields(DataSet: TDataSet);
begin
  if cdsPadraocid_cod.asinteger > 0 then
  begin
    ModuloLocalidades.CarregaCidade(cdsPadraocid_cod.asinteger);

    cdsPadraodesccidade.asstring := ModuloLocalidades.ConsCidades.FieldByName('cid_des').asstring;

  end;

end;

procedure TFrmCadEmpresas.chkIEIsentaClick(Sender: TObject);
begin
  if cdspadrao.state in [dsedit,dsinsert] then
  begin
    if chkIEIsenta.checked = true then
    begin
      cdsPadraoemp_ie.asstring := 'ISENTA';
      edtIE.tag := 98;
      pintacampos;
    end
    else
    begin
      cdsPadraoemp_ie.asstring := '';
      edtIE.tag := 99;
      pintacampos;
    end;
  end;
end;

procedure TFrmCadEmpresas.ConfiguraRegime;
begin
{  case cdsPadraoregime_trib.AsInteger of
    1:gbSimples.Visible := true;
    2:gbSimples.Visible := true;
    3:gbSimples.Visible := false;
  end;    }
end;

procedure TFrmCadEmpresas.edtCNPJExit(Sender: TObject);
begin
  if (trim(cdsPadraoemp_cnpj.asstring)) <> '' then
  begin
    if ModuloEmpresas.ValidaDocumento('CNPJ',trim(cdsPadraoemp_cnpj.text)) = false then
    begin
      edtCNPJ.SetFocus;
      edtCNPJ.SelectAll;
      Moduloprincipal.msgerro('CNPJ inválido');
    end;
  end;
end;

procedure TFrmCadEmpresas.FormActivate(Sender: TObject);
begin
  inherited;
    ConfiguraRegime;
end;

procedure TFrmCadEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmCadEmpresas := nil;
  inherited;
end;

procedure TFrmCadEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  dsppadrao.DataSet := ModuloEmpresas.CRUD_Empresa;
end;

procedure TFrmCadEmpresas.FormShow(Sender: TObject);
begin
  inherited;
  height := 576;
  width  := 789;
end;

procedure TFrmCadEmpresas.JvDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsCidades := TFrmConsCidades.Create(self);
    if FrmConsCidades.showmodal = mrOk then
    begin
       cdsPadraocid_cod.asinteger   := FrmConsCidades.cdsConsPadraocid_cod.AsInteger;
       cdsPadraodesccidade.asstring := FrmConsCidades.cdsConsPadraocid_des.Asstring;
       cdsPadraoEMP_UF.asstring     := FrmConsCidades.cdsConsPadraoest_uf.asstring;
    end;
    FreeAndNil(FrmConsCidades);
  end;

end;

procedure TFrmCadEmpresas.JvDBComboEdit2ButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    OpenDialog1.Title := 'Selecione o Certificado';
    OpenDialog1.DefaultExt := '*.pfx';
    OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
    if OpenDialog1.Execute then
    begin
      cdsPadraoEMP_NFE_SERIE_CERT.Text := OpenDialog1.FileName;
    end;
  end;

end;

procedure TFrmCadEmpresas.JvDBComboEdit3ButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
   {$IFNDEF ACBrNFeOpenSSL}
   cdsPadraoEMP_NFE_SERIE_CERT.asstring := Moduloprincipal.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}
  end;
end;

end.
