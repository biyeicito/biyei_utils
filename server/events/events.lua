RegisterNetEvent('biyei_utils:forceNearbyOpenInventory')
AddEventHandler('biyei_utils:forceNearbyOpenInventory', function()
    local _source = source
    local nearbyId = GetClosestPlayer(_source, 2.0)

    if nearbyId then
        if Config.Inventory == 'esx' then
        elseif Config.Inventory == 'ox_inventory' then
            exports.ox_inventory:forceOpenInventory(_source, 'player', nearbyId)
        elseif Config.Inventory == 'qb-inventory' then

        elseif Config.Inventory == 'origen_inventory' then

        end
    else
        ShowNotification(_source, 'No hay jugadores cerca')
    end
end)
