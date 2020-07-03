Dado("que eu esteja na Home da aplicação") do
  @home.menu_inicio
end

E("escolha {string}") do |string|
  sleep 1.5
  @login.optionCpfDate
end

Quando("eu preencher os campos com dados válidos") do
  sleep 1.5
  @login.fillCpf("38608061813")
  @login.fillDate("23061989")
  @login.optionCpfDate
  sleep 3
end

Então("válido que o login foi realizado com sucesso") do
  sleep 3
end

Quando("eu preencher os campos com dados inválidos") do
  sleep 1.5
  @login.fillCpf("41599461862")
  @login.fillDate("26041995")
  @login.optionCpfDate
  sleep 3
end

Então("válido as mensagens de erros alertando sobre os dados inválidos") do
  sleep 3
end

E("escolha USUÁRIO E SENHA") do
  sleep 1.5
  @login.optionUserPass
end

Quando("eu preencher os campos de {string} e {string} com dados válidos") do |string, string2|
  sleep 1.5
  @login.fillUser("anamagalhaes")
  @login.fillPass("fleury15")
  @login.optionUserPass
  sleep 3
end

Quando("eu preencher os campos de {string} e {string} com dados inválidos") do |string, string2|
  sleep 1.5
  @login.fillUser("thiagoyyy")
  @login.fillPass("fleuryyy2")
  @login.optionUserPass
  sleep 3
end