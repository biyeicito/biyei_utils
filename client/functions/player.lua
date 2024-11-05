GetPlayerData = function()
    local playerData = nil
    if ESX then
        playerData = ESX.GetPlayerData()
    elseif QBCore then
        playerData = QBCore.Functions.GetPlayerData()
    end
    return playerData
end

exports('GetPlayerData', GetPlayerData)
