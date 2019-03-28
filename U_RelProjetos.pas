unit U_RelProjetos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, RLFilters,
  RLPDFFilter;

type
  TFormRelProjetos = class(TForm)
    RLReportProjetos: TRLReport;
    Ds_RelProjetos: TDataSource;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLGroup1: TRLGroup;
    RLb_titulo: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand5: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel7: TRLLabel;
    RLDBTextValorProjeto: TRLDBText;
    RLBand6: TRLBand;
    RLDBResult1: TRLDBResult;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelProjetos: TFormRelProjetos;

implementation

{$R *.dfm}

uses U_DM;



end.
