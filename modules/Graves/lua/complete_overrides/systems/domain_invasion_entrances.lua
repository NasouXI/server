require("modules/module_utils")
require("scripts/globals/teleports")
require("scripts/zones/Kamihr_Drifts/Zone")
-----------------------------------

local m = Module:new("domain_invasion_entrances")

--Lock players in designated  area
m:addOverride("xi.zones.Kamihr_Drifts.Zone.onInitialize", function(zone)
    zone:registerTriggerArea(1, 320.835, 19.534, 294.411, 332.153, 20.000, 304.651)
end)

m:addOverride("xi.zones.Kamihr_Drifts.Zone.onTriggerAreaLeave", function(player, region)
    player:setPos(336.885, 20.742, 293.693)
end)

-- Qufim Island -> Escha_ZiTah or Provenance
m:addOverride("xi.zones.Qufim_Island.npcs.Undulating_Confluence.onTrigger", function(player, npc)
    player:startEvent(65)
end)

m:addOverride("xi.zones.Qufim_Island.npcs.Undulating_Confluence.onEventFinish", function(player, csid, option)
    if csid == 65 and option == 1 then
        if player:getQuestStatus(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.IN_DEFIANT_CHALLENGE) == QUEST_COMPLETED then
            local menu =
            {
                title = "Select your destination",

                options =
                {
                    {
                        "Escha - Zi'Tah",
                        function(playerArg)
                            xi.teleport.to(player, xi.teleport.id.ESCHA_ZITAH)
                        end,
                    },
                    {
                        "Provenance (Domain Invasion)",
                        function(playerArg)
                            npcUtil.giveItem(player, xi.items.SCROLL_OF_INSTANT_WARP) -- scroll_of_instant_warp
                            player:setPos(-576.140, -228.000, 503.928, 120, 222)
                            player:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 0)
                            if GetServerVariable("[Domain]Notification") ~= 1 then
                                SetServerVariable("[Domain]Notification", 1)
                                player:PrintToArea("{Apururu} Looks like our forces-warses are gathering for domain invasion! Hurry-worry and join them!", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                            end 
                        end,
                    },
                },

                onCancelled = function(playerArg)
                    playerArg:PrintToPlayer("Aborting ...", xi.msg.channel.NS_SAY)
                end,

                onEnd = function(playerArg)
                    if GetServerVariable("[Domain]NM") == 1 then
                        if GetServerVariable("[Domain]Notification") ~= 1 then
                            SetServerVariable("[Domain]Notification", 1)
                            player:PrintToArea("{Apururu} Looks like our forces-warses are gathering for domain invasion! Hurry-worry and join them!", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                        end 
                    end    
                end,
            }

            player:customMenu(menu)
        else
            xi.teleport.to(player, xi.teleport.id.ESCHA_ZITAH)
        end
    end
end)

-- La Theine Plateau
m:addOverride("xi.zones.La_Theine_Plateau.npcs.Dimensional_Portal.onTrigger", function(player, npc)
    local menu =
    {
        title = "Select your destination",

        options =
        {
            {
                "Option 1: Al'Taieu",
                function(playerArg)
                    if player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_WARRIORS_PATH then
                        player:setAnimation(101)
                        player:setPos(25.299, -2.799, 579, 193, 33) -- To AlTaieu {R}
                    else 
                        player:PrintToPlayer("You don't have access to this area.")
                    end    
                end,
            },
            {
                "Option 2: Reisenjima",
                function(playerArg)
                    npcUtil.giveItem(player, xi.items.SCROLL_OF_INSTANT_WARP) -- scroll_of_instant_warp
                    player:setAnimation(101)
                    player:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 0)
                    player:setPos(-23.00, 5.50, 0.00, 0, 292) -- To Reisenjima
                end,
            },
        },

        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Aborting ...", xi.msg.channel.NS_SAY)
        end,

        onEnd = function(playerArg)
            if GetServerVariable("[Domain]NM") == 1 then
                if GetServerVariable("[Domain]Notification") ~= 1 then
                    SetServerVariable("[Domain]Notification", 1)
                    player:PrintToArea("{Apururu} Looks like our forces-warses are gathering for domain invasion! Hurry-worry and join them!", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                end 
            end    
        end,
    }

    player:customMenu(menu)
end)

-- Konschat Highlands
m:addOverride("xi.zones.Konschtat_Highlands.npcs.Dimensional_Portal.onTrigger", function(player, npc)
    local menu =
    {
        title = "Select your destination",

        options =
        {
            {
                "Option 1: Al'Taieu",
                function(playerArg)
                    if player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_WARRIORS_PATH then
                        player:setAnimation(101)
                        player:setPos(-635.599, -2.799, 163.8, 193, 33) -- To AlTaieu {R}
                    else 
                        player:PrintToPlayer("You don't have access to this area.")
                    end    
                end,
            },
            {
                "Option 2: Reisenjima",
                function(playerArg)
                    npcUtil.giveItem(player, xi.items.SCROLL_OF_INSTANT_WARP) -- scroll_of_instant_warp
                    player:setAnimation(101)
                    player:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 0)
                    player:setPos(-23.00, 5.50, 0.00, 0, 292) -- To Reisenjima
                end,
            },
        },

        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Aborting ...", xi.msg.channel.NS_SAY)
        end,

        onEnd = function(playerArg)
            if GetServerVariable("[Domain]NM") == 1 then
                if GetServerVariable("[Domain]Notification") ~= 1 then
                    SetServerVariable("[Domain]Notification", 1)
                    player:PrintToArea("{Apururu} Looks like our forces-warses are gathering for domain invasion! Hurry-worry and join them!", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                end 
            end    
        end,
    }

    player:customMenu(menu)
end)

-- Tahrongi Canyon
m:addOverride("xi.zones.Tahrongi_Canyon.npcs.Dimensional_Portal.onTrigger", function(player, npc)
    local menu =
    {
        title = "Select your destination",

        options =
        {
            {
                "Option 1: Al'Taieu",
                function(playerArg)
                    if player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_WARRIORS_PATH then
                        player:setAnimation(101)
                        player:setPos(654.200, -2.799, 100.700, 193, 33) -- To AlTaieu {R}
                    else 
                        player:PrintToPlayer("You don't have access to this area.")
                    end    
                end,
            },
            {
                "Option 2: Reisenjima",
                function(playerArg)
                    npcUtil.giveItem(player, xi.items.SCROLL_OF_INSTANT_WARP) -- scroll_of_instant_warp
                    player:setAnimation(101)
                    player:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 0)
                    player:setPos(-23.00, 5.50, 0.00, 0, 292) -- To Reisenjima
                end,
            },
        },

        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Aborting ...", xi.msg.channel.NS_SAY)
        end,

        onEnd = function(playerArg)
            if GetServerVariable("[Domain]NM") == 1 then
                if GetServerVariable("[Domain]Notification") ~= 1 then
                    SetServerVariable("[Domain]Notification", 1)
                    player:PrintToArea("{Apururu} Looks like our forces-warses are gathering for domain invasion! Hurry-worry and join them!", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                end 
            end    
        end,
    }

    player:customMenu(menu)
end)

return m
