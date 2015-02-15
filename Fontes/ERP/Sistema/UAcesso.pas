unit UAcesso;

interface

uses Classes, Forms, Dialogs, SysUtils, Controls,
     ComCtrls, Menus, ActnList, ExtCtrls, STDctrls, JvXPButtons, DBCtrls, Uni;

type
  TAcesso = class(TUniQuery);

type
  OpcoesAcesso     = record
    DescModulo     : string[30];
    NomeForm       : string[25];
    NumTag         : integer;
    DescAcesso     : string[110];
end;

const
  MaxOpAcesso = 200;

var
  OPAcesso        : Array[0..MaxOpAcesso] of ^OpcoesAcesso;
  Acessos         : OpcoesAcesso;
  NumAcesso       : integer = 0;
  MyIBSQL         : TUniQuery;
  Acesso          : TAcesso;

  procedure CarregarOpcoesAcesso;
  procedure ObterOpcoesAcesso(DescModulo, DescAcesso:string; var NomeForm:string; var NumTag:integer);
  procedure DescarregarArrayOpcoes;
  procedure ConfigurarAcesso(Formulario:TForm; NomeDoForm:string;
                           DataBaseName:TUniConnection; NomeDoUsuario:string;
                           codEmp:integer);

  function  ObterNumTagObjeto(DescModulo, DescAcesso:string):integer;

  function  EfetuarLogin(DataBaseName:TUniConnection; NomeUsuario, SenhaUsuario:string):boolean;

  function ValidarUsuario(nomeUsuario, senhaUsuario:string; codemp:integer):boolean;

  function  ExisteOpPermissao(DataBaseName:TUniConnection; CodPerfil:integer; DescModulo:string;
                              NumTag, Codemp:integer):boolean;

  function  UsuarioPossuiPermissao(DataBaseName:TUniConnection; NomeForm:string;
                                   NomeUsuario:string; NumTag, codEmp:integer):Boolean;

implementation

uses  UModuloPrincipal, UModuloEmpresas, UModuloAcesso;

procedure CarregarOpcoesAcesso;

  procedure AdicionarOpcoes(DescModulo, NomeForm:string; NumTag:integer; DescAcesso:string);
  begin
    New(OPAcesso[NumAcesso]);
    OPAcesso[NumAcesso]^.DescModulo := DescModulo;
    OPAcesso[NumAcesso]^.NomeForm   := NomeForm;
    OPAcesso[NumAcesso]^.NumTag     := NumTag;
    OPAcesso[NumAcesso]^.DescAcesso := DescAcesso;
    Inc(NumAcesso);
  end;

begin
  NumAcesso:=0;
  FillChar(OPAcesso, SizeOf(OPAcesso),0);
  if OPAcesso[0] <> Nil then
    DescarregarArrayOpcoes;

  AdicionarOpcoes('Barra de Menu','FrmMain',    1,'Sistema');
  AdicionarOpcoes('Barra de Menu','FrmMain',   50,'Parceiros');
  AdicionarOpcoes('Barra de Menu','FrmMain',  100,'Financeiro');
  AdicionarOpcoes('Barra de Menu','FrmMain',  200,'Vendas');
  AdicionarOpcoes('Barra de Menu','FrmMain',  300,'Almoxarifado');
  AdicionarOpcoes('Barra de Menu','FrmMain',  400,'Compras');
  //AdicionarOpcoes('Barra de Menu','FrmMain',  500,'Contábil');
  AdicionarOpcoes('Barra de Menu','FrmMain',  600,'Serviços');

  AdicionarOpcoes('Sistema','FrmMain',        2,'Usuários');
  AdicionarOpcoes('Sistema','FrmMain',        3,'Mensagens');
  AdicionarOpcoes('Sistema','FrmMain',        4,'Perfil');
  AdicionarOpcoes('Sistema','FrmMain',        5,'Permissões');
  AdicionarOpcoes('Sistema','FrmMain',        6,'Parâmetros');
  AdicionarOpcoes('Sistema','FrmMain',        8,'Cidades');
  AdicionarOpcoes('Sistema','FrmMain',        9,'Estados');
  AdicionarOpcoes('Sistema','FrmMain',        10,'Comandos SQL');

  AdicionarOpcoes('Sistema','FrmMain',        15,'Cadastro de Países');
  AdicionarOpcoes('Sistema','FrmMain',        16,'Cadastro de Empresas');
  AdicionarOpcoes('Sistema','FrmMain',        17,'Cadastro de Departamentos');
  AdicionarOpcoes('Sistema','FrmMain',        18,'Arquivo de Inicialização');
  AdicionarOpcoes('Sistema','FrmMain',        19,'Alterar Senha');

// parceiros
  AdicionarOpcoes('Sistema','FrmMain',        51,'Cadastro de Parceiros');
  AdicionarOpcoes('Sistema','FrmMain',        52,'Tipos de Endereços');
  AdicionarOpcoes('Sistema','FrmMain',        53,'Tipos de Parceiros');

  // financeiro
  AdicionarOpcoes('Financeiro','FrmMain',        101,'Consulta - Contas a Receber');


  // Vendas
  AdicionarOpcoes('Vendas','FrmMain',            201,'Venda Balcão');

  // Estoque



  //Compras
  AdicionarOpcoes('Compras','FrmMain',            401,'Pedidos de Compra');
  AdicionarOpcoes('Compras','FrmMain',            402,'Recebimento de Pedidos de Compra');
  AdicionarOpcoes('Compras','FrmMain',            403,'Gerenciamento de Pedidos de Compra');
  AdicionarOpcoes('Compras','FrmMain',            404,'Configuração de Compras');
  AdicionarOpcoes('Compras','FrmMain',            405,'Cotação de Compras');
  AdicionarOpcoes('Compras','FrmGerenRequisicoesProd',406,'Analisar Item da Requsição');
  AdicionarOpcoes('Compras','FrmMain',            407,'Gerenciamento de Requisições');
  AdicionarOpcoes('Compras','FrmGerenRequisicoesProd',408,'Gerar Cotação');

  // Serviços
  AdicionarOpcoes('Serviços','FrmMain',              601,'Serviços');





end;

function ObterNumTagObjeto(DescModulo, DescAcesso:string):integer;
var
  i:integer;
begin
  for i:=0 to MaxOpAcesso do
  begin
    if (OpAcesso[i].DescModulo = DescModulo) and (OpAcesso[i].DescAcesso = DescAcesso) then
    begin
      Result:=OpAcesso[i].NumTag;
      Break;
    end;
  end;
end;

function ValidarUsuario(nomeUsuario, senhaUsuario:string; codemp:integer):boolean;
var vsql : string;
begin
  MyIBSQL := TUniQuery.Create(Acesso);
  MyIBSQL.Connection := ModuloPrincipal.Conexao;

  result := true;

  with MyIBSQL do
  begin
    vsql   :=  'SELECT * FROM SIS_USUARIOS where ' +
               'UPPER(SIS_USUARIOS.USUARIO) =:NOMEUSU AND CODEMP =:CODEMP ';
    sql.Add(vsql);
    Params[0].AsString  := NomeUsuario;
    Params[1].asinteger := codemp;
    Open;
    if FieldByName('USUARIO').AsString = '' then
    begin
      Result:=False;
      Moduloprincipal.msgErro('Usuário não cadastrado');
    end
    else
      if ModuloPrincipal.MD5String(trim(SenhaUsuario)) <> trim(FieldByName('SENHA').AsString) then
      begin
        Result:=False;
        Moduloprincipal.msgErro('Senha incorreta');
      end
      else
      if FieldByName('situacao').AsInteger = 0 then
      begin
        Result:=False;
        Moduloprincipal.msgErro('Usuário não habilitado');
      end;

    FreeAndNil(MyIBSQL);
  end;

end;

function EfetuarLogin(DataBaseName:TUniConnection; NomeUsuario, SenhaUsuario:string):boolean;
var vsql : string;
begin
  MyIBSQL := TUniQuery.Create(Acesso);
  with MyIBSQL do
  begin
    Connection := DataBaseName;
    vsql   :=  'select * from sis_usu ' +
               'where upper(sis_usu.usu_login) =:nomeusu ';
    sql.Add(vsql);
    Params[0].AsString := NomeUsuario;
    Open;

    if FieldByName('usu_login').AsString = '' then
    begin
      Result:=False;
      Moduloprincipal.MsgErro('Usuário não cadastrado');
    end
    else
        if ModuloPrincipal.MD5String(trim(SenhaUsuario)) <> trim(FieldByName('usu_senha').AsString) then
        begin
          Result:=False;
          Moduloprincipal.MsgErro('Senha incorreta');
        end
        else
        if FieldByName('usu_sit').AsInteger = 0 then
        begin
          Result := False;
          Moduloprincipal.MsgErro('Usuário não habilitado');
        end
        else
        begin
          Result        := True;
          ModuloAcesso.CarregaUsuarioLogado(FieldByName('usu_cod').AsInteger);

          // variavel de empresa padrao do usuário
          ModuloPrincipal._codigoempresa := FieldByName('emp_cod').AsInteger;

          ModuloPrincipal.CarregaEmpresa(ModuloPrincipal._codigoempresa);

        end;
    Close;
    FreeAndNil(MyIBSQL);
  end;
end;

procedure ObterOpcoesAcesso(DescModulo, DescAcesso:string; var NomeForm:string;
                            var NumTag:integer);
var
  i:integer;
begin
  for i:=0 to MaxOpAcesso do
  begin
    if (OpAcesso[i].DescModulo = DescModulo) and (OpAcesso[i].DescAcesso = DescAcesso) then
    begin
      NomeForm := OpAcesso[i].NomeForm;
      NumTag   := OpAcesso[i].NumTag;
      Break;
    end;
  end;
end;

procedure DescarregarArrayOpcoes;
var
  Indice:integer;
begin
  for Indice:=0 to MaxOpAcesso do
    if OPAcesso[Indice] = Nil then
      Break
    else  
      System.Dispose(OPAcesso[Indice]);
  FillChar(OPAcesso,SizeOf(OPAcesso),0);    
end;

function ExisteOpPermissao(DataBaseName: TUniConnection; CodPerfil:integer; DescModulo:string; NumTag, codemp:integer):boolean;
var vsql : string;
begin
  MyIBSQL := TUniQuery.Create(Acesso);
  with MyIBSQL do
  begin
    Connection := DataBaseName;
    vsql := 'select numtag from sis_perm where (per_cod = :per_cod) and ' +
            '(descmodulo = :modulo) and (numtag = :numtag) and emp_cod =:emp_cod';
    sql.Add(vsql);
    Params[0].AsInteger := CodPerfil;
    Params[1].AsString  := DescModulo;
    Params[2].AsInteger := NumTag;
    Params[3].AsInteger := codemp;
    Open;
    if not Eof then
      Result:=True
    else
      Result:=False;
    Close;
    FreeAndNil(MyIBSQL);
  end;
end;

function  UnCript(s:string):string;
var
  i: byte;
begin
  for i:= 1 to length(s) do
    s[i]:= char((126-ord(s[i]))+32);
  Result:= s;
end;

function  UsuarioPossuiPermissao(DataBaseName:TUniConnection; NomeForm:string;
                                 NomeUsuario:string; NumTag, codemp:integer):Boolean;
var
  vSQL: string;
begin

  MyIBSQL := TUniQuery.Create(Acesso);
  with MyIBSQL do
  begin
    Connection:=DataBaseName;
    Close;
    vSQL := 'select * from sis_perm ' +
            'inner join sis_usu ON sis_perm.per_cod = sis_usu.per_cod ' +
            'where upper(sis_usu.usu_login) = :usuario and ' +
            'sis_perm.numtag = :numtag and sis_perm.nomeform = :nomeform ';
    sql.add(vSQL);
    Params[0].AsString  := Trim(NomeUsuario);
    Params[1].AsInteger := NumTag;
    Params[2].AsString  := (Trim(NomeForm));
    Open;
    if fieldbyname('perfil_id').asinteger = 1 then
      result := true
    else
    begin
      if not EOF then
        Result:=True
      else
        Result:=False;
    end;
    Close;
    FreeAndNil(MyIBSQL);
  end;
end;

procedure ConfigurarAcesso(Formulario:TForm; NomeDoForm:string;
                           DataBaseName:TUniConnection; NomeDoUsuario:string;
                           codEmp:integer);
var
  i,y:integer;
begin
  for i:=0 to Formulario.ComponentCount - 1 do
  begin
    if ((Formulario.Components[i].Tag > 0)) then
    begin
      if (Formulario.Components[i] is TToolButton) then
        (Formulario.Components[i] as TToolButton).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                  NomeDoForm,
                                                                                  NomeDoUsuario,
                                                                                  Formulario.Components[i].Tag,
                                                                                  codEmp)
      else
        if (Formulario.Components[i] is TMenuItem) then
         (Formulario.Components[i] as TMenuItem).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                 NomeDoForm,
                                                                                 NomeDoUsuario,
                                                                                 Formulario.Components[i].Tag,
                                                                                 codEmp)
        else
         if (Formulario.Components[i] is TAction) then
           (Formulario.Components[i] as TAction).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                 NomeDoForm,
                                                                                 NomeDoUsuario,
                                                                                 Formulario.Components[i].Tag,
                                                                                 codEmp)
         else
           if (Formulario.Components[i] is TTabSheet) then
            (Formulario.Components[i] as TTabSheet).TabVisible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                       NomeDoForm,
                                                                                       NomeDoUsuario,
                                                                                       Formulario.Components[i].Tag,
                                                                                       codEmp)
           else
             if (Formulario.Components[i] is TPanel) then
              (Formulario.Components[i] as TPanel).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                         NomeDoForm,
                                                                                         NomeDoUsuario,
                                                                                         Formulario.Components[i].Tag,
                                                                                         codEmp)
             else
               if (Formulario.Components[i] is TGroupBox) then
                (Formulario.Components[i] as TGroupBox).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                           NomeDoForm,
                                                                                           NomeDoUsuario,
                                                                                           Formulario.Components[i].Tag,
                                                                                           codEmp)
               else
                 if (Formulario.Components[i] is TJVXPButton) then
                  (Formulario.Components[i] as TJVXPButton).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                             NomeDoForm,
                                                                                             NomeDoUsuario,
                                                                                             Formulario.Components[i].Tag,
                                                                                             codEmp)
               else
                 if (Formulario.Components[i] is TDBEdit) then
                  (Formulario.Components[i] as TDBEdit).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                        NomeDoForm,
                                                                                        NomeDoUsuario,
                                                                                        Formulario.Components[i].Tag,
                                                                                        codEmp)
                 else
                   if (Formulario.Components[i] is TTabSheet) then
                    (Formulario.Components[i] as TTabSheet).visible:=UsuarioPossuiPermissao(DataBaseName,
                                                                                          NomeDoForm,
                                                                                          NomeDoUsuario,
                                                                                          Formulario.Components[i].Tag,
                                                                                          codEmp);

    end;
  end;
end;

end.


