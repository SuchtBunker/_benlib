-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

local function cb(res,id,args)
	if res then
		_benlib.Player_DB.Query("UPDATE ".._benlib.Player_DB.TableName.." SET name = '".._benlib.Player_DB.Escape(args[1]).."' WHERE steam = '"..args[2].."';")
	else
		_benlib.Player_DB.Query("INSERT INTO ".._benlib.Player_DB.TableName.." (steam,name) VALUES ('"..args[2].."','".._benlib.Player_DB.Escape(args[1]).."');")
	end
end
hook.Add("PlayerDataLoaded","_benlib:Player.DB",function(ply) 
	local steam = ply:SteamID64()
	_benlib.Player_DB.Query("SELECT steam FROM ".._benlib.Player_DB.TableName.." WHERE steam = '"..steam.."';",cb,{ply:Name(),steam})
end)