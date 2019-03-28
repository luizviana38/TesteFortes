unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDQ_Epregado: TFDQuery;
    FDQ_Dependente: TFDQuery;
    FDUpdateSQL_Emp: TFDUpdateSQL;
    FDUpdateSQL_Dep: TFDUpdateSQL;
    FDQ_DependenteRG_RESP: TIntegerField;
    FDQ_DependenteDEPEN_NOME: TStringField;
    FDQ_DependenteDATA_NASCIMENTO: TDateField;
    FDQ_DependentePARENTESCO: TStringField;
    FDQ_DependenteSEXO: TWideStringField;
    FDQ_EpregadoRG: TIntegerField;
    FDQ_EpregadoNOME: TStringField;
    FDQ_EpregadoCIC: TStringField;
    FDQ_EpregadoSALARIO: TFMTBCDField;
    FDQ_EpregadoDEP_NUM: TIntegerField;
    FDQ_EpregadoRG_GERENTE: TStringField;
    FDQ_RelEmpregados: TFDQuery;
    FDQ_RelEmpregadosRG: TIntegerField;
    FDQ_RelEmpregadosNOME: TStringField;
    FDQ_RelEmpregadosCIC: TStringField;
    FDQ_RelEmpregadosSALARIO: TFMTBCDField;
    FDQ_RelEmpregadosDEP_NUM: TIntegerField;
    FDQ_RelEmpregadosRG_GERENTE: TStringField;
    FDQ_RelEmpregadosRG_RESP: TIntegerField;
    FDQ_RelEmpregadosDEPEN_NOME: TStringField;
    FDQ_RelEmpregadosDATA_NASCIMENTO: TDateField;
    FDQ_RelEmpregadosPARENTESCO: TStringField;
    FDQ_RelEmpregadosSEXO: TWideStringField;
    FDQ_Relprojetos: TFDQuery;
    FDQ_RelprojetosP_NUM: TIntegerField;
    FDQ_RelprojetosP_LOCAL: TStringField;
    FDQ_RelprojetosP_VALOR: TFMTBCDField;
    FDQ_RelprojetosRG: TIntegerField;
    FDQ_RelprojetosNOME: TStringField;
    FDQ_RelprojetosHORAS: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_CadastroEmpregados;

{$R *.dfm}

end.
