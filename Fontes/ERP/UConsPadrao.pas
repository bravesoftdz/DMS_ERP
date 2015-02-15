unit UConsPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  Grids, StdCtrls, Provider, DB, DBClient,
  ActnList, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Buttons, ExtCtrls, frxClass,
  JvDBDateTimePicker,  JvDBCombobox, TypInfo,
  pngimage, JvExControls, JvXPCore,
  JvXPButtons, JvComponentBase, JvButton, JvTransparentButton, JvSpeedButton,
  ComCtrls, ToolWin, ImgList, JvExComCtrls, JvToolBar,
  JvExMask, JvToolEdit, JvDBControls, JvDBDatePickerEdit, DBCtrls, Mask,
  JvDBLookup, frxDBSet, Menus, frxExportPDF, frxExportXML,
  frxExportXLS, System.Actions;

type
  TFrmConsPadrao = class(TForm)
    dsConsPadrao: TDataSource;
    cdsConsPadrao: TClientDataSet;
    dspConsPadrao: TDataSetProvider;
    ActionList1: TActionList;
    ActProc: TAction;
    ActImp: TAction;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    SpeedButton7: TSpeedButton;
    ActSair: TAction;
    ActAltRel: TAction;
    frxPadrao: TfrxReport;
    ActNovo: TAction;
    frxDBPadrao: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    AlterarRelatrio1: TMenuItem;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActAltRelExecute(Sender: TObject);
  private


  public
      _relpadrao:string;
      procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
      procedure AssociaEventos;
      procedure ProximoCampo(Objeto:TObject; var Tecla:Char);
      procedure LimpaMsg(Sender : TObject);
  end;

var
  FrmConsPadrao: TFrmConsPadrao;

implementation

uses UModuloPrincipal, UModuloRelatorios;

{$R *.dfm}

{ TFrmConsPadrao }


procedure TFrmConsPadrao.ActAltRelExecute(Sender: TObject);
begin
  ModuloRelatorios.CriarAlterarrelatorio(frxPadrao,_relpadrao);
end;

procedure TFrmConsPadrao.ActSairExecute(Sender: TObject);
begin
  Close;

end;

procedure TFrmConsPadrao.AssociaEventos;
var i:integer;
  evento : TNotifyevent;
  tecla : char;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin
      if IsPublishedProp(Components[i], 'OnMouseLeave') then
      begin
        evento := LimpaMsg;
        SetMethodProp(Components[i], 'OnMouseLeave', TMethod(evento));
      end;

    if (Components[i] is TDBEdit) then
      (Components[i] as TDBEdit).OnKeyPress := ProximoCampo;

    if (Components[i] is TEdit) then
      (Components[i] as TEdit).OnKeyPress := ProximoCampo;

     if (Components[i] is TDBCheckBox) then
      (Components[i] as TDBCheckBox).OnKeyPress := ProximoCampo;

     if (Components[i] is TJvDBCombobox) then
      (Components[i] as TJvDBCombobox).OnKeyPress := ProximoCampo;

     if (Components[i] is TDBCombobox) then
      (Components[i] as TDBCombobox).OnKeyPress := ProximoCampo;

     if (Components[i] is TJvDBLookupCombo) then
      (Components[i] as TJvDBLookupCombo).OnKeyPress := ProximoCampo;

     if (Components[i] is TJvDBComboEdit) then
      (Components[i] as TJvDBComboEdit).OnKeyPress := ProximoCampo;
  end;
end;

procedure TFrmConsPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmConsPadrao.FormShow(Sender: TObject);
var i : integer;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TJvDBUltimGrid) then
    begin
        (Self.Components[i] as TJvDBUltimGrid).AlternateRowColor := corZebraGrid;
        (Self.Components[i] as TJvDBUltimGrid).Options := (Self.Components[i] as TJvDBUltimGrid).Options -
                                                           [dgCancelOnExit];
    end;
  end;

end;

procedure TFrmConsPadrao.LimpaMsg(Sender: TObject);
begin
  ModuloPrincipal.ShowStatusBar('');
end;

procedure TFrmConsPadrao.ProximoCampo(Objeto: TObject; var Tecla: Char);
begin
  if Tecla = #13 then
  begin
    SelectNext(Objeto as TWinControl,True,True);
    Tecla:=#0;
  end;
end;

procedure TFrmConsPadrao.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
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
   end;

   inherited SetBounds(ALeft, ATop, AWidth, AHeight);

end;

end.
