program Fortes;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {FormPrincipal},
  U_CadastroEmpregados in 'U_CadastroEmpregados.pas' {FormEmpregados},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_RelProjetos in 'U_RelProjetos.pas' {FormRelProjetos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
