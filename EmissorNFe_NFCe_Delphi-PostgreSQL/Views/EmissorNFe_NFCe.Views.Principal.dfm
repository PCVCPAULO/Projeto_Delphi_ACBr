object frm_Principal: Tfrm_Principal
  Left = 0
  Top = 0
  Caption = 'Emissor de NFe e NFCe - Opini'#227'o de Tudo!'
  ClientHeight = 696
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 232
    Top = 80
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Transportadoras1: TMenuItem
        Caption = 'Transportadoras'
        OnClick = Transportadoras1Click
      end
      object Emitente1: TMenuItem
        Caption = 'Emitente'
        OnClick = Emitente1Click
      end
    end
    object Emisso1: TMenuItem
      Caption = 'Emiss'#227'o'
      object NFE1: TMenuItem
        Caption = 'NFe'
        object VerificarStatusNFe1: TMenuItem
          Caption = 'Verificar Status NFe'
          OnClick = VerificarStatusNFe1Click
        end
      end
      object NFCe1: TMenuItem
        Caption = 'NFCe'
        object VerificarStatusNFCe1: TMenuItem
          Caption = 'Verificar Status NFCe'
        end
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 656
    Top = 56
  end
  object ACBrNFCe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 784
    Top = 56
  end
  object ds_DadosEmitente: TDataSource
    DataSet = dm_ConexaoPG.qry_DadosEmitente
    Left = 888
    Top = 56
  end
end
