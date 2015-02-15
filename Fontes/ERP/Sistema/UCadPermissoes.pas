unit UCadPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, ActnList, Provider, DB, DBClient,
  ExtCtrls, ComCtrls, StdCtrls, Uni, Menus, ImgList, Mask, DBCtrls,
   MemDS, DBAccess, Buttons, frxClass, frxDBSet, frxDesgn, frxExportPDF,
  frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadPermissoes = class(TFrmCadPadrao)
    ImageList2: TImageList;
    ImageList1: TImageList;
    ActDesMarcaTudo: TAction;
    ActMarcarTudo: TAction;
    ActMarcarMod: TAction;
    ActDesmarcarMod: TAction;
    ActExpandir: TAction;
    ActRetrair: TAction;
    DesmarcartodasasOpesdessemdulo1: TMenuItem;
    DesmarcartodasasOpesdeTodososMdulos1: TMenuItem;
    MarcartodasasOpesdessemdulo1: TMenuItem;
    MarcartodasasOpesdeTodososMdulos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Expandirtudo1: TMenuItem;
    Retrairtudo1: TMenuItem;
    N3: TMenuItem;
    Label2: TLabel;
    edtCodigo: TEdit;
    edtdescPerfil: TEdit;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoper_cod: TSmallintField;
    cdsPadraodescmodulo: TStringField;
    cdsPadraonomeform: TStringField;
    cdsPadraonumtag: TIntegerField;
    cdsPadraosis_versao: TStringField;
    TreeOpcoes: TTreeView;
    procedure DesmarcartodasasOpesdessemdulo1Click(Sender: TObject);
    procedure desmarcaTodasOpcoesClick(Sender: TObject);
    procedure SelecionaTodasOpcoesClick(Sender: TObject);
    procedure ActDesMarcaTudoExecute(Sender: TObject);
    procedure ActMarcarTudoExecute(Sender: TObject);
    procedure ActMarcarModExecute(Sender: TObject);
    procedure ActDesmarcarModExecute(Sender: TObject);
    procedure ActCanExecute(Sender: TObject);
    procedure ActGraExecute(Sender: TObject);
    procedure ActInsExecute(Sender: TObject);
    procedure TreeOpcoesChange(Sender: TObject; Node: TTreeNode);
    procedure TreeOpcoesDblClick(Sender: TObject);
    procedure ActPesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActExpandirExecute(Sender: TObject);
    procedure ActRetrairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActaltExecute(Sender: TObject);
  private
    { Private declarations }
  public
    Contador, IndiceNode, IndiceSubNode, _cod_emp:integer;
        _alterando:boolean;
    procedure ConfigurarOpcoesAcesso;

    function ExisteUsuarioNestePerfil:boolean;

  end;

var
  FrmCadPermissoes: TFrmCadPermissoes;

implementation

uses UAcesso, UModuloPrincipal, UConsGen, UModuloAcesso;



{$R *.dfm}

{ TFrmCadPermissoes }

procedure TFrmCadPermissoes.ActaltExecute(Sender: TObject);
begin
  if edtCodigo.text <> '' then
  begin
      habdesab(false);
      _alterando := true;
  end;


end;

procedure TFrmCadPermissoes.ActCanExecute(Sender: TObject);
begin
  habdesab(true);
  _alterando := false;

  if strtoint(edtCodigo.text) = 0 then
    TreeOpcoes.Items.Clear
  else
    ConfigurarOpcoesAcesso;

end;

procedure TFrmCadPermissoes.ActDesmarcarModExecute(Sender: TObject);
var
  i:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items[IndiceNode].Count - 1 do
    begin
      TreeOpcoes.Items[IndiceNode].Item[i].ImageIndex:=-1;
      TreeOpcoes.Items[IndiceNode].Item[i].StateIndex:=-1;
      TreeOpcoes.Items[IndiceNode].Item[i].SelectedIndex:=-1;
    end;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');
end;

procedure TFrmCadPermissoes.ActDesMarcaTudoExecute(Sender: TObject);
var
  i,y:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items.Count - 1 do
    begin
      if TreeOpcoes.Items[i].HasChildren then
      begin
        for y:=0 to TreeOpcoes.Items[i].Count - 1 do
        begin
          TreeOpcoes.Items[i].Item[y].ImageIndex:=-1;
          TreeOpcoes.Items[i].Item[y].StateIndex:=-1;
          TreeOpcoes.Items[i].Item[y].SelectedIndex:=-1;
        end;
      end;
    end;
    TreeOpcoes.FullExpand;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');
end;

procedure TFrmCadPermissoes.ActExpandirExecute(Sender: TObject);
begin
  TreeOpcoes.FullExpand;

end;

procedure TFrmCadPermissoes.ActGraExecute(Sender: TObject);
var
  Mysql : TUniQuery;

  function CheckOK:boolean;
  var
    i,y:integer;
    Flag:boolean;
  begin
    Flag:=False;
    for i:=0 to TreeOpcoes.Items.Count - 1 do
    begin
      if TreeOpcoes.Items[i].HasChildren then
      begin
        for y:=0 to TreeOpcoes.Items[i].Count - 1 do
        begin
          if TreeOpcoes.Items[i].Item[y].ImageIndex = 15 then
          begin
            Flag:=True;
            Break;
          end;
        end;
        if Flag then Break;
      end;
    end;
    if not Flag then
    begin
      Result:=True;
      Moduloprincipal.msgErro('Para poder gravar este perfil é necessário que ' +
                             'você selecione pelo menos uma opção de algum '   +
                             'módulo');
    end;
  end;

  procedure GravarOpcoesAcesso;
  var
    NumTagForm, IndNode, IndSubNode:integer;
    s, NomeDoForm:string;
  begin
    for IndNode:=0 to TreeOpcoes.Items.Count -1 do
    begin
      if TreeOpcoes.Items[IndNode].HasChildren then
      begin
        Contador:=0;
        for IndSubNode:=0 to TreeOpcoes.Items[IndNode].Count - 1 do
        begin
          if TreeOpcoes.Items[IndNode].Item[Contador].ImageIndex = 15 then
          begin
            UAcesso.ObterOpcoesAcesso(TreeOpcoes.Items[IndNode].Text,
                                      TreeOpcoes.Items[IndNode].Item[Contador].Text,
                                      NomeDoForm, NumTagForm);
            Mysql.close;
            Mysql.sql.clear;
            Mysql.sql.add('insert into sis_perm(per_cod, descmodulo, ' +
                                                      ' nomeform, numtag, emp_cod) values (' +
                                                      ':per_cod,:descmodulo,:nomeform,:numtag,:emp_cod)');
            Mysql.ParamByName('per_cod').AsInteger   := strtoint(edtCodigo.Text);
            Mysql.ParamByName('descmodulo').AsString := TreeOpcoes.Items[IndNode].Text;
            Mysql.ParamByName('nomeform').AsString   := NomeDoForm;
            Mysql.ParamByName('numtag').AsInteger    := NumTagForm;
            Mysql.ParamByName('emp_cod').AsInteger   := _cod_emp;
            Mysql.ExecSQL;
          end;
          Inc(Contador);
        end;
      end;
    end;
  end;

begin
  Mysql := TUniQuery.Create(self);
  Mysql.Connection := ModuloPrincipal.Conexao;

  if not CheckOK then
  begin
    if _alterando = true then
    begin
      try
        begin
          with Mysql do
          begin
            ModuloPrincipal.preparaTransacao;
            Close;
            Mysql.sql.clear;
            Mysql.sql.add('delete from sis_perm ' +
                           'where per_cod = :per_cod and emp_cod =:emp_cod');
            Params[0].AsInteger := strtoint(edtCodigo.Text);
            Params[1].AsInteger := _cod_emp;
            ExecSQL;

            GravarOpcoesAcesso;
            cdsPadrao.Cancel;
            ModuloPrincipal.EfetivaTransacao;
            ConfigurarOpcoesAcesso;
            habdesab(true);
            _alterando := false;
            TreeOpcoes.FullExpand;
          end;
        end
      except
        ModuloPrincipal.DesfazTransacao;
      end;
    end;
  end;
  FreeAndNil(Mysql);

end;

procedure TFrmCadPermissoes.ActInsExecute(Sender: TObject);
begin
  inherited;
  edtDescPerfil.SetFocus;
  ConfigurarOpcoesAcesso;
end;

procedure TFrmCadPermissoes.ActMarcarModExecute(Sender: TObject);
var
  i:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items[IndiceNode].Count - 1 do
    begin
      TreeOpcoes.Items[IndiceNode].Item[i].ImageIndex:=15;
      TreeOpcoes.Items[IndiceNode].Item[i].StateIndex:=15;
      TreeOpcoes.Items[IndiceNode].Item[i].SelectedIndex:=15;
    end;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');
end;

procedure TFrmCadPermissoes.ActMarcarTudoExecute(Sender: TObject);
var
  i,y:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items.Count - 1 do
    begin
      if TreeOpcoes.Items[i].HasChildren then
      begin
        for y:=0 to TreeOpcoes.Items[i].Count - 1 do
        begin
          TreeOpcoes.Items[i].Item[y].ImageIndex:=15;
          TreeOpcoes.Items[i].Item[y].StateIndex:=15;
          TreeOpcoes.Items[i].Item[y].SelectedIndex:=15;
        end;
      end;
    end;
    TreeOpcoes.FullExpand;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');

end;

procedure TFrmCadPermissoes.ActPesExecute(Sender: TObject);
begin
    FrmConsGen := TFrmConsGen.Create(self);
    FrmConsGen.Caption := 'Consulta de Permissões';
    FrmConsGen.Width := 600;
    With FrmConsGen.cdsConsPadrao do
    begin
      Close;
      CommandText := 'select per_cod, per_desc, emp_cod from sis_perf order by per_desc';
      Open;
      FrmConsGen.AdicionarOpcoes('Código',100,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,true);
      FrmConsGen.AdicionarOpcoes('Descrição',500,false);
      FrmConsGen.campoPadraoConsulta := 'per_desc';
      FrmConsGen.criaGrid();
    end;

    if FrmConsGen.showmodal = mrOk then
    begin
      edtCodigo.text     := FrmConsGen.cdsConsPadrao.Fields[0].Asstring;
      edtdescPerfil.text := FrmConsGen.cdsConsPadrao.Fields[1].Asstring;

      cdspadrao.close;
      cdspadrao.Params[0].asinteger := FrmConsGen.cdsConsPadrao.Fields[2].asinteger;
      cdspadrao.Params[1].asinteger := FrmConsGen.cdsConsPadrao.Fields[0].asinteger;
      cdspadrao.open;
      _cod_emp                       := FrmConsGen.cdsConsPadrao.Fields[2].asinteger;
      ConfigurarOpcoesAcesso;
      TreeOpcoes.FullExpand;

      Actalt.Enabled := true;
    end;
    FreeAndNil(FrmConsGen);

end;

procedure TFrmCadPermissoes.ActRetrairExecute(Sender: TObject);
begin
  TreeOpcoes.FullCollapse;
end;

procedure TFrmCadPermissoes.ConfigurarOpcoesAcesso;
var
  i:integer;
  TreeModulos, TreeOpModulos, TreeSubModulos:TTreeNode;
  NomeModulo:string;

  procedure AdicionarModulo;
  begin
    TreeModulos:=TreeOpcoes.Items.Add(Nil,UAcesso.OPAcesso[i]^.DescModulo);
    TreeModulos.ImageIndex:=9;
    TreeModulos.StateIndex:=9;
    TreeModulos.SelectedIndex:=9;
  end;

  procedure AdicionarOpcoesModulos;
  begin
    TreeOpModulos:=TreeOpcoes.Items.AddChild(TreeModulos,UAcesso.OPAcesso[i]^.DescAcesso);
    if UAcesso.ExisteOpPermissao(Moduloprincipal.Conexao,
                                  strtoint(edtCodigo.Text),
                                 UAcesso.OPAcesso[i]^.DescModulo,
                                 UAcesso.OPAcesso[i]^.NumTag,
                                 _cod_emp) then
    begin
      TreeOPModulos.ImageIndex:=15;
      TreeOPModulos.StateIndex:=15;
      TreeOpModulos.SelectedIndex:=15;
    end
    else
    begin
      TreeOpModulos.ImageIndex:=16;
      TreeOpModulos.StateIndex:=16;
      TreeOpModulos.SelectedIndex:=16;
    end;
  end;

begin
  TreeOpcoes.Items.Clear;
  UAcesso.CarregarOpcoesAcesso;
  for i:=0 to UAcesso.MaxOpAcesso do
  begin
    if UAcesso.OPAcesso[i] = Nil then
      Break
    else
    begin
      if TreeOpcoes.Items.Count = 0 then
      begin
        NomeModulo:=UAcesso.OPAcesso[0]^.DescModulo;
        AdicionarModulo;
      end;

      if NomeModulo = UAcesso.OPAcesso[i]^.DescModulo then
        AdicionarOpcoesModulos
      else
      begin
        NomeModulo:=UAcesso.OPAcesso[i]^.DescModulo;
        AdicionarModulo;
        AdicionarOpcoesModulos;
      end;
    end;
  end;

end;

procedure TFrmCadPermissoes.DesmarcartodasasOpesdessemdulo1Click(
  Sender: TObject);
var
  i:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items[IndiceNode].Count - 1 do
    begin
      TreeOpcoes.Items[IndiceNode].Item[i].ImageIndex:=-1;
      TreeOpcoes.Items[IndiceNode].Item[i].StateIndex:=-1;
      TreeOpcoes.Items[IndiceNode].Item[i].SelectedIndex:=-1;
    end;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');

end;

procedure TFrmCadPermissoes.desmarcaTodasOpcoesClick(Sender: TObject);
var
  i,y:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items.Count - 1 do
    begin
      if TreeOpcoes.Items[i].HasChildren then
      begin
        for y:=0 to TreeOpcoes.Items[i].Count - 1 do
        begin
          TreeOpcoes.Items[i].Item[y].ImageIndex:=-1;
          TreeOpcoes.Items[i].Item[y].StateIndex:=-1;
          TreeOpcoes.Items[i].Item[y].SelectedIndex:=-1;
        end;
      end;
    end;
    TreeOpcoes.FullExpand;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');

end;

function TFrmCadPermissoes.ExisteUsuarioNestePerfil: boolean;
var
  Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := ModuloPrincipal.Conexao;

  with Cons do
  begin
    Close;
    sql.clear;
    sql.add('select perf_cod from sis_usu where perf_cod =: emp_cod and emp_cod =:emp_cod');
    Params[0].AsInteger :=  strtoint(edtCodigo.Text);
    Params[1].AsInteger := _cod_emp;
    Open;
    if not EOF then
      Result:=True
    else
      Result:=False;
    Close;
  end;
  FreeAndNil(Cons);


end;

procedure TFrmCadPermissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadPermissoes:=nil;
end;

procedure TFrmCadPermissoes.FormCreate(Sender: TObject);
begin
  inherited;
    _alterando:=false;
end;

procedure TFrmCadPermissoes.SelecionaTodasOpcoesClick(Sender: TObject);
var
  i:integer;
begin
  if _alterando then
  begin
    for i:=0 to TreeOpcoes.Items[IndiceNode].Count - 1 do
    begin
      TreeOpcoes.Items[IndiceNode].Item[i].ImageIndex:=15;
      TreeOpcoes.Items[IndiceNode].Item[i].StateIndex:=15;
      TreeOpcoes.Items[IndiceNode].Item[i].SelectedIndex:=15;
    end;
  end
  else
    Moduloprincipal.msgErro('É necessário que você esteja incluindo ou alterando para utilizar ' +
               'esta opção.');

end;

procedure TFrmCadPermissoes.TreeOpcoesChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  if not Node.HasChildren then
  begin
    IndiceSubNode:=Node.AbsoluteIndex;
    ActMarcarMod.Enabled:=False;
    ActDesmarcarMod.Enabled:=False;
  end
  else
  begin
    IndiceNode:=Node.AbsoluteIndex;
    ActMarcarMod.Enabled:=True;
    ActDesmarcarMod.Enabled:=True;
  end;
end;

procedure TFrmCadPermissoes.TreeOpcoesDblClick(Sender: TObject);
begin
  inherited;
  if _alterando = true then
  begin
    if not TreeOpcoes.Items.Item[IndiceSubNode].HasChildren then
    begin
      if TreeOpcoes.Items.Item[IndiceSubNode].ImageIndex = 15 then
      begin
        TreeOpcoes.Items.Item[IndiceSubNode].ImageIndex:= 16;
        TreeOpcoes.Items.Item[IndiceSubNode].StateIndex:= 16;
        TreeOpcoes.Items.Item[IndiceSubNode].SelectedIndex:= 16;
      end
      else
      begin
        if TreeOpcoes.Items.Item[IndiceSubNode].ImageIndex = 16 then
        begin
          TreeOpcoes.Items.Item[IndiceSubNode].ImageIndex:= 15;
          TreeOpcoes.Items.Item[IndiceSubNode].StateIndex:= 15;
          TreeOpcoes.Items.Item[IndiceSubNode].SelectedIndex:= 15;
        end
      end;
    end;
  end;

end;

end.
