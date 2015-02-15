unit UCadPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Menus, DB, MemDS, DBAccess, Uni, ActnList, Provider,
  DBClient, Buttons, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, StdCtrls, Mask, DBCtrls, ImgList, frxClass, frxDBSet, frxDesgn,
  frxExportPDF, frxExportXML, frxExportXLS, ComCtrls, System.Actions;

type
  TFrmCadPaises = class(TFrmCadPadrao)
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cdsPadraopai_cod: TStringField;
    cdsPadraopai_des: TStringField;
    cdsPadraosis_versao: TStringField;
    cdsPadraoemp_cod: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPaises: TFrmCadPaises;

implementation

uses UModuloLocalidades;

{$R *.dfm}

end.
