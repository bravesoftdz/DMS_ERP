unit UCadFamiliaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass, frxExportXLS, frxDBSet,
  frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadFamiliaProdutos = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraofamilia_prod_codigo: TIntegerField;
    cdsPadraofamilia_prod_descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFamiliaProdutos: TFrmCadFamiliaProdutos;

implementation

{$R *.dfm}

uses UModuloEstoques, UModuloPrincipal;

procedure TFrmCadFamiliaProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=349;
  Width:=459;
end;

procedure TFrmCadFamiliaProdutos.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
