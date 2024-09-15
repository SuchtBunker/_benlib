-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

module("net",package.seeall)

local cache = {}
function GetBitCount(num)
	if !cache[num] then
		cache[num] = math.ceil(math.log(num + 1,2))
	end
	return cache[num]
end

function WriteRGB(col)
	net.WriteUInt(col["r"],8)
	net.WriteUInt(col["g"],8)
	net.WriteUInt(col["b"],8)
end

function ReadRGB()
	return Color(net.ReadUInt(8),net.ReadUInt(8),net.ReadUInt(8))
end

function WriteRGBA(col)
	net.WriteUInt(col["r"],8)
	net.WriteUInt(col["g"],8)
	net.WriteUInt(col["b"],8)
	net.WriteUInt(col["a"],8)
end

function ReadRGBA()
	return Color(net.ReadUInt(8),net.ReadUInt(8),net.ReadUInt(8),net.ReadUInt(8))
end

function WriteEntity(ent)
	if IsValid(ent) then
		net.WriteUInt(ent:EntIndex(),14)
	else
		net.WriteUInt(0,14)
	end
end

function ReadEntity()
	return Entity(net.ReadUInt(14))
end

local idx = {} for i=0, 9 do idx[tostring(i)] = i end
function net.WriteSteamID64(steam)
	for i=1, 17 do
		net.WriteUInt(idx[steam[i]],4)
	end
end

function net.ReadSteamID64()
	local t = {}
	for i=1, 17 do
		t[i] = net.ReadUInt(4)
	end
	return table.concat(t)
end

local cache = {}
function GetBitCount(num)
	if !cache[num] then
		cache[num] = math.ceil(math.log(num + 1,2))
	end
	return cache[num]
end

/*
if SERVER then
hook.Add("PlayerInitialSpawn","net.Incoming",function(ply)
	ply["NWSpam"] = {}
end)

hook.Add("Tick","net.Incomming",function()
	for k,v in ipairs(player.GetAll()) do
		v["NWSpam"] = {}
	end
end)

function net.Incoming( len, client )

	local i = net.ReadHeader()
	local strName = util.NetworkIDToString( i )
	
	if ( !strName ) then return end
	
	local func = net.Receivers[ strName:lower() ]
	if ( !func ) then return end

	if client["NWSpam"][strName] then print("ANTISPAM: ",client,strName) return end
	client["NWSpam"][strName] = true

	--
	-- len includes the 16 bit int which told us the message name
	--
	len = len - 16
	
	func( len, client )

end
end
*/