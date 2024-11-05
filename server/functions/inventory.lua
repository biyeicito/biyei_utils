

AddItem = function(id, item, amount, metadata)
    DebugPrint(string.format('Add Item: id(%s), item(%s), amount(%s), metadata(%s)', id, item, amount, json.encode(metadata) or '{}'))
    local Player = GetPlayerData(id)
    if Config.Inventory == 'esx' then
        if metadata then
            print('^3The inventory you selected does not support metadata, the item has not been delivered for this reason.')
        else

        end
    elseif Config.Inventory == 'ox_inventory' then
        exports.ox_inventory:AddItem(id, item, amount, metadata)
    elseif Config.Inventory == 'qb-inventory' then
    
    elseif Config.Inventory == 'origen_inventory' then

    end
end
exports('AddItem', AddItem)


GetItems = function(id)
    local items = {}
    local Player = GetPlayerData(id)

    if ESX then
        if Player then
            local inventory = Player.getInventory()
            for _, item in pairs(inventory) do
                if item.count > 0 then
                    table.insert(items, {
                        name = item.name,
                        label = item.label,
                        count = item.count,
                        metadata = item.metadata
                    })
                end
            end
        end

    elseif QBCore then
        if Player then
            local inventory = Player.PlayerData.items
            for _, item in pairs(inventory) do
                if item.amount > 0 then
                    table.insert(items, {
                        name = item.name,
                        label = QBCore.Shared.Items[item.name] and QBCore.Shared.Items[item.name].label or item.name,
                        count = item.amount,
                        metadata = item.info
                    })
                end
            end
        end
    end

    return items
end

exports('GetItems', GetItems)


