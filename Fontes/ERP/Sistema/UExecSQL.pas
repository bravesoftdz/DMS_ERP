unit UExecSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, StdCtrls,
  DB, MemDS, DBAccess, Uni, ActnList, Provider,
  DBClient, ExtCtrls, JvExStdCtrls, JvRichEdit, JvDBRichEdit, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, DAScript, UniScript, JvDialogs, Buttons,
  ComCtrls, Menus, frxClass, frxDBSet, frxDesgn, ImgList, frxExportPDF,
  frxExportXML, frxExportXLS, System.Actions;

type
  TFrmexecSQL = class(TFrmCadPadrao)
    ActVerTabelas: TAction;
    uqrTabelas: TUniQuery;
    dstabelas: TDataSource;
    cdstabelas: TClientDataSet;
    dsptabelas: TDataSetProvider;
    cdstabelastable_name: TMemoField;
    uqrCampos: TUniQuery;
    dscampos: TDataSource;
    cdscampos: TClientDataSet;
    dspCampos: TDataSetProvider;
    ActScript: TAction;
    uScript: TUniScript;
    od: TJvOpenDialog;
    ActGeraClasse: TAction;
    cdscamposcolumn_name: TStringField;
    cdscamposudt_name: TMemoField;
    DataSource1: TDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    memosql: TRichEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    ScrollBox2: TScrollBox;
    GroupBox2: TGroupBox;
    rbAtualiza: TRadioButton;
    rbConsulta: TRadioButton;
    GroupBox3: TGroupBox;
    gridtabelas: TJvDBUltimGrid;
    GroupBox4: TGroupBox;
    JvDBUltimGrid2: TJvDBUltimGrid;
    BitBtn1: TBitBtn;
    uqrPadrao: TUniQuery;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridtabelasCellClick(Column: TColumn);
    procedure memoSQLKeyPress(Sender: TObject; var Key: Char);
    procedure ActScriptExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmexecSQL: TFrmexecSQL;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmexecSQL.ActPesExecute(Sender: TObject);
begin
  if ((copy(memosql.Lines.text,0,6) = 'SELECT') and (rbAtualiza.Checked)) then
    Moduloprincipal.MsgErro('Comando não é de atualização');

  if ((copy(memosql.Lines.text,0,6) = 'INSERT') and (rbConsulta.Checked)) then
    Moduloprincipal.MsgErro('Comando não é de consulta');

  if ((copy(memosql.Lines.text,0,6) = 'UPDATE') and (rbConsulta.Checked)) then
    Moduloprincipal.MsgErro('Comando não é de consulta');

  if ((copy(memosql.Lines.text,0,6) = 'DELETE') and (rbConsulta.Checked)) then
    Moduloprincipal.MsgErro('Comando não é de consulta');

  try
    ModuloPrincipal.ShowStatusBar('Processando...');
    ModuloPrincipal.PreparaTransacao;
    if rbConsulta.checked = true then
    begin
      cdsPadrao.close;
      cdsPadrao.commandtext := trim(memoSQL.Lines.Text);
      cdsPadrao.Open;
    end;

    if rbAtualiza.checked then
    begin
      if Moduloprincipal.MsgPergunta('Esse comando altera os dados de maneira irreversível. ' + #13 +
                    'Deseja continuar ?') = true then
      begin
        uqrPadrao.close;
        uqrpadrao.sql.clear;
        uqrPadrao.SQL.add(trim(memoSQL.Lines.Text));
        uqrPadrao.ExecSQL;
      end;
    end;
    ModuloPrincipal.EfetivaTransacao;
    ModuloPrincipal.ShowStatusBar('');
    except on E:Exception do
    begin
      ModuloPrincipal.DesfazTransacao;
      ModuloPrincipal.ShowStatusBar('Erro');
      Moduloprincipal.MsgErro('Não foi possível executar comando. Erro: ' + e.Message);
    end;
  end;

end;

procedure TFrmexecSQL.ActScriptExecute(Sender: TObject);
var vsql : string;
begin
  uScript.SQL.Clear;
  od.Execute();
  vsql := od.Files.CommaText;

  if vsql <> '' then
  begin
    if Moduloprincipal.MsgPergunta('Deseja executar script ?') = true then
    begin
      try
        Moduloprincipal.PreparaTransacao;
        uScript.SQL.LoadFromFile(vsql);
        uScript.Execute();
        ModuloPrincipal.EfetivaTransacao;
        Moduloprincipal.MsgInfo('Script executado com sucesso.');
        except on E:Exception do
        begin
          Moduloprincipal.DesfazTransacao;
          ModuloPrincipal.MsgErro('Não foi possível executar Script. Erro: ' + e.Message);
        end;
      end;
    end;
  end;
end;

procedure TFrmexecSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmexecSQL := nil;
end;

procedure TFrmexecSQL.FormShow(Sender: TObject);
begin
//  inherited;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    cdstabelas.close;
    cdstabelas.CommandText := 'select table_name from information_schema.tables ' +
                              'where table_schema=''public'' and table_type=''BASE TABLE'' '+
                              'order by table_name ';
    cdstabelas.open;

    cdscampos.close;
    cdscampos.CommandText := 'SELECT cast(column_name as varchar(40)) column_name, udt_name FROM information_schema.columns ' +
                             'WHERE table_name =:tabela ';
  end;

  cdscampos.open;
end;

procedure TFrmexecSQL.gridtabelasCellClick(Column: TColumn);
begin
  inherited;
  cdscampos.close;
  cdscampos.params[0].asstring := cdstabelastable_name.asstring;
  cdscampos.open;

  cdsPadrao.close;
  cdsPadrao.commandtext := 'SELECT * FROM ' + cdstabelastable_name.asstring;
  cdsPadrao.Open;
end;

procedure TFrmexecSQL.memoSQLKeyPress(Sender: TObject; var Key: Char);
begin
  key := UpCase(key);

end;

end.
