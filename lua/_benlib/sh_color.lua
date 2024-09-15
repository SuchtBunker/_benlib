-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

local meta = FindMetaTable("Color")
if !meta then return end -- weird bug fix (clientside)

function meta:Copy()
	return Color(self["r"],self["g"],self["b"],self["a"])
end