------------------------------------
------ Bastok Holiday Event --------
------------------------------------
require("modules/module_utils")

local bastokHoliday = Module:new("bastok_holiday_event")

bastokHoliday:addOverride("xi.zones.Bastok_Mines.Zone.onInitialize", function(zone)

    -- Call the zone's original function for onInitialize
    super(zone)


    local holidayCounter   = 0
    local holidayReward    = 0
    local holidayRewardQty = 0

    -- Rewards for the holiday event in order by when they will be received.
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

    --- Holiday Event NPC
    local testy = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Testy",
        look = "0x01000001D611D621D631D641D651FD601670B080",
        x = 7.6652,
        y = 0.000,
        z = -85.4713,
        rotation = -20,
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
        x = 8.0510,
        y = 0.000,
        z = -77.6731,
        rotation = 92,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,

        onTrigger = function(player, npc)

            -- Variable Setup
            local deathCount = GetServerVariable("[Holiday]Xaver_Kills")
            local rewardCount = GetServerVariable("[Holiday]Xaver_Rewards")

            -- Player talked to Xaver (mistake) and rolls a random number 1-100
            local randomCookieRoll  = math.random(1,100)



            -- Check if the player rolled 100 and give them a cookie, otherwise death.
            if (randomCookieRoll == 100 and player:getFreeSlotsCount() > 0) then

                -- Increase the number of times Xaver has given a cookie
                rewardCount = rewardCount + 1
                SetServerVariable("[Holiday]Xaver_Rewards", rewardCount)

                -- Give the cookie
                player:PrintToPlayer(string.format("Xaver: I'm feeling nice today. Have a cookie."), 0xD)
                player:PrintToPlayer(string.format("Cookie Number: %s", rewardCount))
                npcUtil.giveItem(player , {{4394, 1}})

            else

                -- Increase the number of times Xaver has smited.
                deathCount = deathCount + 1
                SetServerVariable("[Holiday]Xaver_Kills", deathCount)

                -- Smite the Player
                player:PrintToPlayer(string.format("Xaver: Happy Holidays... Now DIE!"), 0xD)
                player:PrintToPlayer(string.format("Victim number: %s", deathCount))

                player:injectActionPacket(player:getID(), 5, 207, 0, 0, 0, 0, 0)
                player:injectActionPacket(player:getID(), 5, 270, 0, 0, 0, 0, 0)
                player:setHP(0)
            end
        end,
    })

    local hax = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Hax",
        look = "0x01001D024710DC20BA3032413251456216700080",
        x = -0.2307,
        y = 0.0000,
        z = -90.7993,
        rotation = 24,
        widescan = 64,

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
        x = 1.9056,
        y = 0.0000,
        z = -90.2265,
        rotation = 45,
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
        x = -2.6640,
        y = 0.00,
        z = -90.4717,
        rotation = 80,
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
        x = 4.3673,
        y = 0.0000,
        z = -74.2755,
        rotation = 63,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        player:PrintToPlayer(string.format("BOX: Happy holidays!"), 0xD)
        end,
    })

    local zeid = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Zeid",
        look = 830,
        x = -9.4935,
        y = 0.00,
        z = -78.6165,
        rotation = 45,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Zeid: Happy Holidays!"), 0xD)
            end,
    })

    local karst = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Karst",
        look = 71,
        x = 6.5957,
        y = 0.00,
        z = -84.0633,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Karst: Welcome to the Bastok Holiday Event!"), 0xD)
            end,
    })

    local cornelia = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Cornelia",
        look = 70,
        x = 6.5353,
        y = 0.00,
        z = -82.0505,
        rotation = -20,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Cornelia: We're so grateful to have you here!"), 0xD)
            end,
    })

    local galkaChild = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Galka Child",
        look = 181,
        x = -11.3170,
        y = 0.00,
        z = -89.7287,
        rotation = -30,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Galka Child: Xaver gave me a present! What a nice guy!"), 0xD)
            end,
    })

    local starlightChocobo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Starlight Chocobo",
        look = 2000,
        x = -12.1729,
        y = 0.00,
        z = -89.6422,
        rotation = -30,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Starlight Chocobo: Kweh!!"), 0xD)
            end,
    })

    local cid = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Cid",
        look = 63,
        x = -8.2140,
        y = 0.00,
        z = -78.1520,
        rotation = 45,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Cid: You wouldn't believe what it took to put this together at the last minute!"), 0xD)
            end,
    })

    --- Holiday Decorations

    local canopy = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1240,
        x = -0.1938,
        y = 0.5,
        z = -84.0268,
    })
    
    local tree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1241,
        x = -0.1938,
        y = 0.00,
        z = -84.0268,
    })

    local smallTree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 23.3901,
        y = 0.00,
        z = -65.2250,
    })

    local smallTree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -23.3901,
        y = 0.00,
        z = -65.2250,
    })

    local smallTree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -18.0587,
        y = -3.00,
        z = -58.1178,
    })

    local smallTree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 18.0587,
        y = -3.00,
        z = -58.1178,
    })

    local smallTree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 44.3039,
        y = 0,
        z = -47.8915,
    })

    local smallTree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 63.6522,
        y = 0,
        z = -94.4761,
    })

    local smallTree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 74.1042,
        y = 0,
        z = -84.4704,
    })

    local smallTree7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -5.8772,
        y = 0,
        z = -69.4263,
    })

    local smallTree8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -5.9314,
        y = 0,
        z = -69.2842,
    })

    local mediumTree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 764,
        x = 103.1067,
        y = 0.9944,
        z = -72.0866,
    })

    local streetlight1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 0.0487,
        y = -3.00,
        z = -57.4482,
    })

    local streetlight2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 8.4837,
        y = -3.00,
        z = -56.8379,
    })

    local streetlight3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -8.4837,
        y = -3.00,
        z = -56.8379,
    })

    local streetlight4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -8.6930,
        y = -3.00,
        z = -64.7668,
    })

    local streetlight4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -21.9640,
        y = -1.00,
        z = -126.8323,
    })

    local streetlight5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -9.9605,
        y = -1.00,
        z = -126.8323,
    })

    local streetlight5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 8.6930,
        y = -3.00,
        z = -64.7668,
    })

    local streetlight6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 82.1272,
        y = 0,
        z = -65.4064,
    })

    local streetlight7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 82.1272,
        y = 0,
        z = -78.7164,
    })

    local streetlight8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 87.1380,
        y = 0.9944,
        z = -60.1172,
    })

    local streetlight9 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = 87.1380,
        y = 0.9944,
        z = -84.1575,
    })

    local kadomatsu1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 736,
        x = -12.0785,
        y = 0.0000,
        z = -95.9336,
        rotation = 90,
    })

    local kadomatsu2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 736,
        x = 12.0785,
        y = 0.0000,
        z = -95.9336,
        rotation = 20,
    })

    local kadomatsu3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 736,
        x = 12.0785,
        y = 0.0000,
        z = -71.9957,
        rotation = -45,
    })

    local kadomatsu4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 736,
        x = -12.0785,
        y = 0.0000,
        z = -71.9957,
        rotation = -90,
    })

    local newYearShrub1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 45.0891,
        y = 0.00,
        z = -83.7432,
    })

    local newYearShrub2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 35.1695,
        y = 0.00,
        z = -83.7432,
    })

    local newYearShrub3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 1.3298,
        y = -1.00,
        z = -127.9548,
    })

    local newYearShrub4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -33.1322,
        y = -1.00,
        z = -127.9548,
    })

    local newYearShrub5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 61.1790,
        y = 0,
        z = -62.9457,
    })

    local newYearShrub6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 71.1627,
        y = 0,
        z = -62.9457,
    })

    local newYearShrub7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 118.7277,
        y = 0,
        z = -69.0521,
    })

    local newYearShrub8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 118.7277,
        y = 0,
        z = -74.9729,
    })

    local skeletonTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 50.4685,
        y = 0.8720,
        z = -91.0164,
    })

    local twoTrees = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 767,
        x = -40.5901,
        y = 0,
        z = -73.8390,
    })

end)

bastokHoliday:addOverride("xi.zones.Norg.Zone.onInitialize", function(zone)
    super(zone)
    
    local skeletonTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 3.4785,
        y = 0.1551,
        z = -12.4603,
        rotation = 198,
    })

    local holiday = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "egg",
        look = 2416,
        x = -7.5160,
        y = -1,
        z = -45.9793,
        rotation = 192,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Egg: o_o;;"), 0xD)
            end,
    })

end)

return bastokHoliday