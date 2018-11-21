object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  Caption = 'frmConsultaCliente'
  ClientHeight = 344
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 105
    Align = alTop
    Caption = 'CLIENTES'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 635
    Height = 239
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 68
      Height = 23
      Caption = 'Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 43
      Width = 561
      Height = 190
      DataSource = dm.ds_cliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_rg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_ie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_tel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_nasc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 489
      Height = 21
      TabOrder = 1
    end
  end
end
