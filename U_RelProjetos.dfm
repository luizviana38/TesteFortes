object FormRelProjetos: TFormRelProjetos
  Left = 0
  Top = 0
  Caption = 'RELAT'#211'RIO DE PROJETOS'
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
  object RLReportProjetos: TRLReport
    Left = 16
    Top = 8
    Width = 794
    Height = 1123
    DataSource = Ds_RelProjetos
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
        Width = 154
        Height = 18
        Caption = 'Relat'#243'rio de projetos'
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
        Width = 63
        Height = 16
        Caption = 'N'#186' Projeto'
      end
      object RLLabel2: TRLLabel
        Left = 112
        Top = 69
        Width = 96
        Height = 16
        Caption = 'Local do projeto'
      end
      object RLLabel7: TRLLabel
        Left = 237
        Top = 69
        Width = 95
        Height = 16
        Caption = 'Valor do projeto'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 257
      Width = 718
      Height = 51
      BandType = btFooter
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 139
      Width = 718
      Height = 118
      DataFields = 'P_NUM'
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
          Left = 16
          Top = 2
          Width = 90
          Height = 18
          AutoSize = False
          DataField = 'NUM_PROJ'
          DataSource = Ds_RelProjetos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 112
          Top = 0
          Width = 96
          Height = 18
          AutoSize = False
          DataField = 'P_LOCAL'
          DataSource = Ds_RelProjetos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBTextValorProjeto: TRLDBText
          Left = 237
          Top = 0
          Width = 96
          Height = 18
          AutoSize = False
          DataField = 'P_VALOR'
          DataSource = Ds_RelProjetos
          DisplayMask = '##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 370
          Top = 3
          Width = 34
          Height = 14
          DataField = 'NOME'
          DataSource = Ds_RelProjetos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 611
          Top = 2
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'HORAS'
          DataSource = Ds_RelProjetos
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
          Left = 364
          Top = 3
          Width = 106
          Height = 16
          Caption = 'Nome empregado'
        end
        object RLLabel4: TRLLabel
          Left = 628
          Top = 0
          Width = 54
          Height = 16
          Caption = 'N'#186' horas'
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 62
        Width = 718
        Height = 27
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 375
          Top = 8
          Width = 309
          Height = 16
          Alignment = taRightJustify
          DataField = 'HORAS'
          DataSource = Ds_RelProjetos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Total de horas trabalhadas...:    '
        end
      end
    end
  end
  object Ds_RelProjetos: TDataSource
    DataSet = DM.FDQ_Relprojetos
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
