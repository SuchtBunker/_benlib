-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

local requests = {}
function _benlib.Player_DB.GetIDNames(ids,callback)
	local names = {}
	local count = 0
	local endcount = #ids
	for k,v in ipairs(ids) do
		_benlib.GetPlayerName(v,function(name)
			count = count + 1
			names[v] = name
			if count == endcount then
				callback(names)
			end
		end)
	end

    /*local req = table.insert(requests,callback)
    net.Start("_benlib:ReqestNames")
    net.WriteInt(req,32)
    net.WriteTable(ids)
    net.SendToServer()*/
end

/*
net.Receive("_benlib:ReqestNames",function()
    requests[net.ReadInt(32)](net.ReadTable())
end)
*/

local cache = {}
local loading = {}
function _benlib.GetPlayerName(steam,cb)
	if loading[steam] then
		table.insert(loading[steam],cb)
	elseif cache[steam] then
		cb(cache[steam])
	else
		local ply = player.GetBySteamID64(steam)
		if ply then
			local name = ply:Name()
			cache[steam] = name
			cb(name)
		else
			loading[steam] = {cb}
			V2API.Request("player/"..steam.."/name",nil,function(res)
				cache[steam] = res
				for k,v in ipairs(loading[steam]) do
					v(res)
				end
				loading[steam] = nil
			end)
		end
	end
end