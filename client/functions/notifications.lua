ShowNotification = function(msg)
    if Config.Notifications == 'esx' then
        ESX.ShowNotification(msg)
    elseif Config.Notifications == 'qbcore' then
        QBCore.Functions.Notify(msg)
    else
        PrintWarning('Check the notification system in biyei_utils/client/functions/notifications.lua as it is not valid.')
    end
end

RegisterNetEvent('biyei_utils:ShowNotification')
AddEventHandler('biyei_utils:ShowNotification', function(msg)
    ShowNotification(msg)
end)

exports('ShowNotification', ShowNotification)