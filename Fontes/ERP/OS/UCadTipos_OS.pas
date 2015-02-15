unit UCadTipos_OS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass,
  frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions,
  Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadTipos_OS = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoord_serv_tipo_codigo: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoord_serv_tipo_descricao: TStringField;
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
  FrmCadTipos_OS: TFrmCadTipos_OS;

implementation

{$R *.dfm}

uses UModuloOrdemServico, UModuloPrincipal;

procedure TFrmCadTipos_OS.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=315;
  Width:=457;
end;

procedure TFrmCadTipos_OS.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
