unit EmissorNFe_NFCe.Views.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ACBrBase, ACBrDFe, ACBrNFe,
  EmissorNFe.Views.Frm_SelecionarCertificado,
  View.Produtos, View.Emitente, Data.DB;

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
    Emitente1: TMenuItem;
    VerificarStatusNFe1: TMenuItem;
    VerificarStatusNFCe1: TMenuItem;
    ds_DadosEmitente: TDataSource;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Transportadoras1Click(Sender: TObject);
    procedure AjustarNFe;
    procedure FormShow(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Emitente1Click(Sender: TObject);
    procedure VerificarStatusNFe1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure Tfrm_Principal.Emitente1Click(Sender: TObject);
begin
  frm_Emitente := Tfrm_Emitente.Create(Self);
  try
   frm_Emitente.ShowModal;
  finally
    FreeAndNil(frm_Emitente);
  end;
end;

procedure Tfrm_Principal.FormCreate(Sender: TObject);
begin
  dm_ConexaoPG.qry_DadosEmitente.Close;
  dm_ConexaoPG.qry_DadosEmitente.SQL.Clear;
  dm_ConexaoPG.qry_Emitente.SQL.Add('SELECT codigo,' +
                                    ' nome,' +
                                    ' pessoa,' +
                                    ' cnpj_cpf,' +
                                    ' ie_rg,' +
                                    ' endereco,' +
                                    ' numero,' +
                                    ' bairro,' +
                                    ' complemento,' +
                                    ' cep,' +
                                    ' codigo_cidade,' +
                                    ' nome_cidade,' +
                                    ' codigo_uf,' +
                                    ' nome_uf,' +
                                    ' certificado,' +
                                    ' senha_certificado,' +
                                    ' id_csc,' +
                                    ' token_csc' +
                                    ' FROM tab_emitente LIMIT 1');
  dm_ConexaoPG.qry_Emitente.Open;
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

procedure Tfrm_Principal.VerificarStatusNFe1Click(Sender: TObject);
var
  i : Integer;
  ASerie : String;
  AddRow: Boolean;
begin
  frmSelecionarCertificado := TfrmSelecionarCertificado.Create(Self);
  try
    if trim (dm_ConexaoPG.qry_Emitente.FieldByName('certificado').AsString) = '' then
    begin
      ACBrNFe1.SSL.LerCertificadosStore;
      AddRow := False;

      with frmSelecionarCertificado.StringGrid1 do
      begin
        ColWidths[0] := 220;
        ColWidths[1] := 250;
        ColWidths[2] := 120;
        ColWidths[3] := 80;
        ColWidths[4] := 150;
        Cells[0,0] := 'Num. Série :';
        Cells[1,0] := 'Razão Social :';
        Cells[2,0] := 'CNPJ :';
        Cells[3,0] := 'Validade :';
        Cells[4,0] := 'Certificadora :';
      end;

      for I := 0 to ACBrNFe1.SSL.ListaCertificados.Count -1 do
      begin
        with frmSelecionarCertificado.StringGrid1 do
        begin
          if AddRow then
            RowCount := RowCount + 1;

            Cells[0, RowCount -1] := 'NumeroSerie' ;
            Cells[1, RowCount -1] := 'RazaoSocial';
            Cells[2, RowCount -1] := 'CNPJ';
            Cells[3, RowCount -1] := 'FormatDateBr(DataVenc)';
            Cells[4, RowCount -1] := 'Certificadora';
          addRow := True;
        end;
      end;
    end;

    frmSelecionarCertificado.ShowModal;
    if frmSelecionarCertificado.ModalResult =  mrOK then
    begin
      dm_ConexaoPG.qry_Emitente.Edit;
      dm_ConexaoPG.qry_Emitente.FieldByName('certificado').AsString := frmSelecionarCertificado.StringGrid1.Cells[0, frmSelecionarCertificado.StringGrid1.Row];
      dm_ConexaoPG.qry_Emitente.Post;
    end;

    ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=
            dm_ConexaoPG.qry_Emitente.FieldByName('certificado').AsString);
    ACBrNFe1.we
  finally

  end;

end;

procedure Tfrm_Principal.Sair1Click(Sender: TObject);
begin
  dm_ConexaoPG.Desconectar;
  Close;
end;

end.
