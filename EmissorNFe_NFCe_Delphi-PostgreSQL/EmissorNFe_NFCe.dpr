program EmissorNFe_NFCe;

uses
  Vcl.Forms,
  EmissorNFe_NFCe.Views.Principal in 'Views\EmissorNFe_NFCe.Views.Principal.pas' {frm_Principal},
  EmissorNFe_NFCe.Model.dm_Dados in 'Model\EmissorNFe_NFCe.Model.dm_Dados.pas' {dm_ConexaoPG: TDataModule},
  EmissorNFe_NFCe.Views.CadastroClientes in 'Views\EmissorNFe_NFCe.Views.CadastroClientes.pas' {frm_CadClientes},
  EmissorNFe_NFCe.Views.CadTransportadora in 'Views\EmissorNFe_NFCe.Views.CadTransportadora.pas' {frm_Transport},
  EmissorNFe.Views.Frm_SelecionarCertificado in 'Views\EmissorNFe.Views.Frm_SelecionarCertificado.pas' {frmSelecionarCertificado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_ConexaoPG, dm_ConexaoPG);
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(TfrmSelecionarCertificado, frmSelecionarCertificado);
  Application.Run;
end.
