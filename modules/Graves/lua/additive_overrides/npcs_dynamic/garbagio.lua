require("modules/module_utils")
require('scripts/globals/npc_util')
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("garbagio")

-- Exchange NQ Cursed Gear for Tatters
m:addOverride("xi.zones.Port_Jeuno.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local garbageDisposal = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Garbagio",
        look     = 2927,
        x        = -4.785,
        y        = 0,
        z        = 9.880,
        rotation = 81,
        widescan = 1,

        onTrade = function(player, npc, trade)
            -- dryadic tatters
            for i = 1344, 1353 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3282, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 1354, 1363 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3281, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 1364, 1373 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3283, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 1374, 1383 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3280, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 1384, 1393 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3284, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 1394, 1403 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3279, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 2439, 2448 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3285, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end

            for i = 2449, 2458 do
                if npcUtil.tradeHasExactly(trade, i) then
                    if npcUtil.giveItem(player, {{ 3286, math.random(3,12) }}) then
                        player:tradeComplete()
                        player:PrintToPlayer("Om nom nom nom! *Crunch*", 0, npc:getPacketName())

                        break
                    end
                end
            end
        end,

        onTrigger = function(player, npc)
            player:PrintToPlayer("Me hungry! Me want snacks! Me eat cursed gear!", 0, npc:getPacketName())
        end,
    })

    utils.unused(garbageDisposal)
end)

return m
