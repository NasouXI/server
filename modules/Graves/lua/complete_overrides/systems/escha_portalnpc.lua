-------------------------------------------
-- Escha RuAun Portal NPCs
-------------------------------------------
require("modules/module_utils")
require("scripts/globals/keyitems")
require("scripts/globals/npc_util")
require("scripts/globals/titles")
require("scripts/globals/utils")
-------------------------------------------
local ID = require("scripts/zones/Escha_RuAun/IDs")

local m = Module:new("escha_portalnpc")

local function returnMenu(player)
    local menu =
    {
        title = "Return to Entrance?",

        options =
        {
            {
                "Yes, take me back.",
                function(playerarg)
                    player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)
        
                    player:timer(2000, function(playerArg)
                       player:setPos(-0.371, -34.278, -466.980, 192)
                    end)
        
                    player:timer(2750, function(playerArg)
                        player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                    end)
                end,
            },
            {
                "No, I'm not finished yet!",
                function(playerArg)
                end,
            },
        },
    }

    player:customMenu(menu)
end


m:addOverride("xi.zones.Escha_RuAun.npcs.Dremi.onTrade", function(player, npc, trade)
    if player:hasKeyItem(xi.keyItem.CERULEAN_CRYSTAL) then
        for i = 0, 2 do
		    if player:getRank(i) >= 10 then
			    printf(string.format("%s", i))
        	    if npcUtil.tradeHas(trade, {{ 3277, 3 }}) then
        	        player:tradeComplete()
                	player:setCharVar("[SKY2]Seiryu_POP", 1)
					player:PrintToPlayer("Dremi: One Seiryu pop, coming right up! You may make your way to Seiryu's Shadows!", xi.msg.channel.NS_SAY)
                end
                if npcUtil.tradeHas(trade, {{ 3276, 3 }}) then
        	        player:tradeComplete()
                	player:setCharVar("[SKY2]Suzaku_POP", 1)
					player:PrintToPlayer("Dremi: One Suzaku pop, coming right up! You may make your way to Suzaku's Nest!", xi.msg.channel.NS_SAY)
                end
                if npcUtil.tradeHas(trade, {{ 3278, 3 }}) then
        	        player:tradeComplete()
                	player:setCharVar("[SKY2]Byakko_POP", 1)
					player:PrintToPlayer("Dremi: One Byakko pop, coming right up! You may make your way to Byakko's Pride!", xi.msg.channel.NS_SAY)
                end
                if npcUtil.tradeHas(trade, {{ 3275, 3 }}) then
        	        player:tradeComplete()
                	player:setCharVar("[SKY2]Genbu_POP", 1)
					player:PrintToPlayer("Dremi: One Genbu pop, coming right up! You may make your way to Genbu's Cove!", xi.msg.channel.NS_SAY)
                end
				break
            end
		end
	end
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Dremi.onTrigger", function(player, npc)
    if player:hasKeyItem(xi.keyItem.CERULEAN_CRYSTAL) then
        for i = 0, 3 do 
		    if player:getRank(i) >= 10 then
                if player:hasKeyItem(xi.ki.BYAKKOS_PRIDE) and player:hasKeyItem(xi.ki.GENBUS_HONOR) and
				player:hasKeyItem(xi.ki.SEIRYUS_NOBILITY) and player:hasKeyItem(xi.ki.SUZAKUS_BENEFACTION) then
                    for i = 2948,2951 do
                        player:delKeyItem(i)
                        player:messageSpecial(ID.text.KEYITEM_OBTAINED + 1, i)
                    end				
					player:setCharVar("[SKY2]Seiryu_POP", 0)
			    	player:setCharVar("[SKY2]Suzaku_POP", 0)
			    	player:setCharVar("[SKY2]Byakko_POP", 0)
			    	player:setCharVar("[SKY2]Genbu_POP", 0)
                    player:setCharVar("[SKY2]Kirin_POP", 1)
	                
					player:timer(2000, function(playerArg)
    					player:PrintToPlayer("Dremi: Ready to face the big guy, are we? Don't worry! You're gonna do great!", xi.msg.channel.NS_SAY)
	                end)

	                player:timer(4000, function(playerArg)
	                    player:PrintToPlayer("Dremi rolls her eyes at you ...", xi.msg.channel.UNKNOWN_32)
	                end)

	                player:timer(6000, function(playerArg)
	                    player:PrintToPlayer("Dremi: Well, head on over to the Eschan Portal behind you and beam on up. Good luck!", xi.msg.channel.NS_SAY)
	                end)
			    else
    		    	player:PrintToPlayer("Dremi: My, oh my! Look at those muscles...", xi.msg.channel.NS_SAY)
			    
	                player:timer(1000, function(playerArg)
	                    player:PrintToPlayer("You begin feeling like a piece of meat as Dremi looks you up and down...", xi.msg.channel.UNKNOWN_32)
	                end)
	            	
	                player:timer(4000, function(playerArg)
	                    player:PrintToPlayer("Dremi: You're going to do just fine here, darling... Trade me scraps to get started.", xi.msg.channel.NS_SAY)
	                end)
                end
				break
            else
                player:PrintToPlayer("You are not yet prepared to tackle these challenges!", xi.msg.channel.NS_SAY)
		        break
			end
		end
	end	
end)

m:addOverride("xi.zones.Misareaux_Coast.npcs.Undulating_Confluence.onTrigger", function(player, npc)
    if player:hasTitle(xi.title.LIFTER_OF_SHADOWS) then
        player:startEvent(14)
    else
        player:PrintToPlayer("You do not meet the equirements to enter this area.")
    end
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#1.onTrigger", function(player, npc)
    local menu =
    {
        title = "Choose your destination",

        options =
        {
            {
                "Suzaku's Nest",
                function(playerarg)
                    player:PrintToPlayer("Electricty begins surging through your body!!", xi.msg.channel.NS_SAY)
                    player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)

                    player:timer(2000, function(playerArg)
                        player:setPos(-454.030, -3.626, -147.184)
                    end)

                    player:timer(2750, function(playerArg)
                        player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                    end)
                end,
            },
            {
                "Byakko's Pride",
                function(playerArg)
                    player:PrintToPlayer("Electricty begins surging through your body!!", xi.msg.channel.NS_SAY)
                    player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)

                    player:timer(2000, function(playerArg)
                        player:setPos(-280.484, -3.626, 386.104, 36)
                    end)

                    player:timer(2750, function(playerArg)
                        player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                    end)
                end,
            },
            {
                "Genbu's Cove",
                function(playerArg)
                    player:PrintToPlayer("Electricty begins surging through your body!!", xi.msg.channel.NS_SAY)
                    player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)

                    player:timer(2000, function(playerArg)
                        player:setPos(278.092, -3.998, 382.416, 88)
                    end)

                    player:timer(2750, function(playerArg)
                        player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                    end)
                end,
            },
            {
                "Seiryu's Shadows",
                function(playerArg)
                    player:PrintToPlayer("Electricty begins surging through your body!!", xi.msg.channel.NS_SAY)
                    player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)

                    player:timer(2000, function(playerArg)
                        player:setPos(451.753, -3.790, -146.248, 141)
                    end)

                    player:timer(2750, function(playerArg)
                        player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                    end)
                end,
            },
            {
                "???",
                function(playerArg)
                    player:PrintToPlayer("Electricty begins surging through your body!!", xi.msg.channel.NS_SAY)
                       player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)
   
                       player:timer(2000, function(playerArg)
                        player:setPos(-1.626, -52.365, -583.528, 65)
                       end)
   
                       player:timer(2750, function(playerArg)
                           player:injectActionPacket(player:getID(), 6, 602, 0, 0, 0, 0, 0)
                       end)
                end,
            },
        },
    }

    player:customMenu(menu)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#2.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#3.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#4.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#5.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#6.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#7.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#8.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#9.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#10.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#11.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#12.onTrigger", function(player, npc)
    returnMenu(player)
end)


m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#13.onTrigger", function(player, npc)
    returnMenu(player)
end)

m:addOverride("xi.zones.Escha_RuAun.npcs.Eschan_Portal_#15.onTrigger", function(player, npc)
    returnMenu(player)
end)

return m
