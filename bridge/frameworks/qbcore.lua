QBCore = nil
if Config.Framework == 'qbcore' then
    DebugPrint('QBCore Initialized')
    QBCore = exports['qb-core']:GetCoreObject()
end
