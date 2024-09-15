-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

if !hook.OldAdd then
	hook.OldAdd = hook.Add
	hook.OldRemove = hook.Remove
	hook.OldGetTable = hook.GetTable
	hook.OldCall = hook.Call
	hook.OldRun = hook.Run
	hook.OldAddedThisRun = true
else
	hook.OldAddedThisRun = false
end

hook.Fast = hook.Fast or {}
local Fast = hook.Fast
hook.Slow = hook.Slow or {}
local Slow = hook.Slow

function hook.Add(name,id,func)
	hook.Remove(name,id)

	local t = {func,!isstring(id) and id or false}

	local tF = Fast[name]
	if !tF then
		tF = {}
		Fast[name] = tF
	end
	table.insert(tF,t)

	local tS = Slow[name]
	if !tS then
		tS = {}
		Slow[name] = tS
	end
	tS[id] = t
end

function hook.Remove(name,id)
	print("Removing Hook",name,id)
	local tS = Slow[name]
	if !tS then return end
	
	local t = tS[id]
	if !t then return end
	
	local tF = Fast[name]
	table.RemoveByValueI(tF,t)
	if #tF == 0 then
		Fast[name] = nil
		Slow[name] = nil
	else
		tS[id] = nil
	end
end

function hook.Call(name,gm,...)
	local tF = Fast[name]
	if tF then
		local a,b,c,d,e,f
		for i=#tF, 1, -1 do
			local v = tF[i]
			local id = v[2]
			if id then
				if !IsValid(id) then
					hook.Remove(name,id)
					continue
				else
					a,b,c,d,e,f = v[1](id,...)
				end
			else
				a,b,c,d,e,f = v[1](...)
			end
			if a != nil then return a,b,c,d,e,f end
		end
	end

	if gm then
		local f = gm[name]
		if f then
			return f(gm,...)
		end
	end
end

function hook.Run(name,...)
	local tF = Fast[name]
	if tF then
		local a,b,c,d,e,f
		for i=#tF, 1, -1 do
			local v = tF[i]
			local id = v[2]
			if id then
				if !IsValid(id) then
					hook.Remove(name,id)
					continue
				else
					a,b,c,d,e,f = v[1](id,...)
				end
			else
				a,b,c,d,e,f = v[1](...)
			end
			if a != nil then return a,b,c,d,e,f end
		end
	end

	local gm = GM or GAMEMODE
	if gm then
		local f = gm[name]
		if f then
			return f(gm,...)
		end
	end
end

if hook.OldAddedThisRun then
for hookName, tab in pairs(hook.OldGetTable()) do
	for k,v in pairs(tab) do
		hook.OldRemove(hookName,k)
		hook.Add(hookName,k,v)
	end
end
end