---@deprecated
exports('vorp_inventoryApi', function()
    local INV = {}

    INV.registerInventory = function(id, name, limit, acceptWeapons, shared, ignoreItemStackLimit, whitelistItems, UsePermissions, UseBlackList, whitelistWeapons)
    
    end

    INV.removeInventory = function(...)
        --
    end

    INV.BlackListCustomAny = function(...)
        --
    end

    INV.AddPermissionMoveToCustom = function(...)
        --
    end

    INV.AddPermissionTakeFromCustom = function(...)
        --
    end

    INV.setInventoryItemLimit = function(...)
        --
    end

    INV.setInventoryWeaponLimit = function(...)
        --
    end

    INV.updateCustomInventorySlots = function(...)
        --
    end

    -- * WEAPONS * --
    INV.subWeapon = function(source, weaponid)
        exports.tpz_inventory:getInventoryAPI().removeWeaponById(source, weaponid)
    end

    INV.createWeapon = function(source, weaponName, ammoaux, compaux, comps, custom_serial, custom_label, custom_desc)
        exports.tpz_inventory:getInventoryAPI().addWeapon(source, weaponName, custom_serial )
    end

    INV.deletegun = function(source, id)
        exports.tpz_inventory:getInventoryAPI().removeWeaponById(source, id)
    end

    INV.canCarryWeapons = function(source, amount, cb, weaponName)
        local canCarry = exports.tpz_inventory:getInventoryAPI().canCarryWeapon(source, weaponName)
        return canCarry
    end

    INV.getcomps = function(source, weaponid)
        return {}
    end

    INV.giveWeapon = function(source, weaponid, target)
        TriggerEvent("vorpCore:giveWeapon", source, weaponid, target)
    end

    INV.addBullets = function(source, weaponId, type, qty)
        -- nothing
    end

    INV.subBullets = function(source, weaponId, type, qty)
        -- nothing
    end

    INV.getWeaponBullets = function(source, weaponId)
        return 0
    end

    INV.getWeaponComponents = function(source, weaponId)
        -- nothing
    end

    INV.getUserWeapons = function(source)
        return {}
    end

    INV.getUserWeapon = function(source, weaponId)
        return nil
    end

    INV.removeAllUserAmmo = function(source)
        -- nothing
    end

    -- * ITEMS * --
    INV.getItem = function(source, itemName, metadata)
      return nil
    end

    INV.getItemByMainId = function(source, mainid) --main id can be obtain by using an item.
        return nil
    end

    INV.addItem = function(source, itemName, qty, metadata)
        exports.tpz_inventory:getInventoryAPI().addItem(source, itemName, qty, metadata)
    end

    INV.subItem = function(source, itemName, qty, metadata)
        exports.tpz_inventory:getInventoryAPI().removeItem(source, itemName, qty)
    end

    INV.setItemMetadata = function(source, itemId, metadata, amount)
        -- nothing
    end

    INV.subItemID = function(source, id)
        exports.tpz_inventory:getInventoryAPI().removeItemById(source, id) 
    end

    INV.getItemByName = function(source, itemName)
        local itemData = exports.tpz_inventory:getInventoryAPI().getItemData(item)
        return itemData
    end

    INV.getItemContainingMetadata = function(source, itemName, metadata)
        return false
    end

    INV.getItemMatchingMetadata = function(source, itemName, metadata)
        return nil
    end

    INV.getItemCount = function(source, item, metadata)
        local count = exports.tpz_inventory:getInventoryAPI().getItemQuantity(source, item)
        return count 
    end

    INV.getDBItem = function(source, item)
        -- source is pointless, no need. 
        local itemData = exports.tpz_inventory:getInventoryAPI().getItemData(item)
        return itemData 
    end

    INV.canCarryItems = function(source, amount)
        local canCarryWeight = exports.tpz_inventory:getInventoryAPI().canCarryWeight(source, amount)
        return canCarryWeight 
    end

    INV.canCarryItem = function(source, item, amount)
        local canCarryItem = exports.tpz_inventory:getInventoryAPI().canCarryItem(source, item, amount)
        return canCarryItem 
    end

    INV.RegisterUsableItem = function(itemName, cb)
        exports.tpz_inventory:getInventoryAPI().registerUsableItem(itemName, "vorp", cb)
    end

    INV.getUserInventory = function(source)
        local contents = exports.tpz_inventory:getInventoryAPI().getInventoryContents(source)
        return contents 
    end

    INV.CloseInv = function(source, invId)
        TriggerClientEvent('tpz_inventory:closePlayerInventory', source)
        -- no need invId, its closing both. 
    end

    INV.OpenInv = function(source, invId)
        TriggerClientEvent("tpz_inventory:openInventoryContainerById", source, invId, "#" .. invId)
    end

    return INV
end)
