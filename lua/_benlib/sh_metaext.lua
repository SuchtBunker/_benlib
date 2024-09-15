-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

matMeta = FindMetaTable("IMaterial")

local function doIt()
	mat_IsError = matMeta["IsError"]
end
hook.Add("PostGamemodeLoaded","MetaExt",doIt)
doIt()

local plyMeta = FindMetaTable("Player")
local entMeta = FindMetaTable("Entity")
local wepMeta = FindMetaTable("Weapon")
local vehMeta = FindMetaTable("Vehicle")
local vecMeta = FindMetaTable("Vector")
local angMeta = FindMetaTable("Angle")
local ent_GetTable = entMeta["GetTable"]
local ent_GetOwner = entMeta["GetOwner"]
local owner = "Owner"
local tabs = {}
hook.Add("EntityRemoved","MetaExtFreeCache",function(ent)
	timer.Simple(0,function()
		tabs[ent] = nil
	end)
end)

-- Ply Meta
function plyMeta:__newindex(key,val)
	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then return end
		tabs[self] = tab
	end

	tab[key] = val
end

function plyMeta:__index(key)
	local val = plyMeta[key]
	if val != nil then return val end

	local val = entMeta[key]
	if val != nil then return val end

	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then
			if key == owner then return ent_GetOwner(self) end
			return nil
		end
		tabs[self] = tab
	end
	
	local val = tab[key]
	if val == nil then
		if key == owner then return ent_GetOwner(self) end
		return nil
	else
		return val
	end
end

PlayerCounts = PlayerCounts or {}
local function cb(ent,ply,str)
	local t = PlayerCounts[ply]
	local am = t[str] - 1
	if am == 0 then
		t[str] = nil
		if !next(t) then
			PlayerCounts[ply] = nil
		end
	else
		t[str] = am
	end
end

function plyMeta:CheckLimit(str)
	local limit = cvars.Number("sbox_max"..str,0)
	local hit = self:GetCount(str) >= limit
	if hit then
		Notify(self,"Du hast das Limit für "..str.." ("..limit..") erreicht!",NOTIFY_ORANGE,5)
		return false
	else
		return true
	end
end

function plyMeta:GetCount(str,minus)
	local t = PlayerCounts[self:SteamID64()]
	return (t and t[str] or 0) - (minus or 0)
end

function plyMeta:AddCount(str,ent)
	if SERVER then
		local steam = self:SteamID64()
		local t = PlayerCounts[steam]
		if !t then
			t = {}
			PlayerCounts[steam] = t
		end

		t[str] = (t[str] or 0) + 1
		ent:CallOnRemove("GetCountUpdate",cb,steam,str)
	end
end

-- Wep Meta
function wepMeta:__newindex(key,val)
	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then return end
		tabs[self] = tab
	end

	tab[key] = val
end

function wepMeta:__index(key)
	local val = wepMeta[key]
	if val != nil then return val end

	local val = entMeta[key]
	if val != nil then return val end

	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then
			if key == owner then return ent_GetOwner(self) end
			return nil
		end
		tabs[self] = tab
	end

	local val = tab[key]
	if val == nil then
		if key == owner then return ent_GetOwner(self) end
		return nil
	else
		return val
	end
end

-- Veh Meta
local old__newindex = vehMeta["old__newindex"] or vehMeta["__newindex"]
vehMeta["old__newindex"] = old__newindex
local wtfisthisfuckingpieceofshitwtf = "RenderOverride"
function vehMeta:__newindex(key,val)
	if key == wtfisthisfuckingpieceofshitwtf then
		old__newindex(self,key,val)
	else
		local tab = tabs[self]
		if !tab then
			tab = ent_GetTable(self)
			if !tab then return end
			tabs[self] = tab
		end

		tab[key] = val
	end
end

function vehMeta:__index(key)
	local val = vehMeta[key]
	if val != nil then return val end

	local val = entMeta[key]
	if val != nil then return val end

	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then
			return nil
		end
		tabs[self] = tab
	end

	local val = tab[key]
	if val == nil then
		return nil
	else
		return val
	end
end

-- Ent Meta
local old__newindex = entMeta["old__newindex"] or entMeta["__newindex"]
entMeta["old__newindex"] = old__newindex
function entMeta:SetRenderOverride(func)
	old__newindex(self,"RenderOverride",func)
end

function entMeta:__newindex(key,val)
	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then return end
		tabs[self] = tab
	end

	tab[key] = val
end

function entMeta:__index(key)
	local val = entMeta[key]
	if val != nil then return val end

	local tab = tabs[self]
	if !tab then
		tab = ent_GetTable(self)
		if !tab then
			if key == owner then return ent_GetOwner(self) end
			return nil
		end
		tabs[self] = tab
	end

	local val = tab[key]
	if val == nil then
		if key == owner then return ent_GetOwner(self) end
		return nil
	else
		return val
	end
end

local x, y, z = "x", "y", "z"
local X, Y, Z = "X", "Y", "Z"
local r, g, b = "r", "g", "b"
local R, G, B = "R", "G", "B"
local vec_unpack = vecMeta["Unpack"]
/*local x = {["x"] = true,["X"] = true,["r"] = true,["R"] = true,[1] = true}
local y = {["y"] = true,["Y"] = true,["g"] = true,["G"] = true,[2] = true}
local z = {["z"] = true,["Z"] = true,["b"] = true,["B"] = true,[3] = true}*/
function vecMeta:__index(key)
	local val = vecMeta[key]
	if val != nil then return val end

	local vX, vY, vZ = vec_unpack(self)
	/*if x[key] then return vX end
	if y[key] then return vY end
	if z[key] then return vZ end*/
	if key == 1 or key == x or key == X or key == r or key == R then return vX end
	if key == 2 or key == y or key == Y or key == g or key == G then return vY end
	if key == 3 or key == z or key == Z or key == b or key == B then return vZ end

	return nil
end

local p, y, r = "p", "y", "r"
local P, Y, R = "P", "Y", "R"
local pitch, yaw, roll = "pitch", "yaw", "roll"
local ang_unpack = angMeta["Unpack"]
function angMeta:__index(key)
	local val = angMeta[key]
	if val != nil then return val end

	local vP, vY, vR = ang_unpack(self)
	if key == 1 or key == p or key == P or key == pitch then return vP end
	if key == 2 or key == y or key == Y or key == yaw then return vY end
	if key == 3 or key == r or key == R or key == roll then return vR end

	return nil
end

function vecMeta:Copy()
	return Vector(self[1],self[2],self[3])
end

function angMeta:Copy()
	return Angle(self[1],self[2],self[3])
end