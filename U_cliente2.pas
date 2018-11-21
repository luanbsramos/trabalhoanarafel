unit U_cliente2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCliente2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    label15: TLabel;
    edt_nome: TDBEdit;
    edt_cpf: TDBEdit;
    edt_rg: TDBEdit;
    edt_tel: TDBEdit;
    edt_dt: TDBEdit;
    edt_cel: TDBEdit;
    edt_cid: TDBLookupComboBox;
    edt_bai: TDBLookupComboBox;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    DBEdit1: TDBEdit;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure habilitarcampos;
    procedure desabilitarcampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente2: TfrmCliente2;
    verificacao: integer;

implementation

{$R *.dfm}
  uses U_datamodulo;
procedure TfrmCliente2.btn_cancelarClick(Sender: TObject);
begin
  dm.tb_cliente.Cancel;
  desabilitarcampos;
end;

procedure TfrmCliente2.btn_novoClick(Sender: TObject);
begin
  dm.tb_cliente.Insert;
  habilitarcampos;
end;

procedure TfrmCliente2.btn_salvarClick(Sender: TObject);
begin
  dm.tb_cliente.Post;
  desabilitarcampos;
end;

procedure TfrmCliente2.desabilitarcampos;
begin
  btn_novo.Enabled := true;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  edt_nome.Enabled := false;
  edt_tel.Enabled := false;
  edt_cel.Enabled := false;
  edt_dt.Enabled := false;
  edt_cid.Enabled := false;
  edt_bai.Enabled := false;
  edt_cpf.Enabled := false;
  edt_rg.Enabled := false;
end;

procedure TfrmCliente2.FormShow(Sender: TObject);
begin
  desabilitarcampos;
  if verificacao=1 then
  begin
    edt_cpf.DataField:='cli_cpf';
    edt_rg.DataField:='cli_rg';
    edt_dt.DataField:='cli_nasc';
  end
  else
  begin
    edt_cpf.DataField:='cli_cnpj';
    edt_rg.DataField:='cli_ie';
    edt_dt.DataField:='cli_abertura';
  end;

end;

procedure TfrmCliente2.habilitarcampos;
begin
  btn_novo.Enabled := false;
  btn_salvar.Enabled := true;
  btn_cancelar.Enabled := true;
  edt_nome.Enabled := true;
  edt_tel.Enabled := true;
  edt_cel.Enabled := true;
  edt_dt.Enabled := true;
  edt_cid.Enabled := true;
  edt_bai.Enabled := true;
  edt_cpf.Enabled := true;
  edt_rg.Enabled := true;
end;

end.
