object frmEmissao: TfrmEmissao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emissao de Guias'
  ClientHeight = 460
  ClientWidth = 925
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
    Width = 925
    Height = 105
    Align = alTop
    Caption = 'EMISS'#195'O DE GUIAS'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 328
    ExplicitTop = 280
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 925
    Height = 355
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1107
    ExplicitHeight = 416
    object Label1: TLabel
      Left = 16
      Top = 31
      Width = 13
      Height = 19
      Caption = 'id'
      FocusControl = edt_id
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 78
      Width = 27
      Height = 19
      Caption = 'M'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 120
      Width = 118
      Height = 19
      Caption = 'Nome do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 169
      Width = 126
      Height = 19
      Caption = 'Tipo de Opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 222
      Width = 131
      Height = 19
      Caption = 'Valor da Opera'#231#227'o'
      FocusControl = edt_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt_id: TDBEdit
      Left = 16
      Top = 52
      Width = 134
      Height = 21
      DataField = 'id'
      DataSource = dm.ds_operacao
      Enabled = False
      TabOrder = 0
    end
    object edt_valor: TDBEdit
      Left = 16
      Top = 247
      Width = 134
      Height = 21
      DataField = 'valorop'
      DataSource = dm.ds_operacao
      TabOrder = 1
    end
    object edt_mes: TDBComboBox
      Left = 16
      Top = 99
      Width = 241
      Height = 21
      DataField = 'hp_mes'
      DataSource = dm.ds_operacao
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
      TabOrder = 2
    end
    object btn_novo: TButton
      Left = 16
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = btn_novoClick
    end
    object btn_salvar: TButton
      Left = 150
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TButton
      Left = 278
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btn_cancelarClick
    end
    object edt_cli: TDBLookupComboBox
      Left = 16
      Top = 145
      Width = 145
      Height = 21
      DataField = 'hp_cliente'
      DataSource = dm.ds_operacao
      KeyField = 'id'
      ListField = 'cli_nome'
      ListSource = dm.ds_cliente
      TabOrder = 6
    end
    object edt_op: TDBLookupComboBox
      Left = 16
      Top = 194
      Width = 145
      Height = 21
      DataField = 'hp_operacao'
      DataSource = dm.ds_operacao
      KeyField = 'id'
      ListField = 'op_descricao'
      ListSource = dm.ds_tipooperacao
      TabOrder = 7
    end
  end
end
