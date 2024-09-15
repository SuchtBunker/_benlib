-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

util.AddNetworkString("Notify")
function Notify(ply,text,typ,len)
	net.Start("Notify")
	net.WriteString(text)
	net.WriteUInt(typ,2)
	net.WriteUInt(len,10)
	if ply == true then 
		net.Broadcast()
	else 
		net.Send(ply)
	end
end

util.AddNetworkString("NotifyLang")
function NotifyLang(ply,text)
	net.Start("NotifyLang")
	net.WriteUInt(NotifyIDs[text] or 0,10)
	if ply == true then 
		net.Broadcast()
	else 
		net.Send(ply)
	end
end