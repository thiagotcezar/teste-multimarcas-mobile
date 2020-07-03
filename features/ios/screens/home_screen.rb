class HomeScreen < BaseActions

    #Screen

    def initialize
     @btn_home = "Home"
     @btn_resultados = "Resultados"
     @btn_perfil = "Perfil"
     @btn_agendar_exames = "Agendar novos exames"
     @preencher_email = "Login_Identifier"
     @preencher_senha = "Password_Identifier"
     @btn_user_cpf = "Entre com Usuário / Senha"
     @btn_entrar = "Entrar"
     @msg_invalid_login = "Dados informados estão inválido(s)"
     @btn_ok = "Ok"
     @title_results = "Resultados de exames"
     @btn_sair = "Sair"
     @btn_sim = "SIM"
    end
    
    #Metodos c/ ações

    def validate_text_in_screen 
      el = $driver.find_element(:name, "Seja bem-vindo!")
      wait{get_element(el).displayed?}
    end
 
    def menu_home
      click_name(@btn_home)
    end
 
    def menu_results
      click_name(@btn_resultados)
    end
 
    def menu_perfil
      click_name(@btn_perfil)
    end

    def menu_unidades
      click_name(@btn_unidades)
      click_name(@allow_location)
    end

    def menu_manual_exames
      click_name(@btn_manual_exames)
      click_name(@allow_location)
    end

    def menu_agendar_exames
      click_name(@btn_agendar_exames)
    end

    def preencher_login(user, pass)
      click_name(@btn_user_cpf)
      send_keys_accessibility_id(@preencher_email, user)
      click_accessibility_id(@btn_ok)
      send_keys_accessibility_id(@preencher_senha, pass)
      click_accessibility_id(@btn_ok)
      btn_login
    end

    def condition_login_user(user, pass)
      if $driver.find_elements(:name, "Seja bem-vindo!").size == 0
        self.menu_perfil
        click_name(@btn_sair)
        click_name(@btn_sim)
        self.wait(4)
        self.menu_results
        self.preencher_login(user, pass)
        self.wait(10)
      else
        self.preencher_login(user, pass)
        self.wait(10)
      end
    end
     
    def ir_login
      $user = (Acesso['login_ir']['user'])
      $pass = (Acesso['login_ir']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def diagnoson_login
      $user = (Acesso['login_diagnoson']['user'])
      $pass = (Acesso['login_diagnoson']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def felippeMattoso_login
      $user = (Acesso['login_felippeMattoso']['user'])
      $pass = (Acesso['login_felippeMattoso']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def weinmann_login
      $user = (Acesso['login_weinmann']['user'])
      $pass = (Acesso['login_weinmann']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def labsAMais_login
      $user = (Acesso['login_labsAMais']['user'])
      $pass = (Acesso['login_labsAMais']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def Amais_login
      $user = (Acesso['login_AMais']['user'])
      $pass = (Acesso['login_AMais']['pass'])
      $driver.find_element(:accessibility_id, @preencher_email).send_keys("#{$user}")
      $driver.find_element(:accessibility_id, @ok).click
      $driver.find_element(:accessibility_id, @preencher_senha).send_keys("#{$pass}")
      $driver.find_element(:accessibility_id, @ok).click
    end
 
    def btn_login
      click_name(@btn_entrar)
    end
 
 end