object frmSelecionarCertificado: TfrmSelecionarCertificado
  Left = 355
  Top = 229
  ActiveControl = StringGrid1
  Caption = 'Selecionar Certificado'
  ClientHeight = 347
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 25
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 759
    Height = 280
    Align = alClient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 759
    Height = 67
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      759
      67)
    object BitBtn1: TBitBtn
      Left = 505
      Top = 6
      Width = 120
      Height = 51
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 631
      Top = 6
      Width = 122
      Height = 51
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
