unit EmissorNFe_NFCe.Views.CadTransportadora;

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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxGroupBox, cxRadioGroup, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tfrm_Transport = class(TForm)
    ds_Cidades: TDataSource;
    ds_Transport: TDataSource;
    ds_Estados: TDataSource;
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
    lbl_CPF_CNPJ: TLabel;
    lbl_RG_IE: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    edt_Nome: TcxDBTextEdit;
    edt_Endereco: TcxDBTextEdit;
    edt_NR: TcxDBTextEdit;
    edt_Bairro: TcxDBTextEdit;
    edt_Complemento: TcxDBTextEdit;
    rdg_Pessoa: TcxRadioGroup;
    edt_CEP: TcxDBMaskEdit;
    pnlBotoesCad: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    Panel8: TPanel;
    btnCancelar: TButton;
    lcbx_Estados: TcxDBLookupComboBox;
    lcbx_Cidades: TcxDBLookupComboBox;
    edt_CNPJ_CPF: TcxDBMaskEdit;
    edt_IE_RG: TcxDBMaskEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
    procedure lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_NomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Transport: Tfrm_Transport;

implementation

{$R *.dfm}

uses
  Datasnap.DBClient,
  EmissorNFe_NFCe.Model.dm_Dados;

procedure Tfrm_Transport.btnAlterarClick(Sender: TObject);
begin
  if not dm_ConexaoPG.qry_Transport.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Transport.Edit;
    edt_Nome.SetFocus;
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Alteração!');
  end;
end;

procedure Tfrm_Transport.btnCancelarClick(Sender: TObject);
begin
  TClientDataSet(ds_Transport.DataSet).Cancel;
  dm_ConexaoPG.qry_Transport.Cancel;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_Transport.btnExcluirClick(Sender: TObject);
begin
  if not dm_ConexaoPG.qry_Transport.FieldByName('codigo').IsNull  then
  begin
    dm_ConexaoPG.qry_Transport.Delete;
    ShowMessage('Registro Excluído com Sucesso!');
  end else
  begin
    ShowMessage('Não Existe Registro Selecionado para Exclusão!');
  end;
end;

procedure Tfrm_Transport.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Transport.btnIncluirClick(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Cadastro;
  dm_ConexaoPG.ConexaoPG.Connected := True;
  dm_ConexaoPG.qry_Transport.Active := True;
  dm_ConexaoPG.qry_Transport.Append;
  rdg_Pessoa.ItemIndex := 0;
  edt_Nome.SetFocus;
end;

procedure Tfrm_Transport.btnPesquisarClick(Sender: TObject);
begin
  dm_ConexaoPG.qry_Transport.Close;
  dm_ConexaoPG.qry_Transport.SQL.Clear;
  dm_ConexaoPG.qry_Transport.SQL.Add('SELECT * FROM tab_transportadora'+
                                    ' WHERE nome LIKE :pPesq');
  dm_ConexaoPG.qry_Transport.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
  dm_ConexaoPG.qry_Transport.Open;
end;

procedure Tfrm_Transport.btnSalvarClick(Sender: TObject);
begin
  try
    dm_ConexaoPG.qry_Transport.FieldByName('nome_cidade').AsString := lcbx_Cidades.Text;
    dm_ConexaoPG.qry_Transport.FieldByName('nome_uf').AsString     := lcbx_Estados.Text;
    if rdg_Pessoa.ItemIndex = 1 then
    begin
      dm_ConexaoPG.qry_Transport.FieldByName('pessoa').AsString := 'J';
    end;
    dm_ConexaoPG.qry_Transport.Post;
    ShowMessage('Registro Gravado com Sucesso!');
  except
    ShowMessage('Erro ao Tentar Gravar no Banco!');
  end;
  pgc_Principal.ActivePage := tbs_Pesquisa;
end;

procedure Tfrm_Transport.DBGrid1DblClick(Sender: TObject);
begin
  pgc_Principal.ActivePageIndex := 1;
end;

procedure Tfrm_Transport.edt_NomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if (edtPesquisar.Text = '') then
    begin
      pgc_Principal.ActivePage := tbs_Pesquisa;
      dm_ConexaoPG.qry_Transport.Close;
      dm_ConexaoPG.qry_Transport.SQL.Clear;
      dm_ConexaoPG.qry_Transport.SQL.Add('SELECT * FROM tab_transportadora ORDER BY codigo');
      dm_ConexaoPG.qry_Transport.Open;
    end else
    begin
      dm_ConexaoPG.qry_Transport.Close;
      dm_ConexaoPG.qry_Transport.SQL.Clear;
      dm_ConexaoPG.qry_Transport.SQL.Add('SELECT * FROM tab_transportadora'+
                                      ' WHERE nome LIKE :pPesq');
      dm_ConexaoPG.qry_Transport.ParamByName('pPesq').AsString := '%' + edtPesquisar.Text + '%';
      dm_ConexaoPG.qry_Transport.Open;
    end;
  end;
end;

procedure Tfrm_Transport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_Transport.FormShow(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Pesquisa;
  dm_ConexaoPG.qry_Transport.Close;
  dm_ConexaoPG.qry_Transport.SQL.Clear;
  dm_ConexaoPG.qry_Transport.SQL.Add('SELECT * FROM tab_transportadora ORDER BY codigo');
  dm_ConexaoPG.qry_Transport.Open;
  dm_ConexaoPG.qry_Estados.Active := True;
  dm_ConexaoPG.qry_Cidades.Active := True;
end;

procedure Tfrm_Transport.lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
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

procedure Tfrm_Transport.rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
begin
  if rdg_Pessoa.ItemIndex = 0 then
  begin
    lbl_CPF_CNPJ.Caption := 'C.P.F.';
    edt_CNPJ_CPF.Properties.EditMask := '999.999.999-99';
    lbl_RG_IE.Caption    := 'R.G.';
    edt_IE_RG.Properties.EditMask := '999.999.999';
  end else
  begin
    rdg_Pessoa.ItemIndex := 1;
    lbl_CPF_CNPJ.Caption := 'C.N.P.J.';
    edt_CNPJ_CPF.Properties.EditMask := '999.999.999/9999-99';
    lbl_RG_IE.Caption    := 'I.E.';
    edt_IE_RG.Properties.EditMask := '999.999.999';
  end;
end;

end.
