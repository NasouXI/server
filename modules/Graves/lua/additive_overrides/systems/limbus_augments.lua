-----------------------------------
-- CatsEyeXI Custom AF+1 Augments
-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("catseyexi_custom_af_augments")
-----------------------------------------
--             PORT JEUNO              --
--            Augment AF+1             --
-----------------------------------------

local augmentTable =
{
--  [ ID] = { equipment,                      item1, item2, aug1, aug2, pow1, pow2 },

    [  1] = { xi.items.FIGHTERS_MASK_P1,            1855, 1900,   49,   41,  2, 0 }, -- WAR
    [  2] = { xi.items.FIGHTERS_LORICA_P1,          1852, 1871,   54,   39,  0, 3 },
    [  3] = { xi.items.FIGHTERS_MUFFLERS_P1,        1855, 1871,   54,   39,  0, 3 },
    [  4] = { xi.items.FIGHTERS_CUISSES_P1,         1852, 1855,   54,   39,  0, 3 },
    [  5] = { xi.items.FIGHTERS_CALLIGAE_P1,        1871, 1900,  143,  142,  0, 3 },

    [  6] = { xi.items.TEMPLE_CROWN_P1,             1855, 1900,   41,   49,  0, 2 }, -- MNK
    [  7] = { xi.items.TEMPLE_CYCLAS_P1,            1852, 1871,  151,  142,  0, 2 },
    [  8] = { xi.items.TEMPLE_GLOVES_P1,            1855, 1871,  143,   49,  0, 0 },
    [  9] = { xi.items.TEMPLE_HOSE_P1,              1852, 1855,  514,  512,  8, 8 },
    [ 10] = { xi.items.TEMPLE_GAITERS_P1,           1871, 1900,  194,   49,  2, 0 },

    [ 11] = { xi.items.HEALERS_CAP_P1,              1855, 1900,  138,   52,  0, 0 }, -- WHM
    [ 12] = { xi.items.HEALERS_BRIAULT_P1,          1852, 1871,   83,   71,  3, 2 },
    [ 13] = { xi.items.HEALERS_MITTS_P1,            1855, 1871,  329,  141,  0, 2 },
    [ 14] = { xi.items.HEALERS_PANTALOONS_P1,       1852, 1855,  323,   35,  0, 2 },
    [ 15] = { xi.items.HEALERS_DUCKBILLS_P1,        1871, 1900,   83,   52, 10, 0 },

    [ 16] = { xi.items.WIZARDS_PETASOS_P1,          1855, 1900,  138,   52,  0, 0 }, -- BLM
    [ 17] = { xi.items.WIZARDS_COAT_P1,             1852, 1871,   83,   35,  3, 2 },
    [ 18] = { xi.items.WIZARDS_GLOVES_P1,           1855, 1871,  141,  133,  2, 2 },
    [ 19] = { xi.items.WIZARDS_TONBAN_P1,           1852, 1855,  343,   35,  2, 2 },
    [ 20] = { xi.items.WIZARDS_SABOTS_P1,           1871, 1900,   83,   52, 10, 0 },

    [ 21] = { xi.items.WARLOCKS_CHAPEAU_P1,         1855, 1900,  141,  133,  2, 3 }, -- RDM
    [ 22] = { xi.items.WARLOCKS_TABARD_P1,          1852, 1871,   83,   35,  4, 2 },
    [ 23] = { xi.items.WARLOCKS_GLOVES_P1,          1855, 1871,  143,   49,  0, 0 },
    [ 24] = { xi.items.WARLOCKS_TIGHTS_P1,          1852, 1855,  329,   83,  3, 9 },
    [ 25] = { xi.items.WARLOCKS_BOOTS_P1,           1871, 1900,   83,   52, 10, 2 },

    [ 26] = { xi.items.ROGUES_BONNET_P1,            1855, 1900,   49,   41,  2, 0 }, -- THF
    [ 27] = { xi.items.ROGUES_VEST_P1,              1852, 1871,  137,  146,  0, 0 },
    [ 28] = { xi.items.ROGUES_ARMLETS_P1,           1855, 1871,  147,   49,  0, 0 },
    [ 29] = { xi.items.ROGUES_CULOTTES_P1,          1852, 1855,   27,   29,  5, 5 },
    [ 30] = { xi.items.ROGUES_POULAINES_P1,         1871, 1900,  143,   49,  0, 0 },

    [ 31] = { xi.items.GALLANT_CORONET_P1,          1855, 1900,  356,   71,  2, 0 }, -- PLD
    [ 32] = { xi.items.GALLANT_SURCOAT_P1,          1852, 1871,  138,  363,  0, 0 },
    [ 33] = { xi.items.GALLANT_GAUNTLETS_P1,        1855, 1871,   55,   42,  2, 0 },
    [ 34] = { xi.items.GALLANT_BREECHES_P1,         1852, 1855,  153,  286,  0, 2 },
    [ 35] = { xi.items.GALLANT_LEGGINGS_P1,         1871, 1900,  134,   56,  0, 2 },

    [ 36] = { xi.items.CHAOS_BURGEONET_P1,          1855, 1900,   49,   41,  2, 0 }, -- DRK
    [ 37] = { xi.items.CHAOS_CUIRASS_P1,            1852, 1871,  138,  137,  0, 0 },
    [ 38] = { xi.items.CHAOS_GAUNTLETS_P1,          1855, 1871,  142,   49,  2, 2 },
    [ 39] = { xi.items.CHAOS_FLANCHARD_P1,          1852, 1855,  516,  343,  2, 2 },
    [ 40] = { xi.items.CHAOS_SOLLERETS_P1,          1871, 1900,  143,   49,  0, 0 },

    [ 41] = { xi.items.BEAST_HELM_P1,               1855, 1900,  111,   49,  2, 2 }, -- BST
    [ 42] = { xi.items.BEAST_JACKCOAT_P1,           1852, 1871,  112,   49,  2, 0 },
    [ 43] = { xi.items.BEAST_GLOVES_P1,             1855, 1871,  143,   49,  0, 2 },
    [ 44] = { xi.items.BEAST_TROUSERS_P1,           1852, 1855,  109,   49,  1, 2 },
    [ 45] = { xi.items.BEAST_GAITERS_P1,            1871, 1900,  110,   49,  0, 2 },

    [ 46] = { xi.items.CHORAL_ROUNDLET_P1,          1855, 1900,  138,  137,  0, 0 }, -- BRD
    [ 47] = { xi.items.CHORAL_JUSTAUCORPS_P1,       1852, 1871,  298,  296,  3, 2 },
    [ 48] = { xi.items.CHORAL_CUFFS_P1,             1855, 1871,  518,   35,  0, 0 },
    [ 49] = { xi.items.CHORAL_CANNIONS_P1,          1852, 1855,  939,  337,  5, 0 },
    [ 50] = { xi.items.CHORAL_SLIPPERS_P1,          1871, 1900,   52,   51,  2, 0 },

    [ 51] = { xi.items.HUNTERS_BERET_P1,            1855, 1900,  139,   27,  0, 2 }, -- RNG
    [ 52] = { xi.items.HUNTERS_JERKIN_P1,           1852, 1871,  142,   23,  5, 7 },
    [ 53] = { xi.items.HUNTERS_BRACERS_P1,          1855, 1871,  338,   27,  0, 3 },
    [ 54] = { xi.items.HUNTERS_BRACCAE_P1,          1852, 1855,  515,  513,  8, 8 },
    [ 55] = { xi.items.HUNTERS_SOCKS_P1,            1871, 1900,  143,   49,  0, 2 },

    [ 56] = { xi.items.MYOCHIN_KABUTO_P1,           1855, 1900,   49,   41,  2, 0 }, -- SAM
    [ 57] = { xi.items.MYOCHIN_DOMARU_P1,           1852, 1871, 1264,  137,  0, 0 },
    [ 58] = { xi.items.MYOCHIN_KOTE_P1,             1855, 1871,  198,   49,  0, 0 },
    [ 59] = { xi.items.MYOCHIN_HAIDATE_P1,          1852, 1855,  142,   49,  2, 2 },
    [ 60] = { xi.items.MYOCHIN_SUNE_ATE_P1,         1871, 1900,  143,   49,  0, 0 },

    [ 61] = { xi.items.NINJA_HATSUBURI_P1,          1855, 1900,   49,   41,  2, 0 }, -- NIN
    [ 62] = { xi.items.NINJA_CHAINMAIL_P1,          1852, 1871,  146,   23,  0, 5 },
    [ 63] = { xi.items.NINJA_TEKKO_P1,              1855, 1871,  143,   49,  0, 0 },
    [ 64] = { xi.items.NINJA_HAKAMA_P1,             1852, 1855,  215,   31,  0, 2 },
    [ 65] = { xi.items.NINJA_KYAHAN_P1,             1871, 1900,  295,  133,  2, 7 },

    [ 66] = { xi.items.DRACHEN_ARMET_P1,            1855, 1900,   49,   41,  2, 0 }, -- DRG
    [ 67] = { xi.items.DRACHEN_MAIL_P1,             1852, 1871,  142,   23,  5, 7 },
    [ 68] = { xi.items.DRACHEN_FINGER_GAUNTLETS_P1, 1855, 1871,  143,   49,  0, 0 },
    [ 69] = { xi.items.DRACHEN_BRAIS_P1,            1852, 1855,   96,   49, 12, 0 },
    [ 70] = { xi.items.DRACHEN_GREAVES_P1,          1871, 1900,  110,   49,  0, 0 },

    [ 71] = { xi.items.EVOKERS_HORN_P1,             1855, 1900,  138,   52,  0, 1 }, -- SMN
    [ 72] = { xi.items.EVOKERS_DOUBLET_P1,          1852, 1871,   52,   96,  0, 5 },
    [ 73] = { xi.items.EVOKERS_BRACERS_P1,          1855, 1871,  112,  111,  2, 2 },
    [ 74] = { xi.items.EVOKERS_SPATS_P1,            1852, 1855,  123,  107,  0, 0 },
    [ 75] = { xi.items.EVOKERS_PIGACHES_P1,         1871, 1900,  339,  110,  0, 0 },

    [ 76] = { xi.items.MAGUS_KEFFIYEH_P1,           1855, 1900,   49,   41,  2, 0 }, -- BLU
    [ 77] = { xi.items.MAGUS_JUBBAH_P1,             1852, 1871,  146,   23,  0, 7 },
    [ 78] = { xi.items.MAGUS_BAZUBANDS_P1,          1855, 1871,  143,   49,  0, 0 },
    [ 79] = { xi.items.MAGUS_SHALWAR_P1,            1852, 1855,  138,  137,  0, 0 },
    [ 80] = { xi.items.MAGUS_CHARUQS_P1,            1871, 1900,  299,  133,  2, 7 },

    [ 81] = { xi.items.CORSAIRS_TRICORNE_P1,        1855, 1900,  137,   29,  0, 3 }, -- COR
    [ 82] = { xi.items.CORSAIRS_FRAC_P1,            1852, 1871,  515,  282,  8, 0 },
    [ 83] = { xi.items.CORSAIRS_GANTS_P1,           1855, 1871,  143,   49,  0, 0 },
    [ 84] = { xi.items.CORSAIRS_CULOTTES_P1,        1852, 1855,  146,   23,  0, 3 },
    [ 85] = { xi.items.CORSAIRS_BOTTES_P1,          1871, 1900,  211,  139,  0, 2 },

    [ 86] = { xi.items.PUPPETRY_TAJ_P1,             1855, 1900,  111,   49,  2, 2 }, -- PUP
    [ 87] = { xi.items.PUPPETRY_TOBE_P1,            1852, 1871,  151,  142,  0, 2 },
    [ 88] = { xi.items.PUPPETRY_DASTANAS_P1,        1855, 1871,  143,  112,  0, 2 },
    [ 89] = { xi.items.PUPPETRY_CHURIDARS_P1,       1852, 1855,  109,   49,  1, 0 },
    [ 90] = { xi.items.PUPPETRY_BABOUCHES_P1,       1871, 1900,  341,  139,  0, 0 },

    [ 91] = { xi.items.DANCERS_TIARA_M_P1,          1855, 1900,   49,   41,  2, 0 }, -- DNC M
    [ 92] = { xi.items.DANCERS_CASAQUE_M_P1,        1852, 1871,  331,  330,  2, 2 },
    [ 93] = { xi.items.DANCERS_BANGLES_M_P1,        1855, 1871,  146,   49,  0, 0 },
    [ 94] = { xi.items.DANCERS_TIGHTS_M_P1,         1852, 1855,  512,  513,  8, 8 },
    [ 95] = { xi.items.DANCERS_TOE_SHOES_M_P1,      1871, 1900,  143,   49,  0, 0 },

    [ 96] = { xi.items.DANCERS_TIARA_F_P1,          1855, 1900,   49,   41,  2, 0 }, -- DNC F
    [ 97] = { xi.items.DANCERS_CASAQUE_F_P1,        1852, 1871,  331,  330,  2, 2 },
    [ 98] = { xi.items.DANCERS_BANGLES_F_P1,        1855, 1871,  146,   49,  0, 0 },
    [ 99] = { xi.items.DANCERS_TIGHTS_F_P1,         1852, 1855,  512,  513,  8, 8 },
    [100] = { xi.items.DANCERS_TOE_SHOES_F_P1,      1871, 1900,  143,   49,  0, 0 },

    [101] = { xi.items.SCHOLARS_MORTARBOARD_P1,     1855, 1900,  334,  133,  0, 2 }, -- SCH
    [102] = { xi.items.SCHOLARS_GOWN_P1,            1852, 1871,  133,   35,  2, 2 },
    [103] = { xi.items.SCHOLARS_BRACERS_P1,         1855, 1871,  138,   52,  0, 0 },
    [104] = { xi.items.SCHOLARS_PANTS_P1,           1852, 1855,  329,  141,  3, 2 },
    [105] = { xi.items.SCHOLARS_LOAFERS_P1,         1871, 1900,  343,   35,  2, 2 },

    [106] = { xi.items.RUNEIST_BANDEAU,             1855, 1900,  137,   39,  0, 2 }, -- RUN
    [107] = { xi.items.RUNEIST_COAT,                1852, 1871, 1472,   55,  2, 0 },
    [108] = { xi.items.RUNEIST_MITONS,              1855, 1871,  260,   39,  2, 0 },
    [109] = { xi.items.RUNEIST_TROUSERS,            1852, 1855,  514,  517,  8, 8 },
    [110] = { xi.items.RUNEIST_BOTTES,              1871, 1900,   56,   39,  0, 0 },

    [111] = { xi.items.GEOMANCY_GALERO,             1855, 1900,  138,  141,  0, 2 }, -- GEO
    [112] = { xi.items.GEOMANCY_TUNIC,              1852, 1871,   71,   35,  2, 2 },
    [113] = { xi.items.GEOMANCY_MITAINES,           1855, 1871,  112,  141,  2, 0 },
    [114] = { xi.items.GEOMANCY_PANTS,              1852, 1855,  516,  517,  8, 8 },
    [115] = { xi.items.GEOMANCY_SANDALS,            1871, 1900,   83,   52, 10, 2 },
}

-- Augment function after items are traded
local function af1Augment(player, itemID, a1, a2, v1, v2)
    local ID = zones[player:getZoneID()]
    local augmentPower = math.random(0, 2)

    if a1 == 1264 or
       a1 == 939 or
       a1 == 339 or
       a1 == 147 or
       a1 == 138
    then
        v2 = v2 + augmentPower
    elseif
        a1 == 338 or
        a1 == 153 or
        a1 == 151 or
        a1 == 137 or
        a1 == 52
    then
        v1 = v1 + math.random(0, 1)
        v2 = v2 + augmentPower
    else
        v1 = v1 + augmentPower
        v2 = v2 + augmentPower
    end

    player:tradeComplete()
    player:addItem(itemID, 1, a1, v1, a2, v2)
    player:messageSpecial(ID.text.ITEM_OBTAINED, itemID)
    player:PrintToPlayer( "Your item has been Augmented!", 0xd)
end

m:addOverride("xi.zones.Port_Jeuno.Zone.onInitialize", function(zone)
-- Call the zone's original function for onInitialize
    super(zone)

    local visionAugment = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Vision",
        look     =       2833,
        x        =     -4.217,
        y        =      0.001,
        z        =    -10.612,
        rotation =          0,
        widescan =          1,

        onTrade = function(player, npc, trade)
            if player:getFreeSlotsCount() >= 1 then  -- Player inventory space check
                if
                    trade:getItemCount() == 9 and                                      -- Trade item count check.
                    npcUtil.tradeHas(trade, { {1783, 2}, 1784, 1785, 1786, 1787 }) and -- Mandatory item check.
                    (                                                                  -- Optional item pair combination checks.
                        npcUtil.tradeHas(trade, { 1855, 1900 }) or
                        npcUtil.tradeHas(trade, { 1852, 1871 }) or
                        npcUtil.tradeHas(trade, { 1855, 1871 }) or
                        npcUtil.tradeHas(trade, { 1852, 1855 }) or
                        npcUtil.tradeHas(trade, { 1871, 1900 })
                    )
                then
                    for i = 1, 115 do
                        if npcUtil.tradeHasExactly(trade, {augmentTable[i][1], {1783, 2}, 1784, 1785, 1786, 1787, augmentTable[i][2], augmentTable[i][3]}) then
                            player:confirmTrade()
                            af1Augment(player, augmentTable[i][1], augmentTable[i][4], augmentTable[i][5], augmentTable[i][6], augmentTable[i][7])
                            return
                        end
                    end
                    player:PrintToPlayer( "The Vision is unsure of your items. Trade the correct items.", 0xd)
                else
                    player:PrintToPlayer( "The Vision is unsure of your items. Trade the correct items.", 0xd)
                end
            else
                player:PrintToPlayer( "The Vision detects a full invintory. Make some space and try again.", 0xd)
            end
        end,

        onTrigger = function(player, npc)
            player:PrintToPlayer( "The Vision requires items from Sea to Augment your AF+1", 0xd)
            player:PrintToPlayer( "One Organ from each: Phuabo, Xzomit, Aern and Hpemde. Two of: Luminian tissue", 0xd)
            player:PrintToPlayer( "Each slot will require two specific H.Q Organs", 0xd)
            player:PrintToPlayer( "7 materials and the AF+1 item will be required to complete this trade. 9 items total", 0xd)

            local menu  = {}
            local page1 = {}
            local page2 = {}
            local page3 = {}
            local page4 = {}

            local delaySendMenu = function(player)
                player:timer(50, function(playerArg)
                    playerArg:customMenu(menu)
                end)
            end

            menu =
            {
                title   = "Augment Rewards",
                options = {},
            }

            page1 =
            {
                {
                    "Required HQ Organs",
                    function(playerArg)
                        playerArg:PrintToPlayer("You are requested to trade the following:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: H.Q. Xzomit Organ and H.Q. Aern Organ", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: H.Q. Phuabo Organ and H.Q. Hpemde Organ", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: H.Q. Xzomit Organ and H.Q. Hpemde Organ", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: H.Q. Phuabo Organ and H.Q. Xzomit Organ", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: H.Q. Hpemde Organ and H.Q. Aern Organ", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "WAR",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards WAR:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Haste(3-5), Crit Hit Rate(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Emnity(4-6), Phys Damage Taken(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Emnity(4-6), Phys Damage Taken(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Emnity(4-6), Phys Damage Taken(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Store TP(4-6)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "MNK",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards MNK:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Haste(3-5), Crit Hit Rate(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Martial Arts(1-2), Store TP(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: STR(9-11), VIT(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Kick Attack Rate(3-5), Haste(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "THF",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards THF:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Crit Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Regen(1-2), Dual Wield(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Treasure Hunter(1), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Ranged Accuracy(6-8), Ranged Attack(6-8)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "DRK",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards DRK:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Crit Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Refresh(1), Regen(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Store TP(3-5), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Drain and Aspir(3-5), INT(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "RNG",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards RNG:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Rapid Shot(1-3), Ranged Accuracy(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Accuracy(8-10), Store TP(6-8)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Ranged Accuracy(4-6), Barrage(1-2)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: DEX(9-11), AGI(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "DRG",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards DRG:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Crit Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Accuracy(8-10), Store TP(6-8)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Pet: ACC & R.ACC(13-15), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Pet: Regen(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
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
                    "SAM",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards SAM:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Crit Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Meditate Effect(1), Regen(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Zanshin(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Store TP(1-5), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "WHM",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards WHM:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Refresh(1), MP Recovered while Healing(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: MP(12-18), Damage Taken(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Conserve MP(3-5), Cure Potency(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Magic Accuracy(3-5), Cure casting time Down(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: MP(33-39), MP Recovered while Healing(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "BLM",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards BLM:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Refresh(1), MP Recovered while Healing(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: MP(12-18), Magic Accurazy(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Magic Attack Bonus(3-5), Conserve MP(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Magic Accuracy(3-5), Drain and Aspir(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: MP(33-39), MP while Healing(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "RDM",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards RDM:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Magic Attack Bonus(4-6), Conserve MP(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: MP(15-21), Magic Acc(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: MP(30-36), Cure Potency(4-6)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: MP(33-39), MP Recovered while Healing(3-5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "BRD",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards BRD:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Refresh(1), Regen(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Singing Skill(3-5), Wind Instrument Skill(4-6)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: CHR(1-3), Magic Accuracy(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Song Recast Delay(1-3), Earth Affinity(5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: HP Recovered while Healing(1-3), MP Recovered while Healing(3-5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "SMN",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards SMN:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Refresh(1), MP Recovered while Healing(2-4)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Pet: Acc and Ranged Acc(6-8), MP Recovered while Healing(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Pet: Damage Taken Down(3-5), Pet: Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Pet: Att and R.Att(1-3), Pet: Double Att(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Pet: Regen(1-3), Elemental Siphon(5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "BLU",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards BLU:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Critical Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Accuracy(8-10), Dual Wield(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Refresh(1), Regen(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Magic Attack Bonus(8-10), Blue Magic Skill(3-5)", xi.msg.channel.NS_SAY)
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
                    "SCH",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards SCH:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Magic Burst Damage(1-3), Magic Attack Bonus(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Magic Accuracy(3-5), Magic Attack Bonus(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Refresh(1), MP Recovered while Healing(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Conserve MP(3-5), Cure Potency(4-6)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Magic Accuracy(3-5), Drain and Aspir(3-5)", xi.msg.channel.NS_SAY)
          
                    end,
                },
                {
                    "BST",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards BST:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Pet: Haste(3-5), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Pet: Damage Taken(3-5), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Pet: Dbl Att. Crit Hit Rate(2-4), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Pet: Regen(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "PLD",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards PLD:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Damage Taken(1-3), Potency of Cure received(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Refresh(1), Chance of Block(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Magic Damage Taken(3-5), Enemy Crit Hit Rate(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Shield Mastery(1-2), Shield Skill(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Breath Damage Taken(3-5), Magic Defence Bonus(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "NIN",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards NIN:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Haste(3-5), Crit Hit Rate(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Dual Wield(1-3), Accuracy(6-8)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Evasion(3-5), Ninja Tool Expertise(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Magic Attack Bonus(8-10), Ninjutsu Skill(3-5)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "COR",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards COR:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: R.Att(4-6), Regen(1-2)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Marksmanchip(1-3), AGI(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Accuracy(4-6), Dual Wield(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Rapid Shot(3-5), Snapshot(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "PUP",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards PUP:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Pet: Haste(3-5), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Martial Arts(1-2), Store TP(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Double Attack(1-3), Pet: Damage Taken(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: Pet: Double Att Crit Hit Rate(2-4), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Pet: Regen(1-3), Repair Potency(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "DNC",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards DNC:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Crit Hit Rate(1-3), Haste(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Waltz Ability Delay(3-5), Waltz Potency(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Dual Wield(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: STR(9-11), DEX(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Double Attack(1-3), Haste(1-3)", xi.msg.channel.NS_SAY)
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
                    "RUN",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards RUN:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Emnity(3-5), Regen(1-2)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Magic Damage Taken(1-3), Parrying rate(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Great Sword skill(3-5), Emnity(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: VIT(9-11), MND(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: Breath Damage Taken(1-3), Emnity(1-3)", xi.msg.channel.NS_SAY)
                    end,
                },
                {
                    "GEO",
                    function(playerArg)
                        playerArg:PrintToPlayer("Augment rewards GEO:", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Head: Refresh(1), Conserve MP(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Body: Damage Taken(3-5), Magic Acc(3-5)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Hands: Pet: Damage Taken(3-5), Conserve MP(1-3)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Legs: INT(9-11), MND(9-11)", xi.msg.channel.NS_SAY)
                        playerArg:PrintToPlayer("Feet: MP(33-39), MP Recovered while Healing(3-5)", xi.msg.channel.NS_SAY)
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

    utils.unused(visionAugment)
end)

return m
