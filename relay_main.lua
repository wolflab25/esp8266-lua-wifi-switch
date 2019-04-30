function split(text, delim)
    -- returns an array of fields based on text and delimiter (one character only)
    local result = {}
    local magic = "().%+-*?[]^$"

    if delim == nil then
        delim = "%s"
    elseif string.find(delim, magic, 1, true) then
        -- escape magic
        delim = "%"..delim
    end

    local pattern = "[^"..delim.."]+"
    for w in string.gmatch(text, pattern) do
        table.insert(result, w)
    end
    return result
end
dofile("settings.lua")
ch1=tonumber(cfg['channel1'])
ch2=tonumber(cfg['channel2'])
son=gpio.LOW
soff=gpio.HIGH
if cfg['inverse']==1 then
	son=gpio.HIGH
	soff=gpio.LOW
end

gpio.mode(ch1,gpio.OUTPUT) 
gpio.mode(ch2,gpio.OUTPUT) 
-- Read settings

if cfg['savestate']==1 then
	states="0,0"
	if file.open("state.dat", "r") then
  		states=file.readline()
  		file.close()
	end
	local t={}
	t=split(states,",")
	gpio.write(ch1,tonumber(t[1]))
	gpio.write(ch2,tonumber(t[2]))
else 
	gpio.write(ch1,soff)
	gpio.write(ch2,soff)
end
-- Init Wifi
dofile("wifi.lua")
--Start HTTP 'server'
dofile('httpd.lua')
print('Ready')

