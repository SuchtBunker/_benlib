-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

util.AddNetworkString("CombinedInit")
net.Receive("CombinedInit",function(_,ply)
	if ply["__Inited"] then return end

	ply:UnLock()
	
	hook.Run("PlayerNetworkInited",ply)

	ply["__Inited"] = true
end)

hook.Add("PlayerInitialSpawn","CombinedInit",function(ply)
	if ply:IsBot() then
		hook.Run("PlayerNetworkInited",ply)
		
		ply["__Inited"] = true
	else
		ply:Lock()
	end
end)