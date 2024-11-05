GetPlayerData = function(id)
    if ESX then
        return ESX.GetPlayerFromId(id)
    elseif QBCore then
        return QBCore.Functions.GetPlayer(id)
    end
end

exports('GetPlayerData', GetPlayerData)
