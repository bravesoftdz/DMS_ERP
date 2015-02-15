unit UCadTiposTroca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, frxExportPDF, frxExportXML,
  frxClass, frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus,
  System.Actions, Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TFrmCadTiposTroca = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraotroca_tipo_codigo: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraotroca_tipo_descricao: TStringField;
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
  FrmCadTiposTroca: TFrmCadTiposTroca;

implementation

{$R *.dfm}

uses UModuloVendas, UModuloPrincipal;

procedure TFrmCadTiposTroca.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=307;
  Width:=459;
end;

procedure TFrmCadTiposTroca.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
