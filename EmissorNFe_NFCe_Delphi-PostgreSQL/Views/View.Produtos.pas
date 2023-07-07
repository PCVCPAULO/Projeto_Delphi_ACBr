unit View.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls,
  cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  Tfrm_ViewProdutos = class(TForm)
    ds_Cidades: TDataSource;
    ds_Estados: TDataSource;
    ds_Produtos: TDataSource;
    ImageList1: TImageList;
    pnl_Principal: TPanel;
    pgc_Principal: TPageControl;
    tbs_Pesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    Panel3: TPanel;
    btnExcluir: TButton;
    Panel4: TPanel;
    btnAlterar: TButton;
    Panel5: TPanel;
    btnIncluir: TButton;
    Panel6: TPanel;
    btnImprimir: TButton;
    Panel7: TPanel;
    btnFechar: TButton;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    edtPesquisar: TEdit;
    pnl_btnPesquisar: TPanel;
    btnPesquisar: TButton;
    tbs_Cadastro: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    pnlBotoesCad: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    Panel8: TPanel;
    btnCancelar: TButton;
    cxDBSpinEdit1: TcxDBSpinEdit;
    edt_Descricao: TcxDBTextEdit;
    edt_Preco: TcxDBCurrencyEdit;
    edt_AliqiCMS: TcxDBCurrencyEdit;
    edt_AliPIS: TcxDBCurrencyEdit;
    edt_AliqCOFINS: TcxDBCurrencyEdit;
    edt_AliqIPI: TcxDBCurrencyEdit;
    edt_Desconto: TcxDBCurrencyEdit;
    cbx_CST_ICMS: TComboBox;
    cbx_CST_PIS: TComboBox;
    cbx_CST_COFINS: TComboBox;
    cbx_CST_IPI: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edt_DescricaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ViewProdutos: Tfrm_ViewProdutos;

implementation

{$R *.dfm}

uses
  Datasnap.DBClient,
  EmissorNFe_NFCe.Model.dm_Dados;

procedure Tfrm_ViewProdutos.btnAlterarClick(Sender: TObject);
begin
  pgc_Principal.ActivePageIndex := 1;
  if not dm_ConexaoPG.qry_Produtos.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Produtos.Edit;
    edt_Descricao.SetFocus;
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Alteração!');
  end;
end;

procedure Tfrm_ViewProdutos.btnCancelarClick(Sender: TObject);
begin
  TClientDataSet(ds_Produtos.DataSet).Cancel;
  dm_ConexaoPG.qry_Produtos.Cancel;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_ViewProdutos.btnExcluirClick(Sender: TObject);
begin
  if not dm_ConexaoPG.qry_Produtos.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Produtos.Delete;
    ShowMessage('Registro Excluído com Sucesso!');
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Exclusão!');
  end;
end;

procedure Tfrm_ViewProdutos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ViewProdutos.btnIncluirClick(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Cadastro;
  dm_ConexaoPG.ConexaoPG.Connected := True;
  dm_ConexaoPG.qry_Produtos.Active := True;
  dm_ConexaoPG.qry_Produtos.Append;
  edt_Descricao.SetFocus;
end;

procedure Tfrm_ViewProdutos.btnPesquisarClick(Sender: TObject);
begin
  dm_ConexaoPG.qry_Produtos.Close;
  dm_ConexaoPG.qry_Produtos.SQL.Clear;
  dm_ConexaoPG.qry_Produtos.SQL.Add('SELECT * FROM tab_produtos'+
                                    ' WHERE descricao LIKE :pPesq');
  dm_ConexaoPG.qry_Produtos.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
  dm_ConexaoPG.qry_Produtos.Open;
end;

procedure Tfrm_ViewProdutos.btnSalvarClick(Sender: TObject);
begin
  try
    dm_ConexaoPG.qry_Produtos.FieldByName('cst_icms').AsString   := copy(cbx_cst_icms.Text, 1, 3);
    dm_ConexaoPG.qry_Produtos.FieldByName('cst_pis').AsString    := copy(cbx_cst_pis.Text, 1, 3);
    dm_ConexaoPG.qry_Produtos.FieldByName('cst_cofins').AsString := copy(cbx_cst_cofins.Text, 1, 3);
    dm_ConexaoPG.qry_Produtos.FieldByName('cst_ipi').AsString    := copy(cbx_cst_ipi.Text, 1, 3);
    dm_ConexaoPG.qry_Produtos.Post;

    ShowMessage('Registro Gravado com Sucesso!');
  except
    ShowMessage('Erro ao Tentar Gravar no Banco!');
  end;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_ViewProdutos.DBGrid1DblClick(Sender: TObject);
begin
  pgc_Principal.ActivePageIndex := 1;
end;

procedure Tfrm_ViewProdutos.edt_DescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if (edtPesquisar.Text = '') then
    begin
      pgc_Principal.ActivePage := tbs_Pesquisa;
      dm_ConexaoPG.qry_Produtos.Close;
      dm_ConexaoPG.qry_Produtos.SQL.Clear;
      dm_ConexaoPG.qry_Produtos.SQL.Add('SELECT * FROM tab_produtos ORDER BY codigo');
      dm_ConexaoPG.qry_Produtos.Open;
    end else
    begin
      dm_ConexaoPG.qry_Produtos.Close;
      dm_ConexaoPG.qry_Produtos.SQL.Clear;
      dm_ConexaoPG.qry_Produtos.SQL.Add('SELECT * FROM tab_produtos'+
                                      ' WHERE descricao LIKE :pPesq');
      dm_ConexaoPG.qry_Produtos.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
      dm_ConexaoPG.qry_Produtos.Open;
    end;
  end;
end;

procedure Tfrm_ViewProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_ViewProdutos.FormShow(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Pesquisa;
  dm_ConexaoPG.qry_Produtos.Close;
  dm_ConexaoPG.qry_Produtos.SQL.Clear;
  dm_ConexaoPG.qry_Produtos.SQL.Add('SELECT * FROM tab_produtos ORDER BY codigo');
  dm_ConexaoPG.qry_Produtos.Open;
end;

end.
