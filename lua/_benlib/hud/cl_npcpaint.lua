-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

function _benlib.DrawFloatingText(ent, text, offset)
	local entPos = ent:GetPos()
	if entPos:DistToSqr(LocalPlayer():GetPos()) > _benlib.TargetIDRange then return end

	local upPos = ent:GetUp()
	upPos:Mul(offset)
	entPos:Add(upPos)

	local ang = LocalPlayer():EyeAngles()
	ang.p = 0
	ang.y = ang.y - 90
	ang.r = 90

	cam.Start3D2D(entPos, ang, 0.1)
		draw.SimpleTextOutlined(text, "Font_80", 0, 0, COLOR_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, COLOR_BLACK)
	cam.End3D2D()
end