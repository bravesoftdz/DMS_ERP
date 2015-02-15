unit UMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmMonitor = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    lbGeradas: TLabel;
    lbProcessadas: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMonitor: TFrmMonitor;

implementation

{$R *.dfm}

end.
