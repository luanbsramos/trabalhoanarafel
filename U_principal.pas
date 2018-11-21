unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  Tfrm_principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Bairro1: TMenuItem;
    Cidade1: TMenuItem;
    Cliente1: TMenuItem;
    ipodeOperaes1: TMenuItem;
    Consulta1: TMenuItem;
    Bairro2: TMenuItem;
    Cidade2: TMenuItem;
    Cliente2: TMenuItem;
    Operaes1: TMenuItem;
    Relatorios1: TMenuItem;
    Operaes2: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    pn_principal: TPanel;
    Image1: TImage;
    ClientePF1: TMenuItem;
    Emissao: TMenuItem;
    Guias1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure ClientePF1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure ipodeOperaes1Click(Sender: TObject);
    procedure Bairro2Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure Cidade2Click(Sender: TObject);
    procedure Operaes1Click(Sender: TObject);
    procedure Guias1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_bairro, U_cidade, U_cliente, U_operacao, U_consultaBairro,
  U_consultaCidade, U_consultaCliente, U_consultaOperacao, U_cliente2, U_emissao;



procedure Tfrm_principal.Bairro1Click(Sender: TObject);
begin
  frmBairro := TfrmBairro.Create(Application);
  frmBairro.show;
end;

procedure Tfrm_principal.Bairro2Click(Sender: TObject);
begin
  frmConsultaBairro := TfrmConsultaBairro.Create(Application);
  frmConsultaBairro.show;
end;

procedure Tfrm_principal.Cidade1Click(Sender: TObject);
begin
  frmCidade := TfrmCidade.Create(Application);
  frmCidade.show;
end;



procedure Tfrm_principal.Cidade2Click(Sender: TObject);
begin
  frmConsultaCidade := TfrmConsultaCidade.Create(Application);
  frmConsultaCidade.show;
end;

procedure Tfrm_principal.Cliente1Click(Sender: TObject);
begin
  frmCliente2 := TfrmCliente2.create(Application);
  frmCliente2.Label3.Caption:='CNPJ';
  frmCliente2.Label6.Caption:='IE';
  frmCliente2.Label9.Caption:='Data de Abertura';
  verificacao:=0;
  frmCliente2.show;
end;

procedure Tfrm_principal.Cliente2Click(Sender: TObject);
begin
  frmConsultaCliente := TfrmConsultaCliente.Create(Application);
  frmConsultaCliente.show;
end;

procedure Tfrm_principal.ClientePF1Click(Sender: TObject);
begin
  frmCliente2 := TfrmCliente2.create(Application);
  frmCliente2.Label3.Caption:='CPF';
  frmCliente2.Label6.Caption:='RG';
  frmCliente2.Label9.Caption:='Data de Nascimento';
  verificacao:=1;
  frmCliente2.show;
end;



procedure Tfrm_principal.FormCreate(Sender: TObject);
begin
  ShowWindow(Handle, SW_MAXIMIZE);
end;

procedure Tfrm_principal.Guias1Click(Sender: TObject);
begin
  frmEmissao := TfrmEmissao.Create(Application);
  frmEmissao.Show;
end;

procedure Tfrm_principal.ipodeOperaes1Click(Sender: TObject);
begin
  frmOperacao := TfrmOperacao.Create(Application);
  frmOperacao.show;
end;

procedure Tfrm_principal.Operaes1Click(Sender: TObject);
begin
  frmConsultaOperacao := TfrmConsultaOperacao.Create(Application);
  frmConsultaOperacao.show;
end;

procedure Tfrm_principal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
