require("modules/module_utils")
require("scripts/globals/msg")
require("scripts/globals/utils")
require("scripts/globals/quests")
require("scripts/globals/keyitems")
require("scripts/globals/weaponskillids")
-----------------------------------------

local m = Module:new("mythic_weaponskills")

-- Define table of weaponskill trials
local wsTrials =
{
    [ 1] = { xi.quest.log_id.OUTLANDS, xi.quest.id.outlands.BUGI_SODEN                    },
    [ 2] = { xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.OLD_WOUNDS                    },
    [ 3] = { xi.quest.log_id.BASTOK,   xi.quest.id.bastok.INHERITANCE                     },
    [ 4] = { xi.quest.log_id.BASTOK,   xi.quest.id.bastok.SHOOT_FIRST_ASK_QUESTIONS_LATER },
    [ 5] = { xi.quest.log_id.BASTOK,   xi.quest.id.bastok.THE_WALLS_OF_YOUR_MIND          },
    [ 6] = { xi.quest.log_id.BASTOK,   xi.quest.id.bastok.THE_WEIGHT_OF_YOUR_LIMITS       },
    [ 7] = { xi.quest.log_id.JEUNO,    xi.quest.id.jeuno.AXE_THE_COMPETITION              },
    [ 8] = { xi.quest.log_id.OUTLANDS, xi.quest.id.outlands.CLOAK_AND_DAGGER              },
    [ 9] = { xi.quest.log_id.OUTLANDS, xi.quest.id.outlands.THE_POTENTIAL_WITHIN          },
    [10] = { xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.METHODS_CREATE_MADNESS        },
    [11] = { xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.SOULS_IN_SHADOW               },
    [12] = { xi.quest.log_id.WINDURST, xi.quest.id.windurst.BLOOD_AND_GLORY               },
    [13] = { xi.quest.log_id.WINDURST, xi.quest.id.windurst.FROM_SAPLINGS_GROW            },
    [14] = { xi.quest.log_id.WINDURST, xi.quest.id.windurst.ORASTERY_WOES                 },
}   

local weaponMappings =
{
    -- ws_unlock, item
    [ 1] = { xi.ws_unlock.KINGS_JUSTICE,    20865 },
    [ 2] = { xi.ws_unlock.ASCETICS_FURY,    27882 },
    [ 3] = { xi.ws_unlock.MYSTIC_BOON,      21119 },
    [ 4] = { xi.ws_unlock.VIDOHUNIR,        21182 },
    [ 5] = { xi.ws_unlock.DEATH_BLOSSOM,    20766 },
    [ 6] = { xi.ws_unlock.MANDALIC_STAB,    21251 },
    [ 7] = { xi.ws_unlock.ATONEMENT,        28656 },
    [ 8] = { xi.ws_unlock.INSURGENCY,       20908 },
    [ 9] = { xi.ws_unlock.PRIMAL_REND,      20817 },
    [10] = { xi.ws_unlock.MORDANT_RIME,     20624 },
    [11] = { xi.ws_unlock.TRUEFLIGHT,       21231 },
    [12] = { xi.ws_unlock.TACHI_RANA,       21044 },
    [13] = { xi.ws_unlock.BLADE_KAMU,       20998 },
    [14] = { xi.ws_unlock.DRAKESBANE,       20954 },
    [15] = { xi.ws_unlock.GARLAND_OF_BLISS, 21183 },
    [16] = { xi.ws_unlock.STRINGING_PUMMEL, 21453 },
    [17] = { xi.ws_unlock.EXPIACION,        20726 },
    [18] = { xi.ws_unlock.LEADEN_SALUTE,    21281 },
    [19] = { xi.ws_unlock.PYRRHIC_KLEOS,    20540 },
    [20] = { xi.ws_unlock.OMNISCIENCE,      27883 },
}

m:addOverride("xi.zones.Aht_Urhgan_Whitegate.npcs.Ahaadah.onTrade", function(player, npc, trade)
    -- Initialize variables
    local playerMerits    = player:getMeritCount()
    local storedMerits    = player:getCharVar("[CXI]MythicMeritCounter")
    local storedCrests    = player:getCharVar("[CXI]MythicCrestCounter")
    local cumulatedMerits = playerMerits + storedMerits

    -- Merit exchange.
    if npcUtil.tradeHasExactly(trade, {{ 'gil', 1000 }}) and storedMerits < 200 then
        -- Player has merits to store.
        if playerMerits > 0 then
            -- Handle merits.
            if cumulatedMerits > 200 then
                playerMerits = cumulatedMerits - 200
                player:setCharVar("[CXI]MythicMeritCounter", 200)
                player:setMerits(playerMerits)
            else
                player:setCharVar("[CXI]MythicMeritCounter", cumulatedMerits)
                player:setMerits(0)
            end

            -- Handle message.
            if cumulatedMerits < 200 then
                player:PrintToPlayer(string.format("That's a total of %i of 200 Merits stored, keep 'em comin!", cumulatedMerits), 0, npc:getPacketName())
            else
                player:PrintToPlayer("Good job! That's all 200 of 'em. Talk to me again to continue.", 0, npc:getPacketName())
            end

            -- Finish trade.
            player:tradeComplete()

            return

        -- Player has no merit points to deposit
        else
            player:PrintToPlayer("You have no merit points to deposit.", 0, npc:getPacketName())
            
            return
        end

    -- Kindred Crests.
    elseif npcUtil.tradeHasExactly(trade, {{ 2956, 10 }}) and storedCrests < 10 then
        player:setCharVar("[CXI]MythicCrestCounter", 10)
        player:tradeComplete()
        player:PrintToPlayer("Looks like all 10 High Kindred Crests are here... Come back later for further instruction.", 0, npc:getPacketName())

    -- Player didn't trade 1000 gil nor K.Crests.
    else
        player:PrintToPlayer("Stop wasting my time!", 0, npc:getPacketName())
    end
end)

m:addOverride("xi.zones.Aht_Urhgan_Whitegate.npcs.Ahaadah.onTrigger", function(player, npc)
    local storedMerits = player:getCharVar("[CXI]MythicMeritCounter")

    -- Check merit requirement.
    if storedMerits >= 20 then
        print("Merit requirement reached")
        -- Check K.Crest requirement.
        if player:getCharVar("[CXI]MythicCrestCounter") == 10 then
            print("Crest counter reached")
            -- Check to see if player has successfully completed any of the Trial Weapon quests
            for i = 1, 14 do
                -- Player has met all of the requirements.          
                if player:getQuestStatus(wsTrials[i][1], wsTrials[i][2]) == QUEST_COMPLETED then
                    print("Detected completed WS Trial")
                    player:PrintToPlayer("Well, looks like everything's in order... I need you to report your success to Falreze.", 0, npc:getPacketName())

                    player:timer(1000, function(playerArg)
                        player:PrintToPlayer("Find him in the Archduke's house in Ru'Lude Gardens... He'll know what to do next...", 0, npc:getPacketName())
                    end)    

                    player:setCharVar("[CXI]MythicWsQuestPart1", 1)
          
                    break
                end
            end

            -- Player hasn't completed any trials yet.
            if player:getCharVar("[CXI]MythicWsQuestPart1") == 0 then
                player:PrintToPlayer("Hmm... It doesn't appear you've completed any weapon trials yet...", 0, npc:getPacketName())
            end

            return

        -- Player has met the merits requirement only. Kindred crest text reminder.
        else
            player:PrintToPlayer("Wow! 200 merits already?! Your next objective is to bring me 10 H. Kindred Crests.", 0, npc:getPacketName())

            return
        end
        
    -- Player hasn't met any requirements
    else
        player:PrintToPlayer("Hey, you. Looking for that \"Extra Edge\" out on the battlefield?", 0, npc:getPacketName())

        player:timer(2000, function(playerArg)
            player:PrintToPlayer("Stock up on merit points and bring them to me. I'll deposit them for a small fee of 1000 gil.", 0, npc:getPacketName())
        end)

        player:timer(4000, function(playerArg)
            player:PrintToPlayer("Once you reach 200 I'll tell you what to do next.", 0, npc:getPacketName())
        end)

        return
    end
end)

m:addOverride("xi.zones.RuLude_Gardens.npcs.Falreze.onTrade", function(player, npc, trade)
    -- Player has progressed to final phase of the quest
    if player:getCharVar("[CXI]MythicWsQuestPart2") == 1 then

        -- Recurse table and check for the appropriate unlock
        for i = 1, 20 do
            if npcUtil.tradeHasExactly(trade, { weaponMappings[i][2] }) then
                player:tradeComplete()
                player:addLearnedWeaponskill(weaponMappings[i][1])
                player:PrintToPlayer("\129\153\129\154 You have learned a new weaponskill! \129\154\129\153", xi.msg.SYSTEM_3)

                -- Reset vars for next time
                player:setCharVar("[CXI]MythicWsQuestPart1", 0)
                player:setCharVar("[CXI]MythicWsQuestPart2", 0)
                player:setCharVar("[CXI]MythicMeritCounter", 0)
                player:setCharVar("[CXI]MythicCrestCounter", 0)
    
                -- Delete all trial quests so players can't double dip on the same WS Trial.
                for _, quest in ipairs(wsTrials) do
                    player:delQuest(quest)
                end
            else
                -- Traded item wasn't one of the allowed items`
                player:PrintToPlayer("I don't recognize this item...", 0, npc:getPacketName())
            end
        end
    end
end)

m:addOverride("xi.zones.RuLude_Gardens.npcs.Falreze.onTrigger", function(player, npc)
    if 
        player:hasKeyItem(xi.ki.HYDRA_CORPS_COMMAND_SCEPTER) and 
        player:hasKeyItem(xi.ki.HYDRA_CORPS_EYEGLASS) and
        player:hasKeyItem(xi.ki.HYDRA_CORPS_LANTERN) and 
        player:hasKeyItem(xi.ki.HYDRA_CORPS_TACTICAL_MAP) and 
        player:getCharVar("[CXI]MythicWsQuestPart1") == 1
    then
        player:setCharVar("[CXI]MythicWsQuestPart2", 1)
        player:PrintToPlayer("Wow! I never thought you'd actually follow through with this... ", 0, npc:getPacketName())

        player:timer(2000, function(playerArg)
            player:PrintToPlayer("Very well, a deal is a deal. Bring me the corresponding records of eminence", 0, npc:getPacketName())
        end)

        player:timer(4000, function(playerArg)
            player:PrintToPlayer("weapon for your weaponskill, and I'll forge it's power into your soul.", 0xD)
        end)

    elseif player:getCharVar("[CXI]MythicWsQuestPart1") == 1 then
        player:PrintToPlayer("What?! Ahaadah is at it again, eh?! Giving away all of our top secret weaponskills!", 0, npc:getPacketName())

        player:timer(2000, function(playerArg)
            player:PrintToPlayer("Very well, if you return with all four dynamis city wins, I'll give you something very special!", 0, npc:getPacketName())
        end) 

    else
        player:startEvent(121)
    end
end)

return m
