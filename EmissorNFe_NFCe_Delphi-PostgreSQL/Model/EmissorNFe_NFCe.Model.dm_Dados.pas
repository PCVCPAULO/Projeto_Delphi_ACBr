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
