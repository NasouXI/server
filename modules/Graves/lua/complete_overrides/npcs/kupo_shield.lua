require("modules/module_utils")
-----------------------------------
local m = Module:new("kupo_shield")

m:addOverride("xi.zones.Bastok_Markets.npcs.Nudara.onTrade", function(player, npc, trade)
    local pTable =
    {
        [1] = { xi.keyItem.WAY_OF_THE_ALCHEMIST,  1386, 10792 },
        [2] = { xi.keyItem.WAY_OF_THE_BLACKSMITH, 1356, 19788 },
        [3] = { xi.keyItem.WAY_OF_THE_BONEWORKER, 1396, 11058 },
        [4] = { xi.keyItem.WAY_OF_THE_CARPENTER,  1346, 18884 },
        [5] = { xi.keyItem.WAY_OF_THE_CULINARIAN, 4235,  5930 },
        [6] = { xi.keyItem.WAY_OF_THE_GOLDSMITH,  1376, 11060 },
        [7] = { xi.keyItem.WAY_OF_THE_WEAVER,     1366, 11000 },
        [8] = { xi.keyItem.WAY_OF_THE_TANNER,    12573, 10577 },
    }

    if trade:getItemCount() > 0 and player:getCharVar("KupoShield") ~= 1 then
        local validtrade = false
        local keyItem    = 0
        local itemOne    = 0
        local itemTwo    = 0

        for i = 1, 8 do
            keyItem = pTable[i][1]
            itemOne = pTable[i][2]
            itemTwo = pTable[i][3]

            if player:hasKeyItem(keyItem) and (trade:hasItemQty(itemOne,1) or trade:hasItemQty(itemTwo,1)) then
                validtrade = true

                break
            end
        end

        if validtrade then
            player:tradeComplete()
            npcUtil.giveItem(player, 26406)
            player:setCharVar("KupoShield",1)
        else
            player:PrintToPlayer("Invalid trade")
        end
    end
end)

m:addOverride("xi.zones.Bastok_Markets.npcs.Nudara.onTrigger", function(player, npc)
    if player:hasKeyItem(xi.keyItem.WAY_OF_THE_ALCHEMIST) then
        player:PrintToPlayer("Trade me a [Cursed Mail] or a [Saida Ring] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_BLACKSMITH) then
        player:PrintToPlayer("Trade me a [Cursed Hauberk] or a [Gorkhali Kukri] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_BONEWORKER) then
        player:PrintToPlayer("Trade me a [Cursed Harness] or a [Hajduk Ring] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_CARPENTER) then
        player:PrintToPlayer("Trade me a [Cursed Togi] or a [Vejovis Wand] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_CULINARIAN) then
        player:PrintToPlayer("Trade me a [Cursed Soup] or a [Sprightly Soup] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_GOLDSMITH) then
        player:PrintToPlayer("Trade me a [Cursed Cuirass] or an [Evader Earring] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_WEAVER) then
        player:PrintToPlayer("Trade me a [Cursed Dalmatica] or a [Swith Cape] for a special shield.")
    elseif player:hasKeyItem(xi.keyItem.WAY_OF_THE_TANNER) then
        player:PrintToPlayer("Trade me a [Dusk Jerkin] or [Urja Trousers] for a special shield.")
    else
        player:startEvent(118)
    end
end)

return m
