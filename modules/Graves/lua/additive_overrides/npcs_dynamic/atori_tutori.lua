require("modules/module_utils")
require('scripts/globals/npc_util')
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("atori_tutori")

m:addOverride("xi.zones.RuLude_Gardens.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local wsRequirements =
    {
    -- index = { ws_name,        item1,    Qty1,     item2, Qty,2 },
        [ 1] = { "Shijin Spiral", 1464,      10,      1474,    10 }, -- lancewood log, infinity core
        [ 2] = { "Exenterator",   1521,      10,      1474,    10 }, -- slime juice, infinity core
        [ 3] = { "Requiescat",    1518,      10,      1474,    10 }, -- colossal skull, infinity core
        [ 4] = { "Resolution",    1520,      10,      1474,    10 }, -- goblin grease, infinity core
        [ 5] = { "Ruinator",      1516,      10,      1474,    10 }, -- griffon hide, infinity core
        [ 6] = { "Upheaval",      1517,      10,      1474,    10 }, -- giant frozen head, infinity core
        [ 7] = { "Entropy",       1466,      10,      1474,    10 }, -- relic iron, infinity core
        [ 8] = { "Stardiver",     1519,      10,      1474,    10 }, -- fresh orc liver, infinity core
        [ 9] = { "Blade_Shun",    1469,      10,      1474,    10 }, -- wootz ore, infinity core
        [10] = { "Tachi Shoha",   1470,      10,      1474,    10 }, -- sparkling stone, infinity core
        [11] = { "Realmrazer",    1517,      10,      1518,    10 }, -- giant frozen head, colossal skull
        [12] = { "Shattersoul",   1521,      10,      1519,    10 }, -- slime juice, fresh orc liver
        [13] = { "Apex Arrow",    1516,      10,      1464,    10 }, -- griffon hide, lancewood log
        [14] = { "Last Stand",    1520,      10,      1466,    10 }, -- goblin grease, relic iron
    }

    local atoritutori = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Atori-Tutori",
        look     = 3106,
        x        = 11.360,
        y        = 3.100,
        z        = 116.881,
        rotation = 128,
        widescan = 1,

        onTrade = function(player, npc, trade)
            local pointsCost = 300000

            if player:getCharVar("PaidForMeritWs") == 1 then
                -- Shijin Spiral
                if npcUtil.tradeHasExactly(trade, {{wsRequirements[1][2], wsRequirements[1][3]}, {wsRequirements[1][4], wsRequirements[1][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Shijin Spiral\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 2)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 30 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 lancewood logs and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Exenterator
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[2][2], wsRequirements[2][3]}, {wsRequirements[2][4], wsRequirements[2][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Exenterator\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 3)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 31 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 slime juices and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Requiescat
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[3][2], wsRequirements[3][3]}, {wsRequirements[3][4], wsRequirements[3][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Requiescat\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 4)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 32 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 colossal skulls and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Resolution
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[4][2], wsRequirements[4][3]}, {wsRequirements[4][4], wsRequirements[4][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Resolution\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 5)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 33 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 goblin greases and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Ruinator
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[5][2], wsRequirements[5][3]}, {wsRequirements[5][4], wsRequirements[5][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Ruinator\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 6)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 34 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 griffon hides and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Upheaval
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[6][2], wsRequirements[6][3]}, {wsRequirements[6][4], wsRequirements[6][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Upheaval\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 7)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 35 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 giant frozen heads and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Entropy
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[7][2], wsRequirements[7][3]}, {wsRequirements[7][4], wsRequirements[7][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Entropy\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 8)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 36 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 relic irons and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Stardiver
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[8][2], wsRequirements[8][3]}, {wsRequirements[8][4], wsRequirements[8][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Stardiver\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 9)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 37 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 infinity cores and 10 fresh orc livers to complete this phase.", 0xD)
                    return

                -- Blade: Shun
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[9][2], wsRequirements[9][3]}, {wsRequirements[9][4], wsRequirements[9][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Blade: Shun\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 10)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 38 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 wootz ores and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Tachi: Shoha
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[10][2], wsRequirements[10][3]}, {wsRequirements[10][4], wsRequirements[10][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Tachi: Shoha\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 11)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 39 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 sparkling stones and 10 infinity cores to complete this phase.", 0xD)
                    return

                -- Realmrazer
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[11][2], wsRequirements[11][3]}, {wsRequirements[11][4], wsRequirements[11][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Realmrazer\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 12)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 40 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 giant frozen heads and 10 colossal skulls to complete this phase.", 0xD)
                    return

                -- Shattersoul
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[12][2], wsRequirements[12][3]}, {wsRequirements[12][4], wsRequirements[12][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Shattersoul\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 13)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 41 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 slime juice and 10 fresh orc liver to complete this phase.", 0xD)
                    return

                -- Apex Arrow
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[13][2], wsRequirements[13][3]}, {wsRequirements[13][4], wsRequirements[13][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Apex Arrow\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 14)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 42 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 griffon hides and 10 lancewood logs to complete this phase.", 0xD)
                    return

                -- Last Stand
                elseif npcUtil.tradeHasExactly(trade, {{wsRequirements[14][2], wsRequirements[14][3]}, {wsRequirements[14][4], wsRequirements[14][5]}}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Phase 1 Complete. You can now purchase \"Last Stand\" from Nolan in Norg.")
                    player:setCharVar("PaidForMeritWs", 15)
                    return
                elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 43 }}) then
                    player:tradeComplete()
                    player:PrintToPlayer("Atori-Tutori: I require 10 goblin greases and 10 relic irons to complete this phase.", 0xD)
                    return

                    --FALLBACK H
                else
                    player:PrintToPlayer("You are missing requirements to unlock this WS!")
                end
            end

            -- Conquest points
            if npcUtil.tradeHasExactly(trade, {{ 'gil', 1 }}) then
                local homeNation = player:getNation()

                if homeNation == xi.nation.SANDORIA then
                    nationCp = player:getCurrency("sandoria_cp")
                elseif homeNation == xi.nation.BASTOK then
                    nationCp = player:getCurrency("bastok_cp")
                else
                    nationCp = player:getCurrency("windurst_cp")
                end

                if nationCp >= pointsCost then
                    player:tradeComplete()

                    if homeNation == xi.nation.SANDORIA then
                        player:delCurrency("sandoria_cp", pointsCost)
                    elseif homeNation == xi.nation.BASTOK then
                        player:delCurrency("bastok_cp", pointsCost)
                    else
                        player:delCurrency("windurst_cp", pointsCost)
                    end

                    player:setCharVar("PaidForMeritWs", 1)
                    player:PrintToPlayer("Atori-Tutori: I've deducted your conquest points and progressed you to the next step.\nTalk to me again for next steps.", 0xD)
                else
                    player:PrintToPlayer("Atori-Tutori: You will need more conquest points before you do that.", 0xD)
                end

            -- player has chosen to use their imperial standing points
            elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 2 }}) then
                if player:getCurrency("imperial_standing") > pointsCost then
                    player:tradeComplete()
                    player:delCurrency("imperial_standing", pointsCost)
                    player:setCharVar("PaidForMeritWs", 1)
                    player:PrintToPlayer("Atori-Tutori: I've deducted your imperial standing points and progressed you to the next step.\nTalk to me again for next steps.", 0xD)
                else
                    player:PrintToPlayer("Atori-Tutori: You will need more imperial standing before you do that.", 0xD)
                end

            -- player has chosen to use allied notes
            elseif npcUtil.tradeHasExactly(trade, {{ 'gil', 3 }}) then
                if player:getCurrency("allied_notes") > pointsCost then
                    player:tradeComplete()
                    player:delCurrency("allied_notes", pointsCost)
                    player:setCharVar("PaidForMeritWs", 1)
                    player:PrintToPlayer("Atori-Tutori: I've deducted your allied notes and progressed you to the next step.\nTalk to me again for next steps.", 0xD)
                else
                    player:PrintToPlayer("Atori-Tutori: You will need more allied notes before you do that.", 0xD)
                end
            end
        end,

        onTrigger = function(player, npc)
            -- set default variables
            local nationCp         = 0
            local imperialStanding = player:getCurrency("imperial_standing")
            local alliedNotes      = player:getCurrency("allied_notes")
            local pointsRequired   = 30000

            if player:getCharVar("PaidForMeritWs") > 1 then
                player:PrintToPlayer("Atori-Tutori: You already have a quest in progress. You must complete it before starting a new one.", 0xD)
                return
            end

            -- if we've deducted the player's points, move to phase two (trade items)
            if player:getCharVar("PaidForMeritWs") == 1 then
                player:PrintToPlayer(string.format("Atori-Tutori: Phase two: Please bring the the requisite items for the aeonic weaponskill you'd like to unlock."), 0xD)
                player:PrintToPlayer("Atori-Tutori: Trade me the fixed amount of gil below, and I'll tell you which upgrade items are necessary...", 0xD)
                player:PrintToPlayer("Shijin Spiral: 30 gil, Exenterator: 31 gil, Requiescat: 32 gil, Resolution: 33 gil, Ruinator: 34 gil, Upheaval: 35 gil", 28)
                player:PrintToPlayer("Entropy: 36 gil, Stardiver: 37 gil, Blade Shun: 38 gil, Tachi: Shoha: 39 gil, Realmrazer: 40 gil, Shattersoul: 41 gil", 28)
                player:PrintToPlayer("Apex Arrow: 42 gil, Last Stand: 43 gil", 28)
                return
            else
                -- standard dialog
                player:PrintToPlayer("Atori-Tutori: Up for a challenge? How about a new weaponskill?", 0xD)
                player:PrintToPlayer("Atori-Tutori: First, you'll need 300,000 conquest points, imperial standing, or allied notes.", 0xD)
            end

            -- find out which nation player belongs to and use those conquest points
            if player:getNation() == xi.nation.SANDORIA then
                nationCp = player:getCurrency("sandoria_cp")
            elseif player:getNation() == xi.nation.BASTOK then
                nationCp = player:getCurrency("bastok_cp")
            elseif player:getNation() == xi.nation.WINDURST then
                nationCp = player:getCurrency("windurst_cp")
            else
                player:PrintToPlayer("You don't have a home nation? get some help...")  -- edge case, player doesn't have a home nation
            end

            -- if player has enough points to spend, print the number of points held, and present the player with the next step.
            if nationCp < pointsRequired and imperialStanding < pointsRequired and alliedNotes < pointsRequired then
                player:PrintToPlayer(string.format("Atori-Tutori: Return to me when you have atleast 300,000 conquest points, imperial standing or allied notes.", nationCp, imperialStanding, alliedNotes), 0xD)
            else
                player:PrintToPlayer(string.format("Atori-Tutori: You've got %i conquest points, %i imperial standing and %i allied notes.", nationCp, imperialStanding, alliedNotes), 0xD)
                player:PrintToPlayer(string.format("Atori-Tutori: Trade 1g to use your conquest points, 2g to use your imperial standing, or 3g to use your allied notes."), 0xD)
            end
        end,
    })

    utils.unused(atoritutori)
end)

return m
