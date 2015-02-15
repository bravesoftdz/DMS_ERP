unit UAutoriza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPadrao, frxClass, ActnList, Provider, DB, DBClient, StdCtrls,
  Buttons, ExtCtrls, pngimage, UModuloPrincipal, frxExportPDF, frxExportXML,
  frxExportXLS, Vcl.Menus, frxDBSet, System.Actions;

type
  TFrmAutoriza = class(TFrmConsPadrao)
    Label1: TLabel;
    Label2: TLabel;
    edtUsu: TEdit;
    edtSenha: TEdit;
    Image1: TImage;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAutoriza: TFrmAutoriza;

implementation

{$R *.dfm}

procedure TFrmAutoriza.SpeedButton4Click(Sender: TObject);
begin
  Modalresult := mrNone;

end;

end.
