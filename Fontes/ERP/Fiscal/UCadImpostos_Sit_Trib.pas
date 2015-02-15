unit UCadImpostos_Sit_Trib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, frxExportPDF, frxExportXML,
  frxClass, frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus,
  System.Actions, Vcl.ActnList, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadImpostos_Sit_Trib = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraosit_trib_codigo: TStringField;
    cdsPadraoreg_codigo: TIntegerField;
    D: TStringField;
    cdsPadraosit_trib_explicacao: TMemoField;
    cdsPadraoimp_codigo: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    cdsPadraoemp_cod: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadImpostos_Sit_Trib: TFrmCadImpostos_Sit_Trib;

implementation

{$R *.dfm}

uses UmoduloFiscal, UModuloPrincipal;

procedure TFrmCadImpostos_Sit_Trib.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=380;
  Width:=651;
end;

procedure TFrmCadImpostos_Sit_Trib.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger := ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;
end;

end.
