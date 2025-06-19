-- exports

exports('closeInventory', function()
    TriggerEvent('tpz_inventory:closePlayerInventory')
end)

exports('getWeaponDefaultWeight', function(hash)
    return 0
end)

exports('getWeaponDefaultDesc', function(hash)
    return ""
end)

exports('getWeaponDefaultLabel', function(hash)
    return ""
end)

exports('getWeaponName', function(hash)
    return ""
end)

exports('getWeaponsDefaultData', function(request)
    return {}
end)

exports('getWeaponAmmoTypes', function(group)
    return {}
end)

exports('getAmmoLabel', function(ammo)
    return ""
end)

exports('getInventoryItem', function(name)
    return ""
end)

exports('getInventoryItems', function()
    return ""
end)

-- get items data from client side, like label, weight, description, etc
exports("getItemData", function(data)
    return {}
end)
