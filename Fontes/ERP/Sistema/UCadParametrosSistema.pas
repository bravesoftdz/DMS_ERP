unit UCadParametrosSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, StdCtrls, Mask, DBCtrls, DB, ActnList, Provider,
  DBClient, ExtCtrls,
  MemDS, DBAccess, Uni, JvExStdCtrls, JvGroupBox,
  ComCtrls, Buttons, JvExMask,
  JvToolEdit, JvDBControls, JvCombobox, JvDBCombobox,
  Menus, JvDBCheckBox, JvRichEdit, JvDBRichEdit, JvDialogs, ImgList, frxClass,
  frxDBSet, frxDesgn, frxExportPDF, frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadParamSis = class(TFrmCadPadrao)
    OpenDialog1: TOpenDialog;
    clDialog: TJvColorDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    edtColor: TJvDBComboEdit;
    TabSheet6: TTabSheet;
    GroupBox8: TGroupBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    edtCodprazo: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    edtTipoCli: TJvDBComboEdit;
    JvDBComboEdit2: TJvDBComboEdit;
    JvDBComboEdit4: TJvDBComboEdit;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraosis_cor_cam_obr: TIntegerField;
    cdsPadraopes_cod_tip_cli: TIntegerField;
    cdsPadraopes_cod_tip_for: TIntegerField;
    cdsPadraopes_cod_tip_ven: TIntegerField;
    cdsPadraosis_cas_dec: TIntegerField;
    cdsPadraosis_int_tim: TIntegerField;
    cdsPadraosis_msg_crud: TStringField;
    cdsPadraosis_reg_log_ins: TStringField;
    cdsPadraosis_reg_log_alt: TStringField;
    cdsPadraosis_reg_log_exc: TStringField;
    cdsPadraosis_path: TStringField;
    Label2: TLabel;
    edt_sis_cas_dec: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    cdsPadraonomeTipoVendedor: TStringField;
    cdsPadraonomeTipoForne: TStringField;
    cdsPadraonomeTipoCli: TStringField;
    cdsPadraosis_versao: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    JvDBComboEdit1: TJvDBComboEdit;
    cdsPadraopes_cod_tip_fabr: TIntegerField;
    cdsPadraonomeTipoFab: TStringField;
    cdsPadraosis_ftp_host: TStringField;
    cdsPadraosis_ftp_user: TStringField;
    cdsPadraosis_ftp_pass: TStringField;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    cdsPadraosis_pc_tipo: TStringField;

    procedure ActaltExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoCalcFields(DataSet: TDataSet);
    procedure edtTipoCliButtonClick(Sender: TObject);
    procedure JvDBComboEdit4ButtonClick(Sender: TObject);
    procedure JvDBComboEdit2ButtonClick(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure edtColorButtonClick(Sender: TObject);
    procedure edtColorChange(Sender: TObject);
    procedure JvDBComboEdit1ButtonClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmCadParamSis: TFrmCadParamSis;

implementation

uses UModuloPrincipal, UConsGen;

{$R *.dfm}

procedure TFrmCadParamSis.ActaltExecute(Sender: TObject);
begin
  if cdsPadrao.RecordCount > 0 then
  begin
    if not (cdsPadrao.State in [dsInsert,dsEdit]) then
    begin
      habdesab(false);
      cdsPadrao.Edit;
    end;
  end
  else
  begin
    habdesab(false);
    cdsPadrao.Insert;
  end;
end;


procedure TFrmCadParamSis.cdsPadraoCalcFields(DataSet: TDataSet);
begin
 {
  if cdsPadraopes_cod_tip_cli.asinteger > 0 then
  begin
    _obj_tipo_parc.Par_tip_cod := cdsPadraopes_cod_tip_cli.asinteger;
    _obj_tipo_parc.CarregaPar_neg_tipo;
    cdsPadraonomeTipoCli.asstring := _obj_tipo_parc.Par_tip_desc;
  end;

  if cdsPadraopes_cod_tip_ven.asinteger > 0 then
  begin
    _obj_tipo_parc.Par_tip_cod := cdsPadraopes_cod_tip_ven.asinteger;
    _obj_tipo_parc.CarregaPar_neg_tipo;
    cdsPadraonomeTipoVendedor.asstring := _obj_tipo_parc.Par_tip_desc;
  end;

  if cdsPadraopes_cod_tip_fabr.asinteger > 0 then
  begin
    _obj_tipo_parc.Par_tip_cod := cdsPadraopes_cod_tip_fabr.asinteger;
    _obj_tipo_parc.CarregaPar_neg_tipo;
    cdsPadraonomeTipoFab.asstring := _obj_tipo_parc.Par_tip_desc;
  end;

  if cdsPadraopes_cod_tip_for.asinteger > 0 then
  begin
    _obj_tipo_parc.Par_tip_cod := cdsPadraopes_cod_tip_for.asinteger;
    _obj_tipo_parc.CarregaPar_neg_tipo;
    cdsPadraonomeTipoForne.asstring := _obj_tipo_parc.Par_tip_desc;
  end;

  if cdsPadraosis_cor_cam_obr.asinteger > 0 then
  begin
    edtcolor.color := cdsPadraosis_cor_cam_obr.asinteger;
  end;  *}

end;

procedure TFrmCadParamSis.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmCadParamSis.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TFrmCadParamSis.edtTipoCliButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Tipo de Pessoas';
    FrmConsGen.Width := 800;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select par_tip_cod, par_tip_desc from par_neg_tipo where emp_cod =:emp_cod order by par_tip_desc';
      Params[0].asinteger := ModuloPrincipal._codigoEmpresa;
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'par_tip_desc';
      FrmConsGen.criaGrid();
    end;
    if FrmConsGen.ShowModal = mrOk then
    begin
      cdsPadraopes_cod_tip_cli.asinteger := FrmConsGen.cdsConsPadrao.Fields[0].Asinteger;
      cdsPadraonomeTipoCli.asstring       := FrmConsGen.cdsConsPadrao.Fields[1].AsString;
    end;

    FreeAndNil(FrmConsGen);
  end;

end;

procedure TFrmCadParamSis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadParamSis := nil;

end;

procedure TFrmCadParamSis.FormShow(Sender: TObject);
begin
  height := 412;
  width  := 735;
  inherited;
  cdspadrao.close;
  cdspadrao.params[0].asinteger := moduloprincipal._codigoempresa;
  cdspadrao.open;

  PageControl1.TabIndex := 0;
end;

procedure TFrmCadParamSis.JvDBComboEdit1ButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Tipo de Fabricante';
    FrmConsGen.Width := 800;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select par_tip_cod, par_tip_desc from par_neg_tipo where emp_cod =:emp_cod order by par_tip_desc';
      Params[0].asinteger := ModuloPrincipal._codigoEmpresa;
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'par_tip_desc';
      FrmConsGen.criaGrid();
    end;
    if FrmConsGen.ShowModal = mrOk then
    begin
      cdsPadraopes_cod_tip_fabr.asinteger := FrmConsGen.cdsConsPadrao.Fields[0].Asinteger;
      cdsPadraonomeTipoFab.asstring       := FrmConsGen.cdsConsPadrao.Fields[1].AsString;
    end;
    FreeAndNil(FrmConsGen);
  end;

end;

procedure TFrmCadParamSis.JvDBComboEdit2ButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Vendedor';
    FrmConsGen.Width := 800;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select par_tip_cod, par_tip_desc from par_neg_tipo where emp_cod =:emp_cod order by par_tip_desc';
      Params[0].asinteger := ModuloPrincipal._codigoEmpresa;
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'par_tip_desc';
      FrmConsGen.criaGrid();
    end;
    if FrmConsGen.ShowModal = mrOk then
    begin
      cdsPadraopes_cod_tip_ven.asinteger := FrmConsGen.cdsConsPadrao.Fields[0].Asinteger;
      cdsPadraonomeTipoVendedor.asstring   := FrmConsGen.cdsConsPadrao.Fields[1].AsString;
    end;

    FreeAndNil(FrmConsGen);
  end;

end;

procedure TFrmCadParamSis.JvDBComboEdit4ButtonClick(Sender: TObject);
begin
  if (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Tipo de Pessoas';
    FrmConsGen.Width := 800;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select par_tip_cod, par_tip_desc from par_neg_tipo where emp_cod =:emp_cod order by par_tip_desc';
      Params[0].asinteger := ModuloPrincipal._codigoEmpresa;
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.campoPadraoConsulta := 'par_tip_desc';
      FrmConsGen.criaGrid();
    end;
    if FrmConsGen.ShowModal = mrOk then
    begin
      cdsPadraopes_cod_tip_for.asinteger := FrmConsGen.cdsConsPadrao.Fields[0].Asinteger;
      cdsPadraonomeTipoForne.asstring        := FrmConsGen.cdsConsPadrao.Fields[1].AsString;
    end;

    FreeAndNil(FrmConsGen);
  end;

end;

procedure TFrmCadParamSis.edtColorButtonClick(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsedit,dsinsert]) then
  begin
    clDialog.Execute();
    cdsPadraosis_cor_cam_obr.AsInteger := clDialog.Color;
  end;
end;

procedure TFrmCadParamSis.edtColorChange(Sender: TObject);
begin
  inherited;
  edtColor.Color := cdsPadraosis_cor_cam_obr.AsInteger;
end;

end.
