unit UCadImposto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass,
  frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions,
  Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadImposto = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraoimp_codigo: TStringField;
    cdsPadraoimp_descricao: TStringField;
    cdsPadraoimp_finalidade: TMemoField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadImposto: TFrmCadImposto;

implementation

{$R *.dfm}

uses UmoduloFiscal, UcadTipoParceiros;

procedure TFrmCadImposto.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=420;
  Width:=559;
end;

end.
