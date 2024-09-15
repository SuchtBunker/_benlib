
/* -- Options:
	-- ["color"]
		-- ["grip"]
		-- ["btn"]
		-- ["background"]
*/
function _benlib.CreateList(sizeX,sizeY,posX,posY,parent,options)
	local ops = options or {}
	if !ops["color"] then
		ops["color"] = {}
	end

	local List = nil
	local Scroll = vgui.Create("DScrollPanel",parent)
	Scroll:SetSize(sizeX,sizeY)
	Scroll:SetPos(posX,posY)
	local sbar = Scroll:GetVBar()
	Scroll.IsResized = false
	function sbar:Paint(w,h)
		draw.RoundedBox(0,0,0,w,h,ops["color"]["background"] or Color(50,50,50))
		if Scroll.IsResized then return end
		if Scroll.Resized then
			Scroll.Resized()
		else
			for k,v in pairs(List:GetChildren()) do
				v:SetWide(List:GetWide()-20)
			end
		end
		Scroll.IsResized = true
	end
	function sbar.btnUp:Paint(w,h)
		draw.RoundedBox(0,0,0,w,h,ops["color"]["btn"] or Color(250,50,50))
	end
	function sbar.btnDown:Paint(w,h)
		draw.RoundedBox(0,0,0,w,h,ops["color"]["btn"] or Color(250,50,50))
	end
	function sbar.btnGrip:Paint(w,h)
		draw.RoundedBox(0,0,0,w,h,ops["color"]["grip"] or Color(250,50,50))
	end
	sbar.btnGrip:SetAlpha(150)

	List = vgui.Create("DIconLayout",Scroll)
	List:SetSize(Scroll:GetWide(),Scroll:GetTall())
	List:SetPos(0,0)
	List:SetSpaceY(5)
	List:SetSpaceX(5)

	return List, Scroll
end