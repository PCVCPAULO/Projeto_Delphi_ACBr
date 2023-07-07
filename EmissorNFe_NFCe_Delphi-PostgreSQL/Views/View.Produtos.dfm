object frm_ViewProdutos: Tfrm_ViewProdutos
  Left = 0
  Top = 0
  Caption = 'frm_ViewProdutos'
  ClientHeight = 613
  ClientWidth = 1116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 28
  object pnl_Principal: TPanel
    Left = 0
    Top = 0
    Width = 1116
    Height = 613
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pgc_Principal: TPageControl
      Left = 0
      Top = 0
      Width = 1116
      Height = 613
      ActivePage = tbs_Cadastro
      Align = alClient
      Images = ImageList1
      TabOrder = 0
      object tbs_Pesquisa: TTabSheet
        Caption = 'Pesquisa'
        ImageIndex = -1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 112
          Width = 1358
          Height = 361
          DataSource = ds_Produtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -17
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Width = 289
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'preco'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'estoque'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cst_icms'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cst_pis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cst_cofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cst_ipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aliq_icms'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aliq_pis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aliq_cofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'aliq_ipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'desconto'
              Visible = True
            end>
        end
        object pnlBotoes: TPanel
          Left = 0
          Top = 487
          Width = 1108
          Height = 81
          Align = alBottom
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Panel3: TPanel
            Left = 176
            Top = 0
            Width = 88
            Height = 81
            Align = alLeft
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 0
            object btnExcluir: TButton
              Left = 3
              Top = 3
              Width = 82
              Height = 75
              Align = alClient
              Caption = 'Excluir'
              ImageAlignment = iaTop
              ImageIndex = 2
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnExcluirClick
            end
          end
          object Panel4: TPanel
            Left = 88
            Top = 0
            Width = 88
            Height = 81
            Align = alLeft
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 1
            object btnAlterar: TButton
              Left = 3
              Top = 3
              Width = 82
              Height = 75
              Align = alClient
              Caption = 'Alterar'
              ImageAlignment = iaTop
              ImageIndex = 0
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnAlterarClick
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 88
            Height = 81
            Align = alLeft
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 2
            object btnIncluir: TButton
              Left = 3
              Top = 3
              Width = 82
              Height = 75
              Align = alClient
              Caption = 'Incluir'
              ImageAlignment = iaTop
              ImageIndex = 5
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnIncluirClick
            end
          end
          object Panel6: TPanel
            Left = 264
            Top = 0
            Width = 88
            Height = 81
            Align = alLeft
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 3
            object btnImprimir: TButton
              Left = 3
              Top = 3
              Width = 82
              Height = 75
              Align = alClient
              Caption = 'Imprimir'
              ImageAlignment = iaTop
              ImageIndex = 4
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 1020
            Top = 0
            Width = 88
            Height = 81
            Align = alRight
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 4
            object btnFechar: TButton
              Left = 3
              Top = 3
              Width = 82
              Height = 75
              Align = alClient
              Caption = 'Fechar'
              ImageAlignment = iaTop
              ImageIndex = 3
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnFecharClick
            end
          end
        end
        object pnlPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1108
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label1: TLabel
            Left = 7
            Top = 4
            Width = 97
            Height = 31
            Caption = 'Pesquisar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisar: TEdit
            Left = 8
            Top = 38
            Width = 769
            Height = 29
            Cursor = crHandPoint
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object pnl_btnPesquisar: TPanel
            Left = 1020
            Top = 0
            Width = 88
            Height = 81
            Align = alRight
            BevelOuter = bvNone
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 1
            object btnPesquisar: TButton
              Left = 0
              Top = 3
              Width = 85
              Height = 75
              Align = alClient
              Caption = 'Pesquisar'
              ImageAlignment = iaTop
              ImageIndex = 6
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnPesquisarClick
            end
          end
        end
      end
      object tbs_Cadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = -1
        object Label2: TLabel
          Left = 24
          Top = 24
          Width = 65
          Height = 28
          Caption = 'C'#243'digo'
          FocusControl = cxDBSpinEdit1
        end
        object Label3: TLabel
          Left = 160
          Top = 24
          Width = 84
          Height = 28
          Caption = 'Descri'#231#227'o'
          FocusControl = edt_Descricao
        end
        object Label4: TLabel
          Left = 24
          Top = 102
          Width = 49
          Height = 28
          Caption = 'Pre'#231'o'
        end
        object Label5: TLabel
          Left = 160
          Top = 104
          Width = 70
          Height = 28
          Caption = 'Estoque'
        end
        object Label6: TLabel
          Left = 24
          Top = 192
          Width = 84
          Height = 28
          Caption = 'CST ICMS'
        end
        object Label7: TLabel
          Left = 24
          Top = 268
          Width = 65
          Height = 28
          Caption = 'CST PIS'
        end
        object Label8: TLabel
          Left = 449
          Top = 268
          Width = 105
          Height = 28
          Caption = 'CST COFINS'
        end
        object Label9: TLabel
          Left = 445
          Top = 192
          Width = 59
          Height = 28
          Caption = 'CST IPI'
        end
        object Label10: TLabel
          Left = 24
          Top = 372
          Width = 90
          Height = 28
          Caption = 'Aliq. ICMS'
        end
        object Label11: TLabel
          Left = 197
          Top = 372
          Width = 71
          Height = 28
          Caption = 'Aliq. PIS'
        end
        object Label12: TLabel
          Left = 393
          Top = 372
          Width = 111
          Height = 28
          Caption = 'Aliq. COFINS'
        end
        object Label13: TLabel
          Left = 559
          Top = 372
          Width = 65
          Height = 28
          Caption = 'Aliq. IPI'
        end
        object Label14: TLabel
          Left = 720
          Top = 372
          Width = 83
          Height = 28
          Caption = 'Desconto'
        end
        object Label15: TLabel
          Left = 343
          Top = 102
          Width = 54
          Height = 28
          Caption = 'GETIN'
        end
        object Label16: TLabel
          Left = 528
          Top = 104
          Width = 45
          Height = 28
          Caption = 'NCM'
        end
        object Label17: TLabel
          Left = 712
          Top = 102
          Width = 48
          Height = 28
          Caption = 'CFOP'
        end
        object pnlBotoesCad: TPanel
          Left = 0
          Top = 487
          Width = 1108
          Height = 81
          Align = alBottom
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object Panel2: TPanel
            Left = 930
            Top = 0
            Width = 97
            Height = 81
            Align = alRight
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 0
            object btnSalvar: TButton
              Left = 6
              Top = 3
              Width = 88
              Height = 75
              Align = alRight
              Caption = 'Salvar'
              ImageAlignment = iaTop
              ImageIndex = 7
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnSalvarClick
            end
          end
          object Panel8: TPanel
            Left = 1027
            Top = 0
            Width = 81
            Height = 81
            Align = alRight
            BevelOuter = bvNone
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 1
            object btnCancelar: TButton
              Left = 3
              Top = 3
              Width = 75
              Height = 75
              Align = alClient
              Caption = 'Cancelar'
              ImageAlignment = iaTop
              ImageIndex = 1
              ImageMargins.Top = 10
              Images = ImageList1
              TabOrder = 0
              OnClick = btnCancelarClick
            end
          end
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 24
          Top = 56
          DataBinding.DataField = 'codigo'
          DataBinding.DataSource = ds_Produtos
          TabOrder = 12
          Width = 121
        end
        object edt_Descricao: TcxDBTextEdit
          Left = 160
          Top = 56
          Cursor = crHandPoint
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = ds_Produtos
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = edt_DescricaoKeyDown
          Width = 681
        end
        object edt_Preco: TcxDBCurrencyEdit
          Left = 24
          Top = 138
          DataBinding.DataField = 'preco'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 1
          Width = 121
        end
        object edt_AliqiCMS: TcxDBCurrencyEdit
          Left = 24
          Top = 406
          DataBinding.DataField = 'aliq_icms'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 6
          Width = 121
        end
        object edt_AliPIS: TcxDBCurrencyEdit
          Left = 201
          Top = 406
          DataBinding.DataField = 'aliq_pis'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 7
          Width = 121
        end
        object edt_AliqCOFINS: TcxDBCurrencyEdit
          Left = 383
          Top = 406
          DataBinding.DataField = 'aliq_cofins'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 8
          Width = 121
        end
        object edt_AliqIPI: TcxDBCurrencyEdit
          Left = 553
          Top = 406
          DataBinding.DataField = 'aliq_ipi'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 9
          Width = 121
        end
        object edt_Desconto: TcxDBCurrencyEdit
          Left = 720
          Top = 406
          DataBinding.DataField = 'desconto'
          DataBinding.DataSource = ds_Produtos
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 10
          Width = 121
        end
        object cbx_CST_ICMS: TComboBox
          Left = 24
          Top = 226
          Width = 409
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          Text = '00 - Tributada integralmente'
          Items.Strings = (
            '00 - Tributada integralmente'
            
              '10 - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ri' +
              'a'
            '20 - Com redu'#231#227'o da BC'
            
              '30 - Isenta / n'#227'o tributada e com cobran'#231'a do ICMS por substitui' +
              #231#227'o tribut'#225'ria'
            '40 - Isenta'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o'
            '51 - Com diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            
              '70 - Com redu'#231#227'o da BC e cobran'#231'a do ICMS por substitui'#231#227'o tribu' +
              't'#225'ria'
            '90 - Outras'
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros')
        end
        object cbx_CST_PIS: TComboBox
          Left = 24
          Top = 302
          Width = 409
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          Items.Strings = (
            '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
              'roduto'
            '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
            '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Opera'#231#245'es de Sa'#237'da')
        end
        object cbx_CST_COFINS: TComboBox
          Left = 439
          Top = 302
          Width = 402
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 5
          Text = '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          Items.Strings = (
            '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
              'roduto'
            '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
            '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Opera'#231#245'es de Sa'#237'da')
        end
        object cbx_CST_IPI: TComboBox
          Left = 439
          Top = 226
          Width = 402
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = '50 - Sa'#237'da Tributada'
          Items.Strings = (
            '50 - Sa'#237'da Tributada'
            '51 - Sa'#237'da Tribut'#225'vel com Al'#237'quota Zero'
            '52 - Sa'#237'da Isenta'
            '53 - Sa'#237'da N'#227'o Tributada'
            '54 - Sa'#237'da Imune'
            '55 - Sa'#237'da com Suspens'#227'o'
            '99 - Outras Sa'#237'das')
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 160
          Top = 138
          TabOrder = 13
          Width = 165
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 343
          Top = 138
          TabOrder = 14
          Width = 165
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 528
          Top = 138
          TabOrder = 15
          Width = 165
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 712
          Top = 138
          TabOrder = 16
          Width = 129
        end
      end
    end
  end
  object ds_Cidades: TDataSource
    DataSet = dm_ConexaoPG.qry_Cidades
    Left = 908
    Top = 305
  end
  object ds_Estados: TDataSource
    DataSet = dm_ConexaoPG.qry_Estados
    Left = 908
    Top = 249
  end
  object ds_Produtos: TDataSource
    DataSet = dm_ConexaoPG.qry_Produtos
    Left = 324
    Top = 47
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 905
    Top = 194
    Bitmap = {
      494C01010C001800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001040404221515154D34343478656463A5A09F9DD0E7E5E3FAF1EFEDFFF1EF
      EDFFF1EFEDFFF1EFEDFFF1EFEDFFEBE9E7FCC2C1BFE59C9A99CD565454980F0F
      0E40000000010000000000000000000000000E110EC9090A08FA090A08FA0407
      05F7020604F6020604F6020604F6040806F2172E228314281EAC020604F60508
      06F80A0B09FC0C0C0AFE121712B400000000000000000A0C0A9F090A08FA090A
      08FA050706F8020604F6020604F6020604F6020604F5152C2094152C21970206
      04F6040705F7090A09FB0C0C0AFE181C18DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303034C161D20CB222526F82225
      26F8161D20CB0303034B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E282D6C113036760000000600000000000000000000
      00000000000000000000000000000000000000000000000000090D0D0D3C3131
      30746E6E6DADD0CECCEDF1EFEDFFF1EFEDFFF1EFEDFFF1EFEDFFF1EFEDFFF1EF
      EDFF7C7B7AB7010101170000000000000000090A09FBFDEBDDFF9D9289FF2F52
      3FFF68D19CFF68D19CFF68D19CFF68D19CFF68D19CFF68D19CFF68D19CFF1F2E
      25FFC8B7AAFFE2C2AAFF1B1E19F80000000000000000121512EEE2D2C6FFC8BA
      AFFF1F2E25FF68D19CFF68D19CFF68D19CFF68D19CFF68D19CFF68D19CFF68D1
      9CFF2F503EFF9E9389FFFDD9BEFF0C0C0AFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0D0E8B212E33F71E8BB6FF1E9CCFFF1E9C
      CFFF1F8CB8FF213037F40A0C0E8A000000000000000000000000000000000000
      000000000000000000000000001C000000780B0806D0080604EF010000FD0604
      03F30B0806D10000007F0000001D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E8190C051E3FFFF3BA7BCDB08191C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000310101043959493C9F1EFEDFFF1EFEDFFF1EFEDFFF1EF
      EDFFF1EFEDFF9A9998CC0000000800000000080908FCA79C92FF141915FF58B1
      84FF68D19CFF68D19CFF61C492FF1B3829FF66CD99FF68D19CFF68D19CFF4A94
      6EFF1E201CFFA48C7AFF1B1E19F80000000000000000121512EEA3978EFF1D21
      1DFF4A966FFF68D19CFF68D19CFF66CD99FF1C382AFF61C492FF68D19CFF68D1
      9CFF58B084FF131814FFA8907DFF0B0A09FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303034C203138F41DB4F0FF206E9BFF223F54FF223F
      54FF1F7AAEFF1DB3EFFF213037F40303034B0000000000000000000000000000
      0000000000070302018F080604F5564131F7A87D5FFFCF9B75FFE2AA81FFD39F
      77FFAA8060FF574232F7080604F5030201720000000400000065000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B4DD7F1F851E3FFFF51E3FFFF51E3FFFF2D7C8CBD0207
      072D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002121205FF1EFEDFFF1EFEDFFF1EFEDFFF1EF
      EDFFF1EFEDFFF1EFEDFF2C2C2B6E00000000000100FE2A4637FF56AE82FF68D1
      9CFF68D19CFF5BB889FF0B1711FF183124FF162C21FF67CF9AFF68D19CFF68D1
      9CFF46976EFF233528FF101611F20000000000000000090E0BE723372CFF4D9B
      73FF68D19CFF68D19CFF65CB98FF0F2017FF183024FF0D1B14FF61C392FF68D1
      9CFF68D19CFF55AC80FF274230FF000101FF0A0B0B880F100FA00F100FA00F10
      0FA00F100FA00F100FA00F100FA00F100FA00F100FA00F100FA00F100FA00F10
      0FA00F100FA00A0B0B8700000000000000000000000000000000000000000000
      00000000000000000000171F21CC1F8EBAFF1DAAF9FF20679FFF206193FF2061
      93FF223848FF1F79ADFF1F8CB8FF161D20CB0000000000000000000000000000
      0015080604D1413125F6D09D76FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFD39F77FFA0785AE60F0C0994000000FF000101780000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000714174D51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF4FDB
      F7FB1D515C990001011500000000000000000000000000000000000000000000
      00000000000000000000000000000000000BB0AEADDAF1EFEDFFF1EFEDFFF1EF
      EDFFF1EFEDFFF1EFEDFF8F8F8DC500000000030604F768D19CFF68D19CFF68D1
      9CFF68D19CFF66CD99FF5BB889FF47906BFF08100CFF64C996FF68D19CFF68D1
      9CFF5FCD96FF33AC6FFF07120DEE0000000000000000050B08E45DBB8BFF68D1
      9CFF68D19CFF68D19CFF68D19CFF5AB587FF4FA076FF0D1A13FF56AE82FF68D1
      9CFF68D19CFF67D09BFF39C07CFF030906FB242424FF416A4CFF416A4CFF416A
      4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A
      4CFF416A4CFF242424FF000000000000000000000000070707710A0A0A880A0A
      0A880707077100000000222526F81DB6F4FF1D9AF4FF1F6DAAFF215986FF2159
      86FF223848FF1F70ABFF1CB5F2FF222527F80000000000000000000000070806
      04D1654C39FAE5AC82FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FF554437FF121718FF66A3B7FF0A1113F60305
      06A5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A4B549351E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF47C6DEEE0F2A306F000000040000000000000000000000000000
      0000000000000000000000000000000000000101011657565599B5B3B1DDF1EF
      EDFFF1EFEDFFF1EFEDFFC5C4C2E700000000030604F768D19CFF68D19CFF68D1
      9CFF68D19CFF68D19CFF162D21FF1D3C2CFF51A479FF68D19CFF68D19CFF68D1
      9CFF5FCD96FF33AC6FFF07120DEE0000000000000000050B08E45DBB8BFF68D1
      9CFF68D19CFF68D19CFF68D19CFF274F3BFF162C21FF48916BFF68D19CFF68D1
      9CFF68D19CFF67D09BFF39C07CFF030906FB242424FF549966FF549966FF5499
      66FF4A8259FF354D3CF9344D3BF9344D3BF9354D3CF94B8359FF4D915FFF4082
      52FF529664FF242424FF000000000000000000000000242424FF070707770707
      07770606066800000000222526F81DB6F4FF1F6FAAFF223848FF206193FF2061
      93FF1F6DA9FF1D9AF4FF1CB6F3FF222527F80000000000000000030202914231
      25F6E5AC82FFE6AD83FFE6AD83FFE1AA80FF8F6A50FFE2AA81FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FF554437FF131819FF66A4B8FF0B1214F70305
      06A6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003BA6BADA51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF39A1B5D70612144900000000000000000000
      000000000000000000000000000000000000000000000000000009090832F1EF
      EDFFF1EFEDFFF1EFEDFF91908FC600000000010201FC397053FF62C593FF68D1
      9CFF68D19CFF67CF9AFF0B1711FF2E5C45FF1E3D2DFF68D19CFF68D19CFF68D1
      9CFF54B685FF22563AFF0B140FF00000000000000000080C09E5315D46FF5CB9
      8AFF68D19CFF68D19CFF68D19CFF193225FF2A543FFF193225FF63C694FF68D1
      9CFF68D19CFF61C492FF256644FF010302FE242424FF549966FF549966FF5295
      64FF2A332CF6627560FF728B6FFF728B6FFF627560FF2A342DF64E905FFF4689
      58FF539865FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000181F21CD1F8CB8FF1F79ACFF223848FF215986FF2159
      86FF206398FF1DAAF9FF1E8BB6FF161D20CB000000000000001D080604F6D19D
      76FFE6AD83FFE6AD83FFE1AA80FF483629FF0E0B08FF594332FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FF795C46FF000000FF2F251CBE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000103042051E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF286F7DB3010404230000
      0000000000000000000000000000000000000000000000000000000000003A3A
      397ED3D2D0EFA4A4A2D30808083100000000060706FD6E6961FF17211BFF61C2
      91FF68D19CFF68D19CFF58B084FF0A1510FF59B386FF68D19CFF68D19CFF56AD
      81FF141915FF746357FF1B1E19F80000000000000000121512EE726C64FF1319
      15FF57AF82FF68D19CFF68D19CFF60C190FF0B1610FF51A379FF68D19CFF68D1
      9CFF60C190FF16201AFF736357FF080807FE242424FF549966FF4F8D5FFF2D3C
      31F64B5A49F6A6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FF4A5949F62E3D31F64F8D
      5FFF549966FF242424FF000000000000000000000000242424FF000000000000
      000000000000000000000303034D212E34F71DB3EEFF1F78ACFF22435BFF2243
      5BFF2073A2FF1DB4F0FF212E33F70303034C000000000000007A584132F8E6AD
      83FFE6AD83FFE1AA80FF483629FF423125FFD7A179FF32251CFF745742FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE2AA81FF8B674EFFA47B5CF00000
      0051000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D25296751E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF4EDAF5FA1A49
      52910000000E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090A09FBFDEBDDFF7D776FFF345F
      48FF68D19CFF68D19CFF68D19CFF64CA96FF68D19CFF68D19CFF68D19CFF253C
      2FFFAE9F94FFE2C2AAFF1B1E19F80000000000000000121512EEE2D2C6FFACA0
      96FF263D30FF68D19CFF68D19CFF68D19CFF64CA96FF68D19CFF68D19CFF68D1
      9CFF345E48FF7E786FFFFDD9BEFF0C0C0AFE242424FF549966FF262927FC6377
      60F9A5CDA0FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA5CDA0FF627660F92629
      27FC549966FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000000000000B0D0E8E212E34F71F8CB8FF1E9DD0FF1E9D
      D0FF1F8EBAFF203138F40A0D0E8B00000000000000000B0806D1A97E5FFFE6AD
      83FFE6AD83FF604836FF483629FFE1AA80FFE6AD83FFD09D76FF1E1610FF8F6B
      51FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFA97E5FFF0B08
      06D0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000256875AD51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF42B9CFE60D24286600000003000000000000000000000000000000000000
      0000000000000000000000000000000000000B0D0CEE242723F91D1F1CFB0407
      05FB0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0102
      02FE262723FC292621FE191D18DA00000000000000000E100ECD222420FA2426
      22FA010202FE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A13EE0D1A
      13EE040705FB1E1F1CFB2D2A25FE141613F5242424FF549966FF242424FFA6CE
      A1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000303034D181F21CD232526F92325
      26F9171F21CC0303034C000000000000000000000000080604EFCF9B75FFE6AD
      83FFE6AD83FFCF9B75FFE1AA80FFE6AD83FFE6AD83FFE6AD83FFC3936EFF150F
      0BFFA77D5EFFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFD29E77FF0705
      03F2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000347C6DEEE51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF3491A3CC040C0E3C0000000000000000000000000000
      0000000000000000000000000000000000000000000B00000022000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      0022000000220000002100000002000000000000000000000005000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      002200000022000000220000002200000007242424FF549966FF242424FFA6CE
      A1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020100FCE1A980FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFB588
      66FF140F0BFFBA8C69FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE1A980FF0101
      00FC000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000040B
      0D3A51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF51E1FDFE112F357500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003A0000009100000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000910000003900000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FFA6CE
      A1FF819E7DFF3A4339F4282A28FB282A28FB3A4339F4819E7DFFA6CEA1FF2424
      24FF549966FF1B2A1FAD000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000303034C161B1FCB222426F82224
      26F8161B1FCB0303034B000000000000000000000000080604F1D09D76FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFA0775AFF18120DFFCA9872FFE6AD83FFE6AD83FFE6AD83FFCF9B75FF0604
      03F3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001439
      408051E3FFFF51E3FFFF50E2FFFF3DC0FFFF4BD9FFFF51E3FFFF51E3FFFF43CA
      FFFF46CFFFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF51E3FFFF3594A6CE0001011200000000000000001B1B
      28663F415F9C0304052700000000000000000000000000000000000000000000
      000000000000000000000000000000000004000000B20000008E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000008F000000B10000000400000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF5B6E
      5AF8292F29F9548156FF5D9160FF5D9160FF558257FF2B322BF75C6F5BF82424
      24FF549966FF1B2A1FAC000000000000000000000000242424FF000000000000
      00000000000000000000000000000A0C0E8B212B32F71F70AFFF1F7DC7FF1F7D
      C7FF1F71B1FF212C36F40A0C0E8A00000000000000000B0806D2A97E5FFFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FF87654CFF251B15FFD7A179FFE6AD83FFE6AD83FFA87D5FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF010100FC060505C60000001E000000000000000000000000000000006456
      4FC56CC9D8FF51E3FFFF46CFFFFF3ABAFFFF50E2FFFF51E3FFFF4CDBFFFF36B5
      FFFF4CDBFFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF51E3FFFF3492A4CD0000011100000000000000000405072CA1B5
      FFFF84C6FFFF54577FB400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000009000000B6000000B40000
      001A000000000000000000000000000000000000000000000000000000000000
      00000000001A000000B5000000B5000000080000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF2B33
      2BF767A66BFF4C704EFF344335FF344335FF527D55FF67A56BFF2B322BF72424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      000000000000000000000303034C202C36F41E8FE6FF1F6E9BFF224656FF2246
      56FF1F7BAFFF1E8EE5FF212C36F40303034B000000000100007B584132F8E6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FF664C3AFF37291FFFDFA87EFFE6AD83FF5F4838FF6E6A
      65FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF191818E44C4A
      46FC928E87FF4C4A46FC060505C700000000000000000000000007050432B783
      6DFFB7836DFF969C96FD48AEEBFF4AD6FFFF51E3FFFF50E2FFFF3CBEFFFF44CB
      FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF51E3FFFF3695A8CF00010112000000000000000000000000010102189FAB
      F3F996BCFFFF3D3F5D9A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000690000
      00E50000009800000039000000070000000000000000000000070000003A0000
      0099000000E40000006800000001000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF5583
      58FF6CAF70FF4E7550FF4A6D4CFF4A6D4CFF303C31FF537D55FF558257FF2424
      24FF549966FF1B2A1FAD000000000000000000000000242424FF000000000000
      00000000000000000000171C21CC1F72B2FF1CABFAFF1F7EA5FF1F7599FF1F75
      99FF223F4AFF1F7BAEFF1F71B1FF161B1FCB000000000000001E090604F6D19D
      76FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE4AC82FF674D3AFFCC9973FFD09D76FF0F0D0BFFBCB6
      AEFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF010101FE9591
      8BFF99958EFF95918AFF010101FB000000000000000000000000261B1675B783
      6DFFB7836DFFB7836DFFB38370FE88B0B2FF56DEF8FF45CEFFFF39BBFFFF50E2
      FFFF51E3FFFF4FDFFFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3
      FFFF3698ABD10001011400000000000000000000000000000000000000000304
      052713141D570000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000F00000069000000BE000000EA000000E6000000E6000000EA000000BE0000
      00690000000F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF68A8
      6CFF6CAE70FF537D55FF466548FF466548FF303C31FF527D55FF68A76BFF2424
      24FF549966FF1C2A20B80A0A0A880A0A0A880A0A0A88242424FF0A0A0A880A0A
      0A880707077100000000222426F81D91EAFF1CB9FDFF1F87B1FF216C8BFF216C
      8BFF223F4AFF1F85B0FF1D90E8FF222427F80000000000000000030202934332
      26F6E5AC82FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE5AC82FF4B3A2DFF645F5AFFCCC6
      BDFF000000FF000000FF000000FF000000FF000000FFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF0000000000000000000000000201011B7150
      43C8B7836DFFB7836DFFB7836DFFB7836DFFA98775FB67A2C8FF4BD7FEFF51E3
      FFFF4DDDFFFF37B5FFFF4EDDFFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF39A1
      B5D7000102180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007C0000007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF68A8
      6CFF527D55FF313C31FF4A6D4CFF4A6D4CFF527C54FF6CAE70FF68A76CFF2424
      24FF549966FF242424FF070707770707077707070777242424FF070707770707
      07770606066800000000222426F81D91EAFF1F84AFFF223F4AFF1F7599FF1F75
      99FF1F86B0FF1CB9FDFF1D91E9FF222427F80000000000000000000000080806
      04D3654C39FAE5AC82FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFE6AD83FFE5AC82FF6B513EFF2E2A27FFC9C3BAFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF000000000000000000000000000000000000
      000118110E5D956A58E6B7836DFFB7836DFFB7836DFFB7836DFF9E9186FB68CD
      DEFF3DC1FFFF41C8FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF3AA2B7D80002
      021900000000000000020A0B104107070A350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000780000007800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF5582
      57FF527C54FF303C31FF466548FF466548FF4C704EFF6CAF70FF548156FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000181C21CD1F71B1FF1F79ADFF223F4AFF216C8BFF216C
      8BFF1F799EFF1CABFAFF1F70AFFF161B1FCB0000000000000000000000000000
      0016070504D2423126F5D19D76FFE6AD83FFE6AD83FFE6AD83FFE6AD83FFE6AD
      83FFE6AD83FFE6AD83FFD19D76FF4B392DFF342F2BFFBFBAB1FFCCC6BDFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF000000000000000000000000000000000000
      0000000000000504032EB7836DFFB7836DFFB7836DFFB7836DFFB7836DFFB683
      6EFF8A96A1FF5BD5EFFF51E3FFFF51E3FFFF51E3FFFF3BA4B8D9000202190000
      00000000000051547BB1AAB0FFFFAAB0FFFF34364F8E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000640000006400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF292F
      2AF966A56AFF527C54FF374938FF374938FF4F7651FF67A66BFF292F29F92424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      000000000000000000000303034D212B33F71E8EE4FF1F7AADFF224C5EFF224C
      5EFF1F73A3FF1E8FE6FF212B32F70303034C0000000000000000000000000000
      00000000000803020293080604F6584132F8AA8060FFCF9B75FFE1A980FFCF9B
      75FFA97E5FFF5C4535FC13100DFF635E59FFC6C1B8FFCCC6BDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF000000000000000000000000000000000000
      000000000000140E0C55B7836DFFB7836DFFB7836DFFB7836DFFB7836DFFB783
      6DFFB7836DFFB0826FFC83B4B7FF54E0FAFF3BA6BADA0002021A000000000000
      00000202031FA8ADFBFD89C3FFFF92BEFFFF9CA1E9F400000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FF5A6C
      58F8292F2AF9558257FF5D9160FF5D9160FF558358FF2B332BF75B6E5AF82424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000000000000B0C0E8E212B33F71F71B1FF1F7DC7FF1F7D
      C7FF1F72B2FF202C36F40A0C0E8B000000000000000000000000000000000305
      06A6030506A6000000000000001E0100007B0B0806D2080604F0000000FD0604
      03F30B0806D1000000FFB8B3AAFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF000000000000000000000000000000000000
      0000000000088A6252DDB7836DFFB7836DFFB7836DFFB7836DFFA77764F4B783
      6DFFB7836DFFB7836DFFB7836DFF7E6559D90002021B00000000000000000000
      0000000000088B90D1E7A2B4FFFFA5B2FFFF6D71A3CC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00230000003D0000000400000000000000350000003400000000000000050000
      003D000000230000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FFA6CE
      A1FF819D7CFF384238F3282A28FB282A28FB384338F3819E7DFFA6CEA1FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000303034D181C21CD232426F92324
      26F9171C21CC0303034C000000000000000000000000000000040001017A0B12
      14F60A1113F60001017900000004000000000000000000000000000000000000
      000000000000000000FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF9995
      8EFF99958EFF99958EFF000000FF000000000000000000000000000000000000
      0000291D1879B7836DFFB7836DFFB7836DFFB7836DFF1D141166000000031E15
      12689C6F5CEBB7836DFFA97865F5070504320000000000000000000000000000
      0000000000000B0B1142585D86B94D5075AD0606093000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050205
      06F4101C23F10103049A000000690A1116F2091115F3000000680204059B0A21
      2DFC02080BF90000000500000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FFA6CE
      A1FFA6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FFB2D5AEFFBADBB6FFA6CEA2FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000066000000FF66A4
      B8FF66A3B7FF000000FF00000066000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFCCC6BDFF000000FF4645
      41FF464541FF464541FF000000FF000000000000000000000000000000000101
      011AA67663F3B7836DFFB7836DFFB7836DFF715043C800000001000000000000
      000000000011251A16730906053A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF463B4DFFF1C3440F3152630F15AA3CBFF5AA3CAFF15262FF11D3440F32A9C
      DAFF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF242424FFA6CE
      A1FFA6CEA1FFA6CEA1FFBFDFBDFFB1D4ACFFBDDCB9FFC5E1C3FFA9D1A5FF2424
      24FF549966FF242424FF000000000000000000000000242424FF000000000000
      0000000000000000000000000000000000000303034C161D20CB222526F82225
      26F8161D20CB0303034B000000000000000000000000000000040001017B0B12
      14F60B1214F60001017A00000004000000000000000000000000000000000000
      000000000000000000FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      0077000000770000007700000068000000000000000000000000000000004733
      2BA0B7836DFFB7836DFFB7836DFFB5816DFE0A07063C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030304223B3D
      5997A0A4EFF7787DB5D72021306F000000040000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF272A28FC6579
      63F9A5CDA0FFA6CEA1FFB1D4ACFFAAD0A4FFA8CFA3FFAAD0A6FF657862F9272A
      28FC549966FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000000000000A0D0E8B212E33F71E8BB6FF1E9CCFFF1E9C
      CFFF1F8CB8FF213037F40A0C0E8A000000000000000000000000000000000305
      06A7030506A60000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF716D68FF5E5B57FF5E5B57FF5E5B57FF716D
      68FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      000000000000000000000000000000000000000000000000000007050433B481
      6BFDB7836DFFB7836DFFB7836DFF49342CA20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6EA0CAAAB0
      FFFFAAB0FFFFAAB0FFFFAAB0FFFF1A1A27640000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF4F8C5FFF303C
      31F64E5D4CF6A6CEA1FFA6CEA1FFA6CEA1FFA6CEA1FF4D5B4BF6303D32F64F8C
      5FFF549966FF242424FF000000000000000000000000242424FF000000000000
      000000000000000000000303034C203138F41DB4F0FF206E9BFF223F54FF223F
      54FF1F7AAEFF1DB3EFFF213037F40303034B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF000000FF514E4BFF514E4BFF514E4BFF0000
      00FFCCC6BDFF000000FF000000FF000000FF000000FFCCC6BDFF000000FF0000
      00000000000000000000000000000000000000000000000000016B4C3FC3B783
      6DFFB7836DFFB7836DFFA97865F50201011E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007080B37A8AEFDFEA2B5
      FFFF60DBFFFF79CCFFFFAAB0FFFF6F73A6CE0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF67BBE8FF2D5165FF2A4C5EFF2A4C5EFF2D5165FF67BBE8FF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF549966FF5295
      63FF2C342EF6627560FF728B6FFF728B6FFF627560FF2D342EF6529564FF5499
      66FF549966FF242424FF000000000000000000000000242424FF000000000000
      00000000000000000000171F21CC1F8EBAFF1DAAF9FF20679FFF206193FF2061
      93FF223848FF1F79ADFF1F8CB8FF161D20CB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF000000FF99958EFF99958EFF99958EFF0000
      00FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      0000000000000000000000000000000000000000000017100E5CB7836DFFB783
      6DFFB7836DFFB7836DFF2A1E197B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001010184FAAB0FFFF9DB8
      FFFF53E2FFFF68D5FFFFAAB0FFFF8B90D1E70000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6ABFEDFF4985A5FF46809FFF46809FFF4985A5FF6ABFEDFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF549966FF549966FF5499
      66FF4A8259FF364E3CF9364E3CF9364E3CF9364E3CF94A8259FF549966FF5499
      66FF549966FF242424FF000000000000000000000000242424FF0A0A0A880A0A
      0A880707077100000000222526F81DB6F4FF1D9AF4FF1F6DAAFF215986FF2159
      86FF223848FF1F70ABFF1CB5F2FF222527F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF000000FF99958EFF99958EFF99958EFF0000
      00FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      0000000000000000000000000000000000000000000A8E6555E1B7836DFFB783
      6DFFB7836DFF8F6655E20000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002868CCAE3AAB0
      FFFFA0B6FFFFA6B2FFFFAAB0FFFF2A2B3F7F0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000242424FF416A4CFF416A4CFF416A
      4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A4CFF416A
      4CFF416A4CFF242424FF00000000000000000000000006060669070707770707
      07770606066800000000222526F81DB6F4FF1F6FAAFF223848FF206193FF2061
      93FF1F6DA9FF1D9AF4FF1CB6F3FF222527F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF000000FF464541FF464541FF464541FF0000
      00FFCCC6BDFF000000FF000000FF000000FF000000FFCCC6BDFF000000FF0000
      0000000000000000000000000000000000002F221C82A67663F3936958E5B783
      6DFFB7836DFF130E0B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F10174E7B7F
      B8D9AAB0FFFFA2A8F3F953567DB3010101140000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF67BBE7FF0C161CFF060C0FFF060C0FFF0C161CFF67BBE7FF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0B0B880F100FA00F100FA00F10
      0FA00F100FA00F100FA00F100FA00F100FA00F100FA00F100FA00F100FA00F10
      0FA00F100FA00A0B0B8800000000000000000000000000000000000000000000
      00000000000000000000181F21CD1F8CB8FF1F79ACFF223848FF215986FF2159
      86FF206398FF1DAAF9FF1E8BB6FF161D20CB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFF77736EFF6C6964FF6C6964FF6C6964FF7874
      6FFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      000000000000000000000000000000000000916756E30705043200000009956A
      58E666493DBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010B0B11420303042300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303034D212E34F71DB3EEFF1F78ACFF22435BFF2243
      5BFF2073A2FF1DB4F0FF212E33F70303034C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6
      BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFFCCC6BDFF000000FF0000
      000000000000000000000000000000000000825C4ED71A13106206040431A172
      60EF0604032F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A050A
      0DF46AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF6AC0EEFF2DA6
      E9FF040D12FA0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0D0E8E212E34F71F8CB8FF1E9DD0FF1E9D
      D0FF1F8EBAFF203138F40A0D0E8B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030302F2000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF030302F10000
      0000000000000000000000000000000000000D0907448A6253DE986D5BE91B13
      1063000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020408
      09D5020506F6020506F6020506F6020506F6020506F6020506F6020507F60207
      0AFA060D13DE0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303034D181F21CD232526F92325
      26F9171F21CC0303034C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000C1B11
      035656340B98965C14C8CA7D1BE9E78E1FF9E78E1FF9CA7D1BE9965C14C85534
      0B971A1003550000000B00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010D0C0570302D13D61110
      0783000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000C1416
      05573D430F986B751BC891A024E9A6B629F9A6B629F991A024E96B751BC83C42
      0F97131505560000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000054000000660000
      0066000000660000006600000066000000660000006600000066000000660000
      0066000000660000006600000058000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000402002259360C9ADF8A1EF4F396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFDD881DF357350B99030200210000000000000000000000000000
      0000000000000000000000000000000000000D0C056F44401AFF44401AFF4440
      1AFF1A180A9E0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010100183B410F969FAF28F4AEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFF9FAF28F43E440F99030300220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016000000FF0E0E0EF81212
      12F8121212F8121212F8121212F8121212F8121212F8121212F8121212F81212
      12F8121212F7101010F8000000FF000000210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000744290887E78E1FF9F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFE78E1FF94128088500000006000000000000
      000000000000000000000000000000000000302D13D644401AFF44401AFF4440
      1AFF44401AFF1A180A9E00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000072C300B819FAF28F4AEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFA6B629F92F340C8600000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000019000000FF8F908FFFAFB1
      B0FFAFB1B0FFAFB1B0FFAFB1B0FFAFB1B0FFAFB1B0FFB3B5B4FFBCBEBDFFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010000148A5412C0F39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF915913C5010100170000
      0000000000000000000000000000000000001110078344401AFF44401AFF4440
      1AFF44401AFF44401AFF1A180A9E000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010015646E18C1AEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFF69731AC6010100180000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000019000000FF8F908FFFAFB1
      B0FFAFB1B0FFAFB1B0FFAFB1B0FFAFB1B0FFBABCBBFFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000704012CBE7619E2F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFBC7419E10604
      012B00000000000000000000000000000000000000021A180A9E44401AFF4440
      1AFF44401AFF44401AFF44401AFF1A180A9E0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000506012E8A9722E3AEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFF889622E20505
      012D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000019000000FF8F908FFFAFB1
      B0FFAFB1B0FFAFB1B0FFB0B2B1FFBCBEBDFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0017BE7619E2F39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFBC74
      19E10101001700000000000000000000000000000000000000021A180A9E4440
      1AFF44401AFF44401AFF44401AFF44401AFF1A180A9E00000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0018889622E2AEBF2BFF9FA53AFF949048FF938F48FF938F48FFBBB697FFBBB6
      97FFBBB697FFBBB697FFBBB697FFBBB697FFBBB697FFBBB697FFBBB697FFBBB6
      97FFBBB697FFBBB697FF938F48FF938F48FF949048FF9FA53AFFAEBF2BFF8C9A
      23E50102001B0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000019000000FF8F908FFFAFB1
      B0FFAFB1B0FFAFB1B0FFBCBEBDFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000058B55
      12C1F39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FF915913C50000000700000000000000000000000000000000000000021A18
      0A9E44401AFF44401AFF44401AFF44401AFF44401AFF1A180A9E000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000086A74
      1AC7AEBF2BFFAAB72FFF7C6661FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFF7B6561FF7B6561FF7B6561FF7C6661FFAAB830FFAEBF
      2BFF69731AC60000000700000000000000000000000000000000000000000000
      00000000001000000011000000110000001100000028000000FF8F908FFFAFB1
      B0FFAFB1B0FFB7B9B8FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000330000001100000011000000110000
      0010000000000000000000000000000000000000000000000000452A0988F396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF4A847FFF4A847FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FF4128088500000000000000000000000000000000000000000000
      00021A180A9E44401AFF44401AFF44401AFF44401AFF44401AFF1A180A9E0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000032370C8AAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDAD2
      D4FFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9
      CAFFDAD2D4FFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFF30350C8700000000000000000000000000000000000000420303
      01E9000000FF000000FF000000FF000000FF000000FF000000FF8F908FFFAFB1
      B0FFB1B2B1FFC1C3C2FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF000000FF000000FF000000FF000000FF0000
      00FF030301E90000004000000000000000000000000004020024E9901FFAF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF4A848FFFAF9F8FFFAF9F8FFF4A847FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFE58E1FF803020021000000000000000000000000000000000000
      0000000000021A180A9E44401AFF44401AFF44401AFF44401AFF44401AFF201F
      159A000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003040025A7B729FAAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFA6B629F903030022000000000000000000000000030301E84539
      24FE977B4EFF997D4FFF997D4FFF997D4FFF8A7147FF000000FF8F908FFFAFB1
      B0FFB9BBBAFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FF836B44FF997D4FFF997D4FFF997D4FFF977B
      4EFF453923FE030301E60000000000000000000000005A370C9BF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FF57350B99000000000000000000000000000000000000
      000000000000000000021A180A9E44401AFF44401AFF44401AFF565334FFA4A3
      AAF53C3B3F920000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004047109CAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDAD2
      D4FFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9
      CAFFDAD2D4FFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFF3F45109A00000000000000000000000D000000FF9378
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFAC8E59FF000000FF8F908FFFAFB1
      B0FFC0C2C1FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FFA48755FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF93784CFF000000FF0000000C000000000000000CDD881DF3F39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFDF8A1EF40000000C0000000000000000000000000000
      00000000000000000000000000021A180A9E44401AFF565334FFAEADB2FFB9B8
      C2FFB6B5BEFD0202021F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C9FAF28F4AEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFF9FAF28F40000000C000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFAC8E59FF000000FF8F908FFFB2B4
      B3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FFA48755FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E000000001C110358F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF1A1003550000000000000000000000000000
      000000000000000000000000000000000002201F159AA4A3AAF5B9B8C2FFB9B8
      C2FFB9B8C2FF0D0D0E4600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014160558AEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDAD2
      D4FFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9
      CAFFDAD2D4FFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF13150455000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFAC8E59FF000000FF8F908FFFB5B7
      B6FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFA7A8A7FF000000FFA48755FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E0000000059360C9AF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF56340B980000000000000000000000000000
      000000000000000000000000000000000000000000013C3B3F92B6B5BEFDB9B8
      C2FFBDBBC5FD1312134900000000000000000000000000000000000000030202
      072E090A2362171854971A1C62A30C0D2E7003030D3C0000000B000000000000
      0000000000000000000000000000000000003F45109AAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF3D430F98000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FF826A43FF4F4129FF000000FF424342FF5555
      55FF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A
      5AFF5A5A5AFF4D4D4DFF000000FF4B3E27FF7D6641FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000985D14CAF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF945A14C70000000000000000000000000000
      00000000000000000000000000000000000000000000000000000202021F0D0D
      0E4613121349CFCCD1F01212124800000000000000000A0B26663A3ED5F04146
      F1FF4146F1FF4146F1FF4146F1FF4146F1FF4146F1FF3F44EBFC161752950000
      000C000000000000000000000000000000006D771BCAAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDAD2
      D4FFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9CAFFD4C9
      CAFFDAD2D4FFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF6A741AC7000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FF695636FF312819FF120F0AFF0F0D09FF0F0D
      09FF0F0D09FF0F0D09FF0F0D09FF0F0D09FF0F0D09FF0F0D09FF0F0D09FF0F0D
      09FF0F0D09FF0F0D09FF110F0AFF302819FF625033FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000CE7F1BEBF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF4A847FFF5B768FFF5B768FFF5B7
      68FFF5B768FFF5B768FFF7CD99FFFAFAFAFFFAFAFAFFF7CD99FFF5B768FFF5B7
      68FFF5B768FFF5B768FFF5B768FFF4A847FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFCA7D1BE90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121248CFCCD1F01818205E232582BB4146F1FF4146F1FF4E53
      F1FF7174F0FF9596EFFF9E9EEEFF7A7DEFFF575BF0FF4146F1FF4146F1FF3236
      B8DF0404104300000000000000000000000093A225EBAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFCAC2C3FFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8
      DBFFDDD8DBFFCAC1C3FF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF91A024E9000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000E78E1FF9F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF4A848FFFAF9F8FFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAF9F8FFF4A847FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFE58E1FF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001818205E4A4FEFFE4146F1FF484DF1FFA4A4EEFFE9E6
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFC2C1EDFF585CF0FF4146
      F1FF4146EFFE07081C580000000000000000A6B629F9AEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FF7D6763FF836C
      69FF836C69FF836C69FF836C69FF836C69FF836C69FF836C69FF836C69FF836C
      69FF836C69FF7D6763FF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFA4B529F8000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000E78E1FF9F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF4A848FFFAF9F8FFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAF9F8FFF4A847FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFE58E1FF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000232582BB4146F1FF6265F0FFD4D2EDFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFE3E1ECFF8384
      EFFF4146F1FF383CCEEC0000011700000000A6B629F9AEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFA4B529F8000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000CE7F1BEBF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF4A949FFF5B768FFF5B768FFF5B7
      68FFF5B768FFF5B768FFF7CD99FFFAFAFAFFFAFAFAFFF7CD99FFF5B768FFF5B7
      68FFF5B768FFF5B768FFF5B768FFF4A848FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFCA7D1BE90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0B26664146F1FF484DF1FFD4D2EDFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFE8E5
      ECFF6367F0FF4146F1FF1E206FAD0000000093A225EBAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF91A024E9000000000000000E000000FF9478
      4CFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF94784CFF000000FF0000000E00000000985D14CAF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF945A14C70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000033A3ED5F04146F1FFA4A4EEFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFCECDEDFF464AF1FF4146F1FF03030D3C6D771BCAAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B65
      61FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF6A741AC70000000000000003020100F7725E
      3BFFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D63FFBF9D
      63FF725D3BFF020100F700000003000000005A370C9BF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF57350B990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202072E4146F1FF4E53F1FFE9E6ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFF7C7EEFFF4146F1FF0E0F33764046109BAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFBAAFAFFFD6D1
      D3FFD6D1D3FFD6D1D3FFD6D1D3FFD6D1D3FFD6D1D3FFD6D1D3FFD6D1D3FFD6D1
      D3FFD6D1D3FFB9AEAFFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF3E440F9900000000000000000000007B0000
      00FE080704FA080704FE0A0805FF0C0906FF080704FF0A0906FF0B0A07FF0B0A
      07FF0B0A07FF0B0A07FF0B0A07FF0B0A07FF0B0A07FF0B0A07FF0C0A07FF0C0A
      07FF0C0A07FF0C0A07FF0B0906FF080704FF0C0906FF0A0805FF080704FE0807
      04FA000000FE0000007900000000000000001D120459F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FF1B1103560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000090A23624146F1FF7174F0FFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFF9F9FEEFF4146F1FF1D1F6BAA15170559AEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDCD7DAFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFBFB6B7FFB7ABAAFFB7AB
      AAFFD0C8CAFFDCD7DAFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFF141605570000000000000000000000000000
      003100000062020100D7312819FF725D3BFF040303FF464746FF686969FF6869
      69FF686969FF686969FF686969FF6C6D6DFF727372FF737574FF737574FF7375
      74FF737574FF737574FF4E4F4EFF040303FF725D3BFF322919FF010100D80000
      0062000000300000000000000000000000000000000EDF8A1EF5F39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFDF8A1EF40000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000171854974146F1FF9596EFFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFC0BFEDFF4146F1FF3236B8DF0000000EA0B128F5AEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFF826C68FF7B6561FF7B65
      61FFAA9C9BFFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFF9FAF28F40000000D0000000000000000000000000000
      000000000000030201BD53442BFFBF9D63FF070605FF767776FFAFB1B0FFAFB1
      B0FFAFB1B0FFB0B2B1FFBDBFBEFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF070605FFBF9D63FF54452BFF020201BE0000
      0000000000000000000000000000000000000000000055340B97F39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF5B768FFFAFAFAFFFAFAFAFFF5B768FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FF59360C9A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A1C62A34146F1FF9E9EEEFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFC8C7EDFF4146F1FF373BCCEB000000004148109DAEBF2BFFAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFF816B68FF7B6561FF7B65
      61FFAA9C9BFFDDD8DBFF7B6561FF7B6561FF7B6561FF7B6561FFA8B432FFAEBF
      2BFFAEBF2BFFAEBF2BFF3B410F96000000000000000000000000000000000000
      000000000000020201BC13100AFC2C2417F8030302FF767776FFAFB1B0FFAFB1
      B0FFB0B2B1FFBEC0BFFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF030302FF2C2417F813100AFC020201BD0000
      0000000000000000000000000000000000000000000002010019DF8A1EF4F396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF4A848FFFAF9F8FFFAF9F8FFF4A847FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFE78E1FF904020023000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0D2E704146F1FF7A7DEFFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFA8A8EEFF4146F1FF22247DB80000000003040126A8B92AFBAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFF816B68FF7B6561FF7B65
      61FFAA9C9BFFDDD8DBFF7B6561FF7B6561FF7B6561FF837259FFABBA2EFFAEBF
      2BFFAEBF2BFF9EAD27F301010018000000000000000000000000000000000000
      000000000000000000450000008800000088020202FC767776FFAFB1B0FFAFB1
      B0FFBCBEBDFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF020202FC0000008800000088000000450000
      00000000000000000000000000000000000000000000000000003E260882F396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF4A949FFF4A848FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FF4429088700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030D3C4146F1FF575BF0FFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7
      ECFFEAE7ECFF8788EFFF4146F1FF11134084000000000000000034390D8CAEBF
      2BFFAEBF2BFFA8B432FF7B6561FF7B6561FF7B6561FF7B6561FFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFF846F6CFF7B6561FF7B65
      61FFAD9F9FFFDDD8DBFF7B6561FF7B6561FF837259FFA9B630FFAEBF2BFFAEBF
      2BFFAEBF2BFF2C300B8100000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202F8767776FFAFB1B0FFB4B5
      B4FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF020202F80000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000008A062
      15CFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FF925914C60000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000B3F44EBFC4146F1FFC2C1EDFFEAE7ECFFEBE8EDFFF0EDF1FFEAE7
      ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEAE7ECFFEDEAEFFFEDEAEEFFEAE7
      ECFFE0DEECFF5256F0FF4146F1FF06061750000000000000000000000008747F
      1DD0AEBF2BFFAEBE2CFF8E854EFF82705AFF82705AFF82705AFFDDD8DBFFDDD8
      DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFDDD8DBFFD6D0D3FFD1C9CBFFD1C9
      CBFFDCD7DAFFDDD8DBFF82705AFF877855FFA9B630FFAEBF2BFFAEBF2BFFAEBF
      2BFF6F7A1BCC0000000900000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202F8767776FFAFB1B0FFBDBF
      BEFFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF020202F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000402
      0024CA7D1BE9F39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFBC74
      19E1010100170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000161752954146F1FF585CF0FFE3E1ECFFECE9EEFFFDFCFDFFF8F7
      F8FFEDEAEFFFEAE7ECFFEAE7ECFFECE9EDFFF4F2F5FFFEFDFEFFF0EEF2FFEAE7
      ECFF8284EFFF4146F1FF2D32A9D6000000070000000000000000000000000304
      002593A024EAAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFC4CB7CFFC4CB
      7CFFC4CB7CFFC4CB7CFFC4CB7CFFC4CB7CFFC4CB7CFFC4CB7CFFC4CB7CFFC4CB
      7CFFC4CB7CFFC4CB7CFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFF8A97
      22E3010100180000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202F8767776FFB0B2B1FFC1C3
      C2FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF020202F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008050130CA7D1BE9F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFBE7619E20704
      012C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C3236B8DF4146F1FF8384EFFFE8E5ECFFEBE8EDFFF7F6
      F8FFFEFEFEFFFEFDFEFFFDFCFDFFFFFFFFFFFAF9FAFFEDEBEFFFEAE7ECFFAFAF
      EEFF4146F1FF3F44EBFC03030B37000000000000000000000000000000000000
      00000607013193A024EAAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFF8A9722E30506
      012E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202F8767776FFB3B5B4FFC2C4
      C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
      C3FFC2C4C3FFC2C4C3FF848584FF020202F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004020024A46516D2F39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF915913C5010100170000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040410434146EFFE4146F1FF6367F0FFCECDEDFFEAE7
      ECFFEAE7ECFFEDEBEFFFEEECF0FFEBE8EDFFEAE7ECFFE0DEECFF8284EFFF4146
      F1FF4146F1FF1314468A00000000000000000000000000000000000000000000
      0000000000000304002577831DD3AEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFF6A741AC7010100190000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202F40B0C0CFA121212F71313
      13F7131313F7131313F7131313F7131313F7131313F7131313F7131313F71313
      13F7131313F7131313F70C0D0DFA020202F40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000093E260882DF8A1EF4F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFE9901FFA452A098800000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007081C58383CCEEC4146F1FF464AF1FF7C7E
      EFFF9F9FEEFFC0BFEDFFC8C7EDFFA8A8EEFF8788EFFF5256F0FF4146F1FF3F44
      EBFC1314468A0000000600000000000000000000000000000000000000000000
      000000000000000000000000000934390D8CA8B92AFBAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFA7B729FA32370C8A00000008000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000004700000066000000660000
      0066000000660000006600000066000000660000006600000066000000660000
      0066000000660000006600000066000000460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000201001955340B97DF8A1EF5F396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFDF8A1EF55A370C9B040200240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000001171E206FAD4146F1FF4146
      F1FF4146F1FF4146F1FF4146F1FF4146F1FF4146F1FF4146F1FF2D32A9D60303
      0B37000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030401264148109DA0B128F5AEBF
      2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF2BFFAEBF
      2BFFAEBF2BFFA0B128F54047109C030400250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D1D12
      04595A370C9B985D14CACC7F1BEAE9901FFAE9901FFACC7F1BEA975C14C95936
      0C9A1C1103580000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003030D3C0E0F
      33761D1F6BAA3236B8DF373BCCEB22247DB81113408406061750000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000E1517
      05594046109B6D771BCA93A024EAA7B729FAA7B729FA93A024EA6D771BCA3F45
      109A141605580000000D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000172615039F4A2A
      06DE5D3407F85D3407F85D3407F85D3407F85D3407F85D3407F85D3407F85D34
      07F85D3407F85D3407F85D3407F85D3407F85D3407F85D3407F85D3407F85D34
      07F85D3407F85D3407F85D3407F85D3407F85D3407F85D3407F8542F06EC351E
      04BC0503003F0000000000000000000000000000000000000000000000000000
      00000000000F212C86B903030B37000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030B37212C86B90000
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0012120F2B7E251F59B53E3596EA38318AE0211C50AB0D0C216E000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000070301
      1049110748981A0A74C11F0C94DA250DB6F3230BB5F31B078FDA130570C10B02
      449802000F490000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000100001A512E06E9623707FF4326
      05D4261503A0261503A0261503A0261503A0261503A0261503A0261503A02615
      03A0261503A0261503A0261503A0261503A0261503A0261503A0261503A02615
      03A0261503A0261503A0261503A0261503A0261503A0261503A0321C04B76037
      07FD603707FD0B06015800000000000000000000000000000000000000000000
      000F27339DC83F53FFFF384AE1F003030B370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030B37384AE1F03F53FFFF2733
      9DC80000000F0000000000000000000000000000000000000000000000000000
      000000000000000000000100021F030308380303083803030838030308380303
      08380303083803030838030308380303083803030838030308380E0C23713C34
      94E8493FB3FF493FB3FF3F369AED433AA3F4493FB3FF493FB3FF332B7CD40302
      0735000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000219130A49973018BCF23318
      CFFF3116CEFF2F14CCFF2D12CBFF2A10CAFF280EC8FF260CC7FF240AC5FF2208
      C4FF2006C2FF1B04ADF20A014297000001190000000000000000000000000000
      000000000000000000000000000000000000291703A4623707FF0A0600550000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      00204E2C06E3563006EF0000000B0000000000000000000000000000000F2733
      9DC83F53FFFF3F53FFFF3F53FFFF384AE1F003030B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53
      FFFF27339DC80000000F00000000000000000000000000000000000000000000
      000000000000020206304339A3F3493FB3FF493FB3FF493FB3FF493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF483E
      B0FD141131860101022100000000000000020201052B1F1B4BA6493FB3FF463C
      ABF90202062F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000811093984381EC5F5391ED4FF371CD2FF351A
      D1FF3318CFFF3116CEFF2F14CCFF2D12CBFF2A10CAFF280EC8FF260CC7FF240A
      C5FF2208C4FF2006C2FF1E04C1FF1A02B1F50600328400000008000000000000
      0000000000000000000000000000000000004F2C06E4402404CF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000160C0179623707FF0503003C00000000000000000000000F27339DC83F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F003030B37000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF27339DC80000000F000000000000000000000000000000000000
      0000000000000D0B206D493FB3FF2B256AC51C1946A01C1946A01C1946A01C19
      46A01C1946A01C1946A01C1946A01C1946A0201B4EA9453CA9F8493FAFFD0807
      14560202062F0000000400000000000000000000000B010104290C0A1D68493F
      B3FF302A77D00000000500000000000000000000000000000000000000000000
      00000000000000000118291886C84024D8FF3E22D7FF3C20D5FF391ED4FF371C
      D2FF4229D4FF7361DDFF8B7AE0FF9C8FE3FF9A8DE1FF8475DCFF6957D5FF331B
      CAFF240AC5FF2208C4FF2006C2FF1E04C1FF1C02BFFF0F0075C8000001180000
      000000000000000000000000000000000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B060157000000000000000F27339DC83F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F003030B370000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FDFE111B6EAD0000000F0000000000000000000000000000
      00000000000014113085493FB3FF070612520000000000000000000000000000
      00000000000000000000000000000000000017143890493FB3FF110E297B0404
      0B42493FB3FF25205CB70000000700000117342D7FD7493FB1FE00000114211C
      50AB493FB3FF0A09196000000000000000000000000000000000000000000000
      00000201062D3721AFE34428DBFF4226DAFF4024D8FF3E22D7FF6853DEFFCBC5
      F2FFF7F7F9FFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFECE9
      ECFFBBB3E2FF513DCDFF2208C4FF2006C2FF1E04C1FF1C02BFFF140096E30000
      052D00000000000000000000000000000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B06015800000000212C86B93F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F00303
      0B37000000000000000000000000000000000000000000000000000000000000
      000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FDFE1E31D2F00C22E0FF061276B90000000000000000000000000000
      0000000000001C18449E493FB3FF030308390000000003020735030308380000
      000000000000010104260C0A1E69000000002C266CC6493FB1FE0000000E0000
      000C302975CE493FB3FF282362BD342D7FD7493FB3FF201C4FAA000000000303
      093C493FB3FF19163D9600000000000000000000000000000000000000000000
      01183C24B1E3482BDEFF462ADDFF4428DBFF472CDBFFA79AECFFFBFAFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE7E5E8FF8E80D6FF270EC5FF2006C2FF1E04C1FF1C02BFFF1400
      96E300000118000000000000000000000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B0601580000000003030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384A
      E1F003030B370000000000000000000000000000000000000000000000000303
      0B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF2136EDFF0C22E0FF0B1EC6F000010A370000000000000000000000000000
      00000000000025205BB6493FB3FF0101022000000006433AA3F42B2569C30000
      0000000000001C1946A0493FB3FF0201052C433AA5F5352D81D8000000000000
      000000000012322B7AD2493FB3FF493FB3FF211D51AD00000004000000000000
      000B483EB0FD2D276EC80000000000000000000000000000000000000008311E
      8BC84D2FE1FF4B2DDFFF482BDEFF6A54E3FFDFDAF7FFFDFDFDFFFCFCFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE9E7E8FFE7E4E5FFC5BEDDFF4833C9FF2006C2FF1E04C1FF1C02
      BFFF0F0075C8000000080000000000000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B060158000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF384AE1F003030B370000000000000000000000000000000003030B37384A
      E1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136
      EDFF0C22E0FF0B1EC6F000010A37000000000000000000000000000000000000
      000000000000302A76CF493FB3FF000000080000021D493FB3FF25205BB60000
      000000000000201B4DA8493FB3FF020206324339A3F3362F84DB000000000000
      000000000115342D7FD7493FB3FF493FB3FF241F59B400000006000000000000
      000D493FB1FE2B256AC500000000000000000000000000000000160E3D845133
      E4FF4F31E2FF4D2FE1FF6F57E5FFF9F9FCFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE9E7E8FFE7E4E5FFE4E1E2FFDDDADEFF4732C9FF2006C2FF1E04
      C1FF1C02BFFF060032840000000000000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000E10090167040200390000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B06015800000000000000000000000003030B37384A
      E1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF384AE1F003030B37000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22
      E0FF0B1EC6F000010A3700000000000000000000000000000000000000000000
      0000000000003C3493E740389DEF0000000003020836493FB3FF1C18449E0000
      000000000000201B4DA8493FB3FF020206302B2569C3493FB1FE000000100000
      000D322B7AD3493FB3FF231F55B1302A76CF493FB3FF231E55B0000000000403
      0A3F493FB3FF18153B93000000000000000000000000000002194F33D5F55335
      E5FF5133E4FF5437E3FFE1DCF9FFFDFDFDFFFDFDFDFFFDFDFDFF9586E9FFB3A8
      EDFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFF9C92DAFF7566D0FFE7E4E5FFE4E1E2FFE1DEDFFFC0B8D7FF270EC5FF2006
      C2FF1E04C1FF1A02B1F50000011900000000623707FF23130298000000000000
      00000000000000000000000000000000000007040047623707FF623707FF5732
      08F12C1903AB0F0801640100001D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B060158000000000000000000000000000000000303
      0B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF384AE1F003030B3703030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1E
      C6F000010A370000000000000000000000000000000000000000000000000000
      000000000003483EB0FD332D7ED6000000000706104E493FB3FF141130850000
      000000000000201B4DA8493FB3FF020206301513358B493FB3FF13112F840404
      0B40493FB3FF211C50AB00000004000000122F2874CD473EAFFC00000114241F
      58B4493FB3FF0908165B0000000000000000000000001F1552975839E8FF5537
      E7FF5335E5FFAFA1F2FFFEFEFEFFFDFDFDFFFDFDFDFF9888ECFF4528DBFF4226
      D9FFB2A7ECFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFA195
      DEFF2107C2FF1C03C0FF7263CFFFE4E1E2FFE1DEDFFFDEDADBFF8778CFFF2208
      C4FF2006C2FF1E04C1FF0A01429700000000623707FF23130298000000000000
      00000000000000000000000000000000000000000013613707FE5C5331FF5868
      51FF5F3D11FD623707FF623707FF462806D8170D017D00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006030040623707FF0B060158000000000000000000000000000000000000
      000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F0384AE1F03F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F00001
      0A37000000000000000000000000000000000000000000000000000000000000
      000000000118493FB3FF282262BD000000000B0A1C66493FB3FF0D0B206D0000
      000000000000201B4DA8493FB3FF02020630000000133C3493E7473EAFFC0605
      0F4B01010324000000010000000000000000000000060100021F0E0C2270493F
      B3FF2D276EC8000000030000000000000000000000075337D3F25A3BEAFF5839
      E8FF7C65EDFFFDFCFEFFFEFEFEFFFDFDFDFF9E8DEFFF4C2FE1FF482BDEFF4528
      DBFF4226D9FFB1A6ECFFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFA59AE1FF280E
      C7FF2309C5FF2006C2FF1C03C0FF7364CEFFE1DEDFFFDEDADBFFD9D4D7FF4D38
      C8FF2208C4FF2006C2FF1B04ADF200000007623707FF23130298000000000000
      000000000000000000000000000000000000000000003D2306CA5D4D28FE40DB
      FEFF41D7F8FF49B1BFFF58654CFF623707FF623707FF2515039E000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000E291703A600000017000000000000000000000000000000000000
      00000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A370000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020631493FB3FF1E1A49A400000000120F2C7F493FB3FF080613550000
      000000000000201B4DA8493FB3FF02020630000000000706104E493FB3FF493F
      B3FF17153A9201010429000000020000000502020733211D52AE493FB3FF433A
      A5F501010427000000000000000000000000070513495E3FEDFF5C3DEBFF5A3B
      EAFFD5CEF9FFFEFEFEFFFEFEFEFFFDFDFDFFBCB1F4FF5133E3FF4C2FE1FF482B
      DEFF4528DBFF4226D9FFB1A5EAFFF6F5F6FFF5F3F4FFA99EE5FF2F15CCFF2B10
      CAFF270DC7FF2309C5FF2107C2FF988CD5FFE1DEDFFFDEDADBFFDAD6D7FFABA1
      D0FF240AC5FF2208C4FF2006C2FF02000F49623707FF23130298000000000000
      00000000000000000000000000000000000000000000190E0282623707FF45C5
      DDFF40DBFEFF48B5C4FF5F3D11FD684609FD887404FF623707FF2515039E0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A37000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005050E49493FB3FF1613358C0000000019163E97493FB3FF0303093C0000
      000000000000201B4DA8493FB3FF020206300000000000000000282364BE493F
      B3FF493FB3FF493FB3FF473DADFB473DADFB493FB3FF493FB3FF2F2872CC0201
      052B00000000000000000000000000000000231855986041EEFF5E3FEDFF674A
      ECFFFCFCFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFBCB1F4FF5133E3FF4C2F
      E1FF482BDEFF4528DBFF4226D9FFAFA4EAFFAEA2E8FF371BD1FF3217CFFF2E14
      CCFF2B10CAFF280EC7FF9C90D9FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD4CF
      D3FF3119C8FF240AC5FF2208C4FF0B024498623707FF23130298000000000000
      000000000000000000000000000000000000000000000502003B623707FF4E97
      98FF48B5C4FF5F3D11FD684609FDC0D200FFD0EE00FF8D7D04FF623707FF2515
      039E000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A091A62493FB3FF0E0D247300000000221E54AF493FB3FF010103240000
      000000000000201B4DA8493FB3FF0202063000000000000000001613378E493F
      B3FF1B17419B211D51AD483EAFFD473EAFFC1D1A48A30B0A1C66000000040000
      000000000000000000000000000000000000392789C16243F0FF6041EEFF937D
      F3FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFBCB0F4FF5133
      E3FF4C2FE1FF482BDEFF4528DBFF4226D9FF3E22D6FF3A1ED4FF361AD1FF3217
      CFFF2F15CCFFA095DCFFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF5F4CCAFF260CC7FF240AC5FF130570C1623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000004583309F25C54
      32FF5F3D11FD684609FDC0D200FFD1EF00FFD1EF00FFD0EE00FF8D7D04FF6237
      07FF2515039E0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF2136EDFF0C22E0FF0B1EC6F000010A370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000100E287A493FB3FF0908165A000000002D276EC8493FB3FF0000000B0000
      000000000000201B4DA8493FB3FF0202063000000000000000000F0D2575493F
      B3FF0908185E000000002F2874CD493FB3FF0000000700000000000000000000
      0000000000000000000000000000000000004B34B1DA6445F1FF6243F0FFA896
      F6FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFBCB0
      F4FF5133E3FF4C2FE1FF482BDEFF4528DBFF4125D9FF3D21D6FF3A1ED4FF371B
      D1FFA599E0FFE9E7E8FFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF7564CCFF280EC8FF260CC7FF1B078FDA623707FF23130298000000000000
      00000000000000000000000000000000000000000000000000002D1903AD6237
      07FF684609FDC0D200FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD0EE00FF8D7D
      04FF623707FF2515039E00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136
      EDFF0C22E0FF0B1EC6F000010A37000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018153B93493FB3FF04040B4100000000373088DE4339A3F3000000000000
      000000000000201B4DA8493FB3FF0202063000000000000000000908175C493F
      B3FF0F0D267600000000241F58B3493FB3FF0100021E00000000000000000000
      0000000000000000000000000000000000005F43DEF36747F2FF6445F1FFB8AA
      F8FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFBBAFF2FF5133E3FF4C2FE1FF482BDEFF4528DBFF4125D9FF3E22D6FFAA9D
      E3FFECEAEBFFE9E7E8FFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF8877CDFF2A10CAFF280EC8FF230BB5F3623707FF23130298000000000000
      00000000000000000000000000000000000000000000000000000905004E6237
      07FE755706FEC9E200FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD0EE
      00FF8D7D04FF623707FF2515039E000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136
      EDFF0C22E0FF0B1EC6F000010A37000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000211C50AB493FB3FF010104290000000012102D81120F2C7F000000000000
      0000000000000908175D2D276FC90000000B000000000000000000000117251F
      59B503020734000000000706104F201C4FAA0000000300000000000000000000
      0000000000000000000000000000000000006144DEF36949F4FF6747F2FFB9AB
      F9FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFBCB0F3FF5537E6FF5032E3FF4C2FE1FF482BDEFF4528DBFF4226D9FFAB9E
      E4FFECEAEBFFE9E7E8FFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF8978CEFF2D12CBFF2A10CAFF250DB6F3623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000001009
      0169623707FE765905FEC9E200FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD1EF
      00FFD0EE00FF8D7D04FF623707FF2515039E0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF2136EDFF0C22E0FF0B1EC6F000010A370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B256AC4493FB3FF00000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005039B4DA6B4BF5FF6949F4FFAC9A
      F8FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFC0B4
      F6FF5C3EEBFF5739E8FF5436E6FF5032E3FF4C2FE1FF482BDEFF4528DBFF4226
      D9FFA99DE3FFE9E7E8FFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF7967CEFF2F14CCFF2D12CBFF1F0C94DA623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010090169623707FE765905FEC9E200FFD1EF00FFD1EF00FFD1EF00FFD1EF
      00FFD1EF00FFD0EE00FF8D7D04FF623707FF2515039E00000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000372F85DC453BA7F700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000402D8EC16D4DF7FF6B4BF5FF9A85
      F8FFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFC3B7F8FF6444
      F0FF5F40EDFF5B3DEBFF5739E8FF5537E6FF5133E3FF4C2FE1FF482BDEFF4528
      DBFF4226D9FFA79BE1FFE7E4E5FFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD7D2
      D3FF6753CFFF3116CEFF2F14CCFF1A0A74C1623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010090169623707FE765905FEC9E200FFD1EF00FFD1EF00FFD1EF
      00FFD1EF00FFD1EF00FFD0EE00FF8D7D04FF623707FF2515039E000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A37000000000000
      0000000000000000000000000000000000000000000000000000000000100403
      0A3F453CA9F83C3492E604040B4004040B4004040B4004040B4004040B400404
      0B4004040B4004040B4004040B4004040B4004040B4004040B4004040B400404
      0B4004040B4004040B4004040B4004040B4004040B4002020632000000000000
      000000000000000000000000000000000000281D59986F4FF8FF6D4DF7FF7557
      F6FFFDFCFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFC6BAFBFF6B4BF5FF6647
      F2FF6343F0FF5F40EDFF5C3EEBFFB9ADF1FFB8ABEFFF5133E3FF4C2FE1FF482B
      DEFF4528DBFF4226D9FFA699DFFFE4E1E2FFE1DEDFFFDEDADBFFDAD6D7FFD5CF
      D3FF3F26D1FF3318CFFF3116CEFF11074898623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010090169623707FE765905FEC9E200FFD1EF00FFD1EF
      00FFD1EF00FFD1EF00FFD1EF00FFD0EE00FF8D7D04FF623707FF2515039E0000
      0002000000000000000000000000000000000000000000000000000000000000
      00000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F000010A370000
      00000000000000000000000000000000000000000000000000002D276FC9493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF080714560000
      000000000000000000000000000000000000090614497151FAFF6F4FF8FF6D4D
      F7FFDAD2FCFFFEFEFEFFFEFEFEFFFDFDFDFFC9BCFDFF7252FAFF6E4EF7FF6A4A
      F5FF6647F2FF6444F0FFBEB1F3FFF6F5F6FFF5F3F4FFB6AAEEFF5133E3FF4C2F
      E1FF482BDEFF4528DBFF4226D9FFA498DDFFE1DEDFFFDEDADBFFDAD6D7FFB0A5
      D3FF371CD2FF351AD1FF3318CFFF03011049623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010090169623707FE765905FEC9E200FFD1EF
      00FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD0EE00FF8D7D04FF623707FF2515
      039E000000020000000000000000000000000000000000000000000000000000
      000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F0384AE1F03F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1EC6F00001
      0A3700000000000000000000000000000000000000000000000038318AE04B42
      B4FF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726D
      CDFF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726DCDFF726D
      CDFF726DCDFF726DCDFF726DCDFF726DCDFF615AC3FF493FB3FF0E0C22700000
      00000000000000000000000000000000000000000007674BE1F27151FAFF6F4F
      F8FF9076F9FFFDFDFEFFFEFEFEFFFDFDFDFFB5A2FEFF7554FCFF7151FAFF6E4E
      F7FF6B4BF5FFC1B4F6FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFB5A8ECFF5133
      E3FF4C2FE1FF482BDEFF4528DBFF8A79DDFFE1DEDFFFDEDADBFFD9D5D7FF6049
      D5FF391ED4FF371CD2FF3018BCF200000007623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010090169623707FE765905FEC9E2
      00FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD0EE00FF8D7D04FF6237
      07FF2515039E0000000200000000000000000000000000000000000000000303
      0B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF384AE1F003030B3703030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22E0FF0B1E
      C6F000010A37000000000000000000000000000000000000000038318AE04F45
      B6FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
      F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
      F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF8684D9FF493FB3FF0E0C22700000
      00000000000000000000000000000000000000000000291E59977353FBFF7151
      FAFF6F4FF8FFBCADFBFFFEFEFEFFFDFDFDFFFDFDFDFFB4A1FEFF7554FCFF7252
      FAFFC5B8F9FFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFB4A6
      EAFF5133E3FF4C2FE1FF8E7CE1FFE4E1E2FFE1DEDFFFDEDADBFF9485D7FF3E22
      D7FF3C20D5FF391ED4FF130A499700000000623707FF23130298000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010090169623707FE7659
      05FEC9E200FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFD0EE00FF8D7D
      04FF623707FF2515039E0000000200000000000000000000000003030B37384A
      E1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF384AE1F003030B37000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136EDFF0C22
      E0FF0B1EC6F000010A370000000000000000000000000000000038318AE04F45
      B6FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
      F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2
      F4FFB0B2F4FFB0B2F4FFB0B2F4FFB0B2F4FF8684D9FF493FB3FF0E0C22700000
      00000000000000000000000000000000000000000000010002196C4FE9F57353
      FBFF7151FAFF7354F8FFE6E1FDFFFDFDFDFFFDFDFDFFFDFDFDFFB4A2FEFFC9BC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFB2A5E9FF9583E5FFE7E4E5FFE4E1E2FFE1DEDFFFC5BDDBFF462BDAFF4024
      D8FF3E22D7FF381EC5F50000021900000000623707FE2414039A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100901696237
      07FE765905FEC9E200FFD1EF00FFD1EF00FFD1EF00FFD1EF00FFCFEC00FF8773
      04FF623707FF623707FF2514039D000000000000000003030B37384AE1F03F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF384AE1F003030B370000000000000000000000000000000003030B37384A
      E1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF2136
      EDFF0C22E0FF0B1EC6F000010A3700000000000000000000000038318AE04D44
      B6FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695
      E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695E4FF9695
      E4FF9695E4FF9695E4FF9695E4FF9695E4FF7672D0FF493FB3FF0E0C22700000
      0000000000000000000000000000000000000000000000000000201744847555
      FDFF7353FBFF7151FAFF8C72F9FFFAFAFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE9E7E8FFE7E4E5FFE4E1E2FFDEDBDFFF644DDDFF4428DBFF4226
      DAFF4024D8FF110939840000000000000000482905DB4C2A06E0000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001009
      0169623707FE765905FEC9E200FFD1EF00FFD1EF00FFCFEC00FF877304FF6237
      07FF9E6A03FF966304FF623707FF1009016803030B37384AE1F03F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384A
      E1F003030B370000000000000000000000000000000000000000000000000303
      0B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF2136EDFF0C22E0FF0B1EC6F000010A370000000000000000352E83DA493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF0C0A1E690000
      0000000000000000000000000000000000000000000000000000000000084A35
      9CC87555FDFF7353FBFF7151FAFF8C72F9FFE5E0FCFFFDFDFDFFFCFCFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE9E7E8FFE7E4E5FFCBC4E2FF6950DFFF482BDEFF462ADDFF4428
      DBFF291886C80000000800000000000000001E11028E623707FF190E02820000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010090169623707FE765905FEC9E200FFCFEC00FF877304FF623707FF9E6A
      03FFEAAC00FFE6A900FF693E06FC462705D7212C86B93F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F00303
      0B37000000000000000000000000000000000000000000000000000000000000
      000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FDFE1E31D2F00C22E0FF061276B9000000000000000006050F4C1916
      3E971A163F981A163F981A163F981A163F981A163F981A163F981A163F981A16
      3F981A163F981A163F981A163F981A163F981A163F981A163F981A163F981A16
      3F981A163F981A163F981A163F981A163F981A163F981512348A000000130000
      0000000000000000000000000000000000000000000000000000000000000100
      02185F45C9E37555FDFF7353FBFF7151FAFF7354F8FFBBADFAFFFBFBFCFFFCFC
      FCFFFAFAFAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEFEC
      EDFFECEAEBFFE8E6E8FFA393E5FF5336E2FF4D2FE1FF4B2DDFFF482BDEFF3721
      AFE3000001180000000000000000000000000000000C412505D0623707FF5A33
      07F5412505D0412505D0412505D0412505D0412505D0412505D0412505D00E07
      0161000000000000000000000000000000000000000000000000000000000000
      00000000000010090169623707FE765905FE867204FF623707FF9E6A03FFEAAC
      00FFEAAC00FFEAAC00FF8A5805FF5B3307F40000000F27339DC83F53FFFF3F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F003030B370000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF3F53FDFE111B6EAD0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302072D5F45C9E37555FDFF7353FBFF7151FAFF6F4FF8FF8F75F8FFD8D0
      FAFFF8F7FAFFF9F8F9FFF8F7F7FFF6F5F6FFF5F3F4FFF3F2F3FFF1EFF0FFEDE9
      EDFFC7BEEAFF775FE7FF5335E5FF5133E4FF4F31E2FF4D2FE1FF3C24B1E30201
      062D000000000000000000000000000000000000000000000006120A016F2E19
      03AE3C2204C83C2204C83C2204C83C2204C83C2204C83C2204C83C2204C80B06
      0157000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010090169623707FE623707FF9B6704FFEAAC00FFEAAC
      00FFEAAC00FFDA9E00FF633807FE3A2104C5000000000000000F27339DC83F53
      FFFF3F53FFFF3F53FFFF3F53FFFF3F53FFFF384AE1F003030B37000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53FFFF3F53
      FFFF3F53FFFF27339DC80000000F000000000000000000000000000000000000
      000000000000000000000000000000000000000000001613368D0908175D0000
      000000000000000000000000000000000000000000000000000A1D1A48A30403
      0A3D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010002184A359CC87555FDFF7353FBFF7151FAFF6F4FF8FF6D4D
      F7FF7457F5FF9983F6FFA896F4FFB4A5F4FFB3A3F2FFA291F0FF8F78EEFF6649
      EBFF5A3BEAFF5839E8FF5537E7FF5335E5FF5133E4FF311E8BC8000001180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010090169623707FE7B4C05FED79C00FFEAAC
      00FFD49900FF754806FD603707FD0502003A00000000000000000000000F2733
      9DC83F53FFFF3F53FFFF3F53FFFF384AE1F003030B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030B37384AE1F03F53FFFF3F53FFFF3F53
      FFFF27339DC80000000F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E493FB3FF2C266CC60000
      0000000000000000000000000000000000000000000004030A3E493FB3FF1916
      3D96000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000008201744846C4FE9F57353FBFF7151FAFF6F4F
      F8FF6D4DF7FF6B4BF5FF6949F4FF6747F2FF6445F1FF6243F0FF6041EEFF5E3F
      EDFF5C3DEBFF5A3BEAFF5839E8FF4F33D5F5160E3D8400000008000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010090168613707FD623707FE784A
      06FE623707FF603707FC0C07015B000000000000000000000000000000000000
      000F27339DC83F53FFFF384AE1F003030B370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030B37384AE1F03F53FFFF2733
      9DC80000000F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010493FB3FF453BA7F7352D
      81D8352D81D8352D81D8352D81D8352D81D8352D81D83A328DE2493FB3FF1A16
      3F98000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000219291E5997674BE1F27151
      FAFF6F4FF8FF6D4DF7FF6B4BF5FF6949F4FF6747F2FF6445F1FF6243F0FF6041
      EEFF5E3FEDFF5337D3F21F155297000002190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040200392E1A04B04527
      05D52E1903AE0302003300000000000000000000000000000000000000000000
      00000000000F212C86B903030B37000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030B37212C86B90000
      000F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000022E2871CB493FB3FF493F
      B3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF493FB3FF473DABFA0A08
      185F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000070906
      1449281D5998402D8EC15039B4DA6144DEF35F43DEF34B34B1DA392789C12318
      5598070513490000000700000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
