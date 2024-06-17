unit unitSacar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.NumberBox,
  Vcl.ExtCtrls;

type
  TformSacar = class(TForm)

    Label1: TLabel;
    btnSacar: TButton;
    Label4: TLabel;
    lblSaldo: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblMsg: TLabel;
    btnDepositar: TButton;
    txtValor: TNumberBox;
    Panel1: TPanel;
    procedure btnSacarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSacar: TformSacar;

implementation

{$R *.dfm}

uses Unit5, formMenu, unitEditarPerfil;

procedure TformSacar.btnDepositarClick(Sender: TObject);
var
saldo: Real;
cpf: String;
begin
  DM.qDadosBancarios.Close;
  DM.qDadosBancarios.SQL.Clear;
  DM.qDadosBancarios.SQL.Add('Select * from dadosBancarios where cpf = '+''''+DM.qCadastro.FieldByName('cpf').AsString+'''');
  DM.qDadosBancarios.Open;
  if StrtoFloat(txtValor.Text) = 0 then
  begin
    lblMsg.Font.Color := clRed;
    lblMsg.Caption := 'Insira um valor';
  end
  else
  begin
    saldo := DM.qDadosBancarios.FieldByName('saldo').AsFloat;
    cpf :=  DM.qDadosBancarios.FieldByName('cpf').AsString;
    saldo := saldo + StrToFloat(txtValor.Text);

    DM.qDadosBancarios.SQL.Clear;
    DM.qDadosBancarios.SQL.Add('update dadosBancarios set saldo = '+FloatToStr(saldo)+ ' where cpf = '''+DM.qCadastro.FieldByName('cpf').AsString+'''');


    DM.qDadosBancarios.ExecSQL;
    lblMsg.Font.Color := clGreen;
    lblMsg.Caption := 'Dinheiro depositado com sucesso';

    DM.qExtrato.Close;
    DM.qExtrato.SQL.Clear;
    DM.qExtrato.SQL.Add('Insert into Extrato (processo,valor,horario,cpf)');
    DM.qExtrato.SQL.Add('Values (''Depositado'','+quotedStr(txtValor.Text)+',:pHorario,'''+cpf+''')');
    DM.qExtrato.ParamByName('pHorario').Value := FormatDateTime('YYYY-MM-DD HH:MM:SS',now);
    DM.qExtrato.ExecSQL;

    DM.qDadosBancarios.Close;
    DM.qDadosBancarios.SQL.Clear;
    DM.qDadosBancarios.SQL.Add('select saldo from dadosBancarios where cpf = '+''''+DM.qCadastro.FieldByName('cpf').AsString+'''');
    DM.qDadosBancarios.Open;
    lblSaldo.Caption := DM.qDadosBancarios.FieldByName('saldo').AsString;
    formMenuInicial.lblSaldo.Caption := DM.qDadosBancarios.FieldByName('saldo').AsString;
    formMenuInicial.Refresh;
  end;
  end;

procedure TformSacar.btnSacarClick(Sender: TObject);
var
cpf: String;
saldo: Real;
begin
  DM.qDAdosBancarios.Close;
  DM.qDadosBancarios.SQL.CLear;
  DM.qDadosBancarios.SQL.Add('Select cpf,saldo from dadosBancarios where cpf = '+''''+DM.qCadastro.FieldByName('cpf').AsString+'''');
  DM.qDadosBancarios.Open;
  if StrtoFloat(txtValor.Text) = 0 then
  begin
    lblMsg.Font.Color := clRed;
    lblMsg.Caption := 'Insira um valor';
  end
  else
  begin
    if DM.qDadosBancarios.fieldbyName('saldo').AsInteger < StrToFloat(txtValor.Text) then
    begin
      lblMsg.Font.Color := clRed;
      lblMsg.Caption := 'Erro! Saldo menor do que o valor a ser sacado';
    end
    else
    begin
      saldo := DM.qDadosBancarios.fieldbyName('saldo').asInteger;
      saldo := saldo - StrToFloat(txtValor.Text);
      cpf :=  DM.qDadosBancarios.FieldByName('cpf').AsString;
      DM.qDadosBancarios.Open;

      DM.qDadosBancarios.SQL.Clear;
      DM.qDadosBancarios.SQL.Add('update dadosBancarios set saldo = '+FloatToStr(saldo)+' where cpf = '''+DM.qCadastro.FieldByName('cpf').AsString+'''');
      DM.qDadosBancarios.ExecSQL;
      lblMsg.Font.Color := clGreen;
      lblMsg.Caption := 'Dinheiro sacado com sucesso';

      DM.qExtrato.Close;
      DM.qExtrato.SQL.Clear;
      DM.qExtrato.SQL.Add('Insert into Extrato (processo,valor,horario,cpf)');
      DM.qExtrato.SQL.Add('Values (''Sacado'','+quotedStr(txtValor.Text)+',:pHorario,'''+cpf+''')');
      DM.qExtrato.ParamByName('pHorario').Value := FormatDateTime('YYYY-MM-DD HH:MM:SS',now);
      DM.qExtrato.ExecSQL;

      DM.qDadosBancarios.Close;
      DM.qDadosBancarios.SQL.Clear;
      DM.qDadosBancarios.SQL.Add('select saldo from dadosBancarios where cpf = '+''''+DM.qCadastro.FieldByName('cpf').AsString+'''');
      DM.qDadosBancarios.Open;
      lblSaldo.Caption := DM.qDadosBancarios.FieldByName('saldo').AsString;
      formMenuInicial.lblSaldo.Caption := DM.qDadosBancarios.FieldByName('saldo').AsString;
      formMenuInicial.Refresh;
    end;
  end;
end;



procedure TformSacar.FormShow(Sender: TObject);
begin
//DM.qDadosBancarios.Close;
//DM.qDadosBancarios.SQL.Clear;
//DM.qDadosBancarios.SQL.Add('select saldo from dadosBancarios where cpf = '+''''+DM.qCadastro.FieldByName('cpf').AsString+'''');
//DM.qDadosBancarios.Open;
lblSaldo.Caption := DM.qDadosBancarios.FieldByName('saldo').AsString;
end;

end.
