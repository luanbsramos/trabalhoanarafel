unit U_consultaBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmConsultaBairro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btn_alt: TButton;
    btn_canc: TButton;
    btn_exc: TButton;
    btn_ant: TButton;
    btn_pro: TButton;
    DBEdit1: TDBEdit;
    edt_nome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_sav: TButton;
    procedure desabilitarcampos;
    procedure habilitarcampos;
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
  bairro : integer;
  frmConsultaBairro: TfrmConsultaBairro;

implementation

{$R *.dfm}

  uses U_datamodulo;
{ TfrmConsultaBairro }

procedure TfrmConsultaBairro.btn_savClick(Sender: TObject);
begin
  dm.tb_bairro.Post;
  bairro:= 1;
  desabilitarcampos;
end;

procedure TfrmConsultaBairro.desabilitarcampos;
begin
  btn_alt.Enabled:=true;
  btn_canc.Enabled:=false;
  btn_sav.Enabled:=false;
  btn_exc.Enabled:=true;
  edt_nome.ReadOnly:=true;
end;

procedure TfrmConsultaBairro.FormShow(Sender: TObject);
begin
  desabilitarcampos;
end;

procedure TfrmConsultaBairro.habilitarcampos;
begin
  btn_alt.Enabled:=false;
  btn_canc.Enabled:=true;
  btn_sav.Enabled:=true;
  btn_exc.Enabled:=false;
  edt_nome.ReadOnly:=false;
end;

procedure TfrmConsultaBairro.btn_altClick(Sender: TObject);
begin
  dm.tb_bairro.Edit;
  edt_nome.SetFocus;
  habilitarcampos;
end;

procedure TfrmConsultaBairro.btn_antClick(Sender: TObject);
begin
  dm.tb_bairro.Prior;
end;

procedure TfrmConsultaBairro.btn_cancClick(Sender: TObject);
begin
  dm.tb_bairro.Cancel;
  desabilitarcampos;
end;





procedure TfrmConsultaBairro.btn_excClick(Sender: TObject);
begin
  dm.tb_bairro.Delete;
end;




procedure TfrmConsultaBairro.btn_proClick(Sender: TObject);
begin
  dm.tb_bairro.Next;
end;

end.
