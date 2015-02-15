unit UCadTipoEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, frxExportPDF, frxExportXML, frxClass, frxExportXLS, frxDBSet,
  frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadTipoEndereco = class(TFrmCadPadrao)
    cdsPadraotipo_endr_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraotipo_endr_descrição: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure ActGraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoEndereco: TFrmCadTipoEndereco;

implementation

{$R *.dfm}

uses UmoduloParceiros, UModuloPrincipal;

procedure TFrmCadTipoEndereco.ActGraExecute(Sender: TObject);
begin
  if cdsPadrao.State in [dsInsert] then
    cdsPadraotipo_endr_cod.AsInteger := cdsPadrao.RecordCount +1;
  inherited;

end;

procedure TFrmCadTipoEndereco.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=371;
  Width:=482;
end;

procedure TFrmCadTipoEndereco.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
