unit UCadTiposVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, frxExportPDF, frxExportXML,
  frxClass, frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus,
  System.Actions, Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadTiposVendas = class(TFrmCadPadrao)
    cdsPadraovenda_tipo_codigo: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraovenda_tipo_descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTiposVendas: TFrmCadTiposVendas;

implementation

{$R *.dfm}

uses UModuloVendas, UModuloPrincipal;

procedure TFrmCadTiposVendas.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=320;
  Width:=457;
end;

procedure TFrmCadTiposVendas.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
