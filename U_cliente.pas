unit U_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    label15: TLabel;
    edt_id: TEdit;
    edt_nome: TEdit;
    edt_tel: TMaskEdit;
    edt_cel: TMaskEdit;
    edt_dt: TMaskEdit;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    edt_cnpj: TMaskEdit;
    edt_ie: TMaskEdit;
    edt_bairro: TDBLookupComboBox;
    edt_cidade: TDBLookupComboBox;
    procedure habilitarcampos;
    procedure desabilitarcampos;

    procedure limpar;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;


implementation

{$R *.dfm}
 uses U_datamodulo;




{ TfrmCliente }

procedure TfrmCliente.btn_cancelarClick(Sender: TObject);
begin
  desabilitarcampos;
  dm.tb_bairro.Cancel;
  limpar;
end;

procedure TfrmCliente.btn_novoClick(Sender: TObject);
begin
  habilitarcampos;
  dm.tb_cliente.Insert;
end;



procedure TfrmCliente.btn_salvarClick(Sender: TObject);
begin
  dm.tb_cliente.Post;
  desabilitarcampos;
  limpar;

end;

procedure TfrmCliente.desabilitarcampos;
begin
  btn_novo.Enabled := true;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  edt_nome.Enabled := false;
  edt_tel.Enabled := false;
  edt_cel.Enabled := false;
  edt_dt.Enabled := false;
  edt_cidade.Enabled := false;
  edt_bairro.Enabled := false;
  edt_cnpj.Enabled := false;
  edt_ie.Enabled := false;



end;

procedure TfrmCliente.FormShow(Sender: TObject);
begin

   desabilitarcampos;

end;

procedure TfrmCliente.habilitarcampos;
begin
  btn_novo.Enabled := false;
  btn_salvar.Enabled := true;
  btn_cancelar.Enabled := true;
  edt_nome.Enabled := true;
  edt_tel.Enabled := true;
  edt_cel.Enabled := true;
  edt_dt.Enabled := true;
  edt_cidade.Enabled := true;
  edt_bairro.Enabled := true;
  edt_cnpj.Enabled := true;
  edt_ie.Enabled := true;

end;

procedure TfrmCliente.limpar;
begin
  edt_nome.Clear;
  edt_tel.Clear;
  edt_cel.Clear;
  edt_dt.Clear;
  edt_cnpj.Clear;
  edt_ie.Clear;
end;

end.
