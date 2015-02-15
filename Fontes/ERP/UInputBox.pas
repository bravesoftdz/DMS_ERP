unit UInputBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmInputBox = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lbValor: TLabel;
    edtValor: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInputBox: TFrmInputBox;

implementation

{$R *.dfm}

procedure TFrmInputBox.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key = #13) and (edtValor.text <> '')) then
    MOdalresult := mrok;
end;

procedure TFrmInputBox.FormShow(Sender: TObject);
begin
  edtValor.setfocus;
  edtvalor.selectall;
end;

procedure TFrmInputBox.SpeedButton1Click(Sender: TObject);
begin
  MOdalresult := mrok;
end;

procedure TFrmInputBox.SpeedButton2Click(Sender: TObject);
begin
  modalresult := mrnone;
  close;
end;

end.
