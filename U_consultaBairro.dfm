object frmConsultaBairro: TfrmConsultaBairro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsultaBairro'
  ClientHeight = 472
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
    Caption = 'BAIRROS'
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
    Height = 367
    Align = alClient
    TabOrder = 1
    ExplicitTop = 111
    ExplicitWidth = 635
    ExplicitHeight = 345
    object Label1: TLabel
      Left = 56
      Top = 43
      Width = 20
      Height = 23
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 316
      Top = 42
      Width = 49
      Height = 23
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 93
      Width = 569
      Height = 204
      DataSource = dm.ds_bairro
      ReadOnly = True
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
          FieldName = 'bai_nome'
          Title.Caption = 'Bairro'
          Width = 300
          Visible = True
        end>
    end
    object btn_alt: TButton
      Left = 32
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btn_altClick
    end
    object btn_canc: TButton
      Left = 136
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_cancClick
    end
    object btn_exc: TButton
      Left = 240
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btn_excClick
    end
    object btn_ant: TButton
      Left = 432
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 4
      OnClick = btn_antClick
    end
    object btn_pro: TButton
      Left = 526
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Proximo'
      TabOrder = 5
      OnClick = btn_proClick
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 43
      Width = 121
      Height = 21
      DataField = 'Id'
      DataSource = dm.ds_bairro
      ReadOnly = True
      TabOrder = 6
    end
    object edt_nome: TDBEdit
      Left = 392
      Top = 43
      Width = 121
      Height = 21
      DataField = 'bai_nome'
      DataSource = dm.ds_bairro
      TabOrder = 7
    end
    object btn_sav: TButton
      Left = 335
      Top = 312
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 8
      OnClick = btn_savClick
    end
  end
end
