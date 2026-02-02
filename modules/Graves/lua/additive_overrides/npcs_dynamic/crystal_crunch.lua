require("modules/module_utils")
require('scripts/globals/npc_util')
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("crystal_crunch")

m:addOverride("xi.zones.Southern_San_dOria.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = -183.646,
        y        = -8.800,
        z        = 31.977,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals  = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )

            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

m:addOverride("xi.zones.Northern_San_dOria.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = -151.874,
        y        = 12.000,
        z        = 188.132,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals   = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )

            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

m:addOverride("xi.zones.Bastok_Mines.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = 75.097,
        y        = 7.000,
        z        = 3.150,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals   = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )

            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

m:addOverride("xi.zones.Bastok_Markets.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = -219.068,
        y        = -6.000,
        z        = -68.635,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals   = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )

            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

m:addOverride("xi.zones.Windurst_Waters.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = -91.032,
        y        = -2.000,
        z        = 47.544,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals   = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )
            
            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

m:addOverride("xi.zones.Windurst_Woods.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local crystalcrunch = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Crystal Crunch",
        look     = "0x0000750900000000000000000000000000000000",
        x        = -54.120,
        y        = -0.981,
        z        = -108.574,
        rotation = 0,

        onTrade = function(player, npc, trade)
            local crystals      = { 4096, 4097, 4098, 4099, 4100, 4101, 4102, 4103 }
            local crystalCount  = player:getCharVar("CrystalCruncher")
            local totalCrystals = 0

            -- Check that trade has valid crystals
            for _, validCrystal in ipairs(crystals) do
                -- if trade has valid crystals, then set up our variables
                if npcUtil.tradeHas(trade, validCrystal) then
                    crystalCount  = trade:getItemQty(validCrystal)
                    totalCrystals = totalCrystals + crystalCount
                end
            end

            -- eat everything in the trade window
            player:setCharVar("CrystalCruncher", player:getCharVar("CrystalCruncher") + totalCrystals)
            player:tradeComplete()
            player:PrintToPlayer(string.format("You have traded %s crystals with a total of %s.", totalCrystals, player:getCharVar("CrystalCruncher")))
        end,

        onTrigger = function(player, npc)
            local storedCrystals   = player:getCharVar("CrystalCruncher")
            local eligibleCrystals = math.floor(storedCrystals / 3 )

            player:PrintToPlayer("Crystal Crunch: I convert crystals ONLY at a ratio of 3 to 1. If you trade me anything else, it will be lost.", 0xD)

            if storedCrystals > 2 then
                player:PrintToPlayer(string.format("You can receive up to %s crystals with your current balance of %s crystals.", eligibleCrystals, storedCrystals))

                 local menu =
                {
                    title = "Choose a crystal:",

                    onStart = function(playerArg)
                    end,

                    options =
                    {
                        {
                            "Fire Crystal",
                            function(playerArg)
                                playerArg:addItem(4096, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Water Crystal",
                            function(playerArg)
                                playerArg:addItem(4101, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Earth Crystal",
                            function(playerArg)
                                playerArg:addItem(4099, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Lightning Crystal",
                            function(playerArg)
                                playerArg:addItem(4100, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Wind Crystal",
                            function(playerArg)
                                playerArg:addItem(4098, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Ice Crystal",
                            function(playerArg)
                                playerArg:addItem(4097, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Light Crystal",
                            function(playerArg)
                                playerArg:addItem(4102, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                        {
                            "Dark Crystal",
                            function(playerArg)
                                playerArg:addItem(4103, eligibleCrystals)
                                playerArg:PrintToPlayer("Take your crystals and get outta here!")
                                playerArg:setCharVar("CrystalCruncher", storedCrystals - eligibleCrystals * 3)
                            end,
                        },
                    },

                    onCancelled = function(playerArg)
                    end,

                    onEnd = function(playerArg)
                    end,
                }

                player:customMenu(menu)
            else
                player:PrintToPlayer("You don't have enough crystals stored.")
            end
        end,
    })

    utils.unused(crystalcrunch)
end)

return m
