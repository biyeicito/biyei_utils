RegisterNetEvent('biyei_utils:triggerCallback')
AddEventHandler('biyei_utils:triggerCallback', function(name, requestId, ...)
    local _source = source
    if BU.Callbacks[name] then
        BU.Callbacks[name](_source, ..., function(result)
            TriggerClientEvent('biyei_utils:callbackResponse', _source, requestId, result)
        end)
    else
        print('Callback ' .. name .. ' no está registrado en el servidor.')
    end
end)
