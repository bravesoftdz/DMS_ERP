unit UCadCondPagamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  StdCtrls, Mask, DBCtrls, DB, frxClass, frxDBSet, frxDesgn, ImgList, Menus,
  MemDS, DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls,
  JvDBCheckBox, frxExportPDF, frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadCondPagtos = class(TFrmCadPadrao)
    cdsPadraocond_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraocond_desc: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraosis_versao: TStringField;
    cdsPadraocond_gera_arq: TStringField;
    JvDBCheckBox1: TJvDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ActGraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCondPagtos: TFrmCadCondPagtos;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmCadCondPagtos.ActGraExecute(Sender: TObject);
begin
  if cdsPadrao.state in [dsinsert] then
    cdsPadraocond_cod.asinteger := cdspadrao.recordcount + 1;

  inherited;

end;

procedure TFrmCadCondPagtos.FormShow(Sender: TObject);
begin
  inherited;

  cdspadrao.close;
  cdspadrao.params[0].asinteger := Moduloprincipal._codigoEmpresa;
  cdspadrao.open;

end;

end.
