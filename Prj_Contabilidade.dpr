program Prj_Contabilidade;

uses
  Vcl.Forms,
  U_principal in 'U_principal.pas' {frm_principal},
  U_bairro in 'U_bairro.pas' {frmBairro},
  U_cidade in 'U_cidade.pas' {frmCidade},
  U_cliente in 'U_cliente.pas' {frmCliente},
  U_operacao in 'U_operacao.pas' {frmOperacao},
  U_consultaBairro in 'U_consultaBairro.pas' {frmConsultaBairro},
  U_datamodulo in 'U_datamodulo.pas' {dm: TDataModule},
  U_consultaCidade in 'U_consultaCidade.pas' {frmConsultaCidade},
  U_consultaCliente in 'U_consultaCliente.pas' {frmConsultaCliente},
  U_consultaOperacao in 'U_consultaOperacao.pas' {frmConsultaOperacao},
  U_cliente2 in 'U_cliente2.pas' {frmCliente2},
  U_emissao in 'U_emissao.pas' {frmEmissao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TfrmBairro, frmBairro);
  Application.CreateForm(TfrmCidade, frmCidade);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmOperacao, frmOperacao);
  Application.CreateForm(TfrmConsultaBairro, frmConsultaBairro);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TfrmConsultaOperacao, frmConsultaOperacao);
  Application.CreateForm(TfrmCliente2, frmCliente2);
  Application.CreateForm(TfrmEmissao, frmEmissao);
  Application.Run;
end.
