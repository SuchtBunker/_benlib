-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

util.AddNetworkString("PlayerDisconnected")
hook.Add("PlayerDisconnected","SharedPlayerDisconnected",function(ply)
	net.Start("PlayerDisconnected")
	net.WriteUInt(ply:UserID(),16)
	net.Broadcast()
end)