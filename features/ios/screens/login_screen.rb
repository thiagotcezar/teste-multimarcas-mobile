class LoginScreen < BaseActions

    #Screen

    def initialize
    @btn_loginCpf = "btLoginCpf" #id #login cpf + data de nascimento
    @field_cpf = "etCpf" #id #preencher CPF
    @field_date = "etBirthdate" #id #preencher Data de Nascimento
    @btn_loginUser = "USUÁRIO E SENHA" #id #login User + Pass
    @field_user = "txtUser" #id #preencher usuário
    @field_pass = "txtPass" #id #preencher senha
    @continue = "btnContinue" #id #continar
    end
    
    #Metodos c/ ações
    
    def optionCpfDate
      click_id(@btn_loginCpf)
    end

    def fillCpf(cpf)
      send_keys_id(@field_cpf, cpf)
    end

    def fillDate(dataNasc)
      send_keys_id(@field_date, dataNasc)
    end

    def optionUserPass
      click_id(@btn_loginUser)
    end

    def fillUser(user)
      send_keys_id(@field_user, user)
    end

    def fillPass(pass)
      send_keys_id(@field_pass, pass)
    end

    def continue
      click_id(@continue)
    end

    def element_exists_by_id?
        if find_elements(:id,@my_id).size == 0 
          puts "Sim"
        else
          puts "Não"
        end    
    end

    def validate_text_in_screen 
      el = $driver.find_element(:name, "Seja bem-vindo!")
      wait{get_element(el).displayed?}
    end
 
    def menu_home
      click_xpath(@btn_home)
    end
 
    def menu_results
      click_xpath(@btn_resultados)
    end
 
    def menu_perfil
      click_xpath(@btn_perfil)
    end

    def menu_agendar_exames
      click_id(@btn_agendar_exames)
    end

    def preencher_login(user, pass)
      click_id(@btn_user_cpf)
      send_keys_id(@preencher_email, user)
      send_keys_id(@preencher_senha, pass)
      btn_login
    end

    def condition_login_user(user, pass)
      if $driver.find_elements(:id, "txtHomeNotLoggedGreetings").size == 0
        self.preencher_login(user, pass)
        self.wait(10)
      else
        self.preencher_login(user, pass)
        self.wait(10)
      end
    end
 
    def btn_login
      click_id(@btn_entrar)
    end
 
 end