unit View.Emitente;

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
  System.ImageList, Vcl.ImgList,
  EmissorNFe_NFCe.Model.dm_Dados, cxButtonEdit;

type
  Tfrm_Emitente = class(TForm)
    ds_Cidades: TDataSource;
    ds_Emitente: TDataSource;
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
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    rdg_Pessoa: TcxRadioGroup;
    pnlBotoesCad: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    Panel8: TPanel;
    btnCancelar: TButton;
    lcbx_Estados: TcxDBLookupComboBox;
    lcbx_Cidades: TcxDBLookupComboBox;
    Label6: TLabel;
    Label12: TLabel;
    edt_Senha: TcxDBTextEdit;
    edt_Certificado: TcxDBButtonEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edt_ID_CSC: TcxDBTextEdit;
    ect_Token_CSC: TcxDBTextEdit;
    edt_CNPJ_CPF: TcxDBMaskEdit;
    edt_IE_RG: TcxDBMaskEdit;
    edt_CEP: TcxDBMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
    procedure lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Emitente: Tfrm_Emitente;

implementation

{$R *.dfm}

procedure Tfrm_Emitente.btnCancelarClick(Sender: TObject);
begin
  dm_ConexaoPG.qry_Emitente.Cancel;
  Close;
end;

procedure Tfrm_Emitente.btnIncluirClick(Sender: TObject);
begin
  pgc_Principal.ActivePage := tbs_Cadastro;
end;

procedure Tfrm_Emitente.btnSalvarClick(Sender: TObject);
begin
  try
    dm_ConexaoPG.qry_Emitente.FieldByName('nome_cidade').AsString := lcbx_Cidades.Text;
    dm_ConexaoPG.qry_Emitente.FieldByName('nome_uf').AsString     := lcbx_Estados.Text;
    dm_ConexaoPG.qry_Emitente.Post;
    ShowMessage('Registro Gravado com Sucesso!');
    dm_ConexaoPG.qry_Emitente.Edit;
  except
    ShowMessage('Erro ao Tentar Gravar no Banco!');
  end;
  pgc_Principal.ActivePage := tbs_Cadastro;
end;

procedure Tfrm_Emitente.FormShow(Sender: TObject);
begin
  dm_ConexaoPG.qry_Emitente.Close;
  dm_ConexaoPG.qry_Emitente.SQL.Clear;
  dm_ConexaoPG.qry_Emitente.SQL.Add('SELECT codigo,' +
                                    ' nome,' +
                                    ' pessoa,' +
                                    ' cnpj_cpf,' +
                                    ' ie_rg,' +
                                    ' endereco,' +
                                    ' numero,' +
                                    ' bairro,' +
                                    ' complemento,' +
                                    ' cep,' +
                                    ' codigo_cidade,' +
                                    ' nome_cidade,' +
                                    ' codigo_uf,' +
                                    ' nome_uf,' +
                                    ' certificado,' +
                                    ' senha_certificado,' +
                                    ' id_csc,' +
                                    ' token_csc' +
                                    ' FROM tab_emitente');
  dm_ConexaoPG.qry_Emitente.Open;
  dm_ConexaoPG.qry_Estados.Active := True;
  dm_ConexaoPG.qry_Cidades.Active := True;

  if dm_ConexaoPG.qry_Emitente.RecordCount > 0 then
  begin
    dm_ConexaoPG.qry_Emitente.Edit;
  end else
  begin
    dm_ConexaoPG.qry_Emitente.Insert;
  end;
  edt_Nome.SetFocus;
  pgc_Principal.ActivePage := tbs_Cadastro;
end;

procedure Tfrm_Emitente.lcbx_EstadosPropertiesEditValueChanged(Sender: TObject);
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

procedure Tfrm_Emitente.rdg_PessoaPropertiesEditValueChanged(Sender: TObject);
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
