object frmConsultaOperacao: TfrmConsultaOperacao
  Left = 0
  Top = 0
  Caption = 'frmConsultaOperacao'
  ClientHeight = 360
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
    Caption = 'OPERA'#199#213'ES'
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
    Height = 255
    Align = alClient
    TabOrder = 1
    ExplicitTop = 225
    ExplicitHeight = 425
    object DBGrid1: TDBGrid
      Left = 19
      Top = 16
      Width = 598
      Height = 224
      DataSource = DataModule1.ds_operacao
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
          FieldName = 'hp_mes'
          Title.Caption = 'M'#234's'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hp_cliente'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hp_operacao'
          Title.Caption = 'Tipo Operacao'
          Visible = True
        end>
    end
  end
end
