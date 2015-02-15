unit UInfoEmpresaSEFAZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TFrmInfoEmpresaSEFAZ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lbCNPJ: TLabel;
    lbNome: TLabel;
    lbUF: TLabel;
    lbRegime: TLabel;
    lbCNAE: TLabel;
    lbIni: TLabel;
    lbEnder: TLabel;
    lbnum: TLabel;
    lbBairro: TLabel;
    lbCodMun: TLabel;
    lbMun: TLabel;
    lbCEP: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInfoEmpresaSEFAZ: TFrmInfoEmpresaSEFAZ;

implementation

{$R *.dfm}

procedure TFrmInfoEmpresaSEFAZ.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
