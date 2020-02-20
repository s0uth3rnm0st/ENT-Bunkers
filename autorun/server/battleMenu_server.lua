util.AddNetworkString("OpenMenu")
util.AddNetworkString("DisableMenu")
util.AddNetworkString("EnableMenu")
util.AddNetworkString("DisableProperties")
util.AddNetworkString("EnableProperties")

hook.Add("PlayerSay", "openMenu", function( ply, text, team )

	if text == "menu" then

		net.Start("OpenMenu")
		net.Send(ply)

	end

end)

function ReceiveAndSend(networkStr)

	net.Receive(networkStr, function(len, ply )

		for k, v in pairs(player.GetAll()) do

			net.Start(networkStr)
			net.Send(v)

		end

	end)

end

ReceiveAndSend("DisableMenu")
ReceiveAndSend("EnableMenu")
ReceiveAndSend("DisableProperties")
ReceiveAndSend("EnableProperties")