program DB_DataServer;

uses
  Forms,
  Uconfiguracoes in 'Uconfiguracoes.pas' {FrmConfig},
  Umenu in 'Umenu.pas' {FrmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;
end.
