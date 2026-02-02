-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local axe = Module:new("axe_ws_mods")

-----------------------------------
-- Ruinator
-- Notes on this modification;
-- Raised FTP mod.
-- Raised STR mod.
-- Removed accuracy penalty. "Accuracy varies with TP"
-- A small boost to attack modifier.
-----------------------------------

axe:addOverride ("xi.globals.weaponskills.ruinator.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 4
    params.ftp100 = 1.25 params.ftp200 = 1.25 params.ftp300 = 1.25
    params.str_wsc = 0.85
    params.dex_wsc = 0.0 params.vit_wsc = 0.0
    params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 1.0 params.acc200 = 1.0 params.acc300 = 1.0
    params.atk100 = 1.2 params.atk200 = 1.2 params.atk300 = 1.2

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Onslaught
-- Notes on this modification;
-- Raised DEX mod.
-- Raised ATK mod.
-----------------------------------

axe:addOverride ("xi.globals.weaponskills.onslaught.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 2.75 params.ftp200 = 2.75 params.ftp300 = 2.75
    params.str_wsc = 0.0 params.dex_wsc = 1.2 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    if damage > 0 then
        if not target:hasStatusEffect(xi.effect.ACCURACY_DOWN) then
            local duration = tp / 1000 * 20 * applyResistanceAddEffect(player, target, xi.magic.ele.EARTH, 0)
            target:addStatusEffect(xi.effect.ACCURACY_DOWN, 20, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Decimation
-- Notes on this modification;
-- Raised FTP mod.
-- Raised STR mod.
-- Raised ATK mod.
-- Removed accuracy penalty. "Accuracy varies with TP"
-----------------------------------

axe:addOverride ("xi.globals.weaponskills.decimation.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 3
    params.ftp100 = 1.75 params.ftp200 = 1.75 params.ftp300 = 1.75
    params.str_wsc = 1.2 params.dex_wsc = 0.0 params.vit_wsc = 0.0
    params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 1.0 params.acc200 = 1.0 params.acc300 = 1.0
    params.atk100 = 1.1 params.atk200 = 1.1 params.atk300 = 1.1

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Primal Rend
-- Notes on this modification;
-- Raised CHR mod.
-- Raised DEX mod.
-----------------------------------

axe:addOverride ("xi.globals.weaponskills.primal_rend.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.ftp100 = 4 params.ftp200 = 4.25 params.ftp300 = 4.75
    params.str_wsc = 0.0 params.dex_wsc = 0.6 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 1.2
    params.ele = xi.magic.ele.LIGHT
    params.skill = xi.skill.AXE
    params.includemab = true


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    return tpHits, extraHits, criticalHit, damage
end)

return axe
