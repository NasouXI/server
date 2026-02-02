-----------------------------------
-- Cumetouflaix (Port Jeuno)
-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
require("scripts/globals/utils")
require("scripts/globals/missions")
require("modules/module_utils")
-----------------------------------
local ID = require("scripts/zones/Port_Jeuno/IDs")

local m = Module:new("abc_rewards")

-- Complete Transaction Yes/No
local completeTransaction = function(player, npc, item, cost, req)
    local coinBalance  = player:getCurrency("ancient_beastcoin")
    local buyReq       = 0
    
    -- Make sure players don't buy ciphers for trusts they already have
    if item == 10164 and player:hasSpell(975) then -- Maximilian
        player:PrintToPlayer("You have already have this trust, dummy!", 0, npc:getPacketName())
        return
    elseif item == 10191 and player:hasSpell(993) then -- ArkEV
        player:PrintToPlayer("You have already have this trust, dummy!", 0, npc:getPacketName())
        return
        
    -- Define mission requirements
    elseif req == 1 then
        buyReq = player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_CELESTIAL_NEXUS)
    elseif req == 2 then
        buyReq = player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN)
    elseif req == 3 then
        buyReq = (player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_CELESTIAL_NEXUS) and 
        player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.THE_EMPRESS_CROWNED))
    elseif req == 4 then
        buyReq = (player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.THE_EMPRESS_CROWNED) and
        player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_CELESTIAL_NEXUS))
    elseif req == 5 then
        buyReq = (player:hasCompletedMission(xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_CELESTIAL_NEXUS) and
        player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.THE_EMPRESS_CROWNED) and 
        player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DAWN))
    end
        
    -- Confirmation menu
    local confirmMenu  =
    {
        title = string.format("Spend %i coins? (%i available)", cost, coinBalance),

        onStart = function(playerArg)
        end,

        options =
        {
            {
                "Yes, I'm sure!",
                function(playerArg)
                    if coinBalance >= cost and item ~= nil then
                        if npcUtil.giveItem(player, item) then
                            player:setCurrency("ancient_beastcoin", coinBalance - cost)
                        end
                    end
                end,
            },
            {
                "No, I change my mind.",
                function(playerArg)
                    return
                end,
            },
        },
        
        onCancelled = function(playerArg)
        end,

        onEnd = function(playerArg)
        end,
    }

    if req and buyReq and cost <= coinBalance then
        player:customMenu(confirmMenu)
    else
        if req == 1 then
            player:PrintToPlayer(string.format("You don't meet the requirements for this purchase."), 0, npc:getPacketName())
            player:timer(1000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Rise of the Zilart: The Celestial Nexus."), 0, npc:getPacketName())
            end)
        elseif req == 2 then
            player:PrintToPlayer(string.format("You don't meet the requirements for this purchase."), 0, npc:getPacketName())
            player:timer(1000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Chains of Promathia: Dawn."), 0, npc:getPacketName())
            end)
        elseif req == 3 then
            player:PrintToPlayer(string.format("You don't meet the requirements for this purchase."), 0, npc:getPacketName())
            player:timer(1000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Chains of Promathia: Dawn."), 0, npc:getPacketName())
            end)
            player:timer(2000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Rise of the Zilart: The Celestial Nexus."), 0, npc:getPacketName())
            end)
        elseif req == 4 then
            player:PrintToPlayer(string.format("You don't meet the requirements for this purchase."), 0, npc:getPacketName())
            player:timer(1000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Rise of the Zilart: The Celestial Nexus."), 0, npc:getPacketName())
            end)
            player:timer(2000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Treasures of Aht Urhgan: The Empress Crowned."), 0, npc:getPacketName())
            end)
        elseif req == 5 then
            player:PrintToPlayer(string.format("You don't meet the requirements for this purchase."), 0, npc:getPacketName())
            player:timer(1000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Rise of the Zilart: The Celestial Nexus."), 0, npc:getPacketName())
            end)
            player:timer(2000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Chaims of Promathia: Dawn"), 0, npc:getPacketName())
            end)
            player:timer(3000, function(playerArg)
                player:PrintToPlayer(string.format("You must have completed Treasures of Aht Urhgan: The Empress Crowned."), 0, npc:getPacketName())
            end)
        else -- Hopefully we accounted for any situation and the catchall is if they are lacking coins
            player:PrintToPlayer(string.format("You don't have enough coins for this purchase, please deposit more."), 0, npc:getPacketName())
            return
        end
    end
end

m:addOverride("xi.zones.Port_Jeuno.npcs.Cumetouflaix.onTrigger", function(player, npc)
    local ancientBeastcoin = 1875
    local coinBalance      = player:getCurrency("ancient_beastcoin")
    local item             = 0

    -- Forward declarations (required)
    local menu  = {}
    local page1 = {}
    local page2 = {}
    local page3 = {}
    local page4 = {}
    local page5 = {}
    
    local delaySendMenu = function(player)
        player:timer(100, function(playerArg)
            playerArg:customMenu(menu)
        end)
    end
    
    player:PrintToPlayer(string.format("You have %s ancient beastcoins available to spend. Choose wisely.", coinBalance), 0, npc:getPacketName())
    
    menu =
    {
        title = "Choose a reward",
        options = {},
    }
    
    page1 =
    {
        {
            "Metal chip",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 2127
                    cost = 7
                    req  = 0 -- (none)
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Tamas ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15545
                    cost = 10
                    req  = 2 -- COP
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Rajas ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15543
                    cost = 10
                    req  = 2 -- COP
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Sattva ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15544
                    cost = 10
                    req  = 2 -- COP
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Static earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15962
                    cost = 10
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Magnetic earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15963
                    cost = 10
                    req  = 3 -- COP + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Next Page",
            function(playerArg)
                menu.options = page2
                delaySendMenu(playerArg)
            end,
        },        
    }  

    page2 =
    {
        {
            "Hollow earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15964
                    cost = 10
                    req  = 3 -- COP + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Ethereal earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15965
                    cost = 10
                    req  = 3 -- COP + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Ulthalam's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15808
                    cost = 10
                    req  = 4 -- TOAU + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Balrahn's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15807
                    cost = 10
                    req  = 4 -- TOAU + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Jalzahn's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15809
                    cost = 10
                    req  = 4 -- TOAU + ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Abyssal earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 14741
                    cost = 25
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Next Page",
            function(playerArg)
                menu.options = page3
                delaySendMenu(playerArg)
            end,
        },        
    }  

    page3 =
    {
        {
            "Beastly earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 14742
                    cost = 25
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Bushinomimi",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 14743
                    cost = 25
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Knights earring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 14740
                    cost = 25
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Suppanomimi",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 14739
                    cost = 25
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Ninurta's sash",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15458
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Mars's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15548
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Next Page",
            function(playerArg)
                menu.options = page4
                delaySendMenu(playerArg)
            end,
        },        
    }  

    page4 =
    {
        {
            "Futsuno mitama",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 17810
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Bellona's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15549
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Aureole",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 18245
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Raphael's rod",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 18398
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Minerva's ring",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 15550
                    cost = 50
                    req  = 5 -- ZM, COP, TOAU
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Next Page",
            function(playerArg)
                menu.options = page5
                delaySendMenu(playerArg)
            end,
        },        
    }  

    page5 =
    {
        {
            "Cipher: ArkEV",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 10191
                    cost = 20
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },
        {
            "Cipher: Maximilian",
            function(playerArg)
                player:timer(50, function(playerArg)
                    item = 10164
                    cost = 20
                    req  = 1 -- ZM
                    completeTransaction(player, npc, item, cost, req)
                end)
            end,
        },      
        {
            "Exit",
            function(playerArg)
                return
            end,
        },  
    }  

    menu.options = page1
    delaySendMenu(player)
end)

m:addOverride("xi.zones.Port_Jeuno.npcs.Cumetouflaix.onTrade", function(player, npc, trade)
    local count = trade:getItemCount()

    -- store ancient beastcoins
    if trade:hasItemQty(xi.items.ANCIENT_BEASTCOIN, count) then
        local total = player:getCurrency("ancient_beastcoin") + count

        if total < 9999 then -- store max 9999 ancient beastcoins
            player:PrintToPlayer(string.format("Sagheera, please deposit these coins for %s.", player:getName()), 0, npc:getPacketName())
            player:timer(2000, function(playerArg)
                player:addCurrency("ancient_beastcoin", count)
                player:tradeComplete()
                player:startEvent(311, count, 0, 0, 0, 0, 0, 0, total)
            end)
        else
            player:messageSpecial(ID.text.SAGHEERA_MAX_ABCS)
        end
    end
end)

return m
