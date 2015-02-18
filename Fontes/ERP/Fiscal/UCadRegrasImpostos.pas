unit UCadRegrasImpostos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, frxExportPDF, frxExportXML, frxClass, frxExportXLS,
  frxDBSet, frxDesgn, Vcl.ImgList, Vcl.Menus, System.Actions, Vcl.ActnList,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadPadrao1 = class(TFrmCadPadrao)
    cdsPadraoregra_codigo: TIntegerField;
    cdsPadraoemp_cod: TIntegerField;
    cdsPadraoimp_codigo: TStringField;
    cdsPadraoreg_trib_codigo: TIntegerField;
    cdsPadraoregra_descricao: TStringField;
    cdsPadraoregra_cfop_uf: TStringField;
    cdsPadraoregra_cfop_uf_fora: TStringField;
    cdsPadraoregra_cfop_uf_ex: TStringField;
    cdsPadraoregra_ali_ipi: TFloatField;
    cdsPadraoregra_ali_icms: TFloatField;
    cdsPadraoregra_ali_pis: TFloatField;
    cdsPadraoregra_ali_cofins: TFloatField;
    cdsPadraoregra_sit_trib_icms: TStringField;
    cdsPadraoregra_sit_trib_pis: TStringField;
    cdsPadraoregra_sit_trib_ipi: TStringField;
    cdsPadraoregra_sit_trib_cofins: TStringField;
    cdsPadraoregra_cred_ipi: TStringField;
    cdsPadraoregra_cred_icms: TStringField;
    cdsPadraoregra_mov_estoque: TStringField;
    cdsPadraoregra_gera_fin: TStringField;
    cdsPadraoregra_cod_devol: TIntegerField;
    cdsPadraoregra_ipi_bc: TStringField;
    cdsPadraoregra_tipo_calc_ipi: TIntegerField;
    cdsPadraoregra_perc_red_icms: TFloatField;
    cdsPadraoregra_perc_red_ipi: TFloatField;
    cdsPadraoregra_perc_red_icms_st: TFloatField;
    cdsPadraoregra_mod_bc: TIntegerField;
    cdsPadraoregra_mod_bc_st: TFloatField;
    cdsPadraoregra_pmvast: TFloatField;
    cdsPadraoregra_mot_red_icms: TIntegerField;
    cdsPadraoregra_mot_des_icms: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    cdsPadraoregra_destaca_ipi: TStringField;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadrao1: TFrmCadPadrao1;

implementation

{$R *.dfm}

uses UModuloPrincipal, UmoduloFiscal;

end.
