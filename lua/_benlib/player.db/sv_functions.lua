-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

function _benlib.Player_DB.GetIDNames(ids,callback)
	if #ids == 0 then callback({}) return end
	local q = "SELECT steam, name FROM ".._benlib.Player_DB.TableName.." WHERE "
	for k,v in pairs(ids) do
		q = q.."steam = '".._benlib.Player_DB.Escape(v).."' "
		if k != #ids then
			q = q.."OR "
		end
	end
	_benlib.Player_DB.Query(q,function(data)
		local names = {}
		if data then
			for k,v in pairs(data) do
				names[v["steam"]] = v["name"]
			end
		end
		callback(names)
	end)
end

function _benlib.GetPlayerName(steam,cb)
	_benlib.Player_DB.Query("SELECT name FROM ".._benlib.Player_DB.TableName.." WHERE steam = '".._benlib.Player_DB.Escape(steam).."';",function(res)
		if !res then cb(false) return end
		cb(res[1]["name"])
	end)
end

/*
util.AddNetworkString("_benlib:ReqestNames")
net.Receive("_benlib:ReqestNames",function(_,ply)
	local id = net.ReadInt(32)
	_benlib.Player_DB.GetIDNames(net.ReadTable(),function(ids)
		if !IsValid(ply) then return end
		net.Start("_benlib:ReqestNames")
		net.WriteInt(id,32)
		net.WriteTable(ids)
		net.Send(ply)
	end)
end)
*/