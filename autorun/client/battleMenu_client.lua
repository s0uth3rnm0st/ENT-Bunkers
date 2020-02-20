net.Receive("OpenMenu", function(len)//no ply, 'cause
	//the server is who sent the message, not a player

	local Frame = vgui.Create( "DFrame" )
	Frame:Center() 
	Frame:SetSize( 600, 500 ) 
	Frame:SetTitle( "Utilities" ) 
	Frame:SetVisible( true ) 
	Frame:SetDraggable( true ) 
	Frame:ShowCloseButton( true ) 
	Frame:MakePopup()

	local localPly = LocalPlayer()

	if localPly:IsAdmin() then
		
		local buttonDisableMenu = vgui.Create("DButton",Frame)
		buttonDisableMenu:SetPos(5, 25)
		buttonDisableMenu:SetSize(100, 25)
		buttonDisableMenu:SetText("Disable Q menu")
		buttonDisableMenu.DoClick = function()
			net.Start("DisableMenu")
			net.SendToServer()
		end

		local buttonEnableMenu = vgui.Create("DButton",Frame)
		buttonEnableMenu:SetPos(5, 55)
		buttonEnableMenu:SetSize(100, 25)
		buttonEnableMenu:SetText("Enable Q menu")
		buttonEnableMenu.DoClick = function()
			net.Start("EnableMenu")
			net.SendToServer()
		end	

		local buttonDisableProperties = vgui.Create("DButton",Frame)
		buttonDisableProperties:SetPos(105, 25)
		buttonDisableProperties:SetSize(100, 25)
		buttonDisableProperties:SetText("Disable Properties")
		buttonDisableProperties.DoClick = function()
			net.Start("DisableProperties")
			net.SendToServer()
		end	

		local buttonEnableProperties = vgui.Create("DButton",Frame)
		buttonEnableProperties:SetPos(105, 55)
		buttonEnableProperties:SetSize(100, 25)
		buttonEnableProperties:SetText("Enable Properties")
		buttonEnableProperties.DoClick = function()
			net.Start("EnableProperties")
			net.SendToServer()
		end	

	end

	local buttonStart = vgui.Create("DButton",Frame)
	buttonStart:SetPos(205, 25)
	buttonStart:SetSize(100, 25)
	buttonStart:SetText("Start")
	buttonStart.DoClick = function()
		net.Start("Start")
		net.SendToServer()
	end

	local buttonScore = vgui.Create("DButton",Frame)
	buttonScore:SetPos(5, 85)
	buttonScore:SetSize(100, 25)
	if(LocalPlayer().Score == nil)then
		
		score = "Not Ready"

	else
		
		score = "Score: "..LocalPlayer().Score

	end
	buttonScore:SetText(score)

end)

function ReceiveAndSet( networkStr,hookName,hookTag,enable )

	net.Receive(networkStr, function(len)

		hook.Add( hookName, hookTag, function()

			//for k, v in pairs(player.GetAll()) do
				return enable
			//end

		end )	

	end)

end

ReceiveAndSet("DisableMenu", "SpawnMenuOpen", "SpawnMenuWhitelist" ,false)
ReceiveAndSet("EnableMenu", "SpawnMenuOpen", "SpawnMenuWhitelist" ,true)
ReceiveAndSet("DisableProperties", "CanProperty", "PropertiesWhitelist" ,false)
ReceiveAndSet("EnableProperties", "CanProperty", "PropertiesWhitelist" ,true)

/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/*net.Receive("DisableMenu", function(len)

	hook.Add( "SpawnMenuOpen", "SpawnMenuWhitelist", function()

		//for k, v in pairs(player.GetAll()) do
			return false
		//end

	end )	

end)*/

/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/*net.Receive("EnableMenu", function(len)

	hook.Add( "SpawnMenuOpen", "SpawnMenuWhitelist", function()

		//for k, v in pairs(player.GetAll()) do
			return true
		//end

	end )	

end)*/

/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/***NEED TO ENCAPSULATE THIS***/
/*net.Receive("DisableProperties", function(len)

	for k, v in pairs(player.GetAll())do

		hook.Add( "CanProperty", "DisableProperties", function()

			return false

		end )

	end

end)*/

/*****NOT WORKING*****/
/*****NOT WORKING*****/
/*****NOT WORKING*****/
/*net.Receive("EnableProperties", function(len)

		hook.Add( "CanProperty", "EnableProperties", function()

			return true

		end )

end)*/