-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

module("Command",package.seeall)

Commands = Commands or {}
Operators = {
	["!"] = true,
	["/"] = true,
	["@"] = true,
}

// function(ply,chat,argStr,argTab,cmdStr)
function Add(cmd,func)
	cmd = string.lower(cmd)
	Commands[cmd] = func

	concommand.Add(cmd,function(ply,cmd,argTab,argStr)
		func(ply,false,string.TrimLeft(string.TrimRight(argStr,'"'),'"'),argTab,cmd)
	end)
end

local empty = ""
local log = {}
function handleChatMessage(ply, text, teamonly)
	//if !text or #text == 0 then return empty end
	if SBLogsInstalled then
		log["player"] = ply
		log["message"] = text
		Logs.Log("chat",log)
	end

	local tab = string.Split(text," ")
	local cmd = tab[1]
	local operator = cmd[1]

	if Operators[operator] then
		local func = Commands[string.lower(string.sub(cmd,2))]
		if func then
			table.remove(tab,1)
			func(ply,true,string.sub(text,#cmd+2),tab,string.sub(cmd,2))
			return empty
		end
		/* -- this was used on SB because every chat command used this handler
		else
			ply:ChatPrint("Befehl nicht gefunden!")
		end
		return empty
		*/
	end

	if ply["Admin_CMuted"] then
		ply:ChatPrint("Du wurdest von einem Admin gemuted!")
		return empty
	end

	/*
	if teamonly then
		net.Start("Chat:Job")
		net.WriteEntity(ply)
		net.WriteString(text)
		net.Send(Chat.GetJobReceivers(ply))
	else
		net.Start("Chat:Local")
		net.WriteEntity(ply)
		net.WriteString(text)
		net.Send(Chat.GetLocalReceivers(ply))
	end

	return empty
	*/
end

/*
hook.Add("PostGamemodeLoaded","Commands",function(ply,text)
	function GAMEMODE:PlayerSay(ply, text, teamonly)
		return handleChatMessage(ply, text, teamonly)
	end
end)
*/
hook.Add("PlayerSay", "_benlib:ChatCommands", handleChatMessage)