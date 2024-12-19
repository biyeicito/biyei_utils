RevivePlayer = function()
    if Config.Framework == 'esx' then
        TriggerEvent('esx_ambulancejob:revive')
    elseif Config.Framework == 'qbcore' then
        TriggerEvent('hospital:client:Revive')
    end
end

exports('RevivePlayer', RevivePlayer)