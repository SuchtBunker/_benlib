-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

DisconnectedUserIDs = DisconnectedUserIDs or {}
net.Receive("PlayerDisconnected",function()
	local userID = net.ReadUInt(16)
	DisconnectedUserIDs[userID] = true
	hook.Run("PlayerDisconnected",userID)
end)

hook.Add("OnEntityCreated","_benlib:OnPlayerCreated",function(ent)
	if !ent:IsPlayer() then return end
	
	hook.Run("OnPlayerCreated",ent)
	ent["_UserID"] = ent:UserID()
	ent["_AccountID"] = ent:AccountID()
	ent["_SteamID64"] = ent:SteamID64()
	DisconnectedUserIDs[ent["_UserID"]] = nil
end)

hook.Add("EntityRemoved","_benlib:PlayerRemoved",function(ent)
	if !ent:IsPlayer() then return end

	hook.Run("PlayerRemoved",ent)
end)