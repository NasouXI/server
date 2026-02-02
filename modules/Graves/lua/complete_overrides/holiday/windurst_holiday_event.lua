------------------------------------
----- Windurst Holiday Event -------
------------------------------------
require("modules/module_utils")

local windurstHoliday = Module:new("windurst_holiday_event")

windurstHoliday:addOverride("xi.zones.Windurst_Waters.Zone.onInitialize", function(zone)

    -- Call the zone's original function for onInitialize
    super(zone)

    -- Rewards for the holiday event in order by when they will be received.
    -- Placeholder rewards for now.
    local holidayCounter   = 0
    local holidayReward    = 0
    local holidayRewardQty = 0
    local holidayRewards   = {
        -- index | itemID1 | itemID2 | qty 
        [1] =  { 15179,     0,    1 },   -- Dream Hat +1 (Hat)
        [2] =  {  4218,     0,   20 },   -- Air Rider (Firework)
        [3] =  { 14520,     0,    1 },   -- Dream Robe +1 (Body)
        [4] =  { 10383,     0,    1 },   -- Dream Mittens +1 (Hands)
        [5] =  {  4168,     0,   20 },   -- Twinkle Shower (Firework)
        [6] =  { 15753,     0,    1 },   -- 15753 Dream Boots +1 (Feet)
        [7] =  { 11966, 11968,    1 },   -- Dream Trousers +1 (Male Legs), Dream Pants +1 (Female Legs)
        [8] =  {  5620,     0,    1 },   -- Roast Turkey (Food)
        [9] =  {  3621,     0,    1 },   -- Leafberry Wreath (Furniture HAS MOGHANCEMENT: EXPERIENCE)
        [10] = {   116,     0,    1 },   -- Windurstian Holiday Tree (Furniture)
        [11] = {   140,     0,    1 },   -- Dream platter (Furniture HAS MOGHANCEMENT: DESYNTHESIS)
        [12] = {  5617,     0,    1 },   -- Lebkuchen Manse (Mage Food)
        [13] = {  3620,     0,    1 },   -- Silberkranz (Furniture HAS MOGHANCEMENT: EXPERIENCE)
        [14] = {   115,     0,    1 },   -- Bastokan Holiday Tree (Furniture)
        [15] = { 18864,     0,    1 },   -- Dream Bell +1 (Club)
        [16] = {  5553,     0,    1 },   -- Dusky Indulgence (Mage Food)
        [17] = {  3619,     0,    1 },   -- Couronne des Etoiles (Furniture HAS MOGHANCEMENT: EXPERIENCE)
        [18] = {    86,     0,    1 },   -- San d'Orian Holiday Tree (Furniture)
        [19] = {   155,     0,    1 },   -- Dream Stocking (Furniture HAS MOGHANCEMENT: DESYNTHESIS)
        [20] = {  3634,     0,    1 },   -- Starlight Cake (Furniture HAS MOGHANCEMENT: WIND)
        [21] = { 11491,     0,    1 },   -- Snow Bunny Hat (Head Costume: Increases Movement Speed)
        [22] = {   141,     0,    1 },   -- Dream Coffer (Furniture HAS MOGHANCEMENT: DESYNTHESIS)
        [23] = {   138,     0,    1 },   -- Jeunoan Tree (Furniture HAS MOGHANCEMENT: CONQUEST)
        [24] = {  3676,     0,    1 },   -- Celestial Glob (Furniture)
        [25] = { 10080,     0,    1 },   -- Byakko Mount
        [26] = {  1456,     0,    1 },   -- 100 Byne Bill (only if player has already received the above rewards)
        [27] = {  1450,     0,    1 },   -- Lungo-Nango Jadeshell (only if player has already received the above rewards)
        [28] = {  1453,     0,    1 },   -- Montiont Silverpiece (only if player has already received the above rewards)
        [29] = {  5553,     0,    1 },   -- Dusky Indulgence (Mage Food) (only if player has already received the above rewards)
        [30] = {  4168,     0,   20 },   -- Twinkle Shower (Firework) (only if player has already received the above rewards)
        [31] = {  4218,     0,   20 },   -- Air Rider (Firework) (only if player has already received the above rewards)
        [32] = {  4168,     0,   20 },   -- Twinkle Shower (Firework) (only if player has already received the above rewards)
        [33] = {  5620,     0,    1 },   -- Roast Turkey (Food) (only if player has already received the above rewards)
        [34] = {  5617,     0,    1 },   -- Lebkuchen Manse (Mage Food) (only if player has already received the above rewards)
        [35] = {  1090,     0,    1 },   -- Chunk of Bomb Coal (only if player has already received the above rewards)
    }

    --- Holiday Event NPCs
    local testy = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Testy",
        look = "0x01000001D611D621D631D641D651FD601670B080",
        x = -40.2082,
        y = -5,
        z = 82.7249,
        rotation = 192,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            -- Get how many times the player has received a reward.
            local holidayCounter   = player:getCharVar("Holiday_Counter")

            -- Check lockout time
            local holidayTimeCheck = player:getCharVar("Holiday_Time_Check")

            -- First time set up.
            if holidayCounter <= 0 then
                player:setCharVar("Holiday_Counter", 1)
                player:setCharVar("Holiday_Time_Check", 0)
            end

            if (holidayCounter >= 1 and holidayTimeCheck <= os.time() and holidayCounter <= 25 and player:getFreeSlotsCount() > 0) then

                -- Grab the reward
                local holidayReward    = holidayRewards[holidayCounter][1]
                local holidayRewardQty = holidayRewards[holidayCounter][3]
                local playerRace       = player:getRace()


                -- Check if player is female and return pants instead of trousers
                if holidayCounter == 7 then
                    if playerRace == xi.race.ELVAAN_F then
                            holidayReward = holidayRewards[holidayCounter][2]
                        elseif playerRace == xi.race.HUME_F then
                            holidayReward = holidayRewards[holidayCounter][2]
                        elseif playerRace == xi.race.TARU_F then
                            holidayReward = holidayRewards[holidayCounter][2]
                        elseif playerRace == xi.race.MITHRA then
                            holidayReward = holidayRewards[holidayCounter][2]
                        else
                            holidayReward = holidayRewards[holidayCounter][1]
                    end           
                end

                if player:hasItem(holidayReward) then
                    -- Give a different item if player already has item
                    local currencyReward = math.random(26,35)
                    holidayReward    = holidayRewards[currencyReward][1]
                    holidayRewardQty = holidayRewards[currencyReward][3]
                    
                    -- Check if the random reward was bomb coal and if the player already has bomb coal
                    if (holidayReward == 1090 and player:hasItem(holidayReward)) then
                        holidayReward = 4168
                        holidayRewardQty = 20
                    end
                end

                -- Give player the reward
                player:PrintToPlayer(string.format("Testy: Thank you for being a part of our community this year!"), 0xD)
                player:PrintToPlayer(string.format("Testy: Enjoy this gift on behalf of our staff!"), 0xD)
                npcUtil.giveItem(player , {{holidayReward, holidayRewardQty}})
                player:PrintToPlayer(string.format("Testy: Come back tomorrow and I'll give you another gift!"), 0xD)

                -- Counter increases after receiving reward.
                holidayCounter = holidayCounter + 1
                player:setCharVar("Holiday_Counter", holidayCounter)

                -- Set lockout time for 24 hours
                -- player:setCharVar("Holiday_Time_Check", os.time() + 15) -- 15 seconds (for testing only)
                player:setCharVar("Holiday_Time_Check", os.time() + 86400) -- 24 hours
            
            else
                -- Player does not qualify for a reward at this time.
                player:PrintToPlayer(string.format("Testy: Welcome to the CatsEyeXI Holiday Event! Check in with me every day to receive a gift!"), 0xD)
            end
        end,
    })

    local xaver = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Xaver",
        look = "0x0100060148101E201E301E401E504C611670B080",  -- Temp Model (Hoping to replace with a model of GM Xaver)
        x = -34.5920,
        y = -5,
        z = 72.0887,
        rotation = 163,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            -- Player talked to Xaver (mistake) and rolls a random number 1-100
            local randomCookieRoll  = math.random(1,100)

            -- Check if the player rolled 100 and give them a cookie, otherwise death.
            if (randomCookieRoll == 100 and player:getFreeSlotsCount() > 0) then
                player:PrintToPlayer(string.format("Xaver: I'm feeling nice today. Have a cookie."), 0xD)
                npcUtil.giveItem(player , {{4394, 1}})
            else
                player:PrintToPlayer(string.format("Xaver: Happy Holidays!"), 0xD)
                player:setHP(0)
            end
        end,
    })

    local hax = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Hax",
        look = "0x01001D024710DC20BA3032413251456216700080",
        x = -41.2809,
        y = -5.0000,
        z = 71.4985,
        rotation = 200,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Hax: Happy Holidays!"), 0xD)
        end,
    })

    local neckbeard = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Neckbeard",
        look = "0x01000C01B4118C307A40F3508C60157000080000",
        x = -38.1861,
        y = 5.0000,
        z = -71.6719,
        rotation = 190,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Neckbeard: Thanks for being part of the community, happy holidays!"), 0xD)
        end,
    })

    local jayt = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " JayTDawgzone",
        look = "0x01000E05D0118C207A30F3408C5061611670B080",
        x = -38.9107,
        y = -5.0000,
        z = 71,5244,
        rotation = 202,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("JayTDawgzone: Happy holidays!"), 0xD)
        end,
    })

    local box = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " BOX",
        look = 2331,
        x = -50.3896,
        y = -5.0000,
        z = 76.6632,
        rotation = 250,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("BOX: Happy holidays!"), 0xD)
        end,
    })

    local starSibyl = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Star Sibyl",
        look = 3039,
        x = -31.4888,
        y = -5,
        z = 78.1971,
        rotation = 135,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Star Sibyl: I see you have a star to guide you into the next year."), 0xD)
        end,
        
    })

    local ajidoMarujido = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Ajido-Marujido",
        look = 149,
        x = -31.4233,
        y = -5,
        z = 79.0783,
        rotation = 137,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Ajido-Marujido: I can not wait to take a litaru lookie-lookie at all of the nations' decorations!"), 0xD)
        end,
    })

    local shantotto = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Shantotto",
        look = 3000,
        x = -35.9340,
        y = -5,
        z = 69.9796,
        rotation = 188,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Shantotto: Ah, I love the Holidays! It feels like last year was just yesterday!"), 0xD)
        end,
    })

    local kingOfHearts = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "King of Hearts",
        look = 3107,
        x = -37.0081,
        y = -5,
        z = 69.7653,
        rotation = 192,
    })

    local apururu = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Apururu",
        look = 164,
        x = -31.9608,
        y = -5,
        z = 77.4046,
        rotation = 139,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Apururu: It's so lovely to see you here for this festive-westive eventaru!"), 0xD)
        end,
    })

    local nanaaMihgo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Nanaa Mihgo",
        look = 250,
        x = -50.3564,
        y = -5,
        z = 75.7744,
        rotation = 233,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Nanaa Mihgo: This box is peaking my currrriosity!"), 0xD)
        end,
    })

    --- Holiday Decorations

    local canopy1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1247,
        x = -56,8214,
        y = -10.7500,
        z = 95.2693,
        rotation = 0,
    })
    local canopy2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1247,
        x = -23.1692,
        y = -10.7500,
        z = 95.2693,
        rotation = 0,
    })

    local canopy2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 763,
        x = -40.1371,
        y = -5,
        z = 80.0112,
        rotation = 0,
    })

    local newYearShrub1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -35.1772,
        y = -5,
        z = 101.8268,
        rotation = 0,
    })

    local newYearShrub2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -44.8707,
        y = -5,
        z = 101.8268,
        rotation = 0,
    })

    local newYearShrub3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -44.8707,
        y = -5,
        z = 108.3983,
        rotation = 0,
    })

    local newYearShrub4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -35.1772,
        y = -5,
        z = 108.3983,
        rotation = 0,
    })

    local newYearShrub5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -62.5534,
        y = -5,
        z = 83.5578,
        rotation = 0,
    })

    local newYearShrub6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -58.2720,
        y = -3.5,
        z = 67.1799,
        rotation = 0,
    })
	
    local newYearShrub7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -52.9816,
        y = -3.5,
        z = 61.6787,
        rotation = 0,
    })

    local newYearShrub8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -115.1555,
        y = -2,
        z = 34.1878,
        rotation = 0,
    })

    local newYearShrub9 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -88.8935,
        y = -2,
        z = 45.7852,
        rotation = 0,
    })

    local newYearShrub10 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -94.0420,
        y = -2,
        z = 62.8659,
        rotation = 0,
    })

    local newYearShrub11 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -72.0016,
        y = -5,
        z = 101.5145,
        rotation = 0,
    })

    local newYearShrub12 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -8.5680,
        y = -1,
        z = 69.2314,
        rotation = 0,
    })

    local newYearShrub13 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -3.03333,
        y = -1,
        z = 17.2329,
        rotation = 0,
    })

    local newYearShrub14 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -12,
        y = -1,
        z = 17.2173,
        rotation = 0,
    })

    local newYearShrub15 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -62.3252,
        y = -3.5,
        z = 39.3378,
        rotation = 0,
    })

    local newYearShrub16 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -54.4763,
        y = -3.5,
        z = 35.6573,
        rotation = 0,
    })

    local newYearShrub17 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -76.4078,
        y = -3.5,
        z = 22.2108,
        rotation = 0,
    })

    local newYearShrub18 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -61.1850,
        y = -3.5,
        z = 0.7307,
        rotation = 0,
    })

    local palmTree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -17.3691,
        y = -5,
        z = 83.1543,
        rotation = 206,
    })

    local palmTree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -31.3175,
        y = -3.5,
        z = 59.4233,
        rotation = 181,
    })

    local palmTree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -78.9725,
        y = -3.5,
        z = 54.4054,
        rotation = 169,
    })

    local palmTree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -85.4278,
        y = -3.5,
        z = 70.7953,
        rotation = 39,
    })

    local palmTree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -47.7215,
        y = -3.5,
        z = 59.9022,
        rotation = 249,
    })

    local palmTree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -30.6700,
        y = -3.5,
        z = 42.1922,
        rotation = 115,
    })

    local palmTree7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = 2.5418,
        y = -1,
        z = 58.6250,
        rotation = 62,
    })

    local palmTree8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = 1.9200,
        y = -1,
        z = 41.8816,
        rotation = 181,
    })

    local palmTree9 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1248,
        x = -47.2811,
        y = -3.5,
        z = 43.7694,
        rotation = 254,
    })

    local skeletonTree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = -103.7146,
        y = -2,
        z = 46.6989,
        rotation = 57,
    })

    local komadatsu1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 735,
        x = -114.8496,
        y = -2,
        z = 53.9881,
        rotation = 49,
    })

    local komadatsu2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 735,
        x = -101.7088,
        y = -2,
        z = 58.8969,
        rotation = 49,
    })

    local holidayTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1390,
        x = -38.8415,
        y = -3.5,
        z = 33.2178,
        rotation = 71,
    })

    local holidayTree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1390,
        x = -13.9731,
        y = -1,
        z = 29.2651,
        rotation = 254,
    })

    local dancingTaruM = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1304,
        x = -30.1915,
        y = -5,
        z = 78.7058,
        rotation = 143,
    })

    local dancingTaruF = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1305,
        x = -31.0215,
        y = -5,
        z = 77.0948,
        rotation = 168,
    })

end)

windurstHoliday:addOverride("xi.zones.Kazham.Zone.onInitialize", function(zone)

    super(zone)
    
    local skeletonTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = -50.3333,
        y = -10,
        z = -83.8324,
        rotation = 110,
    })

end)

return windurstHoliday