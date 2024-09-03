RegisterNetEvent('biyei_utils:callbackResponse')
AddEventHandler('biyei_utils:callbackResponse', function(requestId, result)
    if BU.Callbacks[requestId] then
        BU.Callbacks[requestId](result)
        BU.Callbacks[requestId] = nil
    else
        DebugPrint('Callback con requestId ' .. requestId .. ' no encontrado.')
    end
end)
