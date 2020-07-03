#language:pt

Funcionalidade: Realizar login na aplicação
	Eu como usuário
	Quero realizar login na aplicação
	Para ter acesso as funcionalidades

  @login
  Cenário: Realizar login com CPF + Data de nascimento usando dados válidos
    Dado que eu esteja na Home da aplicação
    E escolha 'ENTRAR COM CPF'
    Quando eu preencher os campos com dados válidos
    Então válido que o login foi realizado com sucesso

  @login
  Cenário: Realizar login com CPF + Data de nascimento usando dados inválidos
    Dado que eu esteja na Home da aplicação
    E escolha 'ENTRAR COM CPF'
    Quando eu preencher os campos com dados inválidos
    Então válido as mensagens de erros alertando sobre os dados inválidos

  @login
  Cenário: Realizar login com Usuário + Senha
    Dado que eu esteja na Home da aplicação
    E escolha USUÁRIO E SENHA
    Quando eu preencher os campos de 'Usuário' e 'Senha' com dados válidos
    Então válido que o login foi realizado com sucesso

  @login
  Cenário: Realizar login com CPF + Data de nascimento usando dados inválidos
    Dado que eu esteja na Home da aplicação
    E escolha USUÁRIO E SENHA
     Quando eu preencher os campos de 'Usuário' e 'Senha' com dados inválidos
    Então válido as mensagens de erros alertando sobre os dados inválidos




