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
    Active = True
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
    Active = True
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
    Active = True
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
    Active = True
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
end
