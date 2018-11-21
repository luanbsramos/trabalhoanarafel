unit U_emissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TfrmEmissao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_id: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_valor: TDBEdit;
    edt_mes: TDBComboBox;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_cancelar: TButton;
    edt_cli: TDBLookupComboBox;
    edt_op: TDBLookupComboBox;
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
  frmEmissao: TfrmEmissao;

implementation

{$R *.dfm}

  uses U_datamodulo;
{ TfrmEmissao }

procedure TfrmEmissao.btn_cancelarClick(Sender: TObject);
begin
  dm.tb_operacao.Cancel;
  desabilitarcampos;
end;

procedure TfrmEmissao.btn_novoClick(Sender: TObject);
begin
  dm.tb_operacao.Insert;
  habilitarcampos;
end;

procedure TfrmEmissao.btn_salvarClick(Sender: TObject);
begin
  dm.tb_operacao.Post;
  desabilitarcampos;
end;

procedure TfrmEmissao.desabilitarcampos;
begin
  btn_novo.Enabled:= true;
  btn_salvar.Enabled:= false;
  btn_cancelar.Enabled:= false;
  edt_valor.Enabled:=false;
  edt_cli.Enabled:=false;
  edt_op.Enabled:=false;
  edt_mes.Enabled:=false;
end;

procedure TfrmEmissao.FormShow(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmEmissao.habilitarcampos;
begin
  btn_novo.Enabled:= false;
  btn_salvar.Enabled:= true;
  btn_cancelar.Enabled:= true;
  edt_valor.Enabled:=true;
  edt_cli.Enabled:=true;
  edt_op.Enabled:=true;
  edt_mes.Enabled:=true;
end;

end.
