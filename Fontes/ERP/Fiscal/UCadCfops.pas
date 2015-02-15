unit UCadCfops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, frxExportPDF, frxExportXML, frxClass, frxExportXLS, frxDBSet,
  frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCad_Cfop = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraocfop_codigo: TIntegerField;
    cdsPadraocfop_descricao: TStringField;
    cdsPadraocfop_utilizacao: TMemoField;
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
  FrmCad_Cfop: TFrmCad_Cfop;

implementation

{$R *.dfm}

uses UmoduloFiscal;

procedure TFrmCad_Cfop.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=393;
  Width:=524;
end;

end.
