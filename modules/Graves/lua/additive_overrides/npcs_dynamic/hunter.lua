require("modules/module_utils")
require('scripts/globals/npc_util')
require("scripts/globals/utils")
-----------------------------------

local m = Module:new("hunter")

m:addOverride("xi.zones.Lower_Jeuno.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local huntRewards =
    {
        [ 1] = { 1456,  2 },   -- one_hundred_byne_bill
        [ 2] = { 1712,  2 },   -- cashmere thread
        [ 3] = { 1713,  2 },   -- cashmere wool
        [ 4] = {  658,  2 },   -- damascus_ingot
        [ 5] = { 2470,  1 },   -- nethereye_chain
        [ 6] = { 2471,  1 },   -- netherfield_chain
        [ 7] = { 2472,  1 },   -- netherspirit chain
        [ 8] = { 2473,  1 },   -- nethercant_chain
        [ 9] = { 2474,  1 },   -- netherpact_chain
        [10] = {  901,  2 },   -- venomous claw
        [11] = { 2465,  1 },   -- rubber_cap
        [12] = { 2466,  1 },   -- rubber_harness
        [13] = { 2467,  1 },   -- rubber gloves
        [14] = { 2468,  1 },   -- rubber chausses
        [15] = { 2469,  1 },   -- rubber soles
        [16] = { 1875, 40 },   -- Ancient Beastcoin
        [17] = { 3283, 10 },   -- Aquarian Tatter
        [18] = { 3282, 10 },   -- Dryadic Tatter
        [19] = { 3281, 10 },   -- Earthen Tatter
        [20] = { 3280, 10 },   -- Martial Tatter
        [21] = { 3279, 10 },   -- Neptunal Tatter
        [22] = { 3284, 10 },   -- Wyrmal Tatter
        [23] = { 3286, 10 },   -- Hadean Tatter
        [24] = { 3285, 10 },   -- Phantasmal Tatter
        [25] = { 3278, 10 },   -- Byakko Scrap
        [26] = { 3275, 10 },   -- Genbu Scrap
        [27] = { 3277, 10 },   -- Seiryu Scrap
        [28] = { 3276, 10 },   -- Suzaku Scrap
        [29] = { 1450,  2 },   -- Lungo-Nango Jadeshell
        [30] = { 1453,  2 },   -- Montiont Silverpiece
        [31] = {  747,  2 },   -- Orichalcum Ingot
        [32] = {  686,  2 },   -- Imperial Wootz Ingot
        [33] = { 1714,  2 },   -- Cashmere Cloth
        [34] = { 1313,  2 },   -- Siren's Hair
        [35] = { 1409,  2 },   -- Siren's Macrame
        [36] = {  831,  2 },   -- Shining Cloth
        [37] = {  862,  2 },   -- Behemoth Leather
        [38] = { 2170,  2 },   -- Cerberus Leather
        [39] = { 1312,  2 },   -- Angel Skin
        [40] = {  723,  2 },   -- Divine Lumber
        [41] = {  720,  2 },   -- Ancient Lumber
        [42] = { 2535,  2 },   -- Jacaranda Lumber
        [43] = { 1446,  2 },   -- Lacquer Tree Log
        [44] = { 1133,  2 },   -- Dragon Blood
        [45] = { 4272,  2 },   -- Dragon Meat    
        [46] = {  703,  2 },   -- Petrified Log
        [47] = { 2156, 10 },   -- Imperial Tea Leaves
        [48] = { 2532,  5 },   -- Teak Log
        [49] = {  732,  5 },   -- Kapor Log
        [50] = { 5736,  4 },   -- linen coin purse
    }

    local hunter = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Hunter",
        look     = "0x0000CA0800000000000000000000000000000000",
        x        = 8.000,
        y        = 0.000,
        z        = 15.427,
        rotation = 130,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,

        onTrigger = function(player, npc)
            local weeklyHunt   = GetServerVariable("Weekly_Hunt_NM")
            local huntComplete = player:getCharVar("Weekly_Hunt_Completed")
            local playerTitle  = player:getTitle()

            if weeklyHunt == huntComplete then    
                player:PrintToPlayer(string.format("Hunter: You've already completed this week's hunt! Come back later!"), 0xD)
                return
            end

            if playerTitle == weeklyHunt and huntComplete ~= 1 then
                local randomReward = math.random(1,50)
                local reward       = huntRewards[randomReward][1]
                local rewardQty    = huntRewards[randomReward][2]

                player:setCharVar("Weekly_Hunt_Completed", weeklyHunt)
                player:PrintToPlayer(string.format("Hunter: Congratulations! You've completed this week's hunt. Here's your reward!"), 0xD)
                npcUtil.giveItem(player, { { reward, rewardQty } })

                if not player:getCharVar("Weekly_Hunt_Counter") then
                    player:setCharVar("Weekly_Hunt_Counter", 1)
                else
                    local huntCounter = player:getCharVar("Weekly_Hunt_Counter") + 1
                    player:setCharVar("Weekly_Hunt_Counter", huntCounter)
                end

            elseif weeklyHunt == 453 then -- NIDHOGG_SLAYER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Nidhogg!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Nidhogg Slayer"), 0xD)
            elseif weeklyHunt == 464 then -- VINEGAR_EVAPORATOR
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Kinger Vinegarroon!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Vinegar Evaporator"), 0xD)
            elseif weeklyHunt == 457 then -- LIFTER_OF_SHADOWS
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Dynamis Lord!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Lifter of Shadows"), 0xD)
            elseif weeklyHunt == 468 then -- APOLLYON_RAVAGER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Proto-Omega!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Apollyon Ravager"), 0xD)
            elseif weeklyHunt == 452 then -- ASPIDOCHELONE_SINKER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Aspidochelone!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Aspidochelone Sinker"), 0xD)
            elseif weeklyHunt == 458 then -- TIAMAT_TROUNCER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Tiamat!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Tiamat Trouncer"), 0xD)
            elseif weeklyHunt == 476 then -- KHIMAIRA_CARVER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Khimaira!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Khimaira Carver"), 0xD)
            elseif weeklyHunt == 28 then -- BEHEMOTH_DETHRONER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: King Behemoth!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Behemoth Dethroner"), 0xD)
            elseif weeklyHunt == 472 then -- HYDRA_HEADHUNTER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Hydra!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Hydra Headhunter"), 0xD)
            elseif weeklyHunt == 471 then -- CERBERUS_MUZZLER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Cerberus!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Cerberus Muzzler"), 0xD)
            elseif weeklyHunt == 558 then -- OUPIRE_IMPALER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Oupire!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Oupire Impaler"), 0xD)
            elseif weeklyHunt == 460 then -- WORLD_SERPENT_SLAYER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Jormungand!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: World Serpent Slayer"), 0xD)
            elseif weeklyHunt == 459 then -- VRTRA_VANQUISHER
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Vrtra!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Vrtra Vanquisher"), 0xD)
            elseif weeklyHunt == 467 then -- TEMENOS_LIBERATOR
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Proto-Ultima!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Temenos Liberator"), 0xD)
            elseif weeklyHunt == 455 then -- KIRIN_CAPTIVATOR
                player:PrintToPlayer(string.format("Hunter: This week's hunt is: Kirin!"), 0xD)
                player:PrintToPlayer(string.format("Hunter: Title required: Kirin Captivator"), 0xD)
            end
        end,
    })

    utils.unused(hunter)
end)

return m
