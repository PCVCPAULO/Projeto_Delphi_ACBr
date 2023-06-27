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
  Position = poScreenCenter
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
      end
      object ransportadoras1: TMenuItem
        Caption = 'Transportadoras'
      end
    end
    object Emisso1: TMenuItem
      Caption = 'Emiss'#227'o'
      object NFE1: TMenuItem
        Caption = 'NFe'
      end
      object NFCe1: TMenuItem
        Caption = 'NFCe'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
