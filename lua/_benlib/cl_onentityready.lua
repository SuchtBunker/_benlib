-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

EntityCreatedHooks = EntityCreatedHooks or {}

hook.Add("OnEntityCreated","OnEntityReady",function(ent)
	local id = ent:EntIndex()
	local hooks = EntityCreatedHooks[id]

	if !hooks then return end
	
	for k,v in ipairs(hooks) do
		v(ent)
	end
	EntityCreatedHooks[id] = nil
end)

-- dont know if this is needed
hook.Add("EntityRemoved","OnEntityReady",function(ent)
	EntityCreatedHooks[ent:EntIndex()] = nil
end)

function OnEntityReady(id,func)
	local ent = Entity(id)
	if IsValid(ent) then
		func(ent)
	else
		local hooks = EntityCreatedHooks[id]
		if !hooks then
			hooks = {}
			EntityCreatedHooks[id] = hooks
		end
		table.insert(hooks,func)
	end
end