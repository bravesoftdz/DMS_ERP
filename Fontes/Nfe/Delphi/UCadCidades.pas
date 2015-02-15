unit UCadCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ActnList, Provider, DB, DBClient, ExtCtrls,
  StdCtrls, Mask, DBCtrls ,
  Uni, MemDS, DBAccess, JvExControls, JvDBLookup,Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Menus, ImgList, frxClass, frxDBSet,
  frxDesgn, frxExportPDF, frxExportXML, frxExportXLS, ComCtrls;

type
  TFrmCadCidades = class(TFrmCadPadrao)
    dsEst: TDataSource;
    cdsEst: TClientDataSet;
    dspEst: TDataSetProvider;
    uqrEstados: TUniQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtCod: TDBEdit;
    edtDesc: TDBEdit;
    lkpGrupo: TJvDBLookupCombo;
    cdsEstest_cod: TIntegerField;
    cdsEstest_uf: TStringField;
    cdsEstest_des: TStringField;
    cdsEstpai_cod: TStringField;
    cdsEstest_icms: TFloatField;
    cdsPadraocid_cod: TIntegerField;
    cdsPadraocid_cod_ibge: TIntegerField;
    cdsPadraocid_des: TStringField;
    cdsPadraoest_cod: TIntegerField;
    cdsPadraosis_versao: TStringField;
    cdsPadraoemp_cod: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ActPesExecute(Sender: TObject);
    procedure CarregaCidades(codigo:integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActGraExecute(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FrmCadCidades: TFrmCadCidades;


implementation

uses UModuloPrincipal, UConsGen, UConsCidades, UModuloLocalidades;

{$R *.dfm}

procedure TFrmCadCidades.ActGraExecute(Sender: TObject);
begin
  inherited;
  Habdesab(true);
end;

procedure TFrmCadCidades.ActPesExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
  begin
    FrmConsCidades := TFrmConsCidades.Create(self);
    if FrmConsCidades.showmodal = mrOk then
    begin
       CarregaCidades(FrmConsCidades.cdsConsPadraocid_cod.AsInteger);
    end;
    FreeAndNil(FrmConsCidades);
  end;
end;



procedure TFrmCadCidades.CarregaCidades(codigo: integer);
begin
  cdspadrao.close;
  cdspadrao.params[0].asinteger := codigo;
  cdspadrao.open;
end;

procedure TFrmCadCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadCidades := nil;
end;

procedure TFrmCadCidades.FormShow(Sender: TObject);
begin
  Width  := 591;
  Height := 193;
  inherited;
  cdsEst.open;
end;

end.
