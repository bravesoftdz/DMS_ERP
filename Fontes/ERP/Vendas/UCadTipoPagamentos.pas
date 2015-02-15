unit UCadTipoPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass,
  frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions,
  Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadTipoPagamentos = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraotipo_pag_codigo: TIntegerField;
    cdsPadraotipo_pag_descricao: TStringField;
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
  FrmCadTipoPagamentos: TFrmCadTipoPagamentos;

implementation

{$R *.dfm}

uses UModuloFinanceiro, UModuloPrincipal;

procedure TFrmCadTipoPagamentos.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=317;
  Width:=459;
end;

procedure TFrmCadTipoPagamentos.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
