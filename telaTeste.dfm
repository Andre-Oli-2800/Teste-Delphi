object formCadastro: TformCadastro
  Left = 0
  Top = 0
  Caption = 'formCadastro'
  ClientHeight = 556
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 37
  object Label1: TLabel
    Left = 79
    Top = 208
    Width = 54
    Height = 28
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 305
    Top = 88
    Width = 115
    Height = 37
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 250
    Width = 47
    Height = 28
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 352
    Top = 166
    Width = 102
    Height = 28
    Caption = 'Sobrenome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 79
    Top = 332
    Width = 53
    Height = 28
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 352
    Top = 250
    Width = 60
    Height = 28
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 352
    Top = 208
    Width = 5
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 352
    Top = 333
    Width = 145
    Height = 28
    Caption = 'Confirmar Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 352
    Top = 208
    Width = 42
    Height = 28
    Caption = 'Sexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 166
    Width = 33
    Height = 28
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 352
    Top = 292
    Width = 177
    Height = 28
    Caption = 'Data de Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 80
    Top = 292
    Width = 72
    Height = 28
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblMsg: TLabel
    Left = 80
    Top = 479
    Width = 18
    Height = 37
    Caption = '...'
  end
  object btnCadastrar: TButton
    Left = 261
    Top = 408
    Width = 99
    Height = 49
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object btnLogin: TButton
    Left = 449
    Top = 408
    Width = 97
    Height = 49
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object txtDataNascimento: TDateTimePicker
    Left = 534
    Top = 287
    Width = 165
    Height = 36
    Date = 36865.000000000000000000
    Time = 36865.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxDate = 38718.999988425920000000
    MinDate = 2.000000000000000000
    ParentFont = False
    TabOrder = 2
  end
  object txtConfirSenha: TEdit
    Left = 534
    Top = 329
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object txtCelular: TMaskEdit
    Left = 534
    Top = 247
    Width = 164
    Height = 36
    EditMask = '(##)#####-####;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 4
    Text = '(  )     -    '
  end
  object txtTelefone: TMaskEdit
    Left = 163
    Top = 290
    Width = 165
    Height = 36
    EditMask = '(##)####-####;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 5
    Text = '(  )    -    '
  end
  object txtCpf: TMaskEdit
    Left = 163
    Top = 163
    Width = 165
    Height = 36
    EditMask = '###.###.###/##;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 6
    Text = '   .   .   /  '
  end
  object txtSenha: TEdit
    Left = 163
    Top = 332
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 7
  end
  object txtNome: TEdit
    Left = 163
    Top = 205
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object cbSexo: TComboBox
    Left = 534
    Top = 205
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Outro')
  end
  object txtEmail: TEdit
    Left = 163
    Top = 247
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object txtSobrenome: TEdit
    Left = 534
    Top = 163
    Width = 165
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 28
    Width = 145
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'ComboBox1'
    Items.Strings = (
      'Bradesco'
      'Caixa'
      'Nube'
      'Banco do Brasil'
      'Ita'#250
      'Santander')
  end
  object Timer1: TTimer
    Left = 648
    Top = 496
  end
end
