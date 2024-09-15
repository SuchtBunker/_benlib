-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

include("shared.lua")

function ENT:DrawTranslucent()
	HUD.NPCPaint.Draw(self,self.Title,77.5)
end

function ENT:Draw()
	
	if self["Clothes"] then
		local rag = self["Rag"]
		if !IsValid(rag) then
			rag = ClientsideRagdoll(self["Model"])
			rag:SetParent(self)
			rag:AddEffects(EF_BONEMERGE)
			self["Rag"] = rag
			rag["GTAClothesEquipped"] = self["GTAClothesEquipped"]
		end
		
		render.SuppressEngineLighting(true)
		render.ResetModelLighting(.5, .5, .5)
		GTAClothes.PreEntityDraw(self)
		GTAClothes.DoArms(rag)
		rag:DrawModel()
		render.SuppressEngineLighting(false)
	else
		self:DrawModel()
	end

	if self["Accessories"] then
		/*
		if !Clothing_Models[self] then
			Clothing.CreatePlayerModels(self, self["Accessories"])
		end
		*/
		Clothing.Draw(self)
	end
end

function ENT:NotifyShouldTransmit(trans)
	if !trans then
		SafeRemoveEntity(self["Rag"])
	end
end

function ENT:Initialize()	
	if self["Clothes"] then
		self["GTAClothesEquipped"] = {}
		self["GTAClothesEntities"] = {}
		self["GTAClothesForceDraw"] = true 
		for k,v in pairs(self["Clothes"]) do
			self["GTAClothesEquipped"][k] = GTAClothes.prepItemFromRawData(v)
		end
	end

	if self["Accessories"] then
		Clothing.CreatePlayerModels(self, self["Accessories"])
	end

	self:ClInit()
end

function ENT:OnRemove()
	SafeRemoveEntity(self["Rag"])
end