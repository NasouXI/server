-----------------------------------
-- Area: Grand Palace of HuXzoi
--  Mob: Ix'aern MNK
-----------------------------------
local ID = require("scripts/zones/Grand_Palace_of_HuXzoi/IDs")
mixins = { require("scripts/mixins/job_special") }
require("scripts/globals/settings")
require("scripts/globals/status")
require("modules/module_utils")
-----------------------------------
local m = Module:new("ixaern_monk")

m:addOverride("xi.zones.Grand_Palace_of_HuXzoi.mobs.Ixaern_MNK.onMobSpawn", function(mob)
-- adjust drops based on number of HQ Aern Organs traded to QM
    local qm     = GetNPCByID(ID.npc.QM_IXAERN_MNK)
    local chance = qm:getLocalVar("[SEA]IxAern_DropRate")

    if math.random(1, 2) > 1 then
        SetDropRate(2845, 1851, chance * 10) -- Deed Of Placidity
        SetDropRate(2845, 1901, 0)
    else
        SetDropRate(2845, 1851, 0)
        SetDropRate(2845, 1901, chance * 10) -- Vice of Antipathy
    end

    qm:setLocalVar("[SEA]IxAern_DropRate", 0)
    mob:setAnimationSub(1)
end)

m:addOverride("xi.zones.Grand_Palace_of_HuXzoi.mobs.Ixaern_MNK.onMobFight", function(mob, target)
    if mob:getLocalVar("BracerMode") == 0 then
        if mob:getHPP() < math.random(50, 60) then
            -- Go into bracer mode
            mob:setLocalVar("BracerMode", 1)
            mob:setAnimationSub(2)
            mob:addMod(xi.mod.ATT, 200)
            mob:addMod(xi.mod.HASTE_ABILITY, 1500)
            mob:addStatusEffect(xi.effect.HUNDRED_FISTS, 1, 0, 60)

            local whiteMage = GetMobByID(16916816) -- NOTE: This being defined here WILL break whenever there is a ID shift
            local redMage   = GetMobByID(16916817)

            if
                redMage:getCurrentAction() ~= xi.act.NONE and
                whiteMage:getCurrentAction() ~= xi.act.NONE
            then
                redMage:useMobAbility(692) --Chainspell
                whiteMage:useMobAbility(689) --Benediction
            end
        end
    end
end)

m:addOverride("xi.zones.Grand_Palace_of_HuXzoi.mobs.Ixaern_MNK.onMobDeath", function(mob, player, isKiller)
    mob:resetLocalVars()
    DespawnMob(mob:getID() + 1)
    DespawnMob(mob:getID() + 2)
end)

return m
