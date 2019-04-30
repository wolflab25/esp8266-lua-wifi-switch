print ("switch ")
if GET["channel"]=="1" then
	if GET["state"]=="0" then
		gpio.write(ch1,soff)
		print ("switch 1 off")
	else
		gpio.write(ch1,son)				
		print ("switch 1 on")
	end
	local response = ''
    response=gpio.read(ch1)
    response=response..','..gpio.read(ch2)
	if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(response)
  			file.close()
	end
end	
if GET["channel"]=="2" then
	if GET["state"]=="0" then
		gpio.write(ch2,soff)
		print ("switch 2 off")
	else
		gpio.write(ch2,son)				
		print ("switch 2 on")
	end
	local response = ''
    response=gpio.read(ch1)
    response=response..','..gpio.read(ch2)
	if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(response)
  			file.close()
	end


end	
if GET["action"]=="on" then
		gpio.write(ch1,son)
		print ("switch 1 on")
		gpio.write(ch2,son)				
		print ("switch 2 on")
		if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(son..","..son)
  			file.close()
  		end
end	
if GET["action"]=="off" then
		gpio.write(ch1,soff)
		print ("switch 1 off")
		gpio.write(ch2,soff)				
		print ("switch 2 off")
		if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(soff..","..soff)
  			file.close()
  		end
end	
if GET["action"]=="left" then
		gpio.write(ch1,soff)
		print ("switch 1 off")
		gpio.write(ch2,son)				
		print ("switch 2 on")
		if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(soff..","..son)
  			file.close()
  		end

end	
if GET["action"]=="right" then
		gpio.write(ch1,son)
		print ("switch 1 on")
		gpio.write(ch2,soff)				
		print ("switch 2 off")
		if cfg['savestate']==1 then
			file.open("state.dat", "w")
			file.writeline(son..","..soff)
  			file.close()
  		end

end	




--collectgarbage()			