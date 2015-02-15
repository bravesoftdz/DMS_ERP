// não colocaremos AdvgroupBox no lugar no pnlSec, pois ficará sem formatação de layout
unit UCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  Provider, DB, DBClient, ActnList, StdCtrls, Mask, DBCtrls,
  Uni,JvDBLookup,
  MemDS, DBAccess,
  JvDBDateTimePicker, JvDBUltimGrid, JvDBCombobox, TypInfo, Grids,
  DBGrids, JvExDBGrids, pngimage, JvExControls, JvXPCore,
  JvXPButtons, JvComponentBase, JvButton, JvTransparentButton, JvSpeedButton,
  ComCtrls, ToolWin, ImgList, Buttons, JvExComCtrls, JvToolBar, ExtCtrls,
  JvExMask, JvToolEdit, JvDBControls, JvDBDatePickerEdit, Menus,
  ACBrBase, ACBrEnterTab, JvGradient, frxClass, frxDBSet, frxDesgn,
  frxExportPDF, frxExportXML, frxExportXLS;

type
  TFrmCadPadrao = class(TForm)
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    dspPadrao: TDataSetProvider;
    ActionList1: TActionList;
    ActIns: TAction;
    Actalt: TAction;
    Actexc: TAction;
    ActGra: TAction;
    ActCan: TAction;
    ActPes: TAction;
    ActImp: TAction;
    ActSair: TAction;
    PopupMenu1: TPopupMenu;
    ActClonar: TAction;
    ActAltRel: TAction;
    AlterarRelatrio1: TMenuItem;
    imgListPadrao: TImageList;
    frxDesigner1: TfrxDesigner;
    frxDBPadrao: TfrxDBDataset;
    frxPadrao: TfrxReport;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlCrudPadrao: TPanel;
    btnIns: TSpeedButton;
    btnAlt: TSpeedButton;
    btnExc: TSpeedButton;
    btnGra: TSpeedButton;
    btnCan: TSpeedButton;
    btnImp: TSpeedButton;
    SpeedButton7: TSpeedButton;
    btnPes: TSpeedButton;
    pnlPri: TPanel;
    pnlSec: TPanel;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    statusBarPadrao: TStatusBar;

    procedure FormShow(Sender: TObject);
    procedure btnInsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ActInsExecute(Sender: TObject);
    procedure ActaltExecute(Sender: TObject);
    procedure ActexcExecute(Sender: TObject);
    procedure ActGraExecute(Sender: TObject);
    procedure ActCanExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInsMaisMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnAltMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnExcMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bntInserirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnCanMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure ActSairExecute(Sender: TObject);

  private

  public

    _relpadrao:string;

    procedure Verifica;
    procedure Habdesab(control : boolean);
    procedure PintaCampos;

    procedure LimpaCampos;
    procedure MostraMsg(msg:string);
    procedure LimpaMsg(Sender : TObject);


    procedure AssociaHints;
    procedure VerificaProgramacao;
    procedure Gravar(validar: boolean);
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure ShowStatusBarPadrao(msg:string);
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TFrmCadPadrao }

procedure TFrmCadPadrao.ActaltExecute(Sender: TObject);
begin
  if cdsPadrao.RecordCount > 0 then
  begin
    if not (cdsPadrao.State in [dsInsert,dsEdit]) then
    begin
      habdesab(false);
      cdsPadrao.Edit;
    end;
  end;
end;

procedure TFrmCadPadrao.ActCanExecute(Sender: TObject);
begin
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    cdsPadrao.Cancel;
    habdesab(true);
    screen.Cursor := crDefault;
  end;

end;

procedure TFrmCadPadrao.ActexcExecute(Sender: TObject);
var i : integer;
begin
  if cdsPadrao.RecordCount > 0 then
  begin
    if not (cdsPadrao.State in [dsInsert,dsEdit]) then
    begin
      for I := 0 to cdsPadrao.FieldList.Count - 1 do
      begin
        if ((cdsPadrao.Fields[i].FieldName = 'SYS') or (cdsPadrao.Fields[i].FieldName = 'sys')) then
        begin
          if cdsPadrao.FieldByName('SYS').AsString = 'S' then
            Moduloprincipal.MsgErro('Não é possível apagar um campo de Sistema');
        end;
      end;

      if Moduloprincipal.msgPergunta('Deseja realmente apagar ?') then
      begin
        try
          ModuloPrincipal.PreparaTransacao;
          cdsPadrao.Delete;
          cdsPadrao.ApplyUpdates(0);
          ModuloPrincipal.EfetivaTransacao;
          Except on E:Exception do
          begin
            ModuloPrincipal.DesfazTransacao;
            cdsPadrao.cancel;
            cdsPadrao.CancelUpdates;
            Moduloprincipal.msgErro('Operação não realizada. Erro : ' + e.Message);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadPadrao.ActGraExecute(Sender: TObject);
begin
  Gravar(true);

end;

procedure TFrmCadPadrao.ActInsExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    limpaCampos;
    habdesab(false);
    cdsPadrao.Insert;
  end;

end;


procedure TFrmCadPadrao.ActSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmCadPadrao.btnCanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  MostraMsg('Cancela inclusão ou alteração do registro');

end;

procedure TFrmCadPadrao.btnPesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    MostraMsg('Pesquisa registro');
end;

procedure TFrmCadPadrao.AssociaHints;
var i:integer;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin


  end;
end;

procedure TFrmCadPadrao.bntInserirMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  MostraMsg('Salva inclusão ou alteração do registro');
end;

procedure TFrmCadPadrao.btnAltMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  MostraMsg('Prepara para alterar registro');
end;

procedure TFrmCadPadrao.btnExcMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  MostraMsg('Exclui registro');
end;

procedure TFrmCadPadrao.btnInsMaisMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  MostraMsg('Prepara para inserir vários registros');
end;

procedure TFrmCadPadrao.btnInsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  MostraMsg('Prepara para inserir registro');
end;

procedure TFrmCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
var status : string;
begin
  if (cdspadrao.state in [dsedit,dsinsert]) then
  begin
    if cdspadrao.state in [dsedit] then
      status := ' alterando '
    else
      status := ' inserindo ';

   if Moduloprincipal.MsgPergunta('Você está ' + status + ' o registro. ' +
                  #13 +
                  'Se sair vai cancelar a operação. ' +
                  #13 +
                  'Deseja realmente sair ?') = true then
    begin
      cdspadrao.Cancel;
      cdspadrao.CancelUpdates;
    end
    else
      abort;
  end;

//  Moduloprincipal._obj_params.CarregaParametros();

  ModuloPrincipal.FecharConexoes;

  Action := cafree;

  FrmCadPadrao := nil;
end;

procedure TFrmCadPadrao.FormCreate(Sender: TObject);
begin
//  Moduloprincipal._obj_params.CarregaParametros;

  inherited;
//  VerificaProgramacao;
  Moduloprincipal.HojeAgora;
end;

procedure TFrmCadPadrao.FormShow(Sender: TObject);
begin
  cdsPadrao.Close;
  cdsPadrao.Open;
  pintaCampos;

//  self.font.size := Moduloprincipal._obj_params.Sis_font_size ;
//  self.refresh;

{  ModuloPrincipal.cdsParams.close;
  ModuloPrincipal.cdsParams.params[0].asinteger := moduloprincipal._codigoEmpresa;
  ModuloPrincipal.cdsParams.open;

  if ModuloPrincipal.RelatorioExiste(relpadrao) then
    ActImp.enabled := true
  else
    ActImp.enabled := false;  }
end;

procedure TFrmCadPadrao.Gravar(validar: boolean);
var temEmpresa:boolean;
  I: Integer;
  temDataCad: Boolean;
  temUsuCad, temVersao, temhoracad: Boolean;
begin
  temUsuCad := false;
  temDataCad := false;
  temempresa := false;
  temhoracad := false;

  if validar = true then
    verifica();

  I := 0;
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    temEmpresa := false;
    for I := 0 to cdsPadrao.FieldList.Count - 1 do
    begin
      if (cdsPadrao.Fields[i].FieldName = 'EMP_COD') or
         (cdsPadrao.Fields[i].FieldName = 'emp_cod') then
        temEmpresa := true;

      if (cdsPadrao.Fields[i].FieldName = 'datacad') or
         (cdsPadrao.Fields[i].FieldName = 'DATACAD') then
        temDataCad := true;

      if (cdsPadrao.Fields[i].FieldName = 'usucad') or
         (cdsPadrao.Fields[i].FieldName = 'USUCAD') then
        temUsuCad := true;

      if (cdsPadrao.Fields[i].FieldName = 'HORACAD') or
         (cdsPadrao.Fields[i].FieldName = 'horacad') then
        temhoracad := true;

      if (cdsPadrao.Fields[i].FieldName = 'sis_versao') or
         (cdsPadrao.Fields[i].FieldName = 'SIS_VERSAO') then
        temVersao := true;

    end;

    if temEmpresa = true then
    begin
      if cdsPadrao.FieldByName('emp_cod').AsInteger = 0 then
      begin
        if ModuloPrincipal._codigoEmpresa = 0 then
          Moduloprincipal.msgErro('Usuário não está associado à uma empresa');
      end;
      cdsPadrao.FieldByName('emp_cod').AsInteger   := ModuloPrincipal._codigoEmpresa;

    end;

    if cdspadrao.state in [dsinsert] then
    begin
      if temDataCad = true then
        cdsPadrao.FieldByName('datacad').AsDateTime := ModuloPrincipal.HojeAgora;

       if temVersao = true then
        cdsPadrao.FieldByName('sis_versao').asstring := _versao;
    end;

    cdsPadrao.post;

    ModuloPrincipal.preparaTransacao;
    if cdsPadrao.ApplyUpdates(0) = 0 then
    begin
      ModuloPrincipal.EfetivaTransacao;
      Habdesab(true);
    end;
  end;


end;

procedure TFrmCadPadrao.habdesab(control: boolean);
begin
  ActIns.Enabled     := control;
  ActGra.Enabled     := not control;
  ActCan.Enabled     := not control;
  ActPes.Enabled     := control;
  ActImp.Enabled     := control;
  pnlSec.Enabled     := control;
  Actalt.Enabled     := control;
  Actexc.Enabled     := control;
end;

procedure TFrmCadPadrao.limpaCampos;
var i:integer;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TEdit) then
      (self.Components[i] as TEdit).Clear;
  end;
end;

procedure TFrmCadPadrao.LimpaMsg;
begin
  ModuloPrincipal.ShowStatusBar('');
end;

procedure TFrmCadPadrao.MostraMsg(msg: string);
begin
  ShowStatusBarPadrao(msg);
end;

procedure TFrmCadPadrao.pintaCampos;
var i : integer;
  corCampo: Integer;
  soLeitura: Boolean;
  tabStp: Boolean;
begin
  tabStp := True;
  soLeitura := false;
  corCampo := 0;

  for i:= 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TJvDBUltimGrid) then
    begin
        (Self.Components[i] as TJvDBUltimGrid).AlternateRowColor := corZebraGrid;
        (Self.Components[i] as TJvDBUltimGrid).Options := (Self.Components[i] as TJvDBUltimGrid).Options -
                                                           [dgCancelOnExit];
    end;

    if (Self.Components[i] is TGroupBox) then
        (Self.Components[i] as TGroupBox).tag := -1;

    if (Self.Components[i] is TPanel) then
        (Self.Components[i] as TPanel).tag := -1;

 //   if (Self.Components[i] is Tlabel) then
 //       (Self.Components[i] as Tlabel).Font.Style := Font.Style + [fsbold];


 {   if (Self.Components[i] is TLabel) then
      (Self.Components[i] as TLabel).Font.Style :=  (Self.Components[i] as TLabel).Font.Style + [TFontStyle.fsBold];    }

    if (Self.Components[i].Tag = 99) then
    begin
      if IsPublishedProp(self.Components[i],'Color')then
      begin
            SetPropValue(self.Components[I], 'Color',$009FFFFF);
      end;
    end;

        if (Self.Components[i].Tag = 98) then
        begin
          corCampo := CorCampoDesab;
          soLeitura:= true;
          tabStp   := false;

          if (Self.Components[i].Tag = 98) then
          begin
            if IsPublishedProp(self.Components[i],'Color')then
                SetPropValue(self.Components[I], 'Color',corcampo);

            if IsPublishedProp(self.Components[i],'ReadOnly')then
                SetPropValue(self.Components[I], 'ReadOnly',soLeitura);

            if IsPublishedProp(self.Components[i],'TabStop')then
                SetPropValue(self.Components[I], 'TabStop',tabStp);

          end;
        end;

    if IsPublishedProp(self.Components[i],'Ctl3D')then
       SetPropValue(self.Components[I], 'Ctl3D',false);

{    if IsPublishedProp(self.Components[i],'Font')then
    begin
      if (Self.Components[i].Tag > -1) then // colocar tag -1 em todos os panels
      begin
        case Moduloprincipal._obj_params.Sis_font_size of
          8: SetPropValue(self.Components[I], 'height',19);
          10:SetPropValue(self.Components[I], 'height',22);
        end;
      end;
    end;  }

  end;

  Self.Refresh;
  Self.Update;

end;

procedure TFrmCadPadrao.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
 var
   MainForm: TForm;
   Rect: TRect;
   Origem: TPoint;
begin
   if Showing then begin

     MainForm := Application.MainForm;

     // Obtem o retângulo da área cliente MDI
     Windows.GetWindowRect(MainForm.ClientHandle, Rect);

     // Calcula a origem da área cliente MDI no form
     Origem := Rect.TopLeft;
     Dec(Origem.x, MainForm.Left);
     Dec(Origem.y, MainForm.Top);

     // Calcula nossa nova posição
     ALeft := (MainForm.Width - Width) div 2  - Origem.x;
     ATop := (MainForm.Height - Height) div 2  - Origem.y;
   end;

   inherited SetBounds(ALeft, ATop, AWidth, AHeight);

end;

procedure TFrmCadPadrao.ShowStatusBarPadrao(msg:string);
begin
  StatusBarPadrao.Panels[0].text := msg;
end;

procedure TFrmCadPadrao.verifica;
var i:integer; nome : string;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin
    if (self.Components[i].Tag = 99) then
    begin
      if (self.Components[i] is TDBEdit) then
      begin
        if (((self.Components[i] as TDBEdit).Text = '') or ((self.Components[i] as TDBEdit).Text = '0')) then
        begin
          if (self.Components[i] as TDBEdit).Parent.Enabled = true then
          begin
            nome := (self.Components[i] as TDBEdit).Parent.Name;
            (self.Components[i] as TDBEdit).SelectAll;
            (self.Components[i] as TDBEdit).SetFocus;
            Moduloprincipal.Msgerro((self.Components[i] as TDBEdit).Hint + ' é obrigatório');
          end;
        end;
      end;

      if (self.Components[i] is TEdit) then
      begin
        if ((self.Components[i] as TEdit).Text = '') then
        begin
          (self.Components[i] as TEdit).Setfocus;
          Moduloprincipal.MsgErro((self.Components[i] as TEdit).Hint + ' é obrigatório');
        end;
      end;

      if (self.Components[i] is TDBComboBox) then
      begin
        if ((self.Components[i] as TDBComboBox).Text = '') then
        begin
          (self.Components[i] as TDBComboBox).Setfocus;
          Moduloprincipal.MsgErro((self.Components[i] as TDBComboBox).Hint + ' é obrigatório');
        end;
      end;

      if (self.Components[i] is TDBLookupComboBox) then
      begin
        if ((self.Components[i] as TDBLookupComboBox).Field.Text = '') then
        begin
          (self.Components[i] as TDBLookupComboBox).Setfocus;
          Moduloprincipal.MsgErro((self.Components[i] as TDBLookupComboBox).Hint + ' é obrigatório');
        end;
      end;

      if (self.Components[i] is TMaskEdit) then
      begin
        if ((self.Components[i] as TMaskEdit).Text = '') then
        begin
          (self.Components[i] as TMaskEdit).Setfocus;
          Moduloprincipal.MsgErro((self.Components[i] as TMaskEdit).Hint + ' é obrigatório');
        end;
      end;

      if (self.Components[i] is TJvDBLookupcombo) then
      begin
        if ((self.Components[i] as TJvDBLookupcombo).Text = '') then
        begin
          (self.Components[i] as TJvDBLookupcombo).Setfocus;
          Moduloprincipal.MsgErro((self.Components[i] as TJvDBLookupcombo).Hint + ' é obrigatório');
        end;
      end;
    end;
  end;

end;

procedure TFrmCadPadrao.VerificaProgramacao;
var i:integer; camposSemHint : string;
begin
  for i:= 0 to Self.ComponentCount - 1 do
  begin
    if (self.Components[i].Tag = 99) then
    begin
      if (self.Components[i] is TDBEdit) then
      begin
        if (self.Components[i] as TDBEdit).Hint = '' then
        begin
          if camposSemHint = '' then
            camposSemHint := #13 + 'Campo ' + (self.Components[i] as TDBEdit).Name +
                                   ' é obrigatório e está sem Hint preenchido' + #13
          else
            camposSemHint := camposSemHint + 'Campo ' + (self.Components[i] as TDBEdit).Name +
          ' é obrigatório e está sem Hint preenchido' + #13;
        end;
      end;
    end;
  end;

  if camposSemHint <> '' then
   Moduloprincipal.MsgErro(camposSemHint);

end;

procedure TFrmCadPadrao.cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ModuloPrincipal.DesfazTransacao;
  ActCan.Execute;
  Moduloprincipal.MsgErro('Operação não realizada. Erro : ' + e.Message);
end;

procedure TFrmCadPadrao.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
{  if not (cdspadrao.state in [dsedit,dsinsert]) then
  begin
    if cdsPadrao.RecordCount > 0 then
    begin
      Actalt.Enabled     := true;
      Actexc.Enabled     := true;
    end
    else
    begin
      Actalt.Enabled     := false;
      Actexc.Enabled     := false;
    end ;
  end;  }
end;

end.
