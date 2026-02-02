require("modules/module_utils")
-----------------------------------

local m = Module:new("mob_ws_adjustments")

m:addOverride("xi.globals.mobskills.vorpal_blade.onMobWeaponSkill", function(target, mob, skill)
    if mob:getPool() == 4249 then -- Volker@Throne_Room only
        target:showText(mob, zones[xi.zone.THRONE_ROOM].text.BLADE_ANSWER)
    end

    local numhits = 4
    local accmod  = 1
    local dmgmod  = 1.25
    local info    = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.CRIT_VARIES, 1.1, 1.2, 1.3)
    local dmg     = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)

    -- AA EV: Approx 900 damage to 75 DRG/35 THF.  400 to a NIN/WAR in Arhat, but took shadows.
    if mob:getPool() == 1241 or mob:getPool() == 300 then -- Eo'ghrah and Aw'ghrah damage cap
        dmg = dmg / 2.5
    end

    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)

    return dmg
end)

return m
