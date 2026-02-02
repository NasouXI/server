------------------------------------
--------- Halloween Event ----------
------------------------------------

local m = Module:new("halloween_event")

local completeTransaction = function(player, npc, item, cost)
    local slimeBalance = player:getCharVar("slimeBalance")
    local confirmMenu  = 
    {
        title = string.format("Spend %i slimes? (%i available)", cost, slimeBalance),

        options =
        {
            {
                "Yes, I'm sure!",
                function(playerArg)
                    print(item)
                    if slimeBalance >= cost and item ~= nil then
                        if npcUtil.giveItem(player, item) then
                            player:setCharVar("slimeBalance", slimeBalance - cost)
                        else
                            player:PrintToPlayer("You do not meet the requirements to obtain this item.", 0, npc:getPacketName())
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
    }

    player:customMenu(confirmMenu)
end

m:addOverride("xi.zones.Selbina.Zone.onInitialize", function(zone)
    super(zone)

    local balamor = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Balamor",
        look     = 3099,
        x        = 9.67,
        y        = -14.56,
        z        = 66.21,
        rotation = 254,

    onTrigger = function(player, npc)
        player:PrintToPlayer("Psst... Hey, you! Want to play a game?! Trade me 1,000 gil to get started!", 0, npc:getPacketName())
    end,

    onTrade = function(player, npc, trade)
        if npcUtil.tradeHasExactly(trade, { { "gil", 1000 } }) then
            player:tradeComplete()

            local confirmMenu  = 
            {
                title = string.format("Test your luck?"),

                options =
                {
                    {
                        "Yes, I'm sure!",
                        function(playerArg)
                            local gobbieRoll = math.random(1,999)
                            local playerRoll = math.random(1,999)

                            player:timer(2000, function(playerArg)
                                player:PrintToPlayer("Let's make a bet, whoever rolls the higher number, wins a special surprise!", 0, npc:getPacketName())                 
                            end)

                            player:timer(4000, function(playerArg)
                                player:PrintToPlayer(string.format("%s rolls a %s.", npc:getPacketName(), gobbieRoll), xi.msg.channel.SYSTEM_3)
                            end)

                            player:timer(6000, function(playerArg)
                                player:PrintToPlayer("Ok, now it's your turn!", 0, npc:getPacketName())
                            end)

                            player:timer(8000, function(playerArg)
                                -- player:PrintToPlayer("DEBUG")
                                player:PrintToPlayer(string.format("%s rolls a %s.", player:getName(), playerRoll), xi.msg.channel.SYSTEM_3)
                            end)

                            player:timer(10000, function(playerArg)
                                if gobbieRoll > playerRoll then
                                    player:PrintToPlayer("Na-na-na poo-poo! I win! You lose! Better luck next time... Loser!", 0, npc:getPacketName())
                                    return
                                else
                                    player:PrintToPlayer("Whaaaat?! How could this be??? Go on.. Get outta my sight!", 0, npc:getPacketName())
                                    player:timer(1000, function(playerArg)
                                        player:PrintToPlayer("Balamor boots you into the abyss...", xi.msg.channel.SYSTEM_3)
                                    end)
    
                                    player:timer(4000, function(playerArg)
                                        player:setPos(-500, -30, 528, 63, 293)
                                    end)
                                end
                            end)
                        end,
                    },
                    {
                        "No, I change my mind.",
                        function(playerArg)
                            return
                        end,
                    },
                },
            }

            player:customMenu(confirmMenu)
        else
            player:PrintToPlayer("Scram! I don't have time for your tom-foolery!", 0, npc:getPacketName())
        end
    end,
    })

    local rightdoorslime = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 293,
        x        = 19.27,
        y        = -14.56,
        z        = 83.35,
        rotation = 154,
    })

    local leftdoorslime = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 293,
        x        = 16.34,
        y        = -14.56,
        z        = 83.37,
        rotation = 65,
    })

    local rightballoon = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 1293,
        x        = 24.90,
        y        = -14.68,
        z        = 56.22,
        rotation = 58,
    })

    local leftballoon = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 1287,
        x        = 15.54,
        y        = -14.56,
        z        = 57.17,
        rotation = 65,
    })

    local orangetent = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 1300,
        x        = 34.80,
        y        = -6.56,
        z        = -0.24,
        rotation = 29,
    })

    local leftportalroof = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 2142,
        x        = -13.18,
        y        = -11.76,
        z        = 7.34,
        rotation = 64,
    })

    local rightportalroof = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 2139,
        x        = 14.34,
        y        = -11.76,
        z        = 7.99,
        rotation = 255,
    })
end)

m:addOverride("xi.zones.Reisenjima_Sanctorium.Zone.onInitialize", function(zone)
    super(zone)

    local ladyLilith = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Lady Lilith",
        look     = 2400,
        x        = -500,
        y        = -30.340,
        z        = 500,
        rotation = 192,

        onTrigger = function(player, npc)
            player:PrintToPlayer("So, you wish to travel through the unknown?", 0, npc:getPacketName())

            local confirmMenu  = 
            {
                title = string.format("How do you respond?"),

                options =
                {
                    {
                        "Take me away!",
                        function(playerArg)
                            player:PrintToPlayer("Very well, my dear... You'll need to collect silmes from Castle Zvahl!" ,0 ,npc:getPacketName())
                        
                            player:timer(3000, function(playerArg)
                                player:PrintToPlayer("1...", 0, npc:getPacketName())
                            end)

                            player:timer(4000, function(playerArg)
                                player:PrintToPlayer("2...", 0, npc:getPacketName())
                            end)

                            player:timer(5000, function(playerArg)
                                player:PrintToPlayer("3...", 0, npc:getPacketName())
                            end)

                            player:timer(6000, function(playerArg)
                                player:setPos(384.61, -12, -19.729, 128, 161)
                            end)
                        end,
                    },
                    {
                        "Run away!",
                        function(playerArg)
                            return
                        end,
                    },
                },
            }

            player:customMenu(confirmMenu)
        end,
    })

    local haudrale = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Haudrale",
        look     = 2277,
        x        = -500.82,
        y        = -30.34,
        z        = 494.99,
        rotation = 188,
    })

    local aquila = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Aquila",
        look     = 2278,
        x        = -498.17,
        y        = -30.34,
        z        = 497.43,
        rotation = 187,
    })

    local larzos = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Larzos",
        look     = 2299,
        x        = -502.36,
        y        = -30.34,
        z        = 497.82,
        rotation = 203,
    })

    local leftSkeleSlave = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 2100,
        x        = -485.6,
        y        = -30.34,
        z        = 502.38,
        rotation = 140,
    })

    local rightSkeleSlave = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 2100,
        x        = -487.5,
        y        = -30.34,
        z        = 492.17,
        rotation = 141,
    })

    local odin = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Odin",
        look     = 26,
        x        = -515.61,
        y        = -30.34,
        z        = 493.98,
        rotation = 215,
    })

    local rightSlave = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 3105,
        x        = -503.51,
        y        = -30.75,
        z        = 518.43,
        rotation = 249,
    })

    local leftSlave = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 3105,
        x        = -496.83,
        y        = -30.75,
        z        = 518.64,
        rotation = 131,
    })

    local backPortal = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 2143,
        x        = -499.67,
        y        = -30.34,
        z        = 482.2,
        rotation = 199,
    })

    local leftDark = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 15,
        x        = -484.42,
        y        = -30.75,
        z        = 510.56,
        rotation = 99,
    })
    
    local rightDark = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 15,
        x        = -515.71,
        y        = -30.75,
        z        = 510.22,
        rotation = 40,
    })

    local redBatstriple = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 263,
        x        = -493.4,
        y        = -30.34,
        z        = 491.43,
        rotation = 200,
    })

    local blackBatsOne = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 256,
        x        = -506.95,
        y        = -30.34,
        z        = 509.9,
        rotation = 232,
    })

    local blackBatsTwo = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        look     = 256,
        x        = -492.24,
        y        = -30.34,
        z        = 506.77,
        rotation = 159,
    })
end)

m:addOverride("xi.zones.Reisenjima_Sanctorium.Zone.onInitialize", function(zone)
    super(zone)

    local decrepitShadowLord = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name     = "Decrepit S.Lord",
        look     = 1427,
        x        = -485.56,
        y        = -30.34,
        z        = 497.33,
        rotation = 132,

        onTrade = function(player, npc, trade)
            local count        = trade:getItemCount()
            local slimeBalance = player:getCharVar("slimeBalance")

            -- store slimes
            if trade:hasItemQty(8759, count) then
                player:tradeComplete()
                player:setCharVar("slimeBalance", slimeBalance + count)
                player:PrintToPlayer(string.format("You have %i metal slimes available to spend. Choose wisely.", slimeBalance + count), 0, npc:getPacketName())
            end
        end,

        onTrigger = function(player, npc)
            local slimeBalance = player:getCharVar("slimeBalance")
            local item         = 0

            -- Forward declarations (required)
            local menu  = {}
            local page1 = {}
            local page2 = {}
            local page3 = {}
            local page4 = {}

            local delaySendMenu = function(player)
                player:timer(100, function(playerArg)
                    playerArg:customMenu(menu)
                end)
            end

            -- Print Beads balance
            player:PrintToPlayer(string.format("You have %s metal slimes available to spend. Choose wisely.", slimeBalance), 0, npc:getPacketName())

            menu =
            {
                title = "Choose a reward",
                options = {},
            }

            page1 =
            {
                {
                    "Candy ring",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 5621
                            cost = 50
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Pitchfork +1",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 18103
                            cost = 100
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Trick Staff II",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 17588
                            cost = 100
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Pumpkin Head II",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 15176
                            cost = 50
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Spectral Chair",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 10065
                            cost = 300
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Iron Giant",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 10079
                            cost = 300
                            req  = 0
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
                    "Coven hat",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 16076
                            cost = 30
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Kakai cap +1",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 25587
                            cost = 100
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Malice masher +1",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 21154
                            cost = 100
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Cotton candy",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 5709
                            cost = 40
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Jack-o'-pricket",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 3622
                            cost = 20
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Mandragora pricket",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 3646
                            cost = 20
                            req  = 0
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
                    "Ominaeshi Yukata",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 11319
                            cost = 60
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Onnagimi yukata",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 14535
                            cost = 60
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Volant Serum",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 5350
                            cost = 40
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Pungent Powder III",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 6537
                            cost = 40
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Osseous Serum",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 3489
                            cost = 40
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Morbol Latte",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 6518
                            cost = 40
                            req  = 0
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
                    "Little Lugworm",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 5118
                            cost = 40
                            req  = 0
                            completeTransaction(player, npc, item, cost, req)
                        end)
                    end,
                },
                {
                    "Ark Shield",
                    function(playerArg)
                        player:timer(50, function(playerArg)
                            item = 26490
                            cost = 200
                            req  = 0
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
        end,
    })
end)

m:addOverride("xi.zones.Castle_Zvahl_Baileys.Zone.onInitialize", function(zone)
    super(zone)

    local swirlingVortex = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name    = " ",
        look    = 721,
        x       = 384.61,
        y       = -12,
        z       = -19.729,

        onTrigger = function(player, npc)
            local confirmMenu  = 
            {
                title = string.format("Return to Lady Lilth?"),

                options =
                {
                    {
                        "Take me away!",
                        function(playerArg)
                            player:PrintToPlayer("Hang tight..." ,0 ,npc:getPacketName())

                            player:timer(1000, function(playerArg)
                                player:setPos(-500, -30, 528, 63, 293)
                            end)

                        end,
                    },
                    {
                        "Run away!",
                        function(playerArg)
                            return
                        end,
                    },
                },
            }

            player:customMenu(confirmMenu)
        end,
    })  
end)

return m
