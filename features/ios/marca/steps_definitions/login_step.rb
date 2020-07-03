Dado("que eu esteja na Home da aplicação") do

    $APP =  ENV["APP"]

    case $APP
    when "fleury"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='FL']").click
    when "amais"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='AM']").click
    when "labsAmais"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='LA']").click
    when "diagnoson"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='DS']").click
    when "lafe"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='LF']").click
    when "weinmann"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='WE']").click
    when "felipeMattoso"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='FM']").click
    when "ir"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='IR']").click
    when "campana"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='CA']").click
    when "grupoFleury"
        $driver.find_element(:xpath, "//XCUIElementTypeButton[@name='GF']").click
    end

    sleep 1
    $driver.find_element(:xpath, "//XCUIElementTypeStaticText[@name='PASSAPORTE DIGITAL']").click
  end
  
  Dado("escolha {string}") do |string|
    sleep 1
    @login.optionUserPass
  end
  
  Quando("eu preencher os campos com dados válidos") do
    sleep 1
    @login.fillUser("anamagalhaes")
    $driver.find_element(:id, "Return").click
    @login.fillPass("fleury15")
    $driver.find_element(:id, "Return").click
    sleep 1
    @login.continue
    sleep 2
  end
  
  Então("válido que o login foi realizado com sucesso") do
    sleep 2
  end
