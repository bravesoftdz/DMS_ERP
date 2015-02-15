unit UCadDicionarioDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadraoMestreDetalhe, ImgList, Menus, DB, MemDS, DBAccess, Uni,
  ActnList, Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, frxClass,
  frxDBSet, frxDesgn, pngimage, frxExportPDF, frxExportXML, frxExportXLS,
  System.Actions;

type
  TFrmCadDicionarioDados = class(TFrmCadPadraoMestreDet)
    cdsPadraotab_cod: TStringField;
    cdsPadraotab_des: TStringField;
    cdsPadraotab_aju: TStringField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    JvDBUltimGrid2: TJvDBUltimGrid;
    cdsPadraoDettab_cod: TStringField;
    cdsPadraoDetcam_cod: TStringField;
    cdsPadraoDetcam_des: TStringField;
    cdsPadraoDetcam_aju: TStringField;
    cdsPadraoDetcam_mas: TStringField;
    cdsPadraoDetcam_req: TStringField;
    cdsPadraoDetcam_tip_dad: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    cdsPadraoDetsis_versao: TStringField;
    cdsPadraosis_versao: TStringField;
    procedure JvDBUltimGrid2CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregaDetalhes();
  end;

var
  FrmCadDicionarioDados: TFrmCadDicionarioDados;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TFrmCadDicionarioDados }

procedure TFrmCadDicionarioDados.CarregaDetalhes;
begin
  cdsPadraoDet.close;
  cdsPadraoDet.params[0].asstring :=  cdsPadraotab_cod.asstring;
  cdsPadraoDet.open;
end;

procedure TFrmCadDicionarioDados.FormShow(Sender: TObject);
begin
  inherited;
  CarregaDetalhes;
end;

procedure TFrmCadDicionarioDados.JvDBUltimGrid2CellClick(Column: TColumn);
begin
  inherited;
  CarregaDetalhes;
end;

end.
