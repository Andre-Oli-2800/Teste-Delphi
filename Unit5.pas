unit Unit5;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TDataModule)
    dsCadastro: TDataSource;
    Conexao: TFDConnection;
    tbCadastro: TFDTable;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    tbCadastrocpf: TIntegerField;
    tbCadastronome: TStringField;
    tbCadastrosobrenome: TStringField;
    tbCadastroemail: TStringField;
    tbCadastrosexo: TStringField;
    tbCadastrodataNascimento: TDateField;
    tbCadastrotelefone: TStringField;
    tbCadastrocelular: TStringField;
    tbCadastrosenha: TStringField;
    qCadastro: TFDQuery;
    qDadosBancarios: TFDQuery;
    dsDadosBancarios: TDataSource;
    dsExtrato: TDataSource;
    qExtrato: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses telaTeste;

{$R *.dfm}

end.
