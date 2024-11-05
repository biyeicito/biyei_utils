QBCore = nil
if Config.Framework == 'qbcore' then
    DebugPrint('QBCore Initialized')
    QBCore = exports['qb-core']:GetCoreObject()
    Core = QBCore
    Init()
end
