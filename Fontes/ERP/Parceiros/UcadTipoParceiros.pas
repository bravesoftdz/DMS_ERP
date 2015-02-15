unit UcadTipoParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, frxExportPDF, frxExportXML,
  frxClass, frxExportXLS, frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus,
  System.Actions, Vcl.ActnList, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadTipoParceiros = class(TFrmCadPadrao)
    cdsPadraotipo_cod: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraotipo_descricao: TStringField;
    cdsPadraotipo_obr_cnpj: TStringField;
    cdsPadraotipo_obr_ie: TStringField;
    cdsPadraotipo_obr_nome: TStringField;
    cdsPadraotipo_obr_endereco: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
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
  FrmCadTipoParceiros: TFrmCadTipoParceiros;

implementation

{$R *.dfm}

uses UmoduloParceiros, UModuloPrincipal;

procedure TFrmCadTipoParceiros.ActGraExecute(Sender: TObject);
begin
  if cdsPadrao.State in [dsInsert] then
    cdsPadraotipo_cod.AsInteger := cdsPadrao.RecordCount +1;
  inherited;

end;

procedure TFrmCadTipoParceiros.FormCreate(Sender: TObject);
begin
  inherited;
  height:=403;
  width:=500;
end;

procedure TFrmCadTipoParceiros.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Close;
  cdsPadrao.Params[0].AsInteger:=ModuloPrincipal._codigoEmpresa;
  cdsPadrao.Open;

end;

end.
