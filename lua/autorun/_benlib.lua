-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

_benlib = {}
_benlib.ServerPrefix = "RP_TEST_"

local test
function test()
	local t = string.Explode(":",game.GetIPAddress())
	local ip = t[1]
	if ip == "0.0.0.0" then
		timer.Simple(.1,test)
		return
	end

	local port = t[2]

	_benlib.ServerPort = port
	_benlib.ServerIP = ip
	if ip == "185.254.99.6" then
		if port == "27015" then
			_benlib.ServerPrefix = "RP1_"
		elseif port == "27016" then
			_benlib.ServerPrefix = "RP2_"
		elseif port == "27017" then
			_benlib.ServerPrefix = "RP3_"
		end
	end
	hook.Run("_benlib:ServerAddress",ip,port,_benlib.ServerPrefix)
end
timer.Simple(0,test)

function _benlib.Load(addonpath,addonname)
	local _name = Color(0,250,0)
	local txt = Color(250,250,250)
	local _file = Color(75,100,250)
	local _folder = Color(250,100,75)
	local curStackLevel = 0
	local function stackLevel()
		local str = "-"
		for i=0, curStackLevel do
			str = str.."-"
		end
		return str
	end
	local function loadfile(filepath,fileName)
		MsgC(_name,"["..addonname.."] ",txt,stackLevel().." ",_file,"File",txt,": ",_name,fileName,"\n")

		local pre = string.sub(fileName,1,3)
		if pre == "sh_" then
			if SERVER then AddCSLuaFile(filepath..fileName) end
			include(filepath..fileName)
		elseif pre == "cl_" then
			if SERVER then AddCSLuaFile(filepath..fileName) end
			if CLIENT then include(filepath..fileName) end
		elseif pre == "sv_" then
			if SERVER then include(filepath..fileName) end
		end
	end

	local function loadfolder(path)
		MsgC(_name,"["..addonname.."] ",txt,stackLevel().." ",_folder,"Folder",txt," ",_name,path,txt,"\n")
		SUPRESS = false
		curStackLevel = curStackLevel + 1

		local cur_files, cur_folders = file.Find(path.."*","LUA")
		local loadInfoFile = path.."load.lua"

		INFO = nil
		if file.Exists(loadInfoFile,"LUA") then
			if SERVER then AddCSLuaFile(loadInfoFile) end
			BADMODULE = false
			include(loadInfoFile)
			if BADMODULE then return end
			if INFO then
				if INFO["Files"] then
					cur_files = INFO["Files"]
				end
				if INFO["Folders"] then
					cur_folders = INFO["Folders"]
				end
			end
		end

		for k,v in pairs(cur_files) do
			loadfile(path,v)
		end
		for k,v in pairs(cur_folders) do
			loadfolder(path..v.."/")
		end

		curStackLevel = curStackLevel - 1
		if !SUPRESS then
			MsgC(_name,"["..addonname.."] ",txt,stackLevel().." ",txt,_folder,"Folder",txt," loaded!\n")
		end
	end

	MsgC(_name,"["..addonname.."] ",txt,"Starting to load!","\n")
	local files, folders = file.Find(addonpath.."*","LUA")
	loadfolder(addonpath)
	MsgC(_name,"["..addonname.."] ",txt,"Finished loading!","\n\n")
end
_benlib.Load("_benlib/","benLib")
