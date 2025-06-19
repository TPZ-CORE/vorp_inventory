RegisterServerEvent("vorp_inventory:Server:UnlockCustomInv", function()
    -- nothing
end)

Core.Callback.Register("vorp_inventory:Server:CanOpenCustom", function(source, cb, id)
    local container = exports.tpz_inventory:getInventoryAPI().getContainerData(id)
    local status = container and (not container.busy) or true
    return cb(status)
end)
