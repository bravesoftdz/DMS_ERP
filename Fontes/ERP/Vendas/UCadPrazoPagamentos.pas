unit UCadPrazoPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass, frxExportXLS, frxDBSet,
  frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadPrazoPagamentos = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoprazo_pag_codigo: TIntegerField;
    cdsPadraoprazo_pag_descricao: TStringField;
    cdsPadraoprazo_pag_qtd_parcelas: TIntegerField;
    cdsPadraoprazo_pag_intervalo: TIntegerField;
    cdsPadraoprazo_pag_perc: TFloatField;
    cdsPadraoprazo_pag_status: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPrazoPagamentos: TFrmCadPrazoPagamentos;

implementation

{$R *.dfm}

uses UModuloFinanceiro, UModuloPrincipal;

procedure TFrmCadPrazoPagamentos.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=383;
  Width:=637;
end;

procedure TFrmCadPrazoPagamentos.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
