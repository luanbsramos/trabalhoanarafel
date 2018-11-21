object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 494
  Width = 725
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=contabilidade'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 104
    Top = 168
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'D:\Documentos\Projetos Delphi\Sistema de Gerenciamento de Contab' +
      'ilidade\libmySQL.dll'
    Left = 240
    Top = 168
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 96
  end
  object tb_bairro: TFDTable
    IndexFieldNames = 'Id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'contabilidade.bairro'
    TableName = 'contabilidade.bairro'
    Left = 104
    Top = 240
    object tb_bairroId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ReadOnly = True
    end
    object tb_bairrobai_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bai_nome'
      Origin = 'bai_nome'
      Size = 100
    end
  end
  object ds_bairro: TDataSource
    DataSet = tb_bairro
    Left = 104
    Top = 304
  end
  object tb_cidade: TFDTable
    IndexFieldNames = 'Id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'contabilidade.cidade'
    TableName = 'contabilidade.cidade'
    Left = 184
    Top = 248
    object tb_cidadeId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_cidadecid_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cid_nome'
      Origin = 'cid_nome'
      Size = 100
    end
    object tb_cidadecid_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cid_uf'
      Origin = 'cid_uf'
      Size = 10
    end
  end
  object tb_cliente: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'contabilidade.cliente'
    TableName = 'contabilidade.cliente'
    Left = 256
    Top = 248
    object tb_clienteid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_clientecli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 150
    end
    object tb_clientecli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      EditMask = '000.000.000-00;1;_'
      Size = 50
    end
    object tb_clientecli_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cnpj'
      Origin = 'cli_cnpj'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 80
    end
    object tb_clientecli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Size = 50
    end
    object tb_clientecli_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_ie'
      Origin = 'cli_ie'
      Size = 80
    end
    object tb_clientecli_tel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_tel'
      Origin = 'cli_tel'
      EditMask = '(00)0000-0000;1;_'
      Size = 30
    end
    object tb_clientecli_cel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cel'
      Origin = 'cli_cel'
      EditMask = '(00)00000-0000;1;_'
      Size = 30
    end
    object tb_clientecli_nasc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nasc'
      Origin = 'cli_nasc'
      EditMask = '00/00/0000;1;_'
      Size = 15
    end
    object tb_clientecli_abertura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_abertura'
      Origin = 'cli_abertura'
      EditMask = '00/00/0000;1;_'
      Size = 15
    end
    object tb_clientecli_bairro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
    end
    object tb_clientecli_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
    end
    object tb_clientebairros: TStringField
      FieldKind = fkLookup
      FieldName = 'bairros'
      LookupDataSet = tb_bairro
      LookupKeyFields = 'Id'
      LookupResultField = 'bai_nome'
      KeyFields = 'cli_bairro'
      Size = 100
      Lookup = True
    end
    object tb_clientecidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cidade'
      LookupDataSet = tb_cidade
      LookupKeyFields = 'Id'
      LookupResultField = 'cid_nome'
      KeyFields = 'cli_cidade'
      Lookup = True
    end
  end
  object tb_operacao: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'contabilidade.historico_operacao'
    TableName = 'contabilidade.historico_operacao'
    Left = 344
    Top = 256
    object tb_operacaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_operacaohp_mes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hp_mes'
      Origin = 'hp_mes'
      Size = 30
    end
    object tb_operacaohp_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'hp_cliente'
      Origin = 'hp_cliente'
    end
    object tb_operacaohp_operacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'hp_operacao'
      Origin = 'hp_operacao'
    end
    object tb_operacaoclientes: TStringField
      FieldKind = fkLookup
      FieldName = 'clientes'
      LookupDataSet = tb_cliente
      LookupKeyFields = 'id'
      LookupResultField = 'cli_nome'
      KeyFields = 'hp_cliente'
      Lookup = True
    end
    object tb_operacaotipoop: TStringField
      FieldKind = fkLookup
      FieldName = 'tipoop'
      LookupDataSet = tb_tipooperacao
      LookupKeyFields = 'id'
      LookupResultField = 'op_tipo'
      KeyFields = 'hp_operacao'
      Lookup = True
    end
    object tb_operacaovalorop: TFloatField
      FieldKind = fkLookup
      FieldName = 'valorop'
      LookupDataSet = tb_tipooperacao
      LookupKeyFields = 'id'
      LookupResultField = 'op_valor'
      KeyFields = 'hp_operacao'
      Lookup = True
    end
  end
  object tb_tipooperacao: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'contabilidade.operacao'
    TableName = 'contabilidade.operacao'
    Left = 440
    Top = 264
    object tb_tipooperacaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tb_tipooperacaoop_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'op_tipo'
      Origin = 'op_tipo'
      Size = 40
    end
    object tb_tipooperacaoop_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'op_descricao'
      Origin = 'op_descricao'
      Size = 100
    end
    object tb_tipooperacaoop_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'op_valor'
      Origin = 'op_valor'
    end
  end
  object ds_cidade: TDataSource
    DataSet = tb_cidade
    Left = 192
    Top = 312
  end
  object ds_cliente: TDataSource
    DataSet = tb_cliente
    Left = 264
    Top = 320
  end
  object ds_operacao: TDataSource
    DataSet = tb_operacao
    Left = 352
    Top = 320
  end
  object ds_tipooperacao: TDataSource
    DataSet = tb_tipooperacao
    Left = 448
    Top = 328
  end
  object qcli_bai: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select bai_nome from bairro')
    Left = 184
    Top = 384
  end
  object qcli_cid: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select cid_nome from cidade')
    Left = 184
    Top = 440
  end
  object DataSource1: TDataSource
    DataSet = qcli_bai
    Left = 232
    Top = 392
  end
end
