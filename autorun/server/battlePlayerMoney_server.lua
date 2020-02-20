util.AddNetworkString("InitScore")
util.AddNetworkString("ScoreAmount")
util.AddNetworkString("Start")

net.Receive("Start", function(len,ply)

	net.Start("InitScore")
	net.WriteFloat(0)
	net.WriteBool(true)
	net.Send(ply)		

end)

hook.Add("PlayerDeath", "playerDies", function(victim,inflictor,attacker)

	if attacker:IsPlayer() then
		
		net.Start("ScoreAmount")
		net.WriteFloat(100)
		net.Send(attacker)			

	end

end)

hook.Add("OnNPCKilled", "NPCDies", function(npc,attacker,inflictor)

	if attacker:IsPlayer() /*&& attacker.Started != nil*/ then
		
		net.Start("ScoreAmount")
		net.WriteFloat(100)
		net.Send(attacker)			

	end

end)
