print ("switch ")
if GET["channel"]=="1" then
	if GET["state"]=="0" then
		gpio.write(4,gpio.LOW)
		print ("switch 1 off")
	else
		gpio.write(4,gpio.HIGH)				
		print ("switch 1 on")
	end
end	
if GET["channel"]=="2" then
	if GET["state"]=="0" then
		gpio.write(5,gpio.LOW)
		print ("switch 2 off")
	else
		gpio.write(5,gpio.HIGH)				
		print ("switch 2 on")
	end
end	
if GET["action"]=="on" then
		gpio.write(4,gpio.HIGH)
		print ("switch 1 on")
		gpio.write(5,gpio.HIGH)				
		print ("switch 2 on")
end	
if GET["action"]=="off" then
		gpio.write(4,gpio.LOW)
		print ("switch 1 off")
		gpio.write(5,gpio.LOW)				
		print ("switch 2 off")
end	
if GET["action"]=="left" then
		gpio.write(4,gpio.LOW)
		print ("switch 1 off")
		gpio.write(5,gpio.HIGH)				
		print ("switch 2 on")
end	
if GET["action"]=="right" then
		gpio.write(4,gpio.HIGH)
		print ("switch 1 on")
		gpio.write(5,gpio.LOW)				
		print ("switch 2 off")
end	




--collectgarbage()			