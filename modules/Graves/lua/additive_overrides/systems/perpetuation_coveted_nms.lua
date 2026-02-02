-----------------------------------
-- Common Requires
-----------------------------------
require("modules/module_utils")
require("scripts/globals/status")
require("scripts/globals/zone")

-----------------------------------
-- ID Requires
-----------------------------------
local garlaigeCitadelID = require("scripts/zones/Garlaige_Citadel/IDs")
local gustavTunnelID    = require("scripts/zones/Gustav_Tunnel/IDs")
local jugnerForestID    = require("scripts/zones/Jugner_Forest/IDs")
local kuftalTunnelID    = require("scripts/zones/Kuftal_Tunnel/IDs")
local mazeOfShakhramiID = require("scripts/zones/Maze_of_Shakhrami/IDs")

-----------------------------------
-- Mobs with IDs not listed
-----------------------------------
local lordOfOnzozoID         = 17649731
local shikigamiWeaponID      = 17277127

-----------------------------------
-- Module definition
-----------------------------------
local m = Module:new("perpetuation_coveted_nms")

----------------------------------------------------------------------------------------------------
-- Jugner Forest: King Arthro
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Jugner_Forest.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]KA") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]KA", hnmPopTime) -- Set next pop time.
    end

    UpdateNMSpawnPoint(jugnerForestID.mob.KING_ARTHRO)

    -- Spawn mobs or set spawn time. This case is special. We don't pop the NM, we pop the PHs.
    if hnmPopTime <= os.time() then
        for offset = 1, 10 do
            SpawnMob(jugnerForestID.mob.KING_ARTHRO - offset)
        end
    else
        for offset = 1, 10 do
            GetMobByID(jugnerForestID.mob.KING_ARTHRO - offset):setRespawnTime(hnmPopTime - os.time())
        end
    end
end)

m:addOverride("xi.zones.Jugner_Forest.mobs.King_Arthro.onMobDespawn", function(mob)
    super(mob)

    -- Mob work.
    local kingArthroID = mob:getID()

    GetMobByID(kingArthroID):setLocalVar("[POP]King_Arthro", 0)

    -- Server Variable work.
    local random = 75900 + math.random(0, 6) * 1800

    SetServerVariable("[HNM]KA", os.time() + random) -- Save next pop time.

    -- Set respawn Time.
    for offset = 1, 10 do
        GetMobByID(kingArthroID - offset):setRespawnTime(random)
    end
end)

----------------------------------------------------------------------------------------------------
-- Ro'Maeve: Shikigami Weapon 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.RoMaeve.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Shikigami_Weapon") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Shikigami_Weapon", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(shikigamiWeaponID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(shikigamiWeaponID)
    else
        GetMobByID(shikigamiWeaponID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.RoMaeve.mobs.Shikigami_Weapon.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800
    SetServerVariable("[HNM]Shikigami_Weapon", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(shikigamiWeaponID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(shikigamiWeaponID)
end)

----------------------------------------------------------------------------------------------------
-- Garlaige Citadel: Serket 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Garlaige_Citadel.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Serket") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Serket", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(garlaigeCitadelID.mob.SERKET)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(garlaigeCitadelID.mob.SERKET)
    else
        GetMobByID(garlaigeCitadelID.mob.SERKET):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Garlaige_Citadel.mobs.Serket.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800

    SetServerVariable("[HNM]Serket", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(garlaigeCitadelID.mob.SERKET):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(garlaigeCitadelID.mob.SERKET)
end)

----------------------------------------------------------------------------------------------------
-- Maze of Shakhrami: Argus, Leech King
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Maze_of_Shakhrami.Zone.onInitialize", function(zone)
    super(zone)

    local argusPopTime     = GetServerVariable("[HNM]Argus")      -- Time the NM will spawn at.
    local leechKingPopTime = GetServerVariable("[HNM]Leech_King") -- Time the NM will spawn at.

    -- First-time setup.
    if argusPopTime == 0 then
        argusPopTime = os.time() + math.random(1, 48) * 1800
        SetServerVariable("[HNM]Argus", argusPopTime) -- Save pop time.
    end
    if leechKingPopTime == 0 then
        leechKingPopTime = os.time() + math.random(1, 48) * 1800
        SetServerVariable("[HNM]Leech_King", leechKingPopTime) -- Save pop time.
    end

    -- Update spawn points.
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.ARGUS)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.LEECH_KING)

    -- Spawn mob or set spawn time.
    if argusPopTime <= os.time() then
        SpawnMob(mazeOfShakhramiID.mob.ARGUS)
    else
        GetMobByID(mazeOfShakhramiID.mob.ARGUS):setRespawnTime(argusPopTime - os.time())
    end

    if leechKingPopTime <= os.time() then
        SpawnMob(mazeOfShakhramiID.mob.LEECH_KING)
    else
        GetMobByID(mazeOfShakhramiID.mob.LEECH_KING):setRespawnTime(leechKingPopTime - os.time())
    end

end)

m:addOverride("xi.zones.Maze_of_Shakhrami.mobs.Argus.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local argusPopTime = 75600 + math.random(0, 6) * 1800
    SetServerVariable("[HNM]Argus", os.time() + argusPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mazeOfShakhramiID.mob.ARGUS):setRespawnTime(argusPopTime)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.ARGUS)
end)

m:addOverride("xi.zones.Maze_of_Shakhrami.mobs.Leech_King.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local leechKingPopTime = 75600 + math.random(0, 6) * 1800
    SetServerVariable("[HNM]Leech_King", os.time() + leechKingPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(mazeOfShakhramiID.mob.LEECH_KING):setRespawnTime(leechKingPopTime)
    UpdateNMSpawnPoint(mazeOfShakhramiID.mob.LEECH_KING)
end)

----------------------------------------------------------------------------------------------------
-- Labyrinth of Onzozo: Lord of Onzozo 
----------------------------------------------------------------------------------------------------
m:addOverride("xi.zones.Labyrinth_of_Onzozo.Zone.onInitialize", function(zone)
    super(zone)

    local hnmPopTime = GetServerVariable("[HNM]Lord_of_Onzozo") -- Time the NM will spawn at.

    -- First-time setup.
    if hnmPopTime == 0 then
        hnmPopTime = os.time() + math.random(1, 48) * 1800

        SetServerVariable("[HNM]Lord_of_Onzozo", hnmPopTime) -- Save pop time.
    end

    UpdateNMSpawnPoint(lordOfOnzozoID)

    -- Spawn mob or set spawn time.
    if hnmPopTime <= os.time() then
        SpawnMob(lordOfOnzozoID)
    else
        GetMobByID(lordOfOnzozoID):setRespawnTime(hnmPopTime - os.time())
    end
end)

m:addOverride("xi.zones.Labyrinth_of_Onzozo.mobs.Lord_of_Onzozo.onMobDespawn", function(mob)
    super(mob)

    -- Server Variable work.
    local randomPopTime = 75600 + math.random(0, 6) * 1800

    SetServerVariable("[HNM]Lord_of_Onzozo", os.time() + randomPopTime) -- Save next pop time.

    -- Set spawn time and position.
    GetMobByID(lordOfOnzozoID):setRespawnTime(randomPopTime)
    UpdateNMSpawnPoint(lordOfOnzozoID)
end)

m:addOverride("xi.zones.Labyrinth_of_Onzozo.mobs.Flying_Manta.onMobDespawn", function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.PEG_POWLER_PH, 4, 7200)
end)

return m
