object FormRelEmpregadosDepe: TFormRelEmpregadosDepe
  Left = 0
  Top = 0
  Caption = 'RELT'#211'RIO DE EMPREGADOS E DEPENDENTES'
  ClientHeight = 433
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportEmp: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = Ds_RelEmpregados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 101
      BandType = btHeader
      object RLb_titulo: TRLLabel
        Left = 16
        Top = 32
        Width = 183
        Height = 18
        Caption = 'Relat'#243'rio de empregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 91
        Width = 689
        Height = 4
        Brush.Color = clBlack
        Color = clBackground
        ParentColor = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 595
        Top = 3
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 16
        Top = 69
        Width = 23
        Height = 16
        Caption = 'RG'
      end
      object RLLabel2: TRLLabel
        Left = 110
        Top = 69
        Width = 108
        Height = 16
        Caption = 'Nome Empregado'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 214
      Width = 718
      Height = 51
      BandType = btFooter
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 139
      Width = 718
      Height = 75
      DataFields = 'RG'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btColumnHeader
        Color = clActiveBorder
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 14
          Top = 1
          Width = 90
          Height = 18
          AutoSize = False
          DataField = 'RG'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 108
          Top = 0
          Width = 434
          Height = 18
          AutoSize = False
          DataField = 'NOME'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 21
        GroupIndex = 1
        object RLDBText3: TRLDBText
          Left = 224
          Top = 3
          Width = 73
          Height = 14
          DataField = 'DEPEN_NOME'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 456
          Top = 3
          Width = 73
          Height = 16
          AutoSize = False
          DataField = 'DATA_NASCIMENTO'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 552
          Top = 3
          Width = 82
          Height = 16
          AutoSize = False
          DataField = 'PARENTESCO'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 658
          Top = 3
          Width = 57
          Height = 16
          AutoSize = False
          DataField = 'SEXO'
          DataSource = Ds_RelEmpregados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 22
        BandType = btColumnHeader
        object RLLabel3: TRLLabel
          Left = 224
          Top = 3
          Width = 109
          Height = 16
          Caption = 'Nome dependente'
        end
        object RLLabel4: TRLLabel
          Left = 456
          Top = 0
          Width = 73
          Height = 16
          Caption = 'Nascimento'
        end
        object RLLabel5: TRLLabel
          Left = 552
          Top = 0
          Width = 70
          Height = 16
          Caption = 'Parentesco'
        end
        object RLLabel6: TRLLabel
          Left = 658
          Top = 0
          Width = 34
          Height = 16
          Caption = 'Sexo'
        end
      end
    end
  end
  object Ds_RelEmpregados: TDataSource
    DataSet = DM.FDQ_RelEmpregados
    Left = 504
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 360
    Top = 272
  end
end
