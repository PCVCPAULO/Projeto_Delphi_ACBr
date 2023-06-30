unit EmissorNFe_NFCe.Views.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ACBrBase, ACBrDFe, ACBrNFe,
  EmissorNFe.Views.Frm_SelecionarCertificado,
  View.Produtos;

type
  Tfrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Transportadoras1: TMenuItem;
    Emisso1: TMenuItem;
    NFE1: TMenuItem;
    NFCe1: TMenuItem;
    Sair1: TMenuItem;
    ACBrNFe1: TACBrNFe;
    ACBrNFCe1: TACBrNFe;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Transportadoras1Click(Sender: TObject);
    procedure AjustarNFe;
    procedure FormShow(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses
  EmissorNFe_NFCe.Views.CadastroClientes,
  EmissorNFe_NFCe.Model.dm_Dados,
  EmissorNFe_NFCe.Views.CadTransportadora;

procedure Tfrm_Principal.AjustarNFe;
begin
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas :=
                  ExtractFilePath(Application.ExeName) + '\schemas';
end;

procedure Tfrm_Principal.Clientes1Click(Sender: TObject);
begin
  frm_CadClientes := Tfrm_CadClientes.Create(Self);
  try
    frm_CadClientes.ShowModal;
    dm_ConexaoPG.Conectar;
  finally
    FreeAndNil(frm_CadClientes);
  end;
end;

procedure Tfrm_Principal.FormShow(Sender: TObject);
begin
  AjustarNFe;
end;

procedure Tfrm_Principal.Produtos1Click(Sender: TObject);
begin

  frm_ViewProdutos := Tfrm_ViewProdutos.Create(Self);
  try
   frm_ViewProdutos.ShowModal;
  finally
    FreeAndNil(frm_ViewProdutos);
  end;
end;

procedure Tfrm_Principal.Transportadoras1Click(Sender: TObject);
begin
  frm_Transport := Tfrm_Transport.Create(Self);
  try
    frm_Transport.ShowModal;
    dm_ConexaoPG.Conectar;
  finally
    FreeAndNil(frm_Transport);
  end;
end;

procedure Tfrm_Principal.Sair1Click(Sender: TObject);
begin
  dm_ConexaoPG.Desconectar;
  Close;
end;

end.
