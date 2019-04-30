gpio.mode(4,gpio.OUTPUT) 
gpio.write(4,gpio.HIGH)
gpio.mode(5,gpio.OUTPUT) 
gpio.write(5,gpio.HIGH)
-- Read settings
dofile("settings.lua")
-- Init Wifi
dofile("wifi.lua")
--Start HTTP 'server'
dofile('httpd.lua')
print('Ready')

