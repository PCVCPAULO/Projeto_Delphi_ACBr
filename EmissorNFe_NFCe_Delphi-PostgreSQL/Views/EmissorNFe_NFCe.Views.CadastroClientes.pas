unit EmissorNFe_NFCe.Views.CadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, cxButtons, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, System.ImageList, Vcl.ImgList;

type
  Tfrm_CadClientes = class(TForm)
    pnl_Principal: TPanel;
    pgc_Principal: TPageControl;
    tbs_Pesquisa: TTabSheet;
    tbs_Cadastro: TTabSheet;
    DBGrid1: TDBGrid;
    ds_Clientes: TDataSource;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    edt_Nome: TcxDBTextEdit;
    lbl_CPF_CNPJ: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    lbl_RG_IE: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label11: TLabel;
    rdg_Pessoa: TcxRadioGroup;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    ImageList1: TImageList;
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
    pnlBotoesCad: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    Panel8: TPanel;
    btnCancelar: TButton;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    edtPesquisar: TEdit;
    pnl_btnPesquisar: TPanel;
    btnPesquisar: TButton;
    ds_Estados: TDataSource;
    lcbx_Estados: TcxDBLookupComboBox;
    lcbx_Cidades: TcxDBLookupComboBox;
    ds_Cidades: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadClientes: Tfrm_CadClientes;

implementation

{$R *.dfm}

uses
  Datasnap.DBClient,
  EmissorNFe_NFCe.Model.dm_Dados;

procedure Tfrm_CadClientes.btnAlterarClick(Sender: TObject);
begin
  if not dm_ConexaoPG.qry_Clientes.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Clientes.Edit;
    edt_Nome.SetFocus;
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Alteração!');
  end;

end;

procedure Tfrm_CadClientes.btnCancelarClick(Sender: TObject);
begin
  TClientDataSet(ds_Clientes.DataSet).Cancel;
  dm_ConexaoPG.qry_Clientes.Cancel;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_CadClientes.btnExcluirClick(Sender: TObject);
begin
  if not dm_ConexaoPG.qry_Clientes.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Clientes.Delete;
    ShowMessage('Cliente Excluído com Sucesso!');
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Exclusão!');
  end;
end;

procedure Tfrm_CadClientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_CadClientes.btnIncluirClick(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Cadastro;
  dm_ConexaoPG.ConexaoPG.Connected := True;
  dm_ConexaoPG.qry_Clientes.Active := True;
  dm_ConexaoPG.qry_Clientes.Append;
  rdg_Pessoa.ItemIndex := 0;
  edt_Nome.SetFocus;

end;

procedure Tfrm_CadClientes.btnPesquisarClick(Sender: TObject);
begin
  dm_ConexaoPG.qry_Clientes.Close;
  dm_ConexaoPG.qry_Clientes.SQL.Clear;
  dm_ConexaoPG.qry_Clientes.SQL.Add('SELECT * FROM tab_clientes'+
                                    ' WHERE nome LIKE :pPesq');
  dm_ConexaoPG.qry_Clientes.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
  dm_ConexaoPG.qry_Clientes.Open;
end;

procedure Tfrm_CadClientes.btnSalvarClick(Sender: TObject);
begin
  try
    dm_ConexaoPG.qry_Clientes.FieldByName('nome_cidade').AsString := lcbx_Cidades.Text;
    dm_ConexaoPG.qry_Clientes.FieldByName('nome_uf').AsString     := lcbx_Estados.Text;

    dm_ConexaoPG.qry_Clientes.Post;
    ShowMessage('Cliente Gravado com Sucesso!');
  except
    ShowMessage('Erro ao Tentar Gravar no Banco!');
  end;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_CadClientes.DBGrid1DblClick(Sender: TObject);
begin
  pgc_Principal.ActivePageIndex := 1;
end;

procedure Tfrm_CadClientes.edtPesquisarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if (edtPesquisar.Text = '') then
    begin
      pgc_Principal.ActivePage := tbs_Pesquisa;
      dm_ConexaoPG.qry_Clientes.Close;
      dm_ConexaoPG.qry_Clientes.SQL.Clear;
      dm_ConexaoPG.qry_Clientes.SQL.Add('SELECT * FROM tab_clientes ORDER BY codigo');
  //    dm_ConexaoPG.qry_Clientes.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
      dm_ConexaoPG.qry_Clientes.Open;
    end else
    begin
      dm_ConexaoPG.qry_Clientes.Close;
      dm_ConexaoPG.qry_Clientes.SQL.Clear;
      dm_ConexaoPG.qry_Clientes.SQL.Add('SELECT * FROM tab_clientes'+
                                      ' WHERE nome LIKE :pPesq');
      dm_ConexaoPG.qry_Clientes.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
      dm_ConexaoPG.qry_Clientes.Open;
    end;
  end;

end;

procedure Tfrm_CadClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_CadClientes.FormShow(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Pesquisa;
  dm_ConexaoPG.qry_Clientes.Close;
  dm_ConexaoPG.qry_Clientes.SQL.Clear;
  dm_ConexaoPG.qry_Clientes.SQL.Add('SELECT * FROM tab_clientes ORDER BY codigo');
  dm_ConexaoPG.qry_Clientes.Open;
  dm_ConexaoPG.qry_Estados.Active := True;
  dm_ConexaoPG.qry_Cidades.Active := True;
end;

procedure Tfrm_CadClientes.lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
begin
  if lcbx_Estados.Text <> '' then
  begin
    dm_ConexaoPG.qry_Cidades.Close;
    dm_ConexaoPG.qry_Cidades.SQL.Clear;
    dm_ConexaoPG.qry_Cidades.SQL.Add('SELECT codigo_cidade, nome_cidade, codigo_estado,' +
                                     ' sigla_estado, nome_uf' +
                                     ' FROM cidades' +
                                     ' WHERE sigla_estado = :pUF');
    dm_ConexaoPG.qry_Cidades.ParamByName('pUF').AsString := Trim(lcbx_Estados.Text);
    dm_ConexaoPG.qry_Cidades.Open;

    dm_ConexaoPG.qry_Cidades.Active := True;
  end;
end;

procedure Tfrm_CadClientes.rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
begin
  if rdg_Pessoa.ItemIndex = 0 then
  begin
    lbl_CPF_CNPJ.Caption := 'C.P.F.';
    lbl_RG_IE.Caption    := 'R.G.';
  end else
  begin
    lbl_CPF_CNPJ.Caption := 'C.N.P.J.';
    lbl_RG_IE.Caption    := 'I.E.';
  end;

end;

end.
