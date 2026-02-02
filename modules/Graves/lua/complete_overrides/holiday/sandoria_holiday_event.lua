------------------------------------
---- San d'Oria Holiday Event ------
------------------------------------
require("modules/module_utils")

local sandyHoliday = Module:new("sandoria_holiday_event")

sandyHoliday:addOverride("xi.zones.Southern_San_dOria.Zone.onInitialize", function(zone)

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

    --- Holiday Event NPCs

    local testy = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = string.char(0x97) .. " Testy",
        look = "0x01000001D611D621D631D641D651FD601670B080",
        x = 0.6300,
        y = 02.0000,
        z = -7.4446,
        rotation = 61,
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
        x = 7.9023,
        y = 2.000,
        z = -9.9900,
        rotation = 83,
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
        x = -7.2931,
        y = 2.0000,
        z = -10.7287,
        rotation = 24,
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
        x = 9.0764,
        y = 2.0000,
        z = -10.6989,
        rotation = 88,
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
        x = 10.5783,
        y = 2.0000,
        z = -10.8655,
        rotation = 68,
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
        x = 6.3192,
        y = 2.0000,
        z = -9.3676,
        rotation = 185,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("BOX: Happy holidays!"), 0xD)
        end,
    })

    local adelheid = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Adelheid",
        look = "0x010000028C10D620D630D640D65067616E600000",
        x = -8.9532,
        y = 2.0000,
        z = -10.8254,
        rotation = 24,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Adelheid: I love this time of the year!"), 0xD)
        end,
    })

    local sylvie = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Sylvie",
        look = "0x01000F028C103421343134413451C3626E607180",
        x = -7.3052,
        y = 2.0000,
        z = -9.1726,
        rotation = 40,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:PrintToPlayer(string.format("Sylvie: I'm having a fantastic time here!"), 0xD)
        end,
    })



    --- Holiday Decorations

    local StarlightCeleb31 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 765,
        x = 119.6729,
        y = 0.0000,
        z = 87.3900,
        rotation = 30,
    })

    local doubletree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1243,
        x = 0.4057,
        y = 0.00,
        z = 24.9993,
        rotation = 193,
    })

    local babytree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 155.2721,
        y = -2.0000,
        z = 162.6213,
        rotation = 59,
    })

    local babytree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 162.9608,
        y = -2.0000,
        z = 155.8975,
        rotation = 158,
    })

    local babytree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 156.1904,
        y = -2.0000,
        z = 131.3109,
        rotation = 245,
    })

    local babytree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 162.9013,
        y = -2.0000,
        z = 123.8494,
        rotation = 210,
    })

    local babytree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 152.3975,
        y = -2.0000,
        z = 112.0942,
        rotation = 142,
    })

    local babytree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 143.9548,
        y = -2.0000,
        z = 120.2859,
        rotation = 101,
    })

    local babytree7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 130.9028,
        y = -2.2000,
        z = 115.0713,
        rotation = 250,
    })

    local babytree8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 146.1112,
        y = -2.2000,
        z = 97.9584,
        rotation = 192,
    })

    local balltree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 151.7581,
        y = -2.0000,
        z = 149.4076,
        rotation = 13,
    })

    local balltree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 169.9008,
        y = -2.0000,
        z = 129.5512,
        rotation = 23,
    })

    local balltree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 151.3943,
        y = -2.0000,
        z = 101.1043,
        rotation = 172,
    })

    local balltree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 133.3308,
        y = -2.0000,
        z = 118.9150,
        rotation = 23,
    })

    local balltree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 106.7165,
        y = 1.0000,
        z = 110.4071,
        rotation = 76,
    })

    local balltree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 93.8941,
        y = 1.0000,
        z = 97.7647,
        rotation = 106,
    })

    local sticktree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 137.1933,
        y = 0.0000,
        z = 80.9723,
        rotation = 192,
    })

    local babytree9 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 131.1598,
        y = 0.0000,
        z = 64.1406,
        rotation = 211,
    })

    local babytree10 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 154.3784,
        y = 0.0000,
        z = 50.2646,
        rotation = 203,
    })

    local sticktree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 152.2039,
        y = 0.0000,
        z = 34.2839,
        rotation = 125,
    })

    local babytree10 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 137.0035,
        y = 0.0000,
        z = 13.8518,
        rotation = 173,
    })

    local babytree11 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 119.4911,
        y = 2.0000,
        z = 17.5109,
        rotation = 50,
    })

    local babytree12 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 119.3114,
        y = 2.0000,
        z = 10.2657,
        rotation = 234,
    })

    local balltree7 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 113.2405,
        y = 2.0000,
        z = 10.1227,
        rotation = 229,
    })

    local balltree8 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 112.9329,
        y = 2.0000,
        z = 17.9826,
        rotation = 114,
    })

    local babytree13 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 105.7935,
        y = 4.0000,
        z = 60.0139,
        rotation = 35,
    })

    local sticktree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 93.6888,
        y = 4.0000,
        z = 47.9103,
        rotation = 78,
    })

    local balltree10 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 93.3359,
        y = 4.0000,
        z = 61.7121,
        rotation = 70,
    })

    local sticktree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 102.1748,
        y = 4.0000,
        z = 40.9274,
        rotation = 121,
    })

    local sticktree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = 91.3439,
        y = 4.0000,
        z = 23.6167,
        rotation = 101,
    })

    local lightsticktree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 93.1564,
        y = 2.0000,
        z = 2.2200,
        rotation = 24,
    })

    local lightsticktree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 82.2983,
        y = 2.0000,
        z = 13.1442,
        rotation = 96,
    })

    local doubletree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1243,
        x = 98.6304,
        y = 1.0000,
        z = -42.6780,
        rotation = 32,
    })

    local babytree14 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 103.0865,
        y = 4.0000,
        z = 24.2808,
        rotation = 116,
    })

    local balltree11 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 69.1980,
        y = 2.0000,
        z = -5.1459,
        rotation = 13,
    })

    local babytree15 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 98.2672,
        y = 1.0000,
        z = -51.2460,
        rotation = 154,
    })

    local babytree16 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 107.0176,
        y = 1.0000,
        z = -42.4312,
        rotation = 215,
    })

    local bigsticktree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 115.2921,
        y = 1.0000,
        z = -28.4851,
        rotation = 14,
    })

    local bigsticktree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 83.4468,
        y = 1.0000,
        z = -61.0037,
        rotation = 140,
    })

    local bigsticktree3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 75.2472,
        y = 2.0000,
        z = -42.4589,
        rotation = 150,
    })

    local bigsticktree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 98.9895,
        y = 2.0000,
        z = -19.1048,
        rotation = 74,
    })

    local balltree12 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 80.0945,
        y = 2.0000,
        z = -32.1865,
        rotation = 128,
    })

    local balltree13 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 87.7558,
        y = 2.0000,
        z = -23.7318,
        rotation = 113,
    })

    --working below
    local bigsticktree5 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 55.0764,
        y = 2.0000,
        z = -28.7028,
        rotation = 156,
    })

    local bigsticktree6 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 55.9577,
        y = 2.0000,
        z = -12.4291,
        rotation = 223,
    })

    local babytree17 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 44.5582,
        y = 2.0000,
        z = -8.3803,
        rotation = 44,
    })

    local bigdoubletree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1243,
        x = 0.3678,
        y = 2.0000,
        z = -7.7877,
        rotation = 65,
    })

    local ahtoptree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = -0.0403,
        y = -3.0000,
        z = -30.1518,
        rotation = 192,
    })

    local courttree1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -22.4517,
        y = 2.1000,
        z = 6.1705,
        rotation = 59,
    })

    local courttree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = 22.2798,
        y = 2.1000,
        z = 5.7971,
        rotation = 115,
    })

    local babytree18 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -45.4796,
        y = 2.0000,
        z = -9.5471,
        rotation = 48,
    })

    local sparks1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1243,
        x = -95.3600,
        y = 1.0000,
        z = -39.5266,
        rotation = 97,
    })

    local sparks2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -109.5766,
        y = 2.0000,
        z = -19.7092,
        rotation = 84,
    })

    local sparks3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -76.9359,
        y = 2.0000,
        z = -46.5288,
        rotation = 181,
    })

    local regionven1 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 768,
        x = -58.0030,
        y = 2.0000,
        z = -12.5504,
        rotation = 104,
    })

    local regionven2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = -69.5827,
        y = 2.0000,
        z = -5.5240,
        rotation = 238,
    })

    local regionven3 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = -78.1815,
        y = 2.0000,
        z = 2.7377,
        rotation = 114,
    })

    local regionven4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -95.3141,
        y = -2.0000,
        z = 22.4361,
        rotation = 68,
    })

    -------------
    local bigsticktree4 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1245,
        x = 98.9895,
        y = 2.0000,
        z = -19.1048,
        rotation = 74,
    })

    local balltree12 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 80.0945,
        y = 2.0000,
        z = -32.1865,
        rotation = 128,
    })

    local balltree13 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 766,
        x = 87.7558,
        y = 2.0000,
        z = -23.7318,
        rotation = 113,
    })

end)

return sandyHoliday
