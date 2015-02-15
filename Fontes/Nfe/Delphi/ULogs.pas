unit ULogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Provider, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Buttons;

type
  TFrmLogs = class(TForm)
    JvDBUltimGrid1: TJvDBUltimGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    dspLogs: TDataSetProvider;
    cdsLogs: TClientDataSet;
    cdsLogsLOG_ID: TIntegerField;
    cdsLogsLOG_DATE: TDateTimeField;
    cdsLogsLOG_TITULO: TStringField;
    cdsLogsLOG_DESCRICAO: TStringField;
    cdsLogsLOG_SOLUCAO: TStringField;
    cdsLogsLOG_TIPO: TStringField;
    btnImp: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogs: TFrmLogs;

implementation

uses UModuloPrincipal;

{$R *.dfm}

end.
