program DMS_NFe;

uses
  Forms,
  Umenu in 'Umenu.pas' {FrmMenu},
  UModuloPrincipal in 'UModuloPrincipal.pas' {ModuloPrincipal: TDataModule},
  UArquivoIni in 'UArquivoIni.pas' {FArquivoIni},
  UCadPadrao in 'UCadPadrao.pas' {FrmCadPadrao},
  UCadEmpresas in 'UCadEmpresas.pas' {FrmCadEmpresas},
  UModuloEmpresas in 'UModuloEmpresas.pas' {ModuloEmpresas: TDataModule},
  UConsPadrao in 'UConsPadrao.pas' {FrmConsPadrao},
  UConsGen in 'UConsGen.pas' {FrmConsGen},
  UConsCidades in 'UConsCidades.pas' {FrmConsCidades},
  UModuloLocalidades in 'UModuloLocalidades.pas' {ModuloLocalidades: TDataModule},
  UCadCidades in 'UCadCidades.pas' {FrmCadCidades},
  UCadEstados in 'UCadEstados.pas' {FrmCadEstados},
  UCadPaises in 'UCadPaises.pas' {FrmCadPaises},
  ULogs in 'ULogs.pas' {FrmLogs},
  UMonitor in 'UMonitor.pas' {FrmMonitor},
  UInfoEmpresaSEFAZ in 'UInfoEmpresaSEFAZ.pas' {FrmInfoEmpresaSEFAZ};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TModuloPrincipal, ModuloPrincipal);
  Application.CreateForm(TModuloLocalidades, ModuloLocalidades);
  Application.CreateForm(TModuloEmpresas, ModuloEmpresas);
  Application.CreateForm(TModuloLocalidades, ModuloLocalidades);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmMonitor, FrmMonitor);
  Application.CreateForm(TFrmLogs, FrmLogs);
  Application.CreateForm(TFrmInfoEmpresaSEFAZ, FrmInfoEmpresaSEFAZ);
  Application.Run;
end.
