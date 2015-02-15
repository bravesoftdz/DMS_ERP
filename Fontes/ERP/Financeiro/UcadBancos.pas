unit UcadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  StdCtrls, Mask, DBCtrls, DB, frxClass, frxDBSet, frxDesgn, ImgList, Menus,
  MemDS, DBAccess, Uni, ActnList, Provider, DBClient, Buttons, ExtCtrls,
  frxExportPDF, frxExportXML, frxExportXLS, System.Actions, Vcl.ComCtrls;

type
  TFrmCadBancos = class(TFrmCadPadrao)
    cdsPadraobco_cod: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cdsPadraobco_desc: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsPadraosis_versao: TStringField;
    cdsPadraoemp_cod: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBancos: TFrmCadBancos;

implementation

{$R *.dfm}

end.
