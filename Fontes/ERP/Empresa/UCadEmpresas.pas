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
  frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadEmpresas = class(TFrmCadPadrao)
    Label1: TLabel;
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
    edtCodigo: TDBEdit;
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
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoemp_cnpj: TStringField;
    cdsPadraoemp_raz_soc: TStringField;
    cdsPadraoemp_nom_fan: TStringField;
    cdsPadraoemp_log: TStringField;
    cdsPadraoemp_end_num: TStringField;
    cdsPadraoemp_end_com: TStringField;
    cdsPadraoemp_end_bai: TStringField;
    cdsPadraocid_cod: TIntegerField;
    cdsPadraoemp_end_cep: TStringField;
    cdsPadraoemp_end_tel: TStringField;
    cdsPadraoemp_ie: TStringField;
    cdsPadraoemp_reg_tri: TIntegerField;
    cdsPadraoemp_im: TStringField;
    cdsPadraoemp_email: TStringField;
    cdsPadraoemp_cnae: TStringField;
    cdsPadraoemp_cod_mat: TIntegerField;
    cdsPadraoemp_ie_isen: TStringField;
    cdsPadraoemp_end_uf: TStringField;
    cdsPadraodesccidade: TStringField;
    Bevel1: TBevel;
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
  private
    { Private declarations }
  public

  end;

var
  FrmCadEmpresas: TFrmCadEmpresas;

implementation

uses UModuloPrincipal, UConsGen,   UConsCidades, UModuloEmpresas,
  UModuloLocalidades;

{$R *.dfm}

procedure TFrmCadEmpresas.ActexcExecute(Sender: TObject);
begin
  ModuloEmpresas.VerificaAntesDeExcluir(cdsPadraoemp_cod.asinteger);
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
    begin
      cdsPadraoemp_cod.asinteger := ModuloEmpresas.ObterProximoCodigo;
    end;


    if cdspadrao.state in [dsinsert] then
      inseriu := true;

    cdsPadrao.post;
    if cdsPadrao.ApplyUpdates(0) = 0 then
    begin
      if inseriu = true then
      begin
        ModuloEmpresas.CriarGeneratorsEmpresa(cdsPadraoemp_cod.asinteger);
        ModuloEmpresas.IniciaEmpresaNova(cdsPadraoemp_cod.asinteger);
      end;

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
      CommandText := 'select emp_cod, emp_raz_soc from sis_emp order by emp_raz_soc';
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'emp_raz_soc';
      FrmConsGen.criaGrid();
    end;

    if FrmConsGen.showmodal = mrOk then
    begin
      cdsPadrao.Close;
      cdsPadrao.Params[0].AsInteger := FrmConsGen.cdsConsPadrao.Fields[0].AsInteger;
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
    cdsPadraoemp_end_uf.asstring := ModuloLocalidades.ConsCidades.FieldByName('est_uf').asstring;
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
  height := 324;
  width  := 785;
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
    end;
    FreeAndNil(FrmConsCidades);
  end;

end;

end.
