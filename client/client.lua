local props = Config.Props

-- Function to add targets based on the selected system
local function addTargetSystem(targetType)
    if targetType == "ox_target" then
        exports.ox_target:addModel(props, Config.TargetSettings.ox_target)
    elseif targetType == "qb-target" then
        exports['qb-target']:AddTargetModel(props, Config.TargetSettings.qb_target)
    end
end


RegisterNetEvent('Ollinox_TrashBin:openTempStash', function(stashId)
    exports.ox_inventory:openInventory('stash', stashId)
end)


addTargetSystem(Config.Target)
