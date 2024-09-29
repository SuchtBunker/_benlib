
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )
include( "outputs.lua" )

local meta = FindMetaTable("Entity")
function meta:SetPlayer(ply)
	self["PP_Buddies"] = ply["PP_Buddies"]
	self["OwnerID64"] = ply:SteamID64()
	self["OwnerName"] = ply:Name()
	self["OwnerID"] = ply:AccountID()
	self["Owner"] = ply

	local class = self:GetClass()
	if PropProtection.TouchableClasses[class] or PropProtection.SyncOwnerClasses[class] then
		self:SetDTInt(25,self["OwnerID"])
	end
end
function meta:GetPlayer() return self["Owner"] end

--[[---------------------------------------------------------
	Name: AcceptInput
	Desc: Accepts input, return true to override/accept input
-----------------------------------------------------------]]
function ENT:AcceptInput( name, activator, caller, data )
	return false
end

-- Removing those functions cuz we dont need to call empty them as they're empty anyways
ENT.PhysicsCollide = false
ENT.PhysicsUpdate = false
ENT.OnTakeDamage = false
ENT.Use = false
ENT.StartTouch = false
ENT.EndTouch = false
ENT.Touch = false

--[[---------------------------------------------------------
	Name: UpdateTransmitState
	Desc: Set the transmit state
-----------------------------------------------------------]]
function ENT:UpdateTransmitState()
	return TRANSMIT_PVS
end

--
-- Default generic spawn function
-- So you don't have to add one your entitie unless you want to.
--
function ENT:SpawnFunction( ply, tr, ClassName )

	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 10
	local SpawnAng = ply:EyeAngles()
	SpawnAng.p = 0
	SpawnAng.y = SpawnAng.y + 180

	local ent = ents.Create( ClassName )
	ent:SetCreator( ply )
	ent:SetPos( SpawnPos )
	ent:SetAngles( SpawnAng )
	ent:Spawn()
	ent:Activate()

	ent:DropToFloor()

	return ent
end