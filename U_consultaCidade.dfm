object frmConsultaCidade: TfrmConsultaCidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsultaCidade'
  ClientHeight = 424
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 105
    Align = alTop
    Caption = 'CIDADES'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 635
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 645
    Height = 319
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 635
    ExplicitHeight = 255
    object DBGrid1: TDBGrid
      Left = 32
      Top = 51
      Width = 561
      Height = 190
      DataSource = dm.ds_cidade
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cid_nome'
          Title.Caption = 'Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cid_uf'
          Title.Caption = 'UF'
          Visible = True
        end>
    end
    object btn_alt: TButton
      Left = 32
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btn_altClick
    end
    object btn_canc: TButton
      Left = 136
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_cancClick
    end
    object btn_exc: TButton
      Left = 240
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btn_excClick
    end
    object btn_sav: TButton
      Left = 335
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = btn_savClick
    end
    object btn_ant: TButton
      Left = 432
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 5
      OnClick = btn_antClick
    end
    object btn_pro: TButton
      Left = 526
      Top = 260
      Width = 75
      Height = 25
      Caption = 'Proximo'
      TabOrder = 6
      OnClick = btn_proClick
    end
  end
end
