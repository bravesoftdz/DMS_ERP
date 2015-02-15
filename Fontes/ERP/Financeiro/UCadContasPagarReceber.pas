unit UCadContasPagarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass,
  frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions,
  Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadTiposContasPagarReceber = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraotipo_rec_pag_codigo: TIntegerField;
    cdsPadraotipo_rec_pag_descricao: TStringField;
    cdsPadraotipo_rec_pag_dc: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    _tipo:string;
  end;

var
  FrmCadTiposContasPagarReceber: TFrmCadTiposContasPagarReceber;

implementation

{$R *.dfm}

uses UModuloFinanceiro, UModuloPrincipal;

procedure TFrmCadTiposContasPagarReceber.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=362;
  Width:=461;
end;

procedure TFrmCadTiposContasPagarReceber.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
