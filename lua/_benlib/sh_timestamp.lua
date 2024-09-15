function timestamp_to_unix(timestamp)
    -- Use pattern matching to extract date and time components
    local year, month, day, hour, min, sec = timestamp:match("^(%d+)-(%d+)-(%d+)T(%d+):(%d+):(%d+)%.%d+Z$")
    
    -- Convert to number
    year = tonumber(year)
    month = tonumber(month)
    day = tonumber(day)
    hour = tonumber(hour)
    min = tonumber(min)
    sec = tonumber(sec)

    -- Create a Lua table representing the date and time in UTC
    local dateTable = {
        year = year,
        month = month,
        day = day,
        hour = hour,
        min = min,
        sec = sec
    }

    -- Convert to UNIX timestamp
    local unixTime = os.time(dateTable)
    
    -- Adjust for UTC (os.time assumes local time)
    -- os.difftime(os.time(), os.time(os.date("!*t"))) returns the offset of local time from UTC
    local utcOffset = os.difftime(os.time(os.date("!*t")), os.time())
    unixTime = unixTime - utcOffset

    return unixTime
end