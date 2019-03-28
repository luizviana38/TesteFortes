object DM: TDM
  OldCreateOrder = False
  Height = 407
  Width = 674
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=FORTES'
      'User_Name=FORTES'
      'Password=FORTES'
      'Server=LUIZ-PC\SQLEXPRESS'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 96
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 56
    Top = 168
  end
  object FDQ_Epregado: TFDQuery
    Connection = FDConnection1
    UpdateObject = FDUpdateSQL_Emp
    SQL.Strings = (
      'SELECT * FROM EMPREGADO')
    Left = 376
    Top = 48
    object FDQ_EpregadoRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_EpregadoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQ_EpregadoCIC: TStringField
      FieldName = 'CIC'
      Origin = 'CIC'
    end
    object FDQ_EpregadoSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDQ_EpregadoDEP_NUM: TIntegerField
      FieldName = 'DEP_NUM'
      Origin = 'DEP_NUM'
      Required = True
    end
    object FDQ_EpregadoRG_GERENTE: TStringField
      FieldName = 'RG_GERENTE'
      Origin = 'RG_GERENTE'
    end
  end
  object FDQ_Dependente: TFDQuery
    IndexFieldNames = 'RG_RESP'
    MasterSource = FormEmpregados.Ds_Empregado
    MasterFields = 'RG'
    DetailFields = 'RG_RESP'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM DEPENDENTE')
    Left = 376
    Top = 128
    object FDQ_DependenteRG_RESP: TIntegerField
      FieldName = 'RG_RESP'
      Origin = 'RG_RESP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_DependenteDEPEN_NOME: TStringField
      FieldName = 'DEPEN_NOME'
      Origin = 'DEPEN_NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQ_DependenteDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object FDQ_DependentePARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Origin = 'PARENTESCO'
      Required = True
    end
    object FDQ_DependenteSEXO: TWideStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      FixedChar = True
      Size = 10
    end
  end
  object FDUpdateSQL_Emp: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FORTES.dbo.EMPREGADO'
      '(RG, NOME, CIC, SALARIO, DEP_NUM, RG_GERENTE)'
      
        'VALUES (:NEW_RG, :NEW_NOME, :NEW_CIC, :NEW_SALARIO, :NEW_DEP_NUM' +
        ', :NEW_RG_GERENTE)')
    ModifySQL.Strings = (
      'UPDATE FORTES.dbo.EMPREGADO'
      
        'SET RG = :NEW_RG, NOME = :NEW_NOME, CIC = :NEW_CIC, SALARIO = :N' +
        'EW_SALARIO, '
      '  DEP_NUM = :NEW_DEP_NUM, RG_GERENTE = :NEW_RG_GERENTE'
      'WHERE RG = :OLD_RG')
    DeleteSQL.Strings = (
      'DELETE FROM FORTES.dbo.EMPREGADO'
      'WHERE RG = :OLD_RG')
    FetchRowSQL.Strings = (
      'SELECT RG, NOME, CIC, SALARIO, DEP_NUM, RG_GERENTE'
      'FROM FORTES.dbo.EMPREGADO'
      'WHERE RG = :RG')
    Left = 592
    Top = 56
  end
  object FDUpdateSQL_Dep: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FORTES.dbo.DEPENDENTE'
      '(RG_RESP, DEPEN_NOME, DATA_NASCIMENTO, PARENTESCO, '
      '  SEXO)'
      
        'VALUES (:NEW_RG_RESP, :NEW_DEPEN_NOME, :NEW_DATA_NASCIMENTO, :NE' +
        'W_PARENTESCO, '
      '  :NEW_SEXO)')
    ModifySQL.Strings = (
      'UPDATE FORTES.dbo.DEPENDENTE'
      
        'SET RG_RESP = :NEW_RG_RESP, DEPEN_NOME = :NEW_DEPEN_NOME, DATA_N' +
        'ASCIMENTO = :NEW_DATA_NASCIMENTO, '
      '  PARENTESCO = :NEW_PARENTESCO, SEXO = :NEW_SEXO'
      'WHERE RG_RESP = :OLD_RG_RESP AND DEPEN_NOME = :OLD_DEPEN_NOME')
    DeleteSQL.Strings = (
      'DELETE FROM FORTES.dbo.DEPENDENTE'
      'WHERE RG_RESP = :OLD_RG_RESP AND DEPEN_NOME = :OLD_DEPEN_NOME')
    FetchRowSQL.Strings = (
      'SELECT RG_RESP, DEPEN_NOME, DATA_NASCIMENTO, PARENTESCO, SEXO'
      'FROM FORTES.dbo.DEPENDENTE'
      'WHERE RG_RESP = :RG_RESP AND DEPEN_NOME = :DEPEN_NOME')
    Left = 584
    Top = 128
  end
  object FDQ_RelEmpregados: TFDQuery
    IndexFieldNames = 'RG_RESP'
    MasterSource = FormEmpregados.Ds_Empregado
    MasterFields = 'RG'
    DetailFields = 'RG_RESP'
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM EMPREGADO A LEFT JOIN DEPENDENTE B ON A.RG = B.RG_' +
        'RESP'
      'ORDER BY A.RG')
    Left = 376
    Top = 200
    object FDQ_RelEmpregadosRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_RelEmpregadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQ_RelEmpregadosCIC: TStringField
      FieldName = 'CIC'
      Origin = 'CIC'
    end
    object FDQ_RelEmpregadosSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDQ_RelEmpregadosDEP_NUM: TIntegerField
      FieldName = 'DEP_NUM'
      Origin = 'DEP_NUM'
      Required = True
    end
    object FDQ_RelEmpregadosRG_GERENTE: TStringField
      FieldName = 'RG_GERENTE'
      Origin = 'RG_GERENTE'
    end
    object FDQ_RelEmpregadosRG_RESP: TIntegerField
      FieldName = 'RG_RESP'
      Origin = 'RG_RESP'
    end
    object FDQ_RelEmpregadosDEPEN_NOME: TStringField
      FieldName = 'DEPEN_NOME'
      Origin = 'DEPEN_NOME'
      Size = 50
    end
    object FDQ_RelEmpregadosDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object FDQ_RelEmpregadosPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Origin = 'PARENTESCO'
    end
    object FDQ_RelEmpregadosSEXO: TWideStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 10
    end
  end
  object FDQ_Relprojetos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT A.P_NUM, '
      '       A.P_LOCAL, '
      #9'   A.P_VALOR,'
      #9'   B.RG,'
      #9'   B.NOME,'
      #9'   C.HORAS'
      '  FROM PROJETO A, '
      '       EMPREGADO B, '
      #9'   EMP_PROJETO C'
      ' WHERE A.P_NUM = C.NUM_PROJ'
      '   AND C.RG_EMP = B.RG'
      'ORDER BY C.NUM_PROJ')
    Left = 376
    Top = 280
    object FDQ_RelprojetosP_NUM: TIntegerField
      FieldName = 'P_NUM'
      Origin = 'P_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_RelprojetosP_LOCAL: TStringField
      FieldName = 'P_LOCAL'
      Origin = 'P_LOCAL'
      Size = 50
    end
    object FDQ_RelprojetosP_VALOR: TFMTBCDField
      FieldName = 'P_VALOR'
      Origin = 'P_VALOR'
      Required = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQ_RelprojetosRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
      Required = True
    end
    object FDQ_RelprojetosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQ_RelprojetosHORAS: TFMTBCDField
      FieldName = 'HORAS'
      Origin = 'HORAS'
      Required = True
      DisplayFormat = '##.00'
      Precision = 18
      Size = 2
    end
  end
end
