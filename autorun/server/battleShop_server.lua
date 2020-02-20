util.AddNetworkString("OpenShop")
util.AddNetworkString("SpawnBoughtProp")
util.AddNetworkString("NotEnoughPoints")

hook.Add("PlayerSay", "OpenShop", function( ply, text, team )

	if text == "shop" then

		net.Start("OpenShop")
		net.Send(ply)

	end

end)

net.Receive("SpawnBoughtProp", function(len, ply )

	local entity = ents.Create( net.ReadString() )
	if ( !IsValid( entity ) ) then return end 
	if (net.ReadFloat() >= entity:GetPrice()) then
		
		entity:Spawn()
		entity:SetPos( ply:GetEyeTrace().HitPos )

	else
		net.Start("NotEnoughPoints")
		net.Send(ply)
	end

end)