unit EmissorNFe_NFCe.Views.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tfrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    ransportadoras1: TMenuItem;
    Emisso1: TMenuItem;
    NFE1: TMenuItem;
    NFCe1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses EmissorNFe_NFCe.Views.CadastroClientes, EmissorNFe_NFCe.Model.dm_Dados;

procedure Tfrm_Principal.Clientes1Click(Sender: TObject);
begin
  frm_CadClientes := Tfrm_CadClientes.Create(Self);
  try

//    frm_ViewFornecedores.Top  := Round(pnl_MenuTopo.Height + ((pnl_Conteudo.Height - frm_ViewFornecedores.Height) / 2));
//    frm_ViewFornecedores.Left := Round(pnl_MenuLateral.Width + ((pnl_Conteudo.Width - frm_ViewFornecedores.Width) / 2));

//    frm_ViewFornecedores.Tag := PessoasToInt(tpFornecedores);
    frm_CadClientes.ShowModal;
    dm_ConexaoPG.Conectar;
  finally
    FreeAndNil(frm_CadClientes);
  end;
end;

procedure Tfrm_Principal.Sair1Click(Sender: TObject);
begin
  dm_ConexaoPG.Desconectar;
  Close;
end;

end.
