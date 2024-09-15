-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

hook.Add("NotifyShouldTransmit","ENT:NotifyShouldTransmit",function(ent,bool)
	if ent.NotifyShouldTransmit then ent:NotifyShouldTransmit(bool) end
end)