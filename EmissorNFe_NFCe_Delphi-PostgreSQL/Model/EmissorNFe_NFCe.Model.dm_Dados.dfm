object dm_ConexaoPG: Tdm_ConexaoPG
  OnCreate = DataModuleCreate
  Height = 442
  Width = 682
  PixelsPerInch = 120
  object ConexaoPG: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'nfe'
    User = 'postgres'
    Password = 'admin'
    Protocol = 'postgresql'
    LibraryLocation = 'C:\Program Files (x86)\PostgreSQL\10\pgAdmin 4\bin\libpq.dll'
    Left = 80
    Top = 48
  end
  object qry_Clientes: TZQuery
    Connection = ConexaoPG
    SQL.Strings = (
      'select * from tab_clientes where 0 = 1')
    Params = <>
    Left = 248
    Top = 48
    object qry_Clientesnome: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qry_Clientescodigo: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object qry_Clientespessoa: TZUnicodeStringField
      DisplayLabel = 'Tipo'
      FieldName = 'pessoa'
      Size = 1
    end
    object qry_Clientescnpj_cpf: TZUnicodeStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'cnpj_cpf'
    end
    object qry_Clientesie_rg: TZUnicodeStringField
      DisplayLabel = 'IE/RG'
      FieldName = 'ie_rg'
      Size = 18
    end
    object qry_Clientesendereco: TZUnicodeStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qry_Clientesnumero: TZUnicodeStringField
      DisplayLabel = 'N'#186
      FieldName = 'numero'
      Size = 10
    end
    object qry_Clientesbairro: TZUnicodeStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 50
    end
    object qry_Clientescomplemento: TZUnicodeStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 40
    end
    object qry_Clientescep: TZUnicodeStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 9
    end
    object qry_Clientescodigo_cidade: TZIntegerField
      DisplayLabel = 'C'#243'd_Cidade'
      FieldName = 'codigo_cidade'
    end
    object qry_Clientesnome_cidade: TZUnicodeStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nome_cidade'
      Size = 100
    end
    object qry_Clientescodigo_uf: TZIntegerField
      DisplayLabel = 'C'#243'd_UF'
      FieldName = 'codigo_uf'
    end
    object qry_Clientesnome_uf: TZUnicodeStringField
      DisplayLabel = 'UF'
      FieldName = 'nome_uf'
      Size = 2
    end
  end
  object qry_Estados: TZQuery
    Connection = ConexaoPG
    SQL.Strings = (
      'SELECT DISTINCT codigo_estado, sigla_estado FROM cidades'
      'ORDER BY sigla_estado')
    Params = <>
    Left = 416
    Top = 48
    object qry_Estadoscodigo_estado: TZIntegerField
      FieldName = 'codigo_estado'
    end
    object qry_Estadossigla_estado: TZUnicodeStringField
      FieldName = 'sigla_estado'
      Size = 2
    end
  end
  object qry_Cidades: TZQuery
    Connection = ConexaoPG
    SQL.Strings = (
      'SELECT * FROM cidades where 1 = -1')
    Params = <>
    Left = 560
    Top = 48
    object qry_Cidadescodigo_estado: TZIntegerField
      FieldName = 'codigo_estado'
    end
    object qry_Cidadessigla_estado: TZUnicodeStringField
      FieldName = 'sigla_estado'
      Size = 2
    end
    object qry_Cidadesnome_uf: TZUnicodeStringField
      FieldName = 'nome_uf'
      Size = 120
    end
    object qry_Cidadescodigo_cidade: TZUnicodeStringField
      FieldName = 'codigo_cidade'
      Required = True
      Size = 7
    end
    object qry_Cidadesnome_cidade: TZUnicodeStringField
      FieldName = 'nome_cidade'
      Size = 120
    end
  end
  object qry_Transport: TZQuery
    Connection = ConexaoPG
    SQL.Strings = (
      'select * from tab_transportadora where 0 = 1')
    Params = <>
    Left = 248
    Top = 144
    object qry_Transportcodigo: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object qry_Transportnome: TZUnicodeStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'nome'
      Size = 60
    end
    object qry_Transportpessoa: TZUnicodeStringField
      DisplayLabel = 'Tipo'
      FieldName = 'pessoa'
      Size = 1
    end
    object qry_Transportcnpj_cpf: TZUnicodeStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'cnpj_cpf'
    end
    object qry_Transportie_rg: TZUnicodeStringField
      DisplayLabel = 'IE/RG'
      FieldName = 'ie_rg'
      Size = 18
    end
    object qry_Transportendereco: TZUnicodeStringField
      DisplayLabel = 'Endereco'
      FieldName = 'endereco'
      Size = 60
    end
    object qry_Transportnumero: TZUnicodeStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Size = 10
    end
    object qry_Transportbairro: TZUnicodeStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 50
    end
    object qry_Transportcomplemento: TZUnicodeStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 40
    end
    object qry_Transportcep: TZUnicodeStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 9
    end
    object qry_Transportcodigo_cidade: TZIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'codigo_cidade'
    end
    object qry_Transportnome_cidade: TZUnicodeStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nome_cidade'
      Size = 100
    end
    object qry_Transportcodigo_uf: TZIntegerField
      DisplayLabel = 'C'#243'd. UF'
      FieldName = 'codigo_uf'
    end
    object qry_Transportnome_uf: TZUnicodeStringField
      DisplayLabel = 'UF'
      FieldName = 'nome_uf'
      Size = 2
    end
  end
  object qry_Produtos: TZQuery
    Connection = ConexaoPG
    Active = True
    SQL.Strings = (
      'select * from tab_produtos where 0 = 1')
    Params = <>
    Left = 416
    Top = 144
    object qry_Produtoscodigo: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object qry_Produtosdescricao: TZUnicodeStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object qry_Produtospreco: TZBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      DisplayFormat = '#0.00'
      Precision = 14
      Size = 2
    end
    object qry_Produtosestoque: TZIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'estoque'
    end
    object qry_Produtoscst_icms: TZUnicodeStringField
      DisplayLabel = 'CST ICMS'
      FieldName = 'cst_icms'
      Size = 3
    end
    object qry_Produtoscst_pis: TZUnicodeStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'cst_pis'
      Size = 3
    end
    object qry_Produtoscst_cofins: TZUnicodeStringField
      DisplayLabel = 'CST COFINS'
      FieldName = 'cst_cofins'
      Size = 3
    end
    object qry_Produtoscst_ipi: TZUnicodeStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'cst_ipi'
      Size = 3
    end
    object qry_Produtosaliq_icms: TZBCDField
      DisplayLabel = 'Aliq. ICMS'
      FieldName = 'aliq_icms'
      Precision = 14
      Size = 2
    end
    object qry_Produtosaliq_pis: TZBCDField
      DisplayLabel = 'Aliq. PIS'
      FieldName = 'aliq_pis'
      Precision = 14
      Size = 2
    end
    object qry_Produtosaliq_cofins: TZBCDField
      DisplayLabel = 'Aliq. COFINS'
      FieldName = 'aliq_cofins'
      Precision = 14
      Size = 2
    end
    object qry_Produtosaliq_ipi: TZBCDField
      DisplayLabel = 'Aliq. IPI'
      FieldName = 'aliq_ipi'
      Precision = 14
      Size = 2
    end
    object qry_Produtosdesconto: TZBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      DisplayFormat = '#0.00'
      Precision = 14
      Size = 2
    end
    object qry_Produtosncm: TZUnicodeStringField
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Size = 8
    end
    object qry_Produtosgtin: TZUnicodeStringField
      DisplayLabel = 'GTIN'
      FieldName = 'gtin'
      Size = 13
    end
    object qry_Produtoscfop: TZUnicodeStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
  end
  object qry_Emitente: TZQuery
    Connection = ConexaoPG
    Active = True
    SQL.Strings = (
      'SELECT codigo,'
      '  nome,'
      #9'pessoa,'
      #9'cnpj_cpf,'
      #9'ie_rg,'
      #9'endereco,'
      #9'numero,'
      #9'bairro,'
      #9'complemento,'
      #9'cep,'
      #9'codigo_cidade,'
      #9'nome_cidade,'
      #9'codigo_uf,'
      #9'nome_uf,'
      #9'certificado,'
      #9'senha_certificado,'
      '  id_csc,'
      '  token_csc'
      'FROM tab_emitente'
      'where 0 = 1')
    Params = <>
    Left = 560
    Top = 144
    object qry_Emitentecodigo: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object qry_Emitentenome: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qry_Emitentepessoa: TZUnicodeStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'pessoa'
      Size = 1
    end
    object qry_Emitentecnpj_cpf: TZUnicodeStringField
      DisplayLabel = 'CNPJ_CPF'
      FieldName = 'cnpj_cpf'
    end
    object qry_Emitenteie_rg: TZUnicodeStringField
      DisplayLabel = 'IE_RG'
      FieldName = 'ie_rg'
      Size = 18
    end
    object qry_Emitenteendereco: TZUnicodeStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qry_Emitentenumero: TZUnicodeStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Size = 10
    end
    object qry_Emitentebairro: TZUnicodeStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 50
    end
    object qry_Emitentecomplemento: TZUnicodeStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 40
    end
    object qry_Emitentecep: TZUnicodeStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 9
    end
    object qry_Emitentecodigo_cidade: TZIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'codigo_cidade'
    end
    object qry_Emitentenome_cidade: TZUnicodeStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nome_cidade'
      Size = 100
    end
    object qry_Emitentecodigo_uf: TZIntegerField
      DisplayLabel = 'C'#243'd. UF'
      FieldName = 'codigo_uf'
    end
    object qry_Emitentenome_uf: TZUnicodeStringField
      DisplayLabel = 'UF'
      FieldName = 'nome_uf'
      Size = 2
    end
    object qry_Emitentecertificado: TZUnicodeStringField
      DisplayLabel = 'Certificado'
      FieldName = 'certificado'
      Size = 150
    end
    object qry_Emitentesenha_certificado: TZUnicodeStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha_certificado'
    end
    object qry_Emitenteid_csc: TZIntegerField
      DisplayLabel = 'ID CSC'
      FieldName = 'id_csc'
    end
    object qry_Emitentetoken_csc: TZUnicodeStringField
      DisplayLabel = 'Token CSC'
      FieldName = 'token_csc'
      Size = 200
    end
  end
  object qry_DadosEmitente: TZQuery
    Connection = ConexaoPG
    SQL.Strings = (
      'SELECT * FROM tab_emitente where 0 = 1')
    Params = <>
    Left = 560
    Top = 240
    object qry_DadosEmitentecodigo: TZIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qry_DadosEmitentenome: TZUnicodeStringField
      FieldName = 'nome'
      Size = 60
    end
    object qry_DadosEmitentepessoa: TZUnicodeStringField
      FieldName = 'pessoa'
      Size = 1
    end
    object qry_DadosEmitentecnpj_cpf: TZUnicodeStringField
      FieldName = 'cnpj_cpf'
    end
    object qry_DadosEmitenteie_rg: TZUnicodeStringField
      FieldName = 'ie_rg'
      Size = 18
    end
    object qry_DadosEmitenteendereco: TZUnicodeStringField
      FieldName = 'endereco'
      Size = 60
    end
    object qry_DadosEmitentenumero: TZUnicodeStringField
      FieldName = 'numero'
      Size = 10
    end
    object qry_DadosEmitentebairro: TZUnicodeStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qry_DadosEmitentecomplemento: TZUnicodeStringField
      FieldName = 'complemento'
      Size = 40
    end
    object qry_DadosEmitentecep: TZUnicodeStringField
      FieldName = 'cep'
      Size = 9
    end
    object qry_DadosEmitentecodigo_cidade: TZIntegerField
      FieldName = 'codigo_cidade'
    end
    object qry_DadosEmitentenome_cidade: TZUnicodeStringField
      FieldName = 'nome_cidade'
      Size = 100
    end
    object qry_DadosEmitentecodigo_uf: TZIntegerField
      FieldName = 'codigo_uf'
    end
    object qry_DadosEmitentenome_uf: TZUnicodeStringField
      FieldName = 'nome_uf'
      Size = 2
    end
    object qry_DadosEmitentecertificado: TZUnicodeStringField
      FieldName = 'certificado'
      Size = 150
    end
    object qry_DadosEmitentesenha_certificado: TZUnicodeStringField
      FieldName = 'senha_certificado'
    end
    object qry_DadosEmitenteid_csc: TZIntegerField
      FieldName = 'id_csc'
    end
    object qry_DadosEmitentetoken_csc: TZUnicodeStringField
      FieldName = 'token_csc'
      Size = 200
    end
  end
end
