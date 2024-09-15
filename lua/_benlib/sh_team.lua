-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

module("team",package.seeall)

local m = FindMetaTable("Player")
local m_team = m["Team"]

function GetPlayers(tIdx)
	local res = {}
	local plys = player.GetAll()
	
	for i=1, #plys do
		if m_team(plys[i]) == tIdx then
			res[#res+1] = plys[i]
		end
	end

	return res
end

function GetPlayerCount(tIdx)
	local c = 0
	local plys = player.GetAll()
	
	for i=1, #plys do
		if m_team(plys[i]) == tIdx then
			c = c + 1
		end
	end

	return c
end
NumPlayers = GetPlayerCount

function HasPlayerCount(tIdx,count)
	return GetPlayerCount(tIdx) >= count
end