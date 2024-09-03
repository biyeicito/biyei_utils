RegisterNetEvent('biyei_utils:triggerCallback')
AddEventHandler('biyei_utils:triggerCallback', function(name, requestId, ...)
    local _source = source
    if RZ.Callbacks[name] then
        local result = BU.Callbacks[name](source, ...)
        TriggerClientEvent('biyei_utils:callbackResponse', _source, requestId, result)
    else
        DebugPrint('Callback ' .. name .. ' no está registrado en el servidor.')
    end
end)