-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

/*
local startpos = 30
local notifications = {}

local snd_in = "common/wpn_moveselect.wav"
local snd_out = "UI/buttonrollover.wav"

function notification.AddLegacy(text,typ,lenght)
	local img = "icons/notify_info.png"
	if typ == NOTIFY_GENERIC then
		img = "icons/notify_generic.png"
	elseif typ == NOTIFY_ERROR then
		img = "icons/notify_error.png"
	elseif typ == NOTIFY_SUCCESS then
		img = "icons/notify_succsess.png"
	end
	local mat = Material(img)

	local color = Color(0,162,232)
	if typ == NOTIFY_GENERIC then
		color = Color(255,201,14)
	elseif typ == NOTIFY_ERROR then
		color = Color(232,27,35)
	elseif typ == NOTIFY_SUCCESS then
		color = Color(34,177,76)
	end
	MsgC(color,"[Meldungen] ",COLOR_WHITE,text,"\n")

	local text = DarkRP.textWrap(text:gsub("//","\n"):gsub("\\n","\n"),"Font_22.5",ScrW()*.35)
	local x, y = surface.GetTextSize(text)

	local curSize = 0
	for k,v in pairs(notifications) do
		curSize = curSize + v:GetTall() + 5
	end

	local fr = vgui.Create("DFrame")
	fr:SetSize(x+40,y+6)
	fr:SetPos(ScrW(),curSize + startpos + 5)
	fr.ShouldY = curSize + startpos + 5
	fr:MoveTo(ScrW()-(x+45),curSize + startpos + 5,.15)
	fr.Created = SysTime()
	fr:SetTitle("")
	fr:ShowCloseButton(false)
	fr:SetDraggable(false)
	fr.Paint = function(self,w,h)
		if HUD.Hidden then return end
		
		Ben_Derma.DrawBlurPanel(self)

		draw.RoundedBox(0,0,0,30,h,color)
		draw.RoundedBox(0,30,0,(SysTime() - (self.Created + lenght))*-1/lenght * (w-30),h,color)

		draw.DrawText(text,"Font_22.5",35,2.5,COLOR_WHITE,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)

		surface.SetDrawColor(255,255,255,self:GetAlpha())
		surface.SetMaterial(mat)
		surface.DrawTexturedRect(1,1,28,28)

		surface.SetDrawColor(Ben_Derma["COLOR_OUTLINE"])
		surface.DrawOutlinedRect(0,0,w,h)
		surface.DrawRect(29,0,1,h)
	end
	table.insert(notifications,fr)
	surface.PlaySound(snd_in)

	timer.Simple(lenght,function()
		local x, y = fr:GetPos()
		surface.PlaySound(snd_out)
		fr:MoveTo(ScrW(),y,.15,0,-1,function()
			table.RemoveByValue(notifications,fr)
			notification.repos(fr)
		end)
		timer.Simple(.16,function()
			if IsValid(fr) then
				table.RemoveByValue(notifications,fr)
				notification.repos(fr)
			end
		end)
	end)
end

function notification.repos(rem)
	local size = rem:GetTall() + 5
	local _, remY = rem:GetPos()
	for k,v in pairs(notifications) do
		local _, y = v:GetPos()
		if remY > y then continue end
		v:MoveTo(ScrW()-v:GetWide()-5,v.ShouldY-size,.15,0)
		v.ShouldY = v.ShouldY-size
	end
	rem:Remove()
end
*/

function NotifyLang(name)
	hook.Run("Notification",name)
	NotifyLangID(NotifyIDs[name])
end
function NotifyLangID(id)
	local tab = NotifyLangs[id]
	if !tab then
		Error("Missing notification ID "..id)
	end
	hook.Run("Notification",tab["Key"])
	notification.AddLegacy(tab["Text"],tab["Color"],tab["Time"])
end
net.Receive("NotifyLang",function()
	NotifyLangID(net.ReadUInt(10))
end)

function Notify(text,typ,len)
	notification.AddLegacy(text,typ,len)
end

net.Receive("Notify",function()
	notification.AddLegacy(net.ReadString(),net.ReadUInt(2),net.ReadUInt(10))
end)

/*
usermessage.Hook("_Notify",function(msg)
	notification.AddLegacy(msg:ReadString(),msg:ReadShort(),msg:ReadLong())
end)
*/

/*
hook.Add("InitPostEntity","Notify:OnJoin",function()
	timer.Simple(15,function()
		Notify("Willkommen auf SuchtBunker.de!",3,5)
	end)
end)
*/