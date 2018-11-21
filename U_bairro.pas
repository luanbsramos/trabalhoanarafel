unit U_bairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmBairro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    edt_id: TEdit;
    edt_bairro: TEdit;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure habilitarcampos;
    procedure desabilitarcampos;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBairro: TfrmBairro;

implementation

{$R *.dfm}
  uses U_datamodulo;

procedure TfrmBairro.btn_cancelarClick(Sender: TObject);
begin
  edt_id.Text := '';
  edt_bairro.Text := '';
  desabilitarcampos;
  dm.tb_bairro.Cancel;
end;

procedure TfrmBairro.btn_novoClick(Sender: TObject);
begin
  habilitarcampos;
  dm.tb_bairro.Insert;
  edt_id.Text := IntToStr(dm.tb_bairro.FieldByName('id').Value);
end;

procedure TfrmBairro.btn_salvarClick(Sender: TObject);
begin
  dm.tb_bairro.FieldByName('bai_nome').Value := edt_bairro.Text;
  dm.tb_bairro.Post;
  edt_id.Text := '';
  edt_bairro.Text := '';
  desabilitarcampos;
end;

procedure TfrmBairro.desabilitarcampos;
begin
  btn_novo.Enabled := true;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  edt_bairro.Enabled := false;
end;

procedure TfrmBairro.FormCreate(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmBairro.habilitarcampos;
begin
  btn_novo.Enabled := false;
  btn_salvar.Enabled := true;
  btn_cancelar.Enabled := true;
  edt_bairro.Enabled := true;
end;

end.
