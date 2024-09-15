-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

module("table",package.seeall)

function RemoveByValueI(tab,val)
	for i=1, #tab do
		if tab[i] != val then continue end
		remove(tab,i)
		return true, i
	end
	return false
end

function ToColor(t)
	return Color(t["r"] or 255,t["g"] or 255,t["b"] or 255)
end

function CompareColor(c1,c2)
	return c1.r == c2.r and c1.g == c2.g and c1.b == c2.b and c1.a == c2.a
end

function FullCopy(tab)
	local new = {}
	for k,v in pairs(tab) do
		if isnumber(v) or isstring(v) then 
			new[k] = v
		elseif v.Copy then
			new[k] = v:Copy()
		elseif istable(v) then
			new[k] = FullCopy(v)
		else
			new[k] = v // no copy method found
		end
	end
	return new
end