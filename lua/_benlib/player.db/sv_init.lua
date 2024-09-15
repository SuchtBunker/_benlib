-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] --

_benlib.Player_DB.TableName = "_benlib_players"
_benlib.AddDB(_benlib.Player_DB,"root","gmod")
_benlib.Player_DB.Query("CREATE TABLE IF NOT EXISTS ".._benlib.Player_DB.TableName.." (steam TEXT, name TEXT);")
_benlib.Player_DB.Query("SET NAMES utf8mb4;")
