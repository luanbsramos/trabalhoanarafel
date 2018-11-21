unit U_operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmOperacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    edtid: TDBEdit;
    edtoperacao: TDBComboBox;
    edtvalor: TDBEdit;
    edtdescricao: TDBEdit;
    procedure habilitarcampos;
    procedure desabilitarcampos;
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
  frmOperacao: TfrmOperacao;



implementation

{$R *.dfm}

uses
  U_datamodulo;

{ TfrmOperacao }

procedure TfrmOperacao.btn_cancelarClick(Sender: TObject);
begin
  dm.tb_tipooperacao.Cancel;
  desabilitarcampos;
end;

procedure TfrmOperacao.btn_novoClick(Sender: TObject);
begin
  dm.tb_tipooperacao.Insert;
  habilitarcampos;
end;

procedure TfrmOperacao.btn_salvarClick(Sender: TObject);
begin
  dm.tb_tipooperacao.Post;
  desabilitarcampos;
end;

procedure TfrmOperacao.desabilitarcampos;
begin
  btn_novo.Enabled:= true;
  btn_salvar.Enabled:= false;
  btn_cancelar.Enabled:= false;
  edtoperacao.Enabled:= false;
  edtdescricao.Enabled:= false;
  edtvalor.Enabled:= false;
end;

procedure TfrmOperacao.FormShow(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmOperacao.habilitarcampos;
begin
  btn_novo.Enabled:= false;
  btn_salvar.Enabled:= true;
  btn_cancelar.Enabled:= true;
  edtoperacao.Enabled:= true;
  edtdescricao.Enabled:= true;
  edtvalor.Enabled:= true;
end;

end.
