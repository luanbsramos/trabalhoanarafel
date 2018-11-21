unit U_cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmCidade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_id: TEdit;
    edt_cidade: TEdit;
    edt_uf: TComboBox;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
     procedure habilitarcampos;
    procedure desabilitarcampos;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

{$R *.dfm}
 uses U_datamodulo;

{ TfrmCidade }
procedure TfrmCidade.btn_cancelarClick(Sender: TObject);
begin
  edt_cidade.Clear;
  edt_uf.Clear;
  dm.tb_cidade.Cancel;
end;

procedure TfrmCidade.btn_novoClick(Sender: TObject);
begin
  habilitarcampos;
  dm.tb_cidade.Insert;
end;

procedure TfrmCidade.btn_salvarClick(Sender: TObject);
begin
  dm.tb_cidade.FieldByName('cid_nome').Value := edt_cidade.Text;
  dm.tb_cidade.FieldByName('cid_uf').Value := edt_uf.Text;
  dm.tb_cidade.Post;
  desabilitarcampos;
  edt_cidade.Clear;
  edt_uf.Clear;
end;

procedure TfrmCidade.desabilitarcampos;
begin
  btn_novo.Enabled := true;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  edt_cidade.Enabled := false;
  edt_uf.Enabled := false;
end;

procedure TfrmCidade.FormCreate(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmCidade.habilitarcampos;
begin
  btn_novo.Enabled := false;
  btn_salvar.Enabled := true;
  btn_cancelar.Enabled := true;
  edt_cidade.Enabled := true;
  edt_uf.Enabled := true;
end;


end.
