class HomeScreen < BaseActions

    #Screen

    def initialize
     @btn_inicio = "btStart" #id #inicio p/ login
     @btn_agendar_exames = "btNewExam"
     @preencher_email = "etUser"
     @preencher_senha = "etPassword"
     @btn_user_cpf = "btn_toggle_login_type"
     @btn_entrar = "btLogin"
     @msg_invalid_login = "Dados informados estão inválido(s)"
     @btn_sair = "textLogout"
     @btn_sim = "buttonPositive"
    end
    
    #Metodos c/ ações

    def menu_inicio
      click_id(@btn_inicio)
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