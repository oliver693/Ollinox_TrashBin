local ox_inventory = exports.ox_inventory


local function createTempStash()
    local stashId = ox_inventory:CreateTemporaryStash({
        label = Config.InventoryLabel,
        slots = Config.InventorySlots,
        maxWeight = Config.InventoryWeight
    })
    return stashId
end


RegisterNetEvent('Ollinox_TrashBin:createTempStash', function()
    local stashId = createTempStash()
    TriggerClientEvent('Ollinox_TrashBin:openTempStash', source, stashId)
end)

local function checkResourceFolderName()
    local resourceName = GetCurrentResourceName()
    if resourceName ~= "Ollinox_TrashBin" then
        print("ERROR: The resource folder must be named 'Ollinox_TrashBin'. Renaming the folder will cause issues.")
        os.exit() 
    end
end
checkResourceFolderName()
