-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

function _benlib.Print(...)
	MsgC(Color(255,0,0),"[MySQL] ",Color(255,255,255),...,"\n")
end

file.Write("_benlib.errors.txt","")
function _benlib.Error(txt)
	file.Append("_benlib.errors.txt",txt.."\n\n")
end