unit UCadDepto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ActnList, Provider, DB, DBClient, ExtCtrls,
  StdCtrls, Mask,
  DBCtrls, Grids, MemDS,
  DBAccess, Uni, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  pngimage, JvExControls, JvXPCore, JvXPButtons, ComCtrls, ToolWin, Buttons,
  Menus, ImgList, frxClass, frxDBSet, frxDesgn, frxExportPDF, frxExportXML,
  frxExportXLS, System.Actions;

type
  TFrmCadDeptos = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edtDescDepto: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    cdsPadraodep_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraodep_desc: TStringField;
    cdsPadraodep_fone: TStringField;
    cdsPadraodep_ram: TStringField;
    procedure ActInsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmCadDeptos: TFrmCadDeptos;

implementation

uses UModuloPrincipal, UModuloAcesso, UModuloEmpresas;

{$R *.dfm}

procedure TFrmCadDeptos.ActGraExecute(Sender: TObject);
begin
  if cdsPadrao.State in [dsinsert] then
    cdsPadraodep_cod.AsInteger := cdspadrao.recordcount + 1;
  inherited;

end;

procedure TFrmCadDeptos.ActInsExecute(Sender: TObject);
begin
  inherited;
  edtDescDepto.setfocus;
end;

procedure TFrmCadDeptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  FrmCadDeptos := nil;
end;

procedure TFrmCadDeptos.FormShow(Sender: TObject);
begin
  inherited;
  cdspadrao.close;
  cdspadrao.params[0].asinteger := moduloprincipal._codigoEmpresa;
  cdspadrao.open;

  height := 513;
  width  := 434;
end;

end.
