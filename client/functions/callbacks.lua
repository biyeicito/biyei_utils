BU.ServerCallback = function(name, cb, ...)
    BU.requestId = BU.requestId + 1
    BU.Callbacks[BU.requestId] = cb
    TriggerServerEvent('biyei_utils:triggerCallback', name, BU.requestId, ...)
end