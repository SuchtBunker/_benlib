
function string.URL(url)
	return url:match('^%w+://([^/]+)')
end

function string.URLParams(s)
	local params = {}
	for k, v in string.gmatch( s, "([^&=?]+)=([^&=?]+)" ) do
		params[k] = v
	end
	return params
end