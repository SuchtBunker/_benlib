-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel(self["Clothes"] and "models/Humans/Group01/male_07.mdl" or self.Model)

	self:SetHullType(HULL_HUMAN)
	self:SetHullSizeNormal()
	//self:SetNPCState(NPC_STATE_NONE)
	self:SetSolid(SOLID_BBOX)
	self:CapabilitiesAdd(CAP_ANIMATEDFACE)
	self:CapabilitiesAdd(CAP_TURN_HEAD)
	self:SetUseType(SIMPLE_USE)
	self:DropToFloor()
	self:SvInit()
end

function ENT:AcceptInput(_,ply)
	self:OnUse(ply)
end
