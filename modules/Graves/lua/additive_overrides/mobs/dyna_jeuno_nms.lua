require("modules/module_utils")
require("scripts/globals/mobs")
-------------------------------------

local m = Module:new("dyna_jeuno_nms")

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Anvilix_Sootwrists.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Blazox_Boneybod.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Bootrix_Jaggedelbow.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Buffrix_Eargone.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Cloktix_Longnail.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Distilix_Stickytoes.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Elixmix_Hooknose.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Eremix_Snottynostril.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Hermitrix_Toothrot.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Humnox_Drumbelly.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Jabbrox_Grannyguise.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Jabkix_Pigeonpecs.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Karashix_Swollenskull.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Kikklix_Longlegs.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Lurklox_Dhalmelneck.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Mobpix_Mucousmouth.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Morgmox_Moldnoggin.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Mortilox_Wartpaws.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Prowlox_Barrelbelly.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Scruffix_Shaggychest.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Slystix_Megapeepers.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Smeltix_Thickhide.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Snypestix_Eaglebeak.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Sparkspox_Sweatbrow.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Ticktox_Beadyeyes.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Trailblix_Goatmug.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Tufflix_Loglimbs.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Wasabix_Callusdigit.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

m:addOverride("xi.zones.Dynamis-Jeuno.mobs.Wyrmwix_Snakespecs.onMobDespawn", function(mob)
    super(mob)

    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(7200, 14400)) -- 2 to 4 hours
end)

return m
