unit UCadCeps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Menus, DB, MemDS, DBAccess, Uni, ActnList, Provider,
  DBClient, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, frxExportPDF,
  frxExportXML, frxClass, frxExportXLS, frxDBSet, frxDesgn, ImgList, ComCtrls,
  System.Actions;

type
  TFrmCadCeps = class(TFrmCadPadrao)
    cdsPadraorua_cep: TStringField;
    cdsPadraorua_cod_mun: TIntegerField;
    cdsPadraorua_nome: TStringField;
    cdsPadraorua_bairro: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCeps: TFrmCadCeps;

implementation

uses UModuloPrincipal, UConsGen, UModuloLocalidades;

{$R *.dfm}

end.
