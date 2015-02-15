unit UCadPadraoMestreDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, StdCtrls, ImgList, Menus, DB, MemDS, DBAccess, Uni,
  ActnList, Provider, DBClient, Buttons, ExtCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, ComCtrls, frxClass, frxDBSet, frxDesgn, pngimage,
  frxExportPDF, frxExportXML, frxExportXLS, System.Actions;

type
  TFrmCadPadraoMestreDet = class(TFrmCadPadrao)
    Label1: TLabel;
    Label2: TLabel;
    pnlCrudDetalhe: TPanel;
    btnInsDet: TSpeedButton;
    btnAltDet: TSpeedButton;
    btnExcDet: TSpeedButton;
    btnGraDet: TSpeedButton;
    btnCanDet: TSpeedButton;
    dspPadraoDet: TDataSetProvider;
    dsPadraoDet: TDataSource;
    cdsPadraoDet: TClientDataSet;
    uqrPadraoDet: TUniQuery;
    pcDet: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    gridDet: TJvDBUltimGrid;
    ActInsDet: TAction;
    ActAltDet: TAction;
    ActExcDet: TAction;
    ActGravaDet: TAction;
    ActCanDet: TAction;
    frxDBPadraoDet: TfrxDBDataset;
    procedure ActInsDetExecute(Sender: TObject);
    procedure ActAltDetExecute(Sender: TObject);
    procedure ActExcDetExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCanDetExecute(Sender: TObject);
    procedure ActGravaDetExecute(Sender: TObject);
    procedure cdsPadraoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    procedure habDesabDetalhe(control:boolean);
    procedure GravarDetalhes(validar: boolean);
    procedure verificaDetalhe();
  public
    { Public declarations }
  end;

var
  FrmCadPadraoMestreDet: TFrmCadPadraoMestreDet;

implementation

uses UModuloPrincipal;

{$R *.dfm}

{ TFrmCadPadrao1 }

procedure TFrmCadPadraoMestreDet.ActAltDetExecute(Sender: TObject);
begin
  if cdsPadraoDet.RecordCount > 0 then
  begin
    if not (cdsPadrao.State in [dsInsert,dsEdit]) then
    begin
      pcDet.TabIndex := 1;
      habDesabDetalhe(false);
      cdsPadraodet.Edit;
    end;
  end;

end;

procedure TFrmCadPadraoMestreDet.ActCanDetExecute(Sender: TObject);
begin

    if(cdsPadraoDet.State in [dsInsert,dsEdit]) then
    begin
      habDesabDetalhe(true);
      cdsPadraodet.cancel;
      pcDet.TabIndex := 0;
    end;


end;

procedure TFrmCadPadraoMestreDet.ActExcDetExecute(Sender: TObject);
var i : integer;
begin
  if cdsPadraoDet.RecordCount > 0 then
  begin
    if not (cdsPadraoDet.State in [dsInsert,dsEdit]) then
    begin
      for I := 0 to cdsPadraoDet.FieldList.Count - 1 do
      begin
        if ((cdsPadraoDet.Fields[i].FieldName = 'SYS') or (cdsPadrao.Fields[i].FieldName = 'sys')) then
        begin
          if cdsPadraoDet.FieldByName('SYS').AsString = 'S' then
            Moduloprincipal.MsgErro('Não é possível apagar um campo de Sistema');
        end;
      end;

      if Moduloprincipal.msgPergunta('Deseja realmente apagar ?') then
      begin
        try
          ModuloPrincipal.PreparaTransacao;
          cdsPadraoDet.Delete;
          cdsPadraoDet.ApplyUpdates(0);
          ModuloPrincipal.EfetivaTransacao;
          Except on E:Exception do
          begin
            ModuloPrincipal.DesfazTransacao;
            cdsPadraoDet.cancel;
            cdsPadraoDet.CancelUpdates;
            Moduloprincipal.msgErro('Operação não realizada. Erro : ' + e.Message);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadPadraoMestreDet.ActGravaDetExecute(Sender: TObject);
begin
    if(cdsPadraoDet.State in [dsInsert,dsEdit]) then
    begin

      cdsPadraoDet.FieldByName('sis_versao').asstring := _versao;

      cdsPadraoDet.post;

      ModuloPrincipal.preparaTransacao;

      if cdsPadraoDet.ApplyUpdates(0) = 0 then
      begin
          ModuloPrincipal.EfetivaTransacao;
          if ModuloPrincipal.cdsParamssis_msg_crud.asstring = 'S' then
            ModuloPrincipal.MsgInfo('Operação com Dados Principais realizada com sucesso');
      end;
      habDesabDetalhe(true);

    end;


end;

procedure TFrmCadPadraoMestreDet.ActInsDetExecute(Sender: TObject);
begin
  if not (cdsPadraoDet.State in [dsInsert,dsEdit]) then
  begin
    pcDet.TabIndex := 1;
    limpaCampos;
    habDesabDetalhe(false);
    cdsPadraoDet.Insert;
  end;

end;

procedure TFrmCadPadraoMestreDet.cdsPadraoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ModuloPrincipal.DesfazTransacao;
  ActCan.Execute;
  Moduloprincipal.MsgErro('Operação não realizada. Erro : ' + e.Message);
end;

procedure TFrmCadPadraoMestreDet.FormShow(Sender: TObject);
begin
  inherited;
  pcDet.TabIndex := 0;
end;

procedure TFrmCadPadraoMestreDet.GravarDetalhes(validar: boolean);
begin

  if validar = true then
    verificaDetalhe();

  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin

    cdsPadrao.FieldByName('sis_versao').asstring := _versao;

    cdsPadrao.post;

    ModuloPrincipal.preparaTransacao;
    if cdsPadrao.ApplyUpdates(0) = 0 then
    begin
      ModuloPrincipal.EfetivaTransacao;
      if ModuloPrincipal.cdsParamssis_msg_crud.asstring = 'S' then
        ModuloPrincipal.MsgInfo('Operação nos Detalhes efetuada com sucesso');
    end;
  end;

end;

procedure TFrmCadPadraoMestreDet.habDesabDetalhe(control: boolean);
begin
  ActInsDet.Enabled := control;
  ActAltDet.Enabled := control;
  ActExcDet.Enabled := control;
  gridDet.Enabled   := control;

  ActGravaDet.Enabled := not control;
  ActCanDet.Enabled := not control;

end;

procedure TFrmCadPadraoMestreDet.verificaDetalhe;
begin
//
end;

end.
