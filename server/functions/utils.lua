GetClosestPlayer = function(source, distance)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    local closestPlayer = nil
    local closestDistance = distance or 2.0

    for _, playerId in ipairs(GetPlayers()) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed and playerId ~= tostring(source) then
            local targetCoords = GetEntityCoords(targetPed)
            local dist = #(playerCoords - targetCoords)

            if dist < closestDistance then
                closestDistance = dist
                closestPlayer = tonumber(playerId)
            end
        end
    end

    return closestPlayer
end


exports('GetClosestPlayer', GetClosestPlayer)