unit UCadTipoCtaPagRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  StdCtrls, Mask, DBCtrls, frxClass, frxDBSet, frxDesgn, ImgList, Menus, MemDS,
  DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, frxExportPDF, frxExportXML, frxExportXLS,
  System.Actions;

type
  TFrmCadTipoPagRec = class(TFrmCadPadrao)
    cdsPadraotipo_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraosis_versao: TMemoField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraotipo_desc: TStringField;
    cdsPadraotipo_flag: TStringField;
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    _tipo:string;
  end;

var
  FrmCadTipoPagRec: TFrmCadTipoPagRec;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmCadTipoPagRec.ActGraExecute(Sender: TObject);
begin
  cdsPadraotipo_flag.asstring := _tipo;
  if cdspadrao.state in [dsinsert] then
    cdsPadraotipo_cod.asinteger := cdspadrao.recordcount + 1;
  inherited;

end;

procedure TFrmCadTipoPagRec.FormShow(Sender: TObject);
begin
  inherited;
  cdspadrao.close;
  cdspadrao.params[0].asinteger := ModuloPrincipal._codigoEmpresa;
  cdspadrao.params[1].asstring := _tipo;
  cdspadrao.open;

  if _tipo = 'P' then
    self.caption := 'Tipos de Contas a Pagar'
  else
    self.caption := 'Tipos de Contas a Receber';

end;

end.
