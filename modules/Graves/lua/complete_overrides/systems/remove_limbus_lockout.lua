require("modules/module_utils")
-----------------------------------

local m = Module:new("remove_limbus_lockout")

m:addOverride("xi.zones.Port_Jeuno.npcs.Sagheera.onTrigger", function(player, npc)
    local cosmoWaitTime = 0
    local lastCosmoTime = player:getCharVar("Cosmo_Cleanse_TIME")
        if lastCosmoTime ~= 0 then
        player:setCharVar("Cosmo_Cleanse_TIME", 0)
    end
    super(player, npc)
end)

return m 
