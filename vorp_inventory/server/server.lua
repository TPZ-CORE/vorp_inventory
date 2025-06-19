local Core <const> = exports.vorp_core:GetCore()

RegisterServerEvent("syn:stopscene")
AddEventHandler("syn:stopscene", function(x)
    local _source <const> = source
    TriggerClientEvent("inv:dropstatus", _source, x)
end)

RegisterServerEvent("vorp_inventory:Server:UnlockCustomInv", function()
    local _source <const> = source
    for i, value in pairs(InventoryBeingUsed) do
        if value == _source then
            InventoryBeingUsed[i] = nil
            break
        end
    end
end)

Core.Callback.Register("vorp_inventory:Server:CanOpenCustom", function(source, cb, id)
    id = tostring(id)
    if not InventoryBeingUsed[id] then
        InventoryBeingUsed[id] = source
        return cb(true)
    end

    --Core.NotifyObjective(source, T.SomeoneUseing, 5000)
    return cb(false)
end)
