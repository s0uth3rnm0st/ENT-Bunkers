local received = false

if received == false then
	
	net.Receive("InitScore", function(len)
		
		LocalPlayer().Score = net.ReadFloat()
		LocalPlayer().Started = net.ReadBool()
		received=true

	end) 

end

net.Receive("ScoreAmount", function(len)
	
	LocalPlayer().Score = LocalPlayer().Score + net.ReadFloat()

end) 