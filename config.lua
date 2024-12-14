Config = {}

-- Trash bin inventory settings
Config.InventoryLabel = "Trash"
Config.InventorySlots = 5
Config.InventoryWeight = 5000 -- In grams
Config.Target = "ox_target" -- ox_target or qb-target

-- Target configurations for ox_target and qb-target
Config.TargetSettings = {
    ox_target = {
        label = "Open Trash Bin",
        icon = "fa-solid fa-trash-can",
        distance = 2.0,
        onSelect = function()
            TriggerServerEvent('Ollinox_TrashBin:createTempStash')
        end
    },
    qb_target = {
        {
            label = "Open Trash Bin",
            icon = "fa-solid fa-trash-can",
            action = function(entity)
                TriggerServerEvent('Ollinox_TrashBin:createTempStash')
            end
        }
    }
}

-- Trash bin props (customizable)
Config.Props = {
    "prop_bin_01a",
    "prop_bin_05a",
    "prop_bin_02a",
    "prop_bin_06a",
    "prop_bin_04a"
}
