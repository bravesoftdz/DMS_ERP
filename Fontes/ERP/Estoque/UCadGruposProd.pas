unit UCadGruposProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  StdCtrls, Mask, DBCtrls, DB, frxClass, frxDBSet, frxDesgn, ImgList, Menus,
  MemDS, DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls,
  frxExportPDF, frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadGrupos = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraogrupo_prod_codigo: TStringField;
    cdsPadraogrupo_prod_descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadGrupos: TFrmCadGrupos;

implementation

uses UModuloPrincipal, UModuloEstoques;

{$R *.dfm}

procedure TFrmCadGrupos.ActGraExecute(Sender: TObject);
begin
  if cdspadrao.state in [dsinsert] then
    cdsPadraogrupo_prod_codigo.asinteger := cdspadrao.recordcount + 1;
  inherited;

end;

procedure TFrmCadGrupos.FormShow(Sender: TObject);
begin
  inherited;
  cdspadrao.close;
  cdspadrao.params[0].asinteger := ModuloPrincipal._codigoempresa;
  cdspadrao.open;

end;

end.
