-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

function _benlib.Player_DB.MakeTable(ids,field)
    local inserted, newTable = {}, {}
    for i=1, #ids do
        local id = ids[i][field]
        if !id or inserted[id] then continue end

        table.insert(newTable,id)
        inserted[id] = true
    end
    return newTable
end