unit UConsCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPadrao, ActnList, Provider, DB, DBClient, StdCtrls, 
  JvExControls, JvDBLookup, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, MemDS, DBAccess, Uni, Buttons, ExtCtrls, frxClass,
  frxExportPDF, frxExportXML, frxExportXLS, Menus, frxDBSet;

type
  TFrmConsCidades = class(TFrmConsPadrao)
    uqrCidades: TUniQuery;
    dsUF: TDataSource;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    uqrUF: TUniQuery;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    lkpTipo: TJvDBLookupCombo;
    edtNomeCidade: TEdit;
    chkTipo: TCheckBox;
    cdsConsPadraoest_uf: TStringField;
    cdsConsPadraoest_des: TStringField;
    cdsConsPadraocid_cod: TIntegerField;
    cdsConsPadraocid_des: TStringField;
    cdsUFest_cod: TIntegerField;
    cdsUFest_uf: TStringField;
    cdsUFest_des: TStringField;
    cdsUFpai_cod: TStringField;
    cdsUFest_icms: TFloatField;
    procedure lkpTipoCloseUp(Sender: TObject);
    procedure edtNomeCidadeChange(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregaSQL;
  end;

var
  FrmConsCidades: TFrmConsCidades;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmConsCidades.AdvGlowButton2Click(Sender: TObject);
begin
  inherited;
  CarregaSQL;
end;

procedure TFrmConsCidades.CarregaSQL;
var vsql : string;
begin
  vsql := 'SELECT loc_est.est_uf, loc_est.est_des, loc_cid.cid_cod, ' +
          'loc_cid.cid_des FROM loc_cid ' +
          'INNER JOIN loc_est ON (loc_cid.est_cod = loc_est.est_cod) ' +
          'where loc_cid.cid_cod > 0';

  if chktipo.Checked = true then
    vsql := vsql + ' and loc_est.est_uf = ''' + cdsUFest_uf.asstring + '''';

  if edtNomeCidade.text <> '' then
    vsql := vsql + ' and loc_cid.cid_des like '''+ edtNomeCidade.text + '%'' ';

  vsql := vsql + ' order by loc_cid.cid_des';
  cdsconspadrao.close;
  cdsconspadrao.commandtext := vsql;
  cdsconspadrao.open;
end;

procedure TFrmConsCidades.chkTipoClick(Sender: TObject);
begin
  inherited;
  CarregaSQL;
end;

procedure TFrmConsCidades.edtNomeCidadeChange(Sender: TObject);
begin
    CarregaSQL;
end;

procedure TFrmConsCidades.FormShow(Sender: TObject);
begin
  inherited;
  CarregaSQL;
  cdsUF.Close;
  cdsUF.open;

end;

procedure TFrmConsCidades.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  inherited;
  modalresult := mrok;
end;

procedure TFrmConsCidades.lkpTipoCloseUp(Sender: TObject);
begin
  CarregaSQL;
end;

end.
