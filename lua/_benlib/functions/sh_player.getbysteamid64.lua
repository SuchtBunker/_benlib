-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

if CLIENT then return end
// Why does it not do this by default?
CachePlayersBySteamID64 = CachePlayersBySteamID64 or {}
hook.Add(SERVER and "PlayerInitialSpawn" or "OnPlayerCreated","_benlib:player.GetBySteamID64",function(ply)	
	if ply:IsBot() then return end

	local steam = ply:SteamID64()
	if !steam then
		error("NO STEAMID FOUND FOR "..tostring(ply))
	else
		CachePlayersBySteamID64[steam] = ply
	end
end)

hook.Add(SERVER and "PlayerDisconnected","_benlib:player.GetBySteamID64",function(ply)
	if ply:IsBot() then return end
	
	CachePlayersBySteamID64[ply:SteamID64()] = nil
end)

function player.GetBySteamID64(id)
	return CachePlayersBySteamID64[id] or false
end