unit UModuloPrincipal;
{
       @unit_nome: Data Modulo Principal
       @autor: Niko
       @data: 03/11/2011
       @descricao: Esse módulo servirá para declarar todas as funções e procedures
       @descricao: pertinentes ao sistema em geral.
}

interface

uses
  SysUtils, Classes, DB, DBAccess, Uni, UniProvider, PostgreSQLUniProvider, Dialogs,
  InterBaseUniProvider, MySQLUniProvider, IniFiles, MidasLib, forms,
  MemDS, IdHashMessageDigest, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, Provider, DBClient, StdCtrls, IdAttachmentFile, WinInet,
  UAltera_BD_Campos,windows, ImgList, Controls,
 SQLServerUniProvider, frxClass, frxDBSet, Zlib, IOUtils, ShellAPI;

const
      _versao = '1.0';
  {
      {    @const_name: CorZebraGrid.
           @const_valor: 15263976.
           @const_desc: Determina a cor do grid zebrado.}
        CorZebraGrid         = 15263976;

      {      @const_name: CorCampoObrigatorio.
             @const_valor: $00D7FFFF.
             @const_desc: define a cor do campo obrigatorio.}
        CorCampoDesab  =  $00F7F7F7;  //{$00D7FFFF;}



      {     @const_name: CorLabel.
            @const_valor: $008B4215.
            @const_desc: define a cor dos labels.}
        CorLabel             = $00030303;

      {    @const_name: postgres,firebird,mysql.
           @const_valor: 'PostgreSQL','Interbase','Mysql'.
           @const_desc: define a descrição dos providers que poderão ser utilizados.)
      }
        postgres             = 'PostgreSQL';
        firebird             = 'Interbase';
        mysql                = 'Mysql';
        sqlserver            = 'SQL Server';

        _desab3D = false;


type
  TModuloPrincipal = class(TDataModule)
    Conexao: TUniConnection;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    ImageList1: TImageList;
    cdsAtualizaBanco: TClientDataSet;
    cdscriatabelas: TClientDataSet;
    cdscriatabelastabela: TStringField;
    cdscriatabelassql: TStringField;
    cdsAtualizaBancocampo: TStringField;
    cdsAtualizaBancotabela: TStringField;
    cdsAtualizaBancosql: TStringField;
    cdsAtualizaBancodel: TStringField;
    ImgListCheck: TImageList;
    cdsChaveClasses: TClientDataSet;
    cdsChaveClassescampo: TStringField;
    cdsChaveClassestipo: TStringField;
    Conexao2: TUniConnection;
    uqrConsGen: TUniQuery;
    dspParams: TDataSetProvider;
    uqrParams: TUniQuery;
    cdsParams: TClientDataSet;
    cdsMsgUsuario: TClientDataSet;
    dspMsgUsuario: TDataSetProvider;
    cdsParamssis_cor_cam_obr: TIntegerField;
    cdsParamspes_cod_tip_cli: TIntegerField;
    cdsParamspes_cod_tip_for: TIntegerField;
    cdsParamspes_cod_tip_ven: TIntegerField;
    cdsParamssis_cas_dec: TIntegerField;
    cdsParamssis_int_tim: TIntegerField;
    cdsParamssis_msg_crud: TStringField;
    cdsParamsemp_cod: TIntegerField;
    cdsParamssis_path: TStringField;
    cdsParamssis_reg_log_ins: TStringField;
    cdsParamssis_reg_log_alt: TStringField;
    cdsParamssis_reg_log_exc: TStringField;
    PostgreSQL: TPostgreSQLUniProvider;
    cdsParamssis_versao: TStringField;
    cdsParamspes_cod_tip_fabr: TIntegerField;
    cdsParamssis_pc_tipo: TStringField;
    cdsParamssis_ftp_host: TStringField;
    cdsParamssis_ftp_user: TStringField;
    cdsParamssis_ftp_pass: TStringField;
    ConsEmpresaGlobal: TUniQuery;
    CRUD_Dicionario: TUniQuery;
    CRUD_Campos: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    {@public_declarations:}

      {@var_name: _bancoDeDados1, _bancoDedados2.
       @var_desc: guarda o nome do provider utilizado.}
      _bancoDeDados1,_bancoDedados2 : string;

      {@var_name: _Server1, _User1, _Senha1, _Db1, _Sgdb1, _port1, _Server2,
                  _User2, _Senha2, _Db2, _sgdb2, _port2.
       @var_desc: variáveis utilizadas para montar o arquivo ini de conxao com o(s) banco(s).}
       _Server1, _User1, _Senha1, _Db1, _Sgdb1, _port1,
       _Server2, _User2, _Senha2, _Db2, _sgdb2, _port2 : string;

        _erros :string;

      {@var_name: _nomeDoUsuario, _senhaUsuario, _nomedaEmpresa, _email,
                  _codigoEmpresa, _codPerfil, _codigoUsuario, _dataRenovarSenha,
                  _loginValido.
         @var_desc: variáveis utilizadas após fazer o login  }
       _codigoEmpresa: integer; _nomeDaEmpresa : string;

       _loginValido : boolean;
       _codigoUsuario, _perfiUsuario : integer;
       _nomeDoUsuario, _senhaDoUsuario, _loginDoUsuario, _emailDoUsuario : string;

       _hoje, _agora : TDatetime;

       nMax: Integer;

     {@proc_name: gravaIniBanco.
      @proc_desc: Gera o arquivo de inicialização para o sistema localizar o banco de dados.
      @proc_autor: niko.
      @proc_data: 01/01/2012.}
   procedure gravaIniBanco(servidor1, usuario1, senha1, db1, sgdb1, port1,
                           servidor2, usuario2, senha2, db2, sgdb2, port2 : string);

   {@proc_name: leInibanco.
    @proc_desc: Lê o arquivo do banco e retorna verdadeiro ou falso.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
   function leInibanco():boolean;

   {@proc_name: PreparaTransacao.
    @proc_desc: Prepara a transação com o banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012.   }
    procedure PreparaTransacao;

   {@proc_name: EfetivaTransacao.
    @proc_desc: Efetiva a transação com o banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012. }
    procedure EfetivaTransacao;

   {@proc_name: DesfazTransacao.
    @proc_desc: Desfaz a transação com o banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012. }
    procedure DesfazTransacao;

   {@proc_name: UnCript.
    @proc_desc: Desembaralha os caracteres do arquivo de inicialização.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    function UnCript(s: string): string;

   {@proc_name: Cript.
    @proc_desc: Embaralha os caracteres do arquivo de inicialização.
    @proc_autor: niko.
    @proc_data: 01/01/2012. }
    function Cript(s: string): string;

   {@proc_name: ObterMaiorGerador.
    @proc_desc: Obtem o proximo valor de um determinado gerador.
    @proc_autor: niko.
    @proc_data: 01/01/2012. }
    function ObterMaiorGerador(nomeGerador:string;conexao:TUniConnection):integer;

   {@proc_name: Hoje.
    @proc_desc: Obtem a data do banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    procedure Hoje;

   {@proc_name: HojeAgora.
    @proc_desc: Obtem a hora do banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    function HojeAgora:TDateTime;

   {@proc_name: Agora.
    @proc_desc: Obtem a hora do banco de dados.
    @proc_autor: niko.
    @proc_data: 01/03/2012.}
    function Agora:TTime;

   {@proc_name: FecharConexoes.
    @proc_desc: Fecha as conexoes com o banco de dados.
    @proc_autor: niko.
    @proc_data: 01/01/2012. }
    procedure FecharConexoes;

   {@proc_name: MD5String.
    @proc_desc: Criptografa uma string em MD5.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    function MD5String(const Value: string): string;

   {@proc_name: EnviaEmails.
    @proc_desc: Envia emails.
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    function EnviaEmails(para, cc, cco, assunto : string;
                          prioridade : integer;
                          anexos : TStringList;
                          confirmaLeitura:boolean;
                          Mensagem : TStrings):boolean;

    {@proc_name: MensagensDoSistema.
    @proc_desc: Coloca mensagens na status bar do menu.
    @proc_autor: Niko.
    @proc_data: 25/01/2012.}
    procedure MensagensDoSistema(msg:string);

    {@proc_name: FormaMyDate.
    @proc_desc: Formata a data de acordo com o Banco de dados.
    @proc_autor: Niko.
    @proc_data: 03/02/2012.}
    function MyFormatDate(data:TDateTime):string;

    {@proc_name: ConferirConfiguração.
    @proc_desc: Verifica se o sistema esta devidamente configurado.
    @proc_autor: Niko.
    @proc_data: 19/02/2012.}
    function ConferirConfiguração(var msg:string):boolean;

    {@proc_name: TestaConexaoInternet.
    @proc_desc: Testa se o computador esta conectado à internet.
    @proc_autor: Fernando.
    @proc_data: 20/02/2012.}
    function TestaConexaoInternet:Boolean;

    {@proc_name: RemoveAcento.
    @proc_desc: Remove Acentos de uma string.
    @proc_autor: Fernando.
    @proc_data: 20/02/2012.}
    function RemoveAcento(Str: string): string;

    {@proc_name: SubstituirCaracteres.
    @proc_desc: Substitui um determinado caracter de uma string.
    @proc_autor: Fernando.
    @proc_data: 20/02/2012.}
    function SubstituirCaracteres(S: String; C1: String; C2: String): String;

    {@proc_name: NaoNumero.
    @proc_desc: Retorna se é numero.
    @proc_autor: Fernando.
    @proc_data: 22/02/2012.}
    function IsNumeric(s:string):Boolean;

    {@proc_name: MsgPergunta.
    @proc_desc: Mensagem Padrao de Pergunta.
    @proc_autor: Fernando.
    @proc_data: 22/02/2012.}
    function MsgPergunta(msg:string):boolean;

    {@proc_name: MsgErro.
    @proc_desc: Mensagem Padrao de Erro.
    @proc_autor: Fernando.
    @proc_data: 22/02/2012.}
    procedure MsgErro(msg:string);

    {@proc_name: MsgInfo.
    @proc_desc: Mensagem Padrao de Informação.
    @proc_autor: Fernando.
    @proc_data: 22/02/2012.}
    procedure MsgWarning(msg:string);


    {@proc_name: MsgInfo.
    @proc_desc: Mensagem Padrao de Informação.
    @proc_autor: Fernando.
    @proc_data: 22/02/2012.}
    procedure MsgInfo(msg:string);

    {@proc_name: RemoveChar.
    @proc_desc: Remove caracter especial de uma string.
    @proc_autor: Fernando.
    @proc_data: 20/02/2012.}
    function RemoveChar(Texto: String): String;

    {@proc_name: ShowStatusBar.
    @proc_desc: .
    @proc_autor: niko.
    @proc_data: 20/02/2012.}
    function ShowStatusBar(msg: string): string;

    {@proc_name: MyStrToCurr.
    @proc_desc: Utilizado para converter numeros que estao formatados em labels, edits, etc.
    @proc_autor: niko.
    @proc_data: 20/02/2012.}
    function MyStrToCurr(s: string): currency;

    {@proc_name: PrecisaAtualizarBanco.
    @proc_desc:
    @proc_autor: niko.
    @proc_data: 20/05/2012.}
    procedure PrecisaAtualizarBanco;

    {@proc_name: VerificaSeCampoExiste.
    @proc_desc:
    @proc_autor: niko.
    @proc_data: 20/05/2012.}
    function VerificaSeCampoExiste(campoBanco, tabela : string): boolean;

    {@proc_name: VerificaSeTabelaExiste.
    @proc_desc:
    @proc_autor: niko.
    @proc_data: 20/05/2012.}
    function VerificaSeTabelaExiste(tabela : string): boolean;

    {@proc_name: ExecutaSQL.
    @proc_desc:
    @proc_autor: niko.
    @proc_data: 20/05/2012.}
    function ExecutaSQL(vsql:string):boolean;

    {@proc_name: GeradorExiste.
    @proc_desc: Verificar se gerador existe
    @proc_autor: niko.
    @proc_data: 12/06/2012.}
    function GeradorExiste(nomeGerador:string):boolean;

    {@proc_name: SubstituiStr.
    @proc_desc:
    @proc_autor: niko.
    @proc_data: 01/07/2012.}
    function SubstituiStr (S,Localizar,Substituir : string) : string;

    {@proc_name: FormatMyNumber.
    @proc_desc: Formatar numero padrao do sistema
    @proc_autor: niko.
    @proc_data: 01/07/2012.}
    function MyFormatNumber (numero:currency) : currency;

    {@proc_name: MyEditFormat.
    @proc_desc: Formatar numero padrao do sistema
    @proc_autor: niko.
    @proc_data: 01/07/2012.}
    function MyEditFormat(numero:currency) : string;

     {@proc_name: CarregaParametros.
    @proc_desc: .
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    procedure CarregaParametros;

     {@proc_name: CarregaParametros.
    @proc_desc: .
    @proc_autor: niko.
    @proc_data: 01/01/2012.}
    procedure CriaDiretorios;

    function ObterDescricaoCampo(tabela, campo_codigo, campo_descricao:string; valor_campo_codigo:string):string;

    procedure CompressFiles(Arquivos: TStrings; const Compactado: String);
    procedure DecompressFiles(FileName, Destination: String);

    procedure ListarArquivos(Path: string; extensao:string; Lista: TStringList);

    procedure CarregaEmpresa(codigo:integer);


   { @public_declarations.}

  end;

var
  ModuloPrincipal:  TModuloPrincipal;

implementation

uses ULogin, UAltera_BD_Tabelas, UArquivoIni, UMain;

{$R *.dfm}

{ TModuloPrincipal }

procedure TModuloPrincipal.DesfazTransacao;
begin
  Conexao.Rollback;
end;

procedure TModuloPrincipal.PrecisaAtualizarBanco;
begin
  cdsAtualizaBanco.first;
  while not cdsAtualizaBanco.eof do
  begin
    if VerificaSeCampoExiste(cdsAtualizaBancocampo.asstring,
                             cdsAtualizaBancotabela.asstring) = false then
      executaSQl(cdsAtualizaBancosql.asstring);

    cdsAtualizaBanco.next;
  end;

  cdscriatabelas.first;
  while not cdscriatabelas.eof do
  begin
    if VerificaSeTabelaExiste(cdscriatabelastabela.AsString) = false then
    begin
      executaSQl(cdscriatabelassql.asstring);
    end;
    cdscriatabelas.next;
  end;
end;

procedure TModuloPrincipal.PreparaTransacao;
begin
  try
    if Conexao.InTransaction = true then
      Conexao.Close;

    Conexao.Connected := true;
    Conexao.StartTransaction;
    except on E:Exception do
    begin
      Conexao.Rollback;
      Moduloprincipal.msgErro('Erro ao preparar Transação ' + e.Message);
    end;
  end;
end;

procedure TModuloPrincipal.EfetivaTransacao;
begin
  try
    Conexao.Commit;
    except on E:Exception do
    begin
      Conexao.Rollback;
      Moduloprincipal.msgErro('Erro ao Efetivar Transação ' + e.Message);
    end;
  end;
end;

procedure TModuloPrincipal.DataModuleCreate(Sender: TObject);
begin

  _loginvalido       := false;
  Conexao.Connected  := false;
  Conexao2.Connected := false;
  Conexao.Close;
  Conexao2.Close;

  if leInibanco =  true then
  begin
    Conexao.ProviderName := _Sgdb1;
    Conexao.Username     := _user1;
    Conexao.Password     := _senha1;
    Conexao.Server       := _Server1;
    Conexao.Database     := _Db1;
    if _port1 <> '' then
      Conexao.Port         := strtoint(_Port1);

    Conexao2.ProviderName := _Sgdb2;
    Conexao2.Username     := _user2;
    Conexao2.Password     := _senha2;
    Conexao2.Server       := _Server2;
    Conexao2.Database     := _Db2;
    if _port2 <> '' then
      Conexao2.Port         := strtoint(_Port2);

    _bancoDeDados1            := Conexao.ProviderName;
    _bancoDeDados2            := Conexao2.ProviderName;

    try
      if trim(_bancoDeDados1 ) <> '' then
      begin
        Conexao.Open;
        ModuloPrincipal.Hoje;
     //   ConfiguraComponenteNFE;

        ModuloPrincipal.PreparaTransacao;

        CriaCampos;
        CriaTabelas;
        Atualiza_Dicionario;
        PrecisaAtualizarBanco;
        CriaDiretorios;
        ModuloPrincipal.EfetivaTransacao;

      end;

      if trim(_bancoDeDados2 ) <> '' then
      begin
        Conexao2.Open;
      end;

      Except on E:Exception do
      begin
        Moduloprincipal.msgErro('Erro: ' + E.Message);
        Application.Terminate;
      end;
    end;
  end;
end;

function TModuloPrincipal.EnviaEmails(para, cc, cco, assunto: string;
  prioridade: integer; anexos: TStringList; confirmaLeitura: boolean;
  Mensagem: TStrings):boolean;
var xAnexo : Integer; enviado:boolean;
begin
{  enviado         := false;
  IdSMTP.Port     := _obj_params.email_port;
  IdSMTP.Host     := _obj_params.email_servidor;
  IdSMTP.Password := _obj_params.email_senha;
  IdSMTP.Username := _obj_params.email_usuario;

  IdMessage.Recipients.EMailAddresses := para;
  IdMessage.CCList.EMailAddresses     := cc;
  IdMessage.BccList.EMailAddresses    := cco;
  IdMessage.From.Address := _obj_params.email_usuario;
  IdMessage.From.Name := 'Sistema';
  //Trata a Prioridade da mensagem
  case Prioridade of
  0 : IdMessage.Priority := mpLow;
  1 : IdMessage.Priority := mpNormal;
  2 : IdMessage.Priority := mpHigh;
  end;

  IdMessage.Subject := Assunto;
//  IdMessage.Body    := Mensagem.CommaText;

  if confirmaLeitura then
  IdMessage.ReceiptRecipient.Text := IdMessage.From.Text; // Auto Resposta

  //Tratando os arquivos anexos
  if anexos <> nil then
     TIdAttachmentFile.create(idmessage.MessageParts, TFileName(anexos));

  IdSMTP.Connect;
  try
    IdSMTP.Send(IdMessage);
    enviado := true;
  finally
    IdSMTP.Disconnect;
  end;    }
end;

procedure TModuloPrincipal.FecharConexoes;
begin
  if ModuloPrincipal.Conexao.Connected = true then
     ModuloPrincipal.Conexao.Close;

  if ModuloPrincipal.Conexao2.Connected = true then
     ModuloPrincipal.Conexao2.Close;
end;

function TModuloPrincipal.MyFormatDate(data: TDateTime):string;
begin
  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    result := FormatDatetime('YYYY-MM-DD',data);
  end;
end;

function TModuloPrincipal.MyFormatNumber(numero: currency): currency;
var
  ValorResumidoStr:string;
begin
  ValorResumidoStr := Trim(Format('%8.'+ cdsParamssis_cas_dec.asstring +'f',[Round(numero * 100) / 100]));
  Result           := StrToCurr(ValorResumidoStr);
end;

function TModuloPrincipal.GeradorExiste(nomeGerador: string): boolean;
var
  Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(Self);
  Cons.Connection := ModuloPrincipal.Conexao;
  Cons.close;
  if ModuloPrincipal._bancoDeDados1 = postgres then
    Cons.sql.add('select sequence_name from information_schema.sequences ' +
                 'where sequence_name =:nome ');
  Cons.params[0].asstring := nomeGerador;
  Cons.Open;
  if Cons.eof then
    result := false
  else
    result := true;
  FreeAndNil(Cons);
end;

procedure TModuloPrincipal.gravaIniBanco(servidor1, usuario1, senha1, db1,
  sgdb1, port1, servidor2, usuario2, senha2, db2, sgdb2, port2: string);
var
  ArqIni : TIniFile;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\exec.ini');
  Try
    if db1 <> '' then
      ArqIni.WriteString('Conexao1', 'DB1', Cript(db1));

    if sgdb1 <> '' then
      ArqIni.WriteString('Conexao1', 'SGDB1', Cript(sgdb1));

    if servidor1 <> '' then
      ArqIni.WriteString('Conexao1', 'Servidor1', Cript(servidor1));

    if usuario1 <> '' then
      ArqIni.WriteString('Conexao1', 'Usuario1', Cript(usuario1));

    if senha1 <> '' then
      ArqIni.WriteString('Conexao1', 'Senha1', Cript(senha1));

    if port1 <> '' then
      ArqIni.WriteString('Conexao1', 'port1', Cript(port1));


    if db1 <> '' then
      ArqIni.WriteString('Conexao2', 'DB2', Cript(db2));

    if sgdb1 <> '' then
      ArqIni.WriteString('Conexao2', 'SGDB2', Cript(sgdb2));

    if servidor1 <> '' then
      ArqIni.WriteString('Conexao2', 'Servidor2', Cript(servidor2));

    if usuario1 <> '' then
      ArqIni.WriteString('Conexao2', 'Usuario2', Cript(usuario2));

    if senha1 <> '' then
      ArqIni.WriteString('Conexao2', 'Senha2', Cript(senha2));

    if port1 <> '' then
      ArqIni.WriteString('Conexao2', 'port2', Cript(port2));
    Finally
    FreeAndNil(ArqIni);
  end;

end;

procedure TModuloPrincipal.Hoje;
var Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    Cons.close;
    Cons.sql.clear;
    Cons.sql.add('SELECT CURRENT_DATE');
    Cons.open;
    _hoje := Cons.Fields[0].AsDateTime;
  end;
  FreeAndNil(cons);
end;

function TModuloPrincipal.HojeAgora: TDateTime;
var Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    Cons.close;
    Cons.sql.clear;
    Cons.sql.add('SELECT CURRENT_TIMESTAMP');
    Cons.open;
    result := Cons.Fields[0].AsDateTime;
    _agora := Cons.Fields[0].AsDateTime;
  end;
  FreeAndNil(cons);
end;

function TModuloPrincipal.leInibanco: boolean;
var
  ArqIni : TIniFile;
  db1, sgdb1,servidor1,usuario1,senha1,port1,
  db2, sgdb2,servidor2,usuario2,senha2,port2:string;
begin
  result := false;
  if not FileExists(ExtractFilePath(Application.ExeName) + '\exec.ini') then
  begin
    Moduloprincipal.MsgInfo('Arquivo de inicialização não encontrado. Contate o suporte técnico ');
    FArquivoIni := TFArquivoIni.create(self);
    FArquivoIni.showmodal;
    FreeAndNil(FArquivoIni);
  end
  else
  begin
    ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\exec.ini');
    Try
      _DB1     := UnCript(ArqIni.ReadString('Conexao1', 'Db1', db1));
      _sgdb1   := UnCript(ArqIni.ReadString('Conexao1', 'SGDB1', sgdb1));
      _server1 := UnCript(ArqIni.ReadString('Conexao1', 'Servidor1', servidor1));
      _user1   := UnCript(ArqIni.ReadString('Conexao1', 'Usuario1', usuario1));
      _senha1  := UnCript(ArqIni.ReadString('Conexao1', 'Senha1', senha1));
      _port1   := UnCript(ArqIni.ReadString('Conexao1', 'Port1', port1));

      _DB2     := UnCript(ArqIni.ReadString('Conexao2', 'Db2', db2));
      _sgdb2   := UnCript(ArqIni.ReadString('Conexao2', 'SGDB2', sgdb2));
      _server2 := UnCript(ArqIni.ReadString('Conexao2', 'Servidor2', servidor2));
      _user2   := UnCript(ArqIni.ReadString('Conexao2', 'Usuario2', servidor2));
      _senha2  := UnCript(ArqIni.ReadString('Conexao2', 'Senha2', servidor2));
      _port2   := UnCript(ArqIni.ReadString('Conexao2', 'Port1', port2));
      result   := true;
      Finally
      FreeAndNil(ArqIni);
    end;
  end;

end;

procedure TModuloPrincipal.ListarArquivos(Path, extensao: string; Lista: TStringList);
var
  F: TSearchRec;
begin

  if FindFirst(Path + extensao, faAnyFile, F) = 0 then
  begin
    repeat
      if (F.Attr <> 0) then
      begin
        if (F.Name <> '.') and (F.Name <> '..') then
          Lista.Add(F.Name);
      end;
    until FindNext(F)<>0;

    SysUtils.FindClose(F);
  end;

end;

function TModuloPrincipal.MD5String(const Value: string): string;
var
  xMD5: TIdHashMessageDigest5;
begin
  xMD5 := TIdHashMessageDigest5.Create;
  try
    Result := xMD5.HashStringAsHex(Value);
  finally
    xMD5.Free;
  end;
end;

procedure TModuloPrincipal.MensagensDoSistema(msg: string);
begin
  Frmmain.statusBar1.Panels[3].text := copy(msg,0,80);
  Frmmain.statusBar1.Update;
end;

procedure TModuloPrincipal.MsgErro(msg: string);
begin
  raise Exception.Create(msg);
end;

procedure TModuloPrincipal.MsgInfo(msg: string);
begin
  MessageDlg(msg,mtInformation,[mbok],0);
end;

function TModuloPrincipal.MsgPergunta(msg: string): boolean;
begin
  if MessageDlg(msg,mtconfirmation,[mbyes]+[mbno],0) = idyes then
    result := true
  else
    result := false;
end;

procedure TModuloPrincipal.MsgWarning(msg: string);
begin
  MessageDlg(msg,mtWarning,[mbok],0);
end;

function TModuloPrincipal.MyEditFormat(numero: currency): string;
begin
  result := FormatCurr('###,###,###,##0.00',numero);
end;

function TModuloPrincipal.MyStrToCurr(s: string): currency;
var
  ponto: string[1];
begin
  if s='' then
  begin
    Result:= 0;
    exit;
  end;
  if FormatSettings.DecimalSeparator = ',' then
    ponto:= '.'
  else
    ponto:= ',';
  while pos(ponto,s)>0 do
    system.delete(s,pos(ponto,s),1);
  try
    result:= StrToFloat(s);
  except
    result:= 0;
  end;

end;

function TModuloPrincipal.IsNumeric(s: string): Boolean;
var
  i:Double;
begin
  Result := True;
  try
    i := StrToFloat(s);
  except
    Result := False;
  end;
end;

function TModuloPrincipal.ObterDescricaoCampo(tabela, campo_codigo, campo_descricao: string;valor_campo_codigo:string): string;
var Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  Cons.Close;
  Cons.SQL.Add('select ' + campo_descricao + ' from ' + tabela + ' where ' + campo_codigo + ' = ' + valor_campo_codigo);
  Cons.open;
  result :=  Cons.fields[0].asstring;

  FreeAndNil(Cons);

end;

function TModuloPrincipal.ObterMaiorGerador(nomeGerador: string;conexao:TUniConnection): integer;
var Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  Cons.Close;
  Cons.SQL.Add('select nextval(''' + nomeGerador + ''')');
  Cons.open;
  result :=  Cons.fields[0].asinteger;

  FreeAndNil(Cons);
end;

function TModuloPrincipal.RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;

function TModuloPrincipal.RemoveChar(Texto: String): String;
var
I: integer;
S: string;
begin
  S := '';
  Texto := Trim(Texto);
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9','A'..'Z']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;

end;



function TModuloPrincipal.ShowStatusBar(msg: string): string;
begin
  Frmmain.statusBar1.panels[0].text := 'Versão: ' + _versao;
  Frmmain.statusBar1.panels[1].text := _nomeDoUsuario;
  Frmmain.statusBar1.panels[2].text := _nomeDaEmpresa;
  Frmmain.statusBar1.panels[3].text := ModuloPrincipal._Db1;
  FrmMain.statusBar1.panels[4].text := msg;
  Frmmain.statusBar1.Update;
  FrmMain.refresh;
  FrmMain.Update;
end;

function TModuloPrincipal.SubstituirCaracteres(S: String; C1: String; C2: String): String;
 var
  IndexadorS: Integer;
  TrechosDaString: String[1];
  StringAuxiliar: String;
begin
 //Inicializa as variáveis
 IndexadorS := 0;
 StringAuxiliar := '';
 //Somente executa a função se o comprimento for 0 ou 1
 if (Length(C1) = 0) or (Length(C1) = 1) then
  begin
   Case Length(C1) of
    0:
     begin
      if C1 = '' then
       S := C2;
     end;
    1:
     begin
      //Procura o caractere "C1" na String "S" e substitui por "C2"
      for IndexadorS := 1 to Length(S) do
       begin
        TrechosDaString := Copy(S, IndexadorS, 1);
         if TrechosDaString = C1 then
          TrechosDaString := C2;
        StringAuxiliar := StringAuxiliar + TrechosDaString;
       end;
      S := StringAuxiliar;
     end;
   end;
  end;
 Result := S;
end;



function TModuloPrincipal.SubstituiStr(S, Localizar,Substituir: string): string;
var
   Retorno: String;
   Posicao: Integer;
begin
  Retorno := S;
  //Obtendo a posição inicial da substring Localizar na string Localizar.
  Posicao := Pos (Localizar, Retorno);
  if Posicao <> 0 then // Verificando se a substring Localizar existe.
  begin
    // Excluindo a Localizar.
    Delete(Retorno, Posicao, Length (Localizar));
    // Inserindo a string do parâmetro Substituir
    Insert(Substituir, Retorno , Posicao);
  end;
  Result := Retorno;
end;

function TModuloPrincipal.TestaConexaoInternet: Boolean;
var
 i:LongWord;
begin
if not InternetGetConnectedState(@i,0) then
  Result := False
else
  Result := True;
end;

function TModuloPrincipal.UnCript(s: string): string;
var i: byte;
begin
  for i:= 1 to length(s) do
    s[i]:= char((126-ord(s[i]))+32);
  Result:= s;
end;

function TModuloPrincipal.VerificaSeCampoExiste(campoBanco, tabela: string): boolean;
var Cons : TUniQuery; vsql : string;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    Cons.close;
    Cons.sql.clear;
    vsql := 'SELECT ' + campoBanco + ' from ' + tabela;
    Cons.sql.add(vsql);
    try
      Cons.open;
      result := true;
      except on Exception do
        result := false;
    end;
  end;
  FreeAndNil(cons);
end;


function TModuloPrincipal.VerificaSeTabelaExiste(tabela: string): boolean;

    var Cons : TUniQuery; vsql : string;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    Cons.close;
    Cons.sql.clear;
    vsql := 'SELECT * from ' + tabela;
    Cons.sql.add(vsql);
    try
      Cons.open;
      result := true;
      except on Exception do
        result := false;
    end;
  end;
  FreeAndNil(cons);

end;

function TModuloPrincipal.Agora: TTime;
var Cons : TUniQuery;
begin
  Cons := TUniQuery.Create(self);
  Cons.Connection := conexao;

  if ModuloPrincipal._bancoDeDados1 = postgres then
  begin
    Cons.close;
    Cons.sql.clear;
    Cons.sql.add('SELECT CURRENT_TIME');
    Cons.open;
    result := Cons.Fields[0].AsDateTime;
  end;
  FreeAndNil(cons);

end;


function TModuloPrincipal.ExecutaSQL(vsql:string):boolean;
var Mysql : TUniQuery;
begin
  try
    ModuloPrincipal.PreparaTransacao;
    Mysql := TUniQuery.Create(self);
    Mysql.Connection := conexao;
    Mysql.sql.clear;
    Mysql.sql.add(vsql);
    Mysql.ExecSQL;
    ModuloPrincipal.EfetivaTransacao;
    result := true;
    except on E:Exception do
    begin
      ModuloPrincipal.DesfazTransacao;
      result := false;
      ModuloPrincipal.MsgErro('Não atualizou o Banco de Dados. Erro: ' +e.message);
    end;
  end;
end;

procedure TModuloPrincipal.CarregaEmpresa(codigo: integer);
begin
  ConsEmpresaGlobal.close;
  ConsEmpresaGlobal.sql.clear;
  ConsEmpresaGlobal.sql.add('select * from sis_emp where Emp_cod =:Emp_cod');
  ConsEmpresaGlobal.params[0].asinteger := codigo;
  ConsEmpresaGlobal.Open;
end;

procedure TModuloPrincipal.CarregaParametros;
begin
  cdsParams.close;
  cdsParams.open;

end;

procedure TModuloPrincipal.CompressFiles(Arquivos: TStrings; const Compactado: String);
var
  InFile, OutFile, TmpFile: TFileStream;
  Compr: TCompressionStream;
  I, L: Integer;
  S: String;
  Rect: TRect;
begin
  if Arquivos.Count > 0 then
  begin
    // Cria o arquivo de saída, será nosso compactado
    OutFile := TFileStream.Create(Compactado, fmCreate);
    try
      { Grava o número de arquivos }
      L := Arquivos.Count;
      OutFile.Write(L, SizeOf(L));
      for I := 0 to Arquivos.Count - 1 do
      begin
        Showstatusbar('Comprimindo: ' + IntToStr(I) + ' de ' + IntToStr(Arquivos.Count));
        InFile := TFileStream.Create(Arquivos[I], fmOpenRead);
        try
          { Grava o nome do arquivo a compactar }
          S := ExtractFilename(Arquivos[I]);
          L := Length(S);
          OutFile.Write(L, SizeOf(L));
          OutFile.Write(S[1], L);
          { Grava o tamanho do arquivo a compactar }
          L := InFile.Size;
          OutFile.Write(L, SizeOf(L));
          { Comprime o arquivo em um outro temporário }
          TmpFile := TFileStream.Create('tmpZLib', fmCreate);
          Compr := TCompressionStream.Create(clMax, TmpFile);
          // clMax é compressão Máxima

          try
            Compr.CopyFrom(InFile, L); // Efetua a compressão do arquivo
          finally
            Compr.Free;
            TmpFile.Free;
          end;
          { Copia o arquivo comprimido temporário para o nosso arquivo de saída }
          TmpFile := TFileStream.Create('tmpZLib', fmOpenRead);
          try
            OutFile.CopyFrom(TmpFile, 0);
          finally
            TmpFile.Free;
          end;
        finally
          InFile.Free;
        end;
      end;
    finally
      OutFile.Free;
    end;
    DeleteFile('tmpZLib'); // Remove o arquivo temporário
  end;

end;

procedure TModuloPrincipal.DecompressFiles(FileName, Destination: String);
var
 InFile, OutFile: TFilestream;
 Decompr: TDecompressionStream;
 Dest,S: String;
 I,L,C: Integer;
begin
  Destination := IncludeTrailingPathDelimiter(Destination);
  InFile := TFileStream.Create(FileName,fmOpenRead);
  try
    { Pega o número de arquivos }
    InFile.Read(C,SizeOf(C));
    for I := 1 to C do
    begin
      { Pega o nome do arquivo }
      InFile.Read(L,SizeOf(L));
      SetLength(S,L);
      InFile.Read(S[1],L);
      { Lê o tamanho do arquivo }
      InFile.Read(L,SizeOf(L));
      { Progresso do arquivo atual. Não se pode ler Decompr.Size, dá erro, por isso utilizamos L }
      nMax := L;
      { Descompacta e grava o arquivo no disco }
      S := Dest+S; // Adiciona o caminho do arquivo
      OutFile := TFileStream.Create(S,fmCreate or fmShareExclusive);
      Decompr := TDecompressionStream.Create(InFile);

      try
        OutFile.CopyFrom(Decompr,L);
      finally
        OutFile.Free;
        Decompr.Free;
      end;
    end;
  finally
    InFile.Free;
  end;

end;

function TModuloPrincipal.ConferirConfiguração(var msg: string): boolean;
begin

end;


procedure TModuloPrincipal.CriaDiretorios;
begin
  if not DirectoryExists(cdsParamssis_path.asstring + '\fotos\') then
    CreateDir(cdsParamssis_path.asstring + '\fotos\');

end;

function TModuloPrincipal.Cript(s: string): string;
var
  i: byte;
begin
  for i:= 1 to length(s) do
    s[i]:= char(126-(ord(s[i])-32));
  Result:= s;
end;

end.
