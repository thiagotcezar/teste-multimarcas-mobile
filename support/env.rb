require 'rubygems'
require 'appium_lib'
require 'allure-cucumber'
require 'pry'

# Massa de dados
Acesso = YAML.load_file(Dir.pwd + "/fixtures/login.yml")

$PLAT = ENV["PLAT"]
$APP =  ENV["APP"]

case $PLAT
when 'ios'
    desired_caps = {
        caps:        {
        appiumVersion:    '1.17.1',
        #appiumPort:       '4723',
        platformName:     'iOS',
        platformVersion:  '13.4',
        deviceName:       'iPhone 8',
        #app:              (File.join(Dir.pwd + "/APP/#{$PLAT}/#{$APP}.app"))
        app:              "/Users/k2.thiago/Library/Developer/Xcode/DerivedData/ExamplePassaporte-eqlesqysnmppeoakoagtrhhtdnni/Build/Products/Debug-iphonesimulator/ExamplePassaporte.app",
        }
    }
    
when 'android'
    desired_caps = {
        caps:        {
        appiumVersion:    "1.17.1",
        appiumPort:       '4723',
        platformName:     "Android",
        #deviceName:       "nexus5X_9.0",
        deviceName:       "lgg3",
        app:              (File.join(Dir.pwd + "/APP/#{$PLAT}/#{$APP}.apk"))
        }
    }        
 end

 Appium::Driver.new(desired_caps, true)
 Appium.promote_appium_methods Object
 






