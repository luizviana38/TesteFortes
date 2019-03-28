unit U_CadastroEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormEmpregados = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Dependentes: TTabSheet;
    DBGridEmpregado: TDBGrid;
    DBGridDependente: TDBGrid;
    Panel1: TPanel;
    btnNovoDep: TBitBtn;
    btnAlterarDep: TBitBtn;
    btnCancelarDep: TBitBtn;
    btnExcluirDep: TBitBtn;
    Panel2: TPanel;
    btnAlterarEmp: TBitBtn;
    btnCancelarEmp: TBitBtn;
    btnExcluirEmp: TBitBtn;
    Label7: TLabel;
    DBEdit_RG_REP: TDBEdit;
    Label8: TLabel;
    DBEdit_DEPEN_NOME: TDBEdit;
    Label9: TLabel;
    DBEdit_DT_NASCIMENTPO_DEP: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit_RG: TDBEdit;
    Label2: TLabel;
    DBEdit_NOME_EMP: TDBEdit;
    Label3: TLabel;
    DBEdit_CIC_EMP: TDBEdit;
    Label4: TLabel;
    DBEdit_SAL_EMP: TDBEdit;
    Label5: TLabel;
    DBEdit_NUM_DEP: TDBEdit;
    Label6: TLabel;
    DBEdit_RG_GERENTE: TDBEdit;
    Ds_Empregado: TDataSource;
    Ds_Dependente: TDataSource;
    Edit_PesquisaEmp: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit_PequisaDep: TEdit;
    btnNovoEmp: TBitBtn;
    btnSalvarDep: TBitBtn;
    btnSalvarEmp: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure btnAlterarEmpClick(Sender: TObject);
    procedure btnCancelarEmpClick(Sender: TObject);
    procedure btnExcluirEmpClick(Sender: TObject);
    procedure btnNovoDepClick(Sender: TObject);
    procedure btnAlterarDepClick(Sender: TObject);
    procedure btnCancelarDepClick(Sender: TObject);
    procedure btnExcluirDepClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnSalvarEmpClick(Sender: TObject);
    procedure Ds_EmpregadoStateChange(Sender: TObject);
    procedure Ds_DependenteStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit_PesquisaEmpKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_PequisaDepKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarDepClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmpregados: TFormEmpregados;

implementation

{$R *.dfm}

uses U_DM;


procedure TFormEmpregados.BitBtn3Click(Sender: TObject);
begin
  DM.FDQ_Epregado.Append;
  DBEdit_RG.SetFocus;
end;

procedure TFormEmpregados.btnAlterarDepClick(Sender: TObject);
begin
  DM.FDQ_Dependente.Edit;
end;

procedure TFormEmpregados.btnAlterarEmpClick(Sender: TObject);
begin
  DM.FDQ_Epregado.Edit;
  DBEdit_RG.SetFocus
end;

procedure TFormEmpregados.btnCancelarDepClick(Sender: TObject);
begin
  DM.FDQ_Dependente.Cancel;
end;

procedure TFormEmpregados.btnCancelarEmpClick(Sender: TObject);
begin
  DM.FDQ_Epregado.Cancel;
  DBEdit_RG.SetFocus
end;

procedure TFormEmpregados.btnExcluirDepClick(Sender: TObject);
begin
  if Application.MessageBox(' Quer realmente excluir esse dependente? ','Aviso',MB_YESNOCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2) = IdYes then
  DM.FDQ_Dependente.Delete;
end;

procedure TFormEmpregados.btnExcluirEmpClick(Sender: TObject);
begin
  if Application.MessageBox(' Quer realmente excluir esse empregado e todos os seus dependentes? ','Aviso',MB_YESNOCANCEL + MB_ICONINFORMATION + MB_DEFBUTTON2) = IdYes then
  begin
    DM.FDQ_Epregado.Delete;
    DM.FDQ_Dependente.Delete;
  end;
end;

procedure TFormEmpregados.btnNovoDepClick(Sender: TObject);
begin
begin
  DM.FDQ_Dependente.Append;
end;

 end;

procedure TFormEmpregados.btnSalvarDepClick(Sender: TObject);
begin
  DM.FDQ_Dependente.Post;
end;

procedure TFormEmpregados.btnSalvarEmpClick(Sender: TObject);
begin
  DM.FDQ_Epregado.Post;
end;

procedure TFormEmpregados.Ds_DependenteStateChange(Sender: TObject);
begin
   btnNovoDep.Enabled := (Sender as TDataSource).State in [dsBrowse];
   btnSalvarDep.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert];
   btnCancelarDep.Enabled := btnSalvarDep.Enabled;
   btnAlterarDep.Enabled := (btnNovoDep.Enabled) and not ((Sender as TDataSource).DataSet.IsEmpty);
   btnExcluirDep.Enabled := btnAlterarDep.Enabled;
end;

procedure TFormEmpregados.Ds_EmpregadoStateChange(Sender: TObject);
begin
   btnNovoEmp.Enabled := (Sender as TDataSource).State in [dsBrowse];
   btnSalvarEmp.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert];
   btnCancelarEmp.Enabled := btnSalvarEmp.Enabled;
   btnAlterarEmp.Enabled := (btnNovoEmp.Enabled) and not ((Sender as TDataSource).DataSet.IsEmpty);
   btnExcluirEmp.Enabled := btnAlterarEmp.Enabled;
end;

procedure TFormEmpregados.Edit_PesquisaEmpKeyPress(Sender: TObject; var Key: Char);
begin
  DM.FDQ_Epregado.Locate('NOME',Edit_PesquisaEmp.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFormEmpregados.Edit_PequisaDepKeyPress(Sender: TObject; var Key: Char);
begin
  DM.FDQ_Dependente.Locate('DEPEN_NOME',Edit_PequisaDep.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFormEmpregados.FormActivate(Sender: TObject);
begin
  DM.FDQ_Epregado.Close;
  DM.FDQ_Epregado.Open;
  DM.FDQ_Dependente.Close;
  DM.FDQ_Dependente.Open;
end;

end.
