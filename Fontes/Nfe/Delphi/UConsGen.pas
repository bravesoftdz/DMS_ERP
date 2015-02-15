unit UConsGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPadrao, Provider, DB, DBClient, Grids,
  StdCtrls,
  FMTBcd, Mask, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, ActnList, Buttons,
  ExtCtrls, frxClass, frxExportPDF, frxExportXML, frxExportXLS, Menus, frxDBSet;

type
  TFrmConsGen = class(TFrmConsPadrao)
    cdsCampos: TClientDataSet;
    cdsCamposNOMECAMPO: TStringField;
    cdsCamposCAPTIONCAMPO: TStringField;
    dsCampos: TDataSource;
    cdsColuna: TClientDataSet;
    cdsColunaposicao: TIntegerField;
    cdsColunatamanho: TIntegerField;
    cdsColunacaption: TStringField;
    cdsColunaaparece: TBooleanField;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    descricao: TEdit;
    cbocampo: TJvDBLookupComboEdit;
    grid: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure descricaoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridUserSort(Sender: TJvDBUltimGrid;
      var FieldsToSort: TSortFields; SortString: string; var SortOK: Boolean);
    procedure ActProcExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gridTitleClick(Column: TColumn);
    procedure gridCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    posicao:integer;
    campoPadraoConsulta, _coluna : string;
    procedure criaGrid();
    procedure AdicionarOpcoes(caption:string; tam:integer; aparece:boolean);
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
  end;

var
  FrmConsGen: TFrmConsGen;

implementation

uses UModuloPrincipal;

{$R *.dfm}

procedure TFrmConsGen.ActProcExecute(Sender: TObject);
begin
  try
    if descricao.Text <> '' then
      cdsConsPadrao.Locate(trim(cdsCamposNOMECAMPO.asstring),descricao.Text,[lopartialkey,locaseinsensitive]);
    except on E:Exception do
    begin
      Moduloprincipal.MsgErro('Valor inválido');
      descricao.SelectAll;
      descricao.SetFocus;
    end
  end;

end;

procedure TFrmConsGen.AdicionarOpcoes(caption: string; tam: integer; aparece: boolean);
begin
  Inc(posicao);
  cdsColuna.Insert;
  cdsColunaposicao.AsInteger := posicao;
  cdsColunatamanho.AsInteger := tam;
  cdsColunacaption.AsString  := caption;
  cdsColunaaparece.AsBoolean := aparece;
  cdsColuna.Post;
end;

procedure TFrmConsGen.criaGrid;
begin
  cdsColuna.First;

  while not cdsColuna.eof do
  begin
    if trim(campoPadraoConsulta) = '' then
    begin
      if cdsColunaposicao.AsInteger = 2 then
        campoPadraoConsulta := cdsConsPadrao.Fields[cdsColunaposicao.AsInteger].FieldName;
    end;

    grid.Columns.Add;
    grid.Columns[cdsColunaposicao.AsInteger].Title.Caption := cdsColunacaption.AsString;
    grid.Columns[cdsColunaposicao.AsInteger].FieldName     := cdsConspadrao.Fields[cdsColunaposicao.AsInteger].FieldName;
    grid.Columns[cdsColunaposicao.AsInteger].Width         := cdsColunatamanho.AsInteger;
    grid.Columns[cdsColunaposicao.AsInteger].Visible       := cdsColunaaparece.AsBoolean;
    grid.Columns[cdsColunaposicao.AsInteger].Field.FieldKind := fkdata;
    cdsColuna.Next;
  end;
  cdsColuna.First;
end;

procedure TFrmConsGen.descricaoChange(Sender: TObject);
begin
  inherited;
  try
    if descricao.Text <> '' then
      cdsConsPadrao.Locate(trim(_coluna),descricao.Text,[lopartialkey,locaseinsensitive]);
      //cdsConsPadrao.Locate(trim(cdsCamposNOMECAMPO.asstring),descricao.Text,[lopartialkey,locaseinsensitive]);
    except on E:Exception do
    begin
      Moduloprincipal.msgerro('Valor inválido');
      descricao.SelectAll;
      descricao.SetFocus;
    end
  end;
end;

procedure TFrmConsGen.FormCreate(Sender: TObject);
begin
  inherited;
  posicao := -1;
  cdsColuna.close;
  cdscoluna.CreateDataSet;
  cdscampos.Close;
  cdscampos.CreateDataSet;
  cdsConsPadrao.close;
  cdsConsPadrao.Active := false;
end;

procedure TFrmConsGen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((key = VK_LEFT)) then
  begin
    grid.SetFocus;
    cdsConsPadrao.Next;
  end;

  if ((key = VK_RIGHT)) then
  begin
    grid.SetFocus;
    cdsConsPadrao.Prior;
  end;

  if key = VK_RETURN then
    ModalResult := mrok;

  if ((key = VK_up) or (key = VK_DOWN)) then
    grid.SetFocus;

end;

procedure TFrmConsGen.FormShow(Sender: TObject);
var i, indice : Integer;
begin
  inherited;
  cdsColuna.First;
  while not cdsColuna.eof do
  begin
    if cdsColunaaparece.AsBoolean = true then
    begin
      cdsCampos.Insert;
      cdsCamposNOMECAMPO.asstring    := cdsConsPadrao.Fields[cdsColunaposicao.AsInteger].FieldName;
      cdsCamposCAPTIONCAMPO.asstring := cdsColunacaption.AsString;
      cdsCampos.post;
    end;
    cdsColuna.Next;
  end;
  cdscampos.Locate('NOMECAMPO',campoPadraoConsulta,[]);
  grid.AlternateRowColor := corZebraGrid;
  self.caption := '';
  descricao.setfocus;

  indice  := 0;
  for i := 0 to grid.Columns.Count - 1 do
    if UpperCase(campoPadraoConsulta) = UpperCase(grid.Columns.Items[i].FieldName) then
       indice := i;

  _coluna := campoPadraoConsulta;
  gridTitleClick(grid.Columns.Items[indice]);
  descricao.setfocus;
  descricao.selectall;

//  cdsCli.IndexFieldNames := Column.FieldName;//Ordenação dos registros do Grid

    grid.Columns.Items[0].Title.Font.Color:=ClBlack;//Cor da Fonte
    grid.COLUMNS.ITEMS[0].TITLE.FONT.STYLE := [];//Estilo da Fonte
    grid.Columns.Items[0].Title.Color:=clBtnFace;//Cor do Fundo do Titulo Normal
    grid.Columns[0].Title.Color :=clSilver;//Cor do Fundo do Titulo Selecionado
    grid.Columns[0].TITLE.FONT.STYLE := [FSBOLD];//Estilo NEGRITO da coluna selecionada
    grid.Columns[0].Title.Font.Color:=ClBlue;//Cor da fonte Selecionada
    grid.Columns[0].Font.color:=clTeal;//Cor dos registros na coluna selecionada
   // grid.Columns[0].Font.color:=ClBlack;//Cor dos registros nas colunas normais

  descricao.setfocus;
  descricao.selectall;
end;

procedure TFrmConsGen.gridCellClick(Column: TColumn);
begin
  if cdsConsPadrao.RecordCount > 0 then
    ModalResult := mrOk;

end;

procedure TFrmConsGen.gridTitleClick(Column: TColumn);
var
i:Integer;
begin
  _coluna := Column.FieldName;
  Descricao.setfocus;
  Descricao.selectall;

//  cdsCli.IndexFieldNames := Column.FieldName;//Ordenação dos registros do Grid
  for i:=0 to Column.Grid.FieldCount - 1 do
  begin
    grid.Columns.Items[i].Title.Font.Color:=ClBlack;//Cor da Fonte
    grid.COLUMNS.ITEMS[I].TITLE.FONT.STYLE := [];//Estilo da Fonte
    grid.Columns.Items[i].Title.Color:=clBtnFace;//Cor do Fundo do Titulo Normal
    Column.Title.Color :=clSilver;//Cor do Fundo do Titulo Selecionado
    COLUMN.TITLE.FONT.STYLE := [FSBOLD];//Estilo NEGRITO da coluna selecionada
    Column.Title.Font.Color:=ClBlue;//Cor da fonte Selecionada
    Column.Font.color:=clTeal;//Cor dos registros na coluna selecionada
    grid.Columns.Items[i].Font.color:=ClBlack;//Cor dos registros nas colunas normais
  end;

end;

procedure TFrmConsGen.gridUserSort(Sender: TJvDBUltimGrid;
  var FieldsToSort: TSortFields; SortString: string; var SortOK: Boolean);
var aField : string; MaxFTS, FTS : integer;
begin
  inherited;
    MaxFTS := Length(FieldsToSort) - 1;
    for FTS := 0 to MaxFTS do
     afield := FieldsToSort[0].Name;
    cdsConsPadrao.IndexFieldNames := afield;
end;

procedure TFrmConsGen.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
 var
   MainForm: TForm;
   Rect: TRect;
   OurWidth: Integer;
   OurHeight: Integer;
 begin
   if Showing then begin

     MainForm := Application.MainForm;

     // Obtem o retângulo da área cliente MDI
     Windows.GetWindowRect(MainForm.ClientHandle, Rect);

     // Calcular largura e altura da área cliente
     OurWidth := Rect.Right - Rect.Left;
     OurHeight := Rect.Bottom - Rect.Top;

     // Calcula a nova posição
     ALeft := (OurWidth - Width) div 2;
     ATop := (OurHeight - Height) div 2;
     Atop := Atop - 10;
   end;

   inherited SetBounds(ALeft, ATop, AWidth, AHeight);


end;

end.
