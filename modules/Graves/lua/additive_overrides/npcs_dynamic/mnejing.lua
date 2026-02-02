require("modules/module_utils")
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require("scripts/globals/shop")
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("mnejing")

m:addOverride("xi.zones.Aht_Urhgan_Whitegate.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local mnejing = zone:insertDynamicEntity({  -- sell pup attachments
        objtype  = xi.objType.NPC,
        name     = "Mnejing",
        look     = 3030,
        x        = -63.022,
        y        = -6.000,
        z        = -48.491,
        rotation = 70,
        widescan = 1,
    
        onTrade = function(player, npc, trade)
            if player:getQuestStatus(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.OPERATION_TEATIME) == QUEST_COMPLETED then
                if npcUtil.tradeHasExactly(trade, {786, 2289, 2152, 754, 2186, 2186}) then
                    player:tradeComplete()
                    npcUtil.giveItem(player, 15686)
                elseif npcUtil.tradeHasExactly(trade, {821, 2289, 2152, 754, 2186}) then
                    player:tradeComplete()
                    npcUtil.giveItem(player, 14930)
                elseif npcUtil.tradeHasExactly(trade, {786, 2289, 1636, 1699, 2187}) then
                    player:tradeComplete()
                    npcUtil.giveItem(player, 14523)
                end
            end
        end,

        onTrigger = function(player, npc)
            if player:getQuestStatus(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.OPERATION_TEATIME) == QUEST_COMPLETED then
                if not player:hasItem(15267) then -- Puppetry Taj
                    npcUtil.giveItem(player, 15267)
                    return
                else
                    player:PrintToPlayer("If you're looking for artifact gear, just trade me the corresponding materials for each item!", 0, npc:getPacketName())
                end
            end

            if player:getQuestStatus(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.AGAINST_ALL_ODDS) == QUEST_ACCEPTED then
                if not player:hasItem(15266) then -- Corsair's Tricorne
                    npcUtil.giveItem(player, 15266)
                    player:completeQuest(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.AGAINST_ALL_ODDS)
                    return
                end
            end

            local stock =
            {
                9885,  82992,    -- Magniplug
                9887,  82992,    -- Arcanoclutch
                9071,  88920,    -- Resister II
                9044,  88920,    -- Auto-Repair Kit III
                9073,  88920,    -- Arcanic Cell II
                9045,  88920,    -- Mana Tank III
                2414, 185250,    -- Steam Jacket
                2413, 185250,    -- Coiler
                2347, 222300,    -- Reactive Shield
                2348, 222300,    -- Tranquilizer
                2349, 222300,    -- Turbo Charger
                2350, 222300,    -- Schurzen
                2351, 222300,    -- Dynamo 
                2352, 222300,    -- Condenser
                2353, 222300,    -- Optic Fiber
                2354, 222300,    -- Economizer
            }

            player:PrintToPlayer("Welcome to the puppetmaster attachment shop!", 0, npc:getPacketName())
            xi.shop.general(player, stock)
        end,
    })

    utils.unused(mnejing)
end)

return m
