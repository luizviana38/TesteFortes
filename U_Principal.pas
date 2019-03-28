unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    RadioGroup1: TRadioGroup;
    Bt_RelEmpregados: TBitBtn;
    Bt_RelProjetos: TBitBtn;
    RadioGroup2: TRadioGroup;
    Bt_CadEmpregados: TBitBtn;
    BitBtn1: TBitBtn;
    procedure Bt_CadEmpregadosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Bt_RelEmpregadosClick(Sender: TObject);
    procedure Bt_RelProjetosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses U_CadastroEmpregados, U_RelEmpregadosDependentes, U_DM, U_RelProjetos;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.Bt_CadEmpregadosClick(Sender: TObject);
var FormEmpregados : TFormEmpregados;
begin
  FormEmpregados := TFormEmpregados.Create(self);
  FormEmpregados.ShowModal;
end;

procedure TFormPrincipal.Bt_RelEmpregadosClick(Sender: TObject);
var FormRelEmpregadosDepe:TFormRelEmpregadosDepe;
begin
  FormRelEmpregadosDepe := TFormRelEmpregadosDepe.Create(Self);
  DM.FDQ_RelEmpregados.Close;
  DM.FDQ_RelEmpregados.Open;
  FormRelEmpregadosDepe.RLReportEmp.Preview();
end;

procedure TFormPrincipal.Bt_RelProjetosClick(Sender: TObject);
var FormRelProjetos:TFormRelProjetos;
begin
  FormRelProjetos := TFormRelProjetos.Create(Self);
  DM.FDQ_Relprojetos.Close;
  DM.FDQ_Relprojetos.Open;
  FormRelProjetos.RLReportProjetos.Preview();
end;

end.
