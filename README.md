### [APPs Pacientes] - Automação dos testes mobile

Framework para automação dos testes mobile, cross-platform e no formato de Page Objects.

### Ferramentas

Ruby, Cucumber e Appium.

### Estrutura do projeto
#### APP

Os arquivos APK e IPA devem ficar dentro da pasta APP, cada qual com o respectivo nome da plataforma (Android/iOS).

Dica: Em iOS é aconselhável que o repositório seja clonado na máquina local, gerando assim o arquivo de aplicação após o primeiro build. 

#### Features
##### Actions:

Aqui estão as ações default que podem ser consumidas por ambas as plataformas, ações como click, scroll e preenchimentos de campos.

##### Android:

Ficam as features divididas por marcas (Fleury, A+, Diagnoson, Felippe Mattoso, Lafe, IR, Labs e Weinmann Serdil) e o arquivo Screen com o mapeamento das telas das aplicações em Android, como as aplicações são whitelabel, apenas um mapeamento supri todas as marcas.

##### iOS:

Ficam as features divididas por marcas (Fleury, A+, Diagnoson, Felippe Mattoso, Lafe, IR, Labs e Weinmann Serdil) e o arquivo Screen com o mapeamento das telas das aplicações em iOS, como as aplicações são whitelabel, apenas um mapeamento supri todas as marcas.

#### Fixtures

Arquivo para gerenciamento das massas. Sempre que for criado um novo arquivo de massa a chamada desse arquivo deve ser filtrado no **ENV.rb**

#### Relatórios/Report's:

Os report's são retirados das duas plataformas e podem ser feitos de 3 maneiras: HTML, JSON e SCREENSHOT. Os screenshot's são separados por Falha e Sucesso, são salvos na seguinte nomenclatura:

**Ex:** android_Fleury_Sucesso_realizar_busca_de_exame_existente_19-11-2019.png

#### Siglas/Marcas:

- **ds** - Diagnoson
- **fm** - Felippe Mattoso
- **lf** - Lafe
- **am** - A+
- **fl** - Fleury
- **ir** - Instituto de Radiologia
- **la** - Labs A+
- **we** - Weinmann Serdil

#### Profiles:

Para utilizar um profile é preciso colocar a sigla: **-p** com o nome do **profile** ao executar o **cucumber**. 

**Ex: cucumber -p android_fl -p html**

##### Cross-Platform

- **html** - Gerar report em HTML e salvar no diretório: report/html/report.html
- **json** - Gerar report em Json e salvar no diretório: report/json/report.html

##### Android

- **android_ds** - Executa os testes em Android para a marca Diagnoson
- **android_fm** - Executa os testes em Android para a marca Felippe Mattoso
- **android_lf** - Executa os testes em Android para a marca Lafe
- **android_am** - Executa os testes em Android para a marca A+
- **android_fl** - Executa os testes em Android para a marca Fleury
- **android_ir** - Executa os testes em Android para a marca Instituto de Radiologia
- **android_la** - Executa os testes em Android para a marca Labs A+
- **android_we** - Executa os testes em Android para a marca Weinmann Serdil

##### iOS

- **ios_ds** - Executa os testes em iOS para a marca Diagnoson
- **ios_fm** - Executa os testes em iOS para a marca Felippe Mattoso
- **ios_lf** - Executa os testes em iOS para a marca Lafe
- **ios_am** - Executa os testes em iOS para a marca A+
- **ios_fl** - Executa os testes em iOS para a marca Fleury
- **ios_ir** - Executa os testes em iOS para a marca Instituto de Radiologia
- **ios_la** - Executa os testes em iOS para a marca Labs A+
- **ios_we** - Executa os testes em iOS para a marca Weinmann Serdil
