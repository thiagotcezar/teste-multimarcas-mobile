Before do |scenario|
  @base  ||= BaseActions.new
  @home  ||= HomeScreen.new
  @login ||= LoginScreen.new
  
  $driver.start_driver
end

After do |scenario|
  time = Time.new
	$sufix = ('Falha' if scenario.failed?) || 'Sucesso'
	$name = scenario.name.tr(' ','_').downcase
  $driver.screenshot("report/screenshot/#{$sufix}/#{$PLAT}_#{$APP}_#{$sufix}_#{$name}_#{time.day}-#{time.month}-#{time.year}.png")

  $driver.driver_quit
end
