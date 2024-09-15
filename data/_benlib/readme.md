# How to configure MySQL

### First install MySQLOO: https://github.com/FredyH/MySQLOO

#### You can move the config file from addons/_benlib/data/_benlib/mysql.json to garrysmod/data/_benlib/mysql.json to store your config outside of the addons folder.

## Config schema
```
{ 								<- Connections List
	"Identifier": { 			<- Database identifier (used as DB if no Database is specified)
		"Address": "XXXXXX", 	<- DB-Server Address
		"User": "XXXXXX", 		<- DB-User Name
		"Password": "XXXXXX",	<- DB-User Password
		"Database": "XXXXXX"	<- Database Name (optional)
		"Port": 00000,			<- Database Port (optional)
	}
}
```

## Example config file
```
{
	"base": {
		"Address": "db.suchtbunker.de",
		"User": "gmod_darkrp_base",
		"Password": ":d^Ek6>Rrhd}@Px}sHBc",
		"Database": "gmod_darkrp"
	},
	"logs": {
		"Address": "db.suchtbunker.de",
		"User": "gmod_darkrp_logs",
		"Password": "y#F6WxZ_u5kCCnnksoie",
		"Database": "gmod_darkrp_logs"
	}
}
```