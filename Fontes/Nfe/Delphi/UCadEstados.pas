unit UCadEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ActnList, Provider, DB, DBClient, ExtCtrls,Grids,
  StdCtrls, Mask, DBCtrls, MemDS, DBAccess, Uni,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Buttons, Menus, ImgList,
  frxClass, frxDBSet, frxDesgn, frxExportPDF, frxExportXML, frxExportXLS,
  ComCtrls;

type
  TFrmCadEstados = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cdsPadraoest_cod: TIntegerField;
    cdsPadraoest_uf: TStringField;
    cdsPadraoest_des: TStringField;
    cdsPadraopai_cod: TStringField;
    cdsPadraoest_icms: TFloatField;
    cdsPadraosis_versao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEstados: TFrmCadEstados;

implementation

uses UModuloLocalidades;


{$R *.dfm}

procedure TFrmCadEstados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadEstados := nil;
end;

procedure TFrmCadEstados.FormShow(Sender: TObject);
begin
  inherited;
  Height := 369;
  Width  := 485;
end;

end.
