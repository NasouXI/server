------------------------------------
------ Jeuno Holiday Event --------
------------------------------------
require("modules/module_utils")

local jeunoHoliday = Module:new("jeuno_holiday_event")

jeunoHoliday:addOverride("xi.zones.Lower_Jeuno.Zone.onInitialize", function(zone)

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
        name = string.char(0x97) ..  " Testy",
        look = "0x01000001D611D621D631D641D651FD601670B080",  -- Testy in Nymal gear
        x = -14.232,
        y = -0.449,
        z = 2.739,
        rotation = 20,
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
                player:PrintToPlayer(string.format("Tesety: Enjoy this gift on behalf of our staff!"), 0xD)
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
        x = -13.0964,
        y = 0.4490,
        z = 8.1335,
        rotation = 2,
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
        x = -11.0225,
        y = 0.0000,
        z = 9.6157,
        rotation = 22,
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
        x = -8.5778,
        y = 0.0000,
        z = 12.5586,
        rotation = 22,
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
        x = -9.6306,
        y = 0.0000,
        z = 11.3774,
        rotation = 39,
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
        x = -6.6739,
        y = -0.1000,
        z = -13.6824,
        rotation = 156,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        player:PrintToPlayer(string.format("BOX: Happy holidays!"), 0xD)
        end,
    })
    
    --- Holiday Decorations
    local treeCanopy = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 767,
        x = -4.840,
        y = 5,
        z = 9.50,
        rotation = 215,
    })

    local topFloorTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -6.797,
        y = -6.00,
        z = -20.411,
        rotation = 78,
    })

    local topFloorTree2 = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1244,
        x = -15.755,
        y = -6.00, 
        z = -33.839,
        rotation = 229,
    })

    local boxTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1242,
        x = 8.724,
        y = -1.225,
        z = -4.767,
        rotation = 146,
    })

    local whiteTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 724,
        x = -31.437,
        y = -7.00,
        z = -13.481,
        rotation = 18,
    })        

    local fountainTree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 769,
        x = -16.165,
        y = -7.027,
        z = 5.469,
        rotation = 161,
    })

    local lampOne = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -25.700,
        y = 0,
        z = 2.605,
        rotation = 204,
    })

    local lampTwo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -26.330,
        y = 0,
        z = -16.593,
        rotation = 150,
    })

    local lampThree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -34.202,
        y = 0,
        z = -36.315,
        rotation = 82,
    })

    local lampFour = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 1273,
        x = -25.432,
        y = 0,
        z = -41.473,
        rotation = 86,
    })
    
    local dancingTaruOne = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 963,
        x = -35.286,
        y = 0,
        z = -31.716,
    })

    local dancingTaruOne = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 964,
        x = -35.230,
        y = 0,
        z = -33.811,
        rotation = 242,
    })

    local taruTreasure = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = " ",
        look = 969,
        x = -35.754,
        y = 0,
        z = -32.802,
        rotation = 246,
    })

end)

return jeunoHoliday