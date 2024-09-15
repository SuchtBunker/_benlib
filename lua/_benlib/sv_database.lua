-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

require("mysqloo")

module("_benlib", package.seeall)

Database = {
	Connections = {},
	Credentials = util.JSONToTable(
		file.Exists("_benlib/mysql.json","DATA") and file.Read("_benlib/mysql.json", "DATA") or file.Read("data/_benlib/mysql.json", "GAME")
	)
}

local function onError(q,err,sql)
	local con = q["con"]
	_benlib.Print("A Error occured! (DB: "..con["db"].." - User: "..con["user"]..")")
	_benlib.Print("Error: "..err)
	_benlib.Print("SQL: "..(sql or "?").."\n")
end

local function onConnected(con)
	_benlib.Print("Successfully connected to DB "..con["db"].." with user "..con["user"].."!")
end

local function onConnectionFailed(con,err)
	_benlib.Print("Cannot connect to DB "..con["db"].." with user "..con["user"].." ("..err..")!")
end

function _benlib.AddDB(mod, id)
	local conTab
	if Database.Connections[id] then 
		conTab = Database.Connections[id]
	else
		local cred = Database.Credentials[id]
		local con = mysqloo.connect(
			cred["Address"],
			cred["User"],
			cred["Password"],
			cred["Database"] or id,
			cred["Port"] or 3306
		)
		con["user"] = cred["User"]
		con["db"] = cred["Database"] or id
		con["onConnected"] = onConnected
		con["onConnectionFailed"] = onConnectionFailed
		con:setAutoReconnect(true)
		con:setMultiStatements(true)
		con:connect()
	
		local function query(str,callback,args)
			local query = con:query(str)
			query["con"] = con
			query["onError"] = onError
	
			if callback then
				function query:onSuccess(data)
					if data[1] then
						callback(data,self:lastInsert(),args,self)
					else
						callback(false,self:lastInsert(),args,self)
					end
				end
			end
			query:start()
		end 
	
		local function escape(str)
			return con:escape(str)
		end
		query("SET NAMES 'utf8';")

		conTab = {con, query, escape}
		Database.Connections[id] = conTab
	end

	mod["MySQLCon"] = conTab[1]
	mod["Query"] = conTab[2]
	mod["Escape"] = conTab[3]

	return conTab
end