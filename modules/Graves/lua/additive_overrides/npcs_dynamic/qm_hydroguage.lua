require("modules/module_utils")
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("qm_hydroguage")

m:addOverride("xi.zones.Aht_Urhgan_Whitegate.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local hydroguage = zone:insertDynamicEntity({  -- since fishing is disabled, allow player to pickup hydroguage from ???
        objtype  = xi.objType.NPC,
        name     = "???",
        look     = "0x0000340000000000000000000000000000000000",
        x        = 22.277,
        y        = 2.000,
        z        = -122.709,
        rotation = 180,
        widescan = 1, 

        onTrade = function(player, npc, trade)
        end,

        onTrigger = function(player, npc)
            if player:getQuestStatus(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.NAVIGATING_THE_UNFRIENDLY_SEAS) == QUEST_ACCEPTED then
                npcUtil.giveItem(player, 2341)
            end
        end,
    })

    utils.unused(hydroguage)
end)

return m
