-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

module("Texture",package.seeall)

local meta = {}
meta.__index = meta

function meta:GetMaterial(shader,uid)
	return self["Loaded"] and self["Cache"][uid or "Base"] or false
end

local renderID = 0
function meta:MakeMaterial(shader,uid,kv)
	if !self["Loaded"] then return false end
	
	renderID = renderID + 1

	local mat

	local id = self["MatID"]

	kv = kv or {}
	shader = shader or "UnlitGeneric"
	uid = uid or "Base"

	if self["RT"] then
		kv["$basetexture"] = self["RT"]:GetName()

		mat = CreateMaterial("CUSTOM_TEXTURE_"..id.."_"..renderID,shader,kv)
	else
		/*if shader == "UnlitGeneric" then
			print("../data/"..self:FilePath())
			mat = Material("../data/"..self:FilePath())
		else*/
			// Create a unique file for this material (https://github.com/Facepunch/garrysmod-issues/issues/3341#issuecomment-485208075)
			local tempFileName = "textures/"..self["FileName"].."_"..id.."_"..renderID.."."..self["Extension"]
			file.Write(tempFileName,file.Read(self:FilePath()))
			Material("../data/"..tempFileName)

			// Create the material
			local kv = kv or {}
			kv["$basetexture"] = "../data/"..tempFileName
			mat = CreateMaterial("CUSTOM_TEXTURE_"..id.."_"..renderID,shader,kv)

			file.Delete(tempFileName)
		//end
	end

	self["Cache"][uid] = mat

	return mat
end

function meta:FilePath()
	return "textures/"..self["FileName"].."."..self["Extension"]
end

function meta:AddOnLoaded(func)
	if self["Loaded"] then
		func(self)
	else
		table.insert(self["OnLoaded"],func)
	end
end

function meta:Render(func,w,h,dontSave)
	self["Loaded"] = false
	local rt = GetRenderTarget("CUSTOM_TEXTURE_RENDER_"..self["FileName"],w,h)
	self["RT"] = rt

	hook.Add("PostRender","RenderTarget_"..self["FileName"],function()
		hook.Remove("PostRender","RenderTarget_"..self["FileName"])
		render.PushRenderTarget(rt)
			surface.DisableClipping(true)
			render.OverrideAlphaWriteEnable( true, true )
			render.Clear( 0, 0, 0, 0, true, true ) 
			render.OverrideAlphaWriteEnable( false, false )
			cam.Start2D()
				func(w,h)
			cam.End2D()

			local img
			if !dontSave then
				img = render.Capture({
					["format"] = self["Extension"] == "png" and "png" or "jpg",
					["w"] = w,
					["h"] = h,
					["alpha"] = true,
					["qualtiy"] = 100,
					x = 0, y = 0,
				})
			end
		render.PopRenderTarget()

		if !dontSave then
			file.Write(self:FilePath(),img)
		end

		self["Loaded"] = true
		for k,v in ipairs(self["OnLoaded"]) do
			v(self)
		end
	end)
end

function meta:Load()
	local filePath = self:FilePath()
	if file.Exists(filePath,"DATA") then
		//Material("../data/"..filePath)
		self["Loaded"] = true
		for k,v in ipairs(self["OnLoaded"]) do
			v(self)
		end
	elseif self["URL"] then
		self:Download()
	end
end

function meta:Remove()
	self["Loaded"] = false
	Textures[self["UID"]] = nil
end

function meta:Delete()
	self:Remove()
	file.Delete(self:FilePath())
end

local function fail(self,tryAgain)
	print("Failed to download Texture",self["URL"],err)
	if tryAgain then
		print("Trying again in 5 seconds")
		timer.Simple(5,function()
			self:Download()
		end)
	else
		print("Not trying again")
		if self.OnDownloadFail then self.OnDownloadFail(self) end
	end
end

function meta:Download()
	http.Fetch(self["URL"],function(res,size,headers,code)
		if code == 404 then
			fail(self,false)
		elseif code != 200 then
			fail(self,true)
		else
			file.Write(self:FilePath(),self["Compressed"] and util.Decompress(res) or res)
			self:Load()
		end
	end,function(err)
		fail(self,true)
	end)
end

file.CreateDir("textures")

MatID = MatID or 0

Textures = {}
function URL(url,ext,comp)
	if !Textures[url] then
		MatID = MatID + 1
		
		if string.GetExtensionFromFilename(url) == "lzma" then
			comp = true
			if !ext then
				ext = string.GetExtensionFromFilename(string.TrimRight(url,".lzma"))
			end
		else
			ext = ext or string.GetExtensionFromFilename(url)
		end
		
		if ext == "jpeg" then ext = "jpg" end
		
		Textures[url] = setmetatable({
			["UID"] = url,
			["URL"] = url,
			["FileName"] = hash.MD5(url),
			["Extension"] = ext,
			["Loaded"] = false,
			["OnLoaded"] = {},
			["Cache"] = {},
			["MatID"] = MatID,
			["Compressed"] = comp or false,
		},meta)
		Textures[url]:Load()
	end

	return Textures[url]
end

function ByName(name,extension)
	if !Textures[name] then
		MatID = MatID + 1
		Textures[name] = setmetatable({
			["UID"] = name,
			["FileName"] = hash.MD5(name),
			["Extension"] = extension,
			["Loaded"] = false,
			["OnLoaded"] = {},
			["Cache"] = {},
			["MatID"] = MatID,
		},meta)
		Textures[name]:Load()
	end

	return Textures[name]
end

function PrepareURL(url)
	return string.gsub(url,'[\\/:%*%?"<>|]',"")
end