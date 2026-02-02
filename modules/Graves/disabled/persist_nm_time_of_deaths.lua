-----------------------------------
-- Persists NM time of deaths to the database. They must be added to the list here
-- to get this extra behaviour.
-- This is useful if you don't want players rushing to NM spawns after a server
-- restart or a crash (or trying to force crashes/restarts to get NM pops)
-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("persist_nm_time_of_deaths")

-- In order for this to work, the values in the mob_groups table for the spawntype needs to be 128 FOR THE GROUP ID that belongs to the spawned mobid
-- for example The ID for cerberus that spawns is 17027458.  The groupid value for this entry in mob_spawn_points is 37.  So for this mob, the Cerberus with groupid 37 needs spawntype to be 128 (it defaults to 0 from LSB)

-- NOTE: These names are as they are as filenames.
-- Example: Behemoth's Dominion => Behemoths_Dominion
-- Example: King Behemoth       => King_Behemoth
-- { zone name, mob name, function to generate respawn time}
-- Format:
local nms_to_persist =
{
    -- { "Behemoths_Dominion", "Behemoth", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Caedarva_Mire", "Khimaira", function() return 172800 + math.random(0, 48) * 1800 end }, -- 2 - 3 days with half hour windows
    { "Mount_Zhayolm", "Cerberus", function() return 172800 + math.random(0, 48) * 1800 end }, -- 2 - 3 days with half hour windows
    { "Wajaom_Woodlands", "Hydra", function() return 172800 + math.random(0, 48) * 1800 end }, -- 2 - 3 days with half hour windows
    { "Rolanberry_Fields", "Simurgh", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Labyrinth_of_Onzozo", "Lord_of_Onzozo", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "RoMaeve", "Shikigami_Weapon", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Attohwa_Chasm", "Tiamat", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "Uleguerand_Range", "Jormungand", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "King_Ranperres_Tomb", "Vrtra", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "Garlaige_Citadel", "Serket", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Maze_of_Shakhrami", "Argus", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Maze_of_Shakhrami", "Leech_King", function() return 75600 + math.random(0, 6) * 1800 end }, -- 21 - 24 hours with half hour windows
    { "Halvung", "Gurfurlur_the_Menacing", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "Arrapago_Reef", "Medusa", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "Mamook", "Gulool_Ja_Ja", function() return 259200 + math.random(0, 96) * 1800 end }, -- 3 - 5 days with half hour windows
    { "Mamook", "Hundredfaced_Hapool_Ja", function() return 259200 end }, -- 3 days
    { "Gustav_Tunnel", "Bune", function() return 172800 + math.random(0, 48) * 1800 end }, -- 21-24 hours with half hour windows
    { "Kuftal_Tunnel", "Guivre", function() return 172800 + math.random(0, 48) * 1800 end }, -- 21-24 hours with half hour windows
    { "Sauromugue_Champaign", "Roc", function() return 172800 + math.random(0, 48) * 1800 end }, -- 21-24 hours with half hour windows
}

-- NOTE: At the time we iterate over these entries, the Lua zone and mob objects won't be ready,
--     : so we deal with everything as strings for now.
for _, entry in pairs(nms_to_persist) do
    local zone_name = entry[1]
    local mob_name = entry[2]
    local var_name = "[Respawn]" .. mob_name
    local respawn_func = entry[3]
    
    m:addOverride(string.format("xi.zones.%s.mobs.%s.onMobDespawn", zone_name, mob_name),
    function(mob)
        super(mob)

        local respawn = respawn_func()
                
        mob:setRespawnTime(respawn)
        SetServerVariable(var_name, (os.time() + respawn))
        print(string.format("Writing respawn time to server vars: %s %i", mob:getName(), respawn))
    end)

    m:addOverride(string.format("xi.zones.%s.Zone.onInitialize", zone_name),
    function(zone)
        super(zone)
        local mob = zone:queryEntitiesByName(mob_name)[1]
        local respawn = GetServerVariable(var_name)
        print(string.format("Getting respawn time from server vars: %s %i", mob:getName(), respawn))
        local time = os.time() --this is so all effects that need current time are using the same value
        
        if respawn == 0 then
            SetServerVariable(var_name, respawn_func() + time)
            respawn = GetServerVariable(var_name)
        end

        UpdateNMSpawnPoint(mob:getID())
        
        if time > respawn then
            SpawnMob(mob:getID())
        else
            GetMobByID(mob:getID()):setRespawnTime(respawn - time)
        end
    end)
end

return m