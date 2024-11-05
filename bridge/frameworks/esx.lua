ESX = nil
if Config.Framework == 'esx' then
    DebugPrint('ESX Initialized')
    ESX = exports["es_extended"]:getSharedObject()
    Core = ESX
    Init()
end