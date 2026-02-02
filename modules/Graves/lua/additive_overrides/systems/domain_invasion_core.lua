-----------------------------------
-- Domain Invasion (custom module)
-- Coded with love by Carver, Xaver, Graves, Demetrie
-- 2022, CatsEyeXI (http://catseyexi.com) / --server server.catseyexi.com
-----------------------------------
require("modules/module_utils")
require("scripts/globals/teleports")
require("scripts/zones/Kamihr_Drifts/Zone")
-----------------------------------

local m = Module:new("domain_invasion_core")

-- Function for rewards.
local function eschaRewards(mob)
    local beadsRewarded = 850
    local players       = mob:getZone():getPlayers()
    
    for i, participant in pairs(players) do
        if participant:hasStatusEffect(xi.effect.ELVORSEAL) then
            participant:delStatusEffect(xi.effect.ELVORSEAL)
            participant:addCurrency("escha_beads", beadsRewarded)
            participant:PrintToPlayer(string.format("You've earned %s escha beads for your efforts in battle.", beadsRewarded), xi.msg.channel.SYSTEM_3)
        else
            participant:PrintToPlayer("You have not contributed enough to claim a reward.", xi.msg.channel.SYSTEM_3)
        end
    end
end

-- Function for variable work when mob spawns.
local function onMobSpawnVariableControl()
    SetServerVariable("[Domain]NMSpawned", 1)
    SetServerVariable("[Domain]Notification", 0)
end

-- Function for variable work when mob dies.
local function onMobDeathVariableControl(nextNM)
    SetServerVariable("[Domain]NMToD", os.time() + 300)
    SetServerVariable("[Domain]NM", nextNM)
    SetServerVariable("[Domain]NMSpawned", 0)
    SetServerVariable("[Domain]Notification", 1)
end

local function setupMob(mob, ID)
    local pTable =
    {
    -- [ID] = {      x,     y,      z, rot, drop, level, skill, spell, str, vit, int, mnd, agi, dex, chr, ACC, DEFP, RATTP },
        [1] = { 372.03, 20.92, 258.70, 190, 3900,    80,   817,     0,  20,  10,  30,  10,  10,  20,  10, 100,   15,    75 },
        [2] = {  0.195, 5.500, -1.378,  65, 3900,    78,   277,    24,  20,  10,  25,  10,  10,  20,  10, 100,   25,    75 },
        [3] = {   -580,  -228,    540,  65, 3900,    76,   164,     0,   0,   0,   0,   0,   0,   0,   0,   0,    0,     0 },
        [4] = {   -580,  -228,    540,  65, 3901,    76,   726,   144,  20,  10,  25,  10,  10,  20,  10, 100,   50,    35 },
    }

    mob:setSpawn(pTable[ID][1], pTable[ID][2], pTable[ID][3], pTable[ID][4])
    mob:setDropID(pTable[ID][5])
    mob:spawn()

    mob:setMobLevel(pTable[ID][6])

    mob:setMobMod(xi.mobMod.SKILL_LIST, pTable[ID][7])
    mob:setMobMod(xi.mobMod.SPELL_LIST, pTable[ID][8])

    mob:addMod(xi.mod.STR,   pTable[ID][ 9])
    mob:addMod(xi.mod.VIT,   pTable[ID][10])
    mob:addMod(xi.mod.INT,   pTable[ID][11])
    mob:addMod(xi.mod.MND,   pTable[ID][12])
    mob:addMod(xi.mod.AGI,   pTable[ID][13])
    mob:addMod(xi.mod.DEX,   pTable[ID][14])
    mob:addMod(xi.mod.CHR,   pTable[ID][15])
    mob:addMod(xi.mod.ACC,   pTable[ID][16])
    mob:addMod(xi.mod.DEFP,  pTable[ID][17])
    mob:addMod(xi.mod.RATTP, pTable[ID][18])

    mob:setMod(xi.mod.SILENCERES,   100)
    mob:setMod(xi.mod.STUNRES,       50)
    mob:setMod(xi.mod.BINDRES,      100)
    mob:setMod(xi.mod.GRAVITYRES,   100)
    mob:setMod(xi.mod.SLEEPRES,   10000)
    mob:setMod(xi.mod.POISONRES,    100)
    mob:setMod(xi.mod.PARALYZERES,  100)
    mob:setMod(xi.mod.LULLABYRES, 10000)
    mob:setMod(xi.mod.FASTCAST,      10)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 20)
end

-- Server Crash Failsafe, could hook on any zone, really.
m:addOverride("xi.zones.GM_Home.Zone.onInitialize", function(zone)
    super(zone)

    -- cleanup variables
    if GetServerVariable("[Domain]NMToD") < 1 then
        SetServerVariable("[Domain]NMToD", 1)
    end

    if GetServerVariable("[Domain]NMSpawned") == 1 then
        SetServerVariable("[Domain]NMSpawned", 0)
    end

    if GetServerVariable("[Domain]Notification") == 1 then
        SetServerVariable("[Domain]Notification", 0)
    end
end)

-- NM 1
m:addOverride("xi.zones.Kamihr_Drifts.Zone.onZoneTick", function(zone)
    super(zone)

    -- Spawn mob if its the correct mob and if it isnt spawned already
    if
        GetServerVariable("[Domain]NM") == 0 and        -- Correct NM
        GetServerVariable("[Domain]NMSpawned") == 0 and -- NM isn't spawned
        os.time() > GetServerVariable("[Domain]NMToD")  -- NM Cooldown
    then
        local mob = zone:insertDynamicEntity({
            objtype     = xi.objType.MOB,
            name        = "Amphisbaena",
            look        = "0x0000950100000000000000000000000000000000",
            x           = 372.03,
            y           = 20.92,
            z           = 258.70,
            rotation    = 190,
            widescan    = 1,
            groupId     = 1,
            groupZoneId = 222,

            onMobSpawn = function(mob)
                onMobSpawnVariableControl()
            end,

            onMobDeath = function(mob, player, optParams)
                -- Only do messages once.
                if GetServerVariable("[Domain]Notification") == 0 then
                    -- Server-wide message
                    player:PrintToArea("{Apururu} Oh dear, one of our members-wembers in Reisenjima Henge says that Tortuga could appear anytime in the next 5 minutes.", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                    player:PrintToArea("{Apururu} Would you please go and see if she's alrightaru?", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                
                    SetServerVariable("[Domain]Notification", 1)
                end

                -- Variable control
                onMobDeathVariableControl(1) -- Doing this repeatedly seemingly ensures this gets done always.
                
                -- Reward escha beads
                eschaRewards(mob)
            end,
        })

        setupMob(mob, 1)
    end
end)

-- NM 2
m:addOverride("xi.zones.Reisenjima_Henge.Zone.onZoneTick", function(zone)
    super(zone)

    -- Spawn mob if its the correct mob and if it isnt spawned already.
    if
        GetServerVariable("[Domain]NM") == 1 and        -- Correct NM
        GetServerVariable("[Domain]NMSpawned") == 0 and -- NM isn't spawned
        os.time() > GetServerVariable("[Domain]NMToD")  -- NM Cooldown
    then
        local mob = zone:insertDynamicEntity({
            objtype     = xi.objType.MOB,
            name        = "Tortuga",
            look        = "0x0000480900000000000000000000000000000000",
            x           = 0.195,
            y           = 5.50,
            z           = -1.378,
            rotation    = 65,
            groupId     = 1,
            groupZoneId = 222,

            onMobSpawn = function(mob)
                onMobSpawnVariableControl()
            end,

            onMobDeath = function(mob, player, optParams)
                -- Only do messages once.
                if GetServerVariable("[Domain]Notification") == 0 then                    
                    -- Server-wide message
                    player:PrintToArea("{Apururu} Oh dear, one of our members-wembers in Provenance says that something could appear anytime in the next 5 minutes.", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                    player:PrintToArea("{Apururu} Would you please go and see if she's alrightaru?", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                
                    SetServerVariable("[Domain]Notification", 1)
                end

                -- Variable control 
                onMobDeathVariableControl(2) -- Doing this repeatedly seemingly ensures this gets done always.

                -- Reward escha beads
                eschaRewards(mob)
            end,
        })

        setupMob(mob, 2)

        -- Set additional modifiers and effects
        mob:addMod(xi.mod.MAIN_DMG_RATING, 50)
        mob:setMod(xi.mod.MATT, 150)
        mob:setMod(xi.mod.MACC, 450)
        mob:addStatusEffect(xi.effect.SHOCK_SPIKES, 50, 0, 0)
        mob:addStatusEffect(xi.effect.ENTHUNDER_II, 100, 0, 0)
        mob:addStatusEffect(xi.effect.REFRESH, 50, 3, 0)
    end
end)

-- NM 3 and 4
m:addOverride("xi.zones.Provenance.Zone.onZoneTick", function(zone)
    super(zone)

    -- Global check
    if
        GetServerVariable("[Domain]NMSpawned") == 0 and -- NM isn't spawned
        os.time() > GetServerVariable("[Domain]NMToD")  -- NM Cooldown
    then
        -- Time to pop a NM. Calculate which one if aplicable.
        local NMToPop  = GetServerVariable("[Domain]NM")

        if NMToPop == 2 then
            local hqChance = math.random(1, 100)
            local hqRate   = 15 + GetServerVariable("[Domain]hqChanceBonus")

            if hqChance <= hqRate then
                NMToPop = 3
            end
        end
                    
        --------------------
        -- NM 3 (Battosai)
        --------------------
        if NMToPop == 2 then
            local battosai = zone:insertDynamicEntity({
                objtype     = xi.objType.MOB,
                name        = "Battosai",
                look        = 3601,
                x           = -580,
                y           = -228,
                z           = 540,
                rotation    = 65,
                widescan    = 1,
                groupId     = 1,
                groupZoneId = 222,
            
                onMobSpawn = function(battosai)
                    onMobSpawnVariableControl()
                end,
                        
                onMobDeath = function(battosai, player, optParams)
                    -- Only do messages once.
                    if GetServerVariable("[Domain]Notification") == 0 then
                        -- Server-wide message
                        player:PrintToArea("{Apururu} Oh dear, one of our members-wembers in Kamihr Drifts says that Amphisbaena could appear anytime in the next 5 minutes.", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                        player:PrintToArea("{Apururu} Would you please go and see if she's alrightaru?", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
 
                        SetServerVariable("[Domain]Notification", 1)
                        SetServerVariable("[Domain]hqChanceBonus", GetServerVariable("[Domain]hqChanceBonus") + 2) -- Boost HQ chance.
                    end

                    -- Variable control
                    onMobDeathVariableControl(0) -- Doing this repeatedly seemingly ensures this gets done always.
                    
                    -- Reward escha beads
                    eschaRewards(battosai)
                end,
            })

            setupMob(battosai, 3)

            -- Set additional modifiers and effects
            battosai:addStatusEffect(xi.effect.SHOCK_SPIKES, 50, 0, 0)
            battosai:addStatusEffect(xi.effect.REGEN, 30, 3, 0)
            battosai:addStatusEffect(xi.effect.ENTHUNDER_II, 10, 0, 0)
            battosai:addStatusEffect(xi.effect.REFRESH, 1, 3, 0)

        --------------------
        -- NM 4 (Bahamut)
        --------------------
        elseif NMToPop == 3 then
            local bahamut = zone:insertDynamicEntity({
                objtype     = xi.objType.MOB,
                name        = "Bahamut",
                x           = -580,
                y           = -228,
                z           = 540,
                rotation    = 65,
                widescan    = 1,
                groupId     = 17,
                groupZoneId = 29,
        
                onMobSpawn = function(bahamut)
                    onMobSpawnVariableControl()
                end,
        
                onMobFight = function(bahamut, target)
                    local lifePercent = bahamut:getHPP()
        
                    if lifePercent < 70 and bahamut:getLocalVar("MegaFlareUsed") == 0 then
                        bahamut:useMobAbility(1551)
                        bahamut:setLocalVar("MegaFlareUsed", 1)
                    end
        
                    if lifePercent < 45 and bahamut:getLocalVar("MegaFlareUsed") == 1 then
                        bahamut:useMobAbility(1551)
                        bahamut:setLocalVar("MegaFlareUsed", 2)
                    end
        
                    if lifePercent < 25 and bahamut:getLocalVar("GigaFlareUsed") == 0 then
                        bahamut:useMobAbility(1552)
                        bahamut:setLocalVar("GigaFlareUsed", 1)
                    end
        
                    if lifePercent < 5 and bahamut:getLocalVar("GigaFlareUsed") == 1 then
                        bahamut:useMobAbility(1552)
                        bahamut:setMod(xi.mod.TRIPLE_ATTACK, 20)
                        bahamut:setLocalVar("GigaFlareUsed", 2)
                    end        
                end,
        
                onMobDeath = function(bahamut, player, optParams)
                    -- Only do messages once.
                    if GetServerVariable("[Domain]Notification") == 0 then
                        -- Server-wide message
                        player:PrintToArea("{Apururu} Oh dear, one of our members-wembers in Kamihr Drifts says that Amphisbaena could appear anytime in the next 5 minutes.", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                        player:PrintToArea("{Apururu} Would you please go and see if she's alrightaru?", xi.msg.channel.SYSTEM_3, xi.msg.area.SYSTEM)
                    
                        SetServerVariable("[Domain]Notification", 1)
                        SetServerVariable("[Domain]hqChanceBonus", 0)
                    end

                    -- Variable control
                    onMobDeathVariableControl(0) -- Doing this repeatedly seemingly ensures this gets done always.

                    -- Reward escha beads
                    eschaRewards(bahamut)
                end,
            })

            setupMob(bahamut, 4)
        
            -- Set additional modifiers and effects
            bahamut:addMod(xi.mod.MAIN_DMG_RATING, 50)
            bahamut:addMod(xi.mod.MDEF, 60)
            bahamut:setMod(xi.mod.MATT, 380)
            bahamut:setMod(xi.mod.MACC, 400)
            bahamut:addStatusEffect(xi.effect.SHOCK_SPIKES, 10, 0, 0)
            bahamut:addStatusEffect(xi.effect.REGEN, 10, 3, 0)
            bahamut:addStatusEffect(xi.effect.ENTHUNDER_II, 10, 0, 0)
        end
    end
end)

----------------------------------------------------------------------
-- Entrance: Xarcabard -> Kamihr Drifts
----------------------------------------------------------------------
m:addOverride("xi.zones.Xarcabard.Zone.onInitialize", function(zone)
    super(zone)

    local driftsPort = zone:insertDynamicEntity({

        objtype  = xi.objType.NPC,
        name     = "Black Cloud",
        look     = 2941,
        x        = 116.623,
        y        = -24.00,
        z        = -77.702,
        rotation = 28,

        onTrigger = function(player, npc)
            npcUtil.giveItem(player, xi.items.SCROLL_OF_INSTANT_WARP) -- scroll_of_instant_warp
            player:injectActionPacket(player:getID(), 6, 600, 0, 0, 0, 0, 0)

            player:timer(2000, function(playerArg)
                player:setPos(347.177, 20.616, 293.256, 36, 267)
            end)

            player:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 0)
        end,
    })

    utils.unused(driftsPort)
end)

----------------------------------------------------------------------
-- Exit Checks
-- Make sure we remove xi.effect.ELVORSEAL from players when they zone
-----------------------------------------------------------------------
m:addOverride("xi.zones.Kamihr_Drifts.Zone.onZoneOut", function(player)
    super(zone)

    player:delStatusEffect(xi.effect.ELVORSEAL)
end)

m:addOverride("xi.zones.Reisenjima_Henge.Zone.onZoneOut", function(player)
    super(zone)

    player:delStatusEffect(xi.effect.ELVORSEAL)
end)

m:addOverride("xi.zones.Provenance.Zone.onZoneOut", function(player)
    super(zone)

    player:delStatusEffect(xi.effect.ELVORSEAL)
end)

----------------------------------------------------------------------
-- Decorative Beams
----------------------------------------------------------------------
m:addOverride("xi.zones.Kamihr_Drifts.Zone.onInitialize", function(zone)
    super(zone)

    local beam1 = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        flag     = 2056,
        look     = 2472,
        x        = 329.847,
        y        = 20.00,
        z        = 298.611,
        rotation = 65,
    })

    local beam2 = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        flag     = 2056,
        look     = 2472,
        x        = 327.879,
        y        = 19.999,
        z        = 296.135,
        rotation = 65,
    })

    local beam3 = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = " ",
        flag     = 2056,
        look     = 2472,
        x        = 331.768,
        y        = 20,
        z        = 300.841,
        rotation = 65,
    })

    utils.unused(beam1)
    utils.unused(beam2)
    utils.unused(beam3)
end)

return m
