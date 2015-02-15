unit UCadRegimes_tributarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass, frxExportXLS, frxDBSet,
  frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadRegimesTributarios = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoreg_trib_codigo: TIntegerField;
    cdsPadraoreg_trib_descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadRegimesTributarios: TFrmCadRegimesTributarios;

implementation

{$R *.dfm}

uses UmoduloFiscal;

procedure TFrmCadRegimesTributarios.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=294;
  Width:=362;
end;

end.
