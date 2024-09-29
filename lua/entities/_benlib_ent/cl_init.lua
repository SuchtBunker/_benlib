
include( "shared.lua" )

function ENT:Draw()
	self:DrawModel()

	/*local btns = self["3D2DButtons"]
	if btns then
		for k,v in ipairs(btns) do
			cam.Start3D2D(self:LocalToWorld(v["pos"]),self:LocalToWorldAngles(v["ang"]),1)
				draw.RoundedBox(0,0,0,v["w"],v["h"],COLOR_RED)
				draw.SimpleText("A","Font_10",0,0)
			cam.End3D2D()	
		end
	end*/
end

hook.Add("PlayerBindPress","ENT Buttons",function(ply,bind,pressed)
	if !pressed then return end
	if bind != "+use" then return end
	
	local tr = ply:GetEyeTrace()
	local ent = tr["Entity"]
	local buttons = ent["3D2DButtons"]
	if !buttons then return end

	local src, aim = ply:EyePos(), ply:GetAimVector()
	for k,v in ipairs(buttons) do
		local worldPos = ent:LocalToWorld(v["pos"])
		if worldPos:DistToSqr(src) > v["dist"] then continue end

		local worldAng = ent:LocalToWorldAngles(v["ang"])
		local pos = util.IntersectRayWithPlane(src,aim,worldPos,worldAng:Up())
		if !pos then continue end
		
		local scale = v["scale"] or 1

		local pos = WorldToLocal(pos,worldAng,worldPos,worldAng)
		local x = pos[1] / scale
		local x0 = v["x"] or 0
		if x < x0 or x > (v["w"] + x0) then continue end
		
		local y = -pos[2] / scale
		local y0 = v["y"] or 0
		if y < y0 or y > (v["h"] + y0) then continue end

		return v["func"](ent,x,y)
	end
end)