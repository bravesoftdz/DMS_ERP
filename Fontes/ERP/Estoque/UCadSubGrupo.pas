unit UCadSubGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, DBCtrls, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvDBControls, DB, frxClass, frxDBSet, frxDesgn, ImgList, Menus, MemDS,
  DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls,
  frxExportPDF, frxExportXML,
  frxExportXLS, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  System.Actions;

type
  TFrmCadSubGrupo = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraosub_grup_prod_codigo: TIntegerField;
    cdsPadraosub_grup_prod_descricao: TStringField;
    cdsPadraoemp_cod: TIntegerField;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    procedure CarregaSubGrupo();
  public
    { Public declarations }
  end;

var
  FrmCadSubGrupo: TFrmCadSubGrupo;

implementation

uses UConsGen, UModuloPrincipal, UModuloEstoques;

{$R *.dfm}

procedure TFrmCadSubGrupo.ActGraExecute(Sender: TObject);
begin
  if cdspadrao.state in [dsinsert] then
  begin

  end;

  inherited;

end;

procedure TFrmCadSubGrupo.CarregaSubGrupo();
begin
  cdspadrao.close;
  cdspadrao.params[0].asinteger := ModuloPrincipal._codigoEmpresa;
  cdspadrao.open;
end;

procedure TFrmCadSubGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  width  := 471;
  height := 546;

end;

procedure TFrmCadSubGrupo.FormShow(Sender: TObject);
begin
  inherited;
  CarregaSubGrupo;
end;

end.
