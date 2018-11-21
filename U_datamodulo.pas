unit U_datamodulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.DBClient, Data.FMTBcd,
  Data.SqlExpr;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_bairro: TFDTable;
    ds_bairro: TDataSource;
    tb_bairroId: TFDAutoIncField;
    tb_bairrobai_nome: TStringField;
    tb_cidade: TFDTable;
    tb_cliente: TFDTable;
    tb_operacao: TFDTable;
    tb_tipooperacao: TFDTable;
    ds_cidade: TDataSource;
    ds_cliente: TDataSource;
    ds_operacao: TDataSource;
    ds_tipooperacao: TDataSource;
    tb_cidadeId: TFDAutoIncField;
    tb_cidadecid_nome: TStringField;
    tb_cidadecid_uf: TStringField;
    tb_operacaoid: TIntegerField;
    tb_operacaohp_mes: TStringField;
    tb_operacaohp_cliente: TIntegerField;
    tb_operacaohp_operacao: TIntegerField;
    tb_tipooperacaoid: TIntegerField;
    tb_tipooperacaoop_tipo: TStringField;
    tb_tipooperacaoop_descricao: TStringField;
    tb_tipooperacaoop_valor: TFloatField;
    qcli_bai: TFDQuery;
    qcli_cid: TFDQuery;
    DataSource1: TDataSource;
    tb_clienteid: TIntegerField;
    tb_clientecli_nome: TStringField;
    tb_clientecli_cpf: TStringField;
    tb_clientecli_cnpj: TStringField;
    tb_clientecli_rg: TStringField;
    tb_clientecli_ie: TStringField;
    tb_clientecli_tel: TStringField;
    tb_clientecli_cel: TStringField;
    tb_clientecli_nasc: TStringField;
    tb_clientecli_abertura: TStringField;
    tb_clientecli_bairro: TIntegerField;
    tb_clientecli_cidade: TIntegerField;
    tb_clientebairros: TStringField;
    tb_clientecidade: TStringField;
    tb_operacaoclientes: TStringField;
    tb_operacaotipoop: TStringField;
    tb_operacaovalorop: TFloatField;
    procedure DataModuleCreate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses U_bairro, U_cidade, U_operacao, U_cliente, U_consultaBairro, U_consultaCidade;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  Driver.VendorLib := GetCurrentDir + '\libmySQL.dll';
  FDConnection1.Params.Database := 'contabilidade';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.Password :='';
  FDConnection1.Connected := true;


  tb_bairro.TableName := 'bairro';
  tb_bairro.Active := true;
  tb_cidade.TableName := 'cidade';
  tb_cidade.Active := true;
  tb_cliente.TableName := 'cliente';
  tb_cliente.Active := true;
  tb_tipooperacao.TableName := 'operacao';
  tb_tipooperacao.Active := true;
  tb_operacao.TableName := 'historico_operacao';
  tb_operacao.Active := true;
end;









end.
