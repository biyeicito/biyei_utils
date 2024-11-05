ShowNotification = function(source, msg)
    TriggerClientEvent('biyei_utils:ShowNotification', source, msg)
end

exports('ShowNotification', ShowNotification)