unit U_RelEmpregadosDependentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, RLFilters,
  RLPDFFilter;

type
  TFormRelEmpregadosDepe = class(TForm)
    RLReportEmp: TRLReport;
    Ds_RelEmpregados: TDataSource;
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
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand5: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelEmpregadosDepe: TFormRelEmpregadosDepe;

implementation

{$R *.dfm}

uses U_DM;

end.
