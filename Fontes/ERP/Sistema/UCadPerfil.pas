unit UCadPerfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ActnList, Provider, DB, DBClient,
  StdCtrls, Mask, DBCtrls, Grids, ExtCtrls,
  MemDS, DBAccess, Uni, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, JvComponentBase, JvFormTransparent,
  Buttons, Menus, ImgList, frxExportPDF, frxExportXML, frxClass, frxExportXLS,
  frxDBSet, frxDesgn, ComCtrls, System.Actions;

type
  TFrmCadPerfil = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edtDescPerfil: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoper_cod: TSmallintField;
    cdsPadraoper_desc: TStringField;
    cdsPadraoper_adm: TStringField;
    cdsPadraoper_ger: TStringField;
    cdsPadraosis_versao: TStringField;
    DBCheckBox2: TDBCheckBox;
    procedure ActGraExecute(Sender: TObject);
    procedure ActInsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmCadPerfil: TFrmCadPerfil;

implementation

uses UModuloPrincipal, UConsGen, UModuloAcesso;

{$R *.dfm}

procedure TFrmCadPerfil.ActGraExecute(Sender: TObject);
begin
  if cdspadrao.state in [dsinsert] then
    cdsPadraoper_cod.asinteger := cdspadrao.RecordCount + 1;

    cdsPadrao.post;

    ModuloPrincipal.preparaTransacao;
    if cdsPadrao.ApplyUpdates(0) = 0 then
    begin
      ModuloPrincipal.EfetivaTransacao;
      habdesab(true);
    end;

end;

procedure TFrmCadPerfil.ActInsExecute(Sender: TObject);
begin
  inherited;
  edtDescPerfil.setfocus;
end;

procedure TFrmCadPerfil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadPErfil := nil;

end;

procedure TFrmCadPerfil.FormShow(Sender: TObject);
begin
  inherited;
  cdspadrao.close;
  cdspadrao.params[0].asinteger := ModuloPrincipal._codigoEmpresa;
  cdspadrao.open;
end;

end.



