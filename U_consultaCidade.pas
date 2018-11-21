unit U_consultaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmConsultaCidade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btn_alt: TButton;
    btn_canc: TButton;
    btn_exc: TButton;
    btn_sav: TButton;
    btn_ant: TButton;
    btn_pro: TButton;
    procedure habilitarcampos;
    procedure desabilitarcampos;
    procedure btn_altClick(Sender: TObject);
    procedure btn_cancClick(Sender: TObject);
    procedure btn_excClick(Sender: TObject);
    procedure btn_savClick(Sender: TObject);
    procedure btn_antClick(Sender: TObject);
    procedure btn_proClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCidade: TfrmConsultaCidade;

implementation

{$R *.dfm}
   uses U_datamodulo;


procedure TfrmConsultaCidade.btn_altClick(Sender: TObject);
begin
  dm.tb_cidade.Edit;
  habilitarcampos;
end;

procedure TfrmConsultaCidade.btn_antClick(Sender: TObject);
begin
  dm.tb_cidade.Prior;
end;

procedure TfrmConsultaCidade.btn_cancClick(Sender: TObject);
begin
  dm.tb_cidade.Cancel;
  desabilitarcampos;
end;

procedure TfrmConsultaCidade.btn_excClick(Sender: TObject);
begin
  dm.tb_cidade.Delete;
end;

procedure TfrmConsultaCidade.btn_proClick(Sender: TObject);
begin
  dm.tb_cidade.Next;
end;

procedure TfrmConsultaCidade.btn_savClick(Sender: TObject);
begin
  dm.tb_cidade.Post;
  desabilitarcampos;
end;

procedure TfrmConsultaCidade.desabilitarcampos;
begin
  btn_alt.Enabled:=true;
  btn_canc.Enabled:=false;
  btn_sav.Enabled:=false;
  btn_exc.Enabled:=true;
end;

procedure TfrmConsultaCidade.FormShow(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmConsultaCidade.habilitarcampos;
begin
  btn_alt.Enabled:=false;
  btn_canc.Enabled:=true;
  btn_sav.Enabled:=true;
  btn_exc.Enabled:=false;
end;

end.
