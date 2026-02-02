require("modules/module_utils")
require('scripts/globals/npc_util')
-----------------------------------

local m = Module:new("zalsuhm_trigger")

m:addOverride("xi.zones.Lower_Jeuno.npcs.Zalsuhm.onTrigger", function(player, npc)
    npc:setRotation(player:getRotPos() + 127)

    npc:timer(2000, function(npcArg)
        player:PrintToPlayer(string.format("Zalsuhm: Looking for the mythic weaponskill quest?"), 0xD)
    end)

    npc:timer(4000, function(npcArg)
        player:PrintToPlayer(string.format("Zalsuhm: Talk to Ahaadah in Aht Urhgan Whitegate."), 0xD)
    end)

    npc:timer(6000, function(npcArg)
        npc:setRotation(player:getRotPos() + 1)
    end)
end)

return m