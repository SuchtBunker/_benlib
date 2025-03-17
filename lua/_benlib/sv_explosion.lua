-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

module("_benlib", package.seeall)

local sound_explode = Sound("weapon_AWP.Single")
local function explode(ent,size)
	if !IsValid(ent) then return end
	local explosion = ents.Create("env_explosion")
	explosion:SetPos(ent:GetPos())
	explosion:Spawn()
	explosion:SetKeyValue("iMagnitude",size or "50")
	explosion:Fire("Explode",0,0)
	explosion:EmitSound(sound_explode)
end

local explosions = {}
function QueueExplosion(ent,size,remove,callback)
	table.insert(explosions,{
		["Ent"]= ent,
		["Size"] = size,
		["Remove"] = remove,
		["Callback"]= callback
	})
end

hook.Add("Think","_benlib:ExplosionQueue",function()
	local this = explosions[1]
	if !this then return end

	local ent = this["Ent"]
	explode(ent,this["Size"])

	local callback = this["Callback"]
	if callback then
		callback()
	end

	if this["Remove"] then
		if IsValid(ent) then
			if ent:IsOnFire() then
				ent:Extinguish()
			end
			
			ent:Remove()
		end
	end

	table.remove(explosions,1)
end)