-- stolen from superiorservers/dash
local pl
local _LocalPlayer = LocalPlayer
function LocalPlayer()
	pl = _LocalPlayer()
	if IsValid(pl) then
		LocalPlayer = function()
			return pl
		end
	end
	return pl
end


-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

local meta = FindMetaTable("Player")

function meta:GetActiveWeaponClass()
	local thisID = SERVER and engine.TickCount() or FrameNumber()
	if self["LastWeaponClassID"] != thisID then
		local wep = self:GetActiveWeapon()
		if IsValid(wep) then
			self["LastWeaponClass"] = wep:GetClass()
		end

		self["LastWeaponClassID"] = thisID
	end

	return self["LastWeaponClass"]
end

function meta:GetDropPos()
	local eyePos = self:EyePos()
	local add = self:GetAimVector()
	add:Mul(85)

	local tr = util.TraceLine({
		["start"] = eyePos,
		["endpos"] = eyePos + add,
		["filter"] = self,
	})

	local ang = self:EyeAngles()
	ang[1] = 0
	ang[2] = ang[2] - 90

	return tr.HitPos, ang
end

local dist = SERVER and 90^2 or 60^2
function meta:GetEyeTrace(usingLagCompensation)
	if CLIENT then
		local frame = FrameNumber()

		if self["LastPlayerTrace"] == frame then
			return self["PlayerTrace"]
		end

		self["LastPlayerTrace"] = frame
	else
		if !usingLagCompensation then
			local tick = engine.TickCount()

			if self["LastPlayerTrace"] == tick then
				return self["PlayerTrace"]
			end

			self["LastPlayerTrace"] = tick
		end
	end

	local tr = util.TraceLine(util.GetPlayerTrace(self))
	local hitDist = tr["HitPos"]:DistToSqr(self:EyePos())
	tr["Player"] = false
	tr["HitDist"] = hitDist
	tr["HitInRange"] = hitDist < dist
	self["PlayerTrace"] = tr

	if tr["HitInRange"] then
		local ent = tr["Entity"]
		if IsValid(ent) then
			if ent:IsRagdoll() then
				ent = ent:GetDTEntity(10)
				if !IsValid(ent) then return tr end
			end
			if ent:IsPlayer() then
				tr["Player"] = ent
			end
		end
	end

	return tr
end