unit EmissorNFe_NFCe.Model.dm_Dados;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tdm_ConexaoPG = class(TDataModule)
    ConexaoPG: TZConnection;
    qry_Clientes: TZQuery;
    qry_Clientescodigo: TZIntegerField;
    qry_Clientesnome: TZUnicodeStringField;
    qry_Clientespessoa: TZUnicodeStringField;
    qry_Clientescnpj_cpf: TZUnicodeStringField;
    qry_Clientesie_rg: TZUnicodeStringField;
    qry_Clientesendereco: TZUnicodeStringField;
    qry_Clientesnumero: TZUnicodeStringField;
    qry_Clientesbairro: TZUnicodeStringField;
    qry_Clientescomplemento: TZUnicodeStringField;
    qry_Clientescep: TZUnicodeStringField;
    qry_Clientescodigo_cidade: TZIntegerField;
    qry_Clientesnome_cidade: TZUnicodeStringField;
    qry_Clientescodigo_uf: TZIntegerField;
    qry_Clientesnome_uf: TZUnicodeStringField;
    qry_Estados: TZQuery;
    qry_Estadoscodigo_estado: TZIntegerField;
    qry_Estadossigla_estado: TZUnicodeStringField;
    qry_Cidades: TZQuery;
    qry_Cidadescodigo_estado: TZIntegerField;
    qry_Cidadessigla_estado: TZUnicodeStringField;
    qry_Cidadesnome_uf: TZUnicodeStringField;
    qry_Cidadescodigo_cidade: TZUnicodeStringField;
    qry_Cidadesnome_cidade: TZUnicodeStringField;
    qry_Transport: TZQuery;
    qry_Transportcodigo: TZIntegerField;
    qry_Transportnome: TZUnicodeStringField;
    qry_Transportpessoa: TZUnicodeStringField;
    qry_Transportcnpj_cpf: TZUnicodeStringField;
    qry_Transportie_rg: TZUnicodeStringField;
    qry_Transportendereco: TZUnicodeStringField;
    qry_Transportnumero: TZUnicodeStringField;
    qry_Transportbairro: TZUnicodeStringField;
    qry_Transportcomplemento: TZUnicodeStringField;
    qry_Transportcep: TZUnicodeStringField;
    qry_Transportcodigo_cidade: TZIntegerField;
    qry_Transportnome_cidade: TZUnicodeStringField;
    qry_Transportcodigo_uf: TZIntegerField;
    qry_Transportnome_uf: TZUnicodeStringField;
    qry_Produtos: TZQuery;
    qry_Produtoscodigo: TZIntegerField;
    qry_Produtosdescricao: TZUnicodeStringField;
    qry_Produtospreco: TZBCDField;
    qry_Produtosestoque: TZIntegerField;
    qry_Produtoscst_icms: TZUnicodeStringField;
    qry_Produtoscst_pis: TZUnicodeStringField;
    qry_Produtoscst_cofins: TZUnicodeStringField;
    qry_Produtoscst_ipi: TZUnicodeStringField;
    qry_Produtosaliq_icms: TZBCDField;
    qry_Produtosaliq_pis: TZBCDField;
    qry_Produtosaliq_cofins: TZBCDField;
    qry_Produtosaliq_ipi: TZBCDField;
    qry_Produtosdesconto: TZBCDField;
    qry_Produtosncm: TZUnicodeStringField;
    qry_Produtosgtin: TZUnicodeStringField;
    qry_Produtoscfop: TZUnicodeStringField;
    qry_Emitente: TZQuery;
    qry_Emitentecodigo: TZIntegerField;
    qry_Emitentenome: TZUnicodeStringField;
    qry_Emitentepessoa: TZUnicodeStringField;
    qry_Emitentecnpj_cpf: TZUnicodeStringField;
    qry_Emitenteie_rg: TZUnicodeStringField;
    qry_Emitenteendereco: TZUnicodeStringField;
    qry_Emitentenumero: TZUnicodeStringField;
    qry_Emitentebairro: TZUnicodeStringField;
    qry_Emitentecomplemento: TZUnicodeStringField;
    qry_Emitentecep: TZUnicodeStringField;
    qry_Emitentecodigo_cidade: TZIntegerField;
    qry_Emitentenome_cidade: TZUnicodeStringField;
    qry_Emitentecodigo_uf: TZIntegerField;
    qry_Emitentenome_uf: TZUnicodeStringField;
    qry_Emitentecertificado: TZUnicodeStringField;
    qry_Emitentesenha_certificado: TZUnicodeStringField;
    qry_Emitenteid_csc: TZIntegerField;
    qry_Emitentetoken_csc: TZUnicodeStringField;
    qry_DadosEmitente: TZQuery;
    qry_DadosEmitentecodigo: TZIntegerField;
    qry_DadosEmitentenome: TZUnicodeStringField;
    qry_DadosEmitentepessoa: TZUnicodeStringField;
    qry_DadosEmitentecnpj_cpf: TZUnicodeStringField;
    qry_DadosEmitenteie_rg: TZUnicodeStringField;
    qry_DadosEmitenteendereco: TZUnicodeStringField;
    qry_DadosEmitentenumero: TZUnicodeStringField;
    qry_DadosEmitentebairro: TZUnicodeStringField;
    qry_DadosEmitentecomplemento: TZUnicodeStringField;
    qry_DadosEmitentecep: TZUnicodeStringField;
    qry_DadosEmitentecodigo_cidade: TZIntegerField;
    qry_DadosEmitentenome_cidade: TZUnicodeStringField;
    qry_DadosEmitentecodigo_uf: TZIntegerField;
    qry_DadosEmitentenome_uf: TZUnicodeStringField;
    qry_DadosEmitentecertificado: TZUnicodeStringField;
    qry_DadosEmitentesenha_certificado: TZUnicodeStringField;
    qry_DadosEmitenteid_csc: TZIntegerField;
    qry_DadosEmitentetoken_csc: TZUnicodeStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Conectar;
    procedure Desconectar;
  end;

var
  dm_ConexaoPG: Tdm_ConexaoPG;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_ConexaoPG.Conectar;
begin
//   Self.ConexaoPG.Connected := True;
//   Self.qry_Clientes.Active := True;
end;

procedure Tdm_ConexaoPG.DataModuleCreate(Sender: TObject);
begin
//  Conectar;
end;

procedure Tdm_ConexaoPG.Desconectar;
begin
//   Self.ConexaoPG.Connected := True;
//   Self.qry_Clientes.Active := True;
end;

end.
