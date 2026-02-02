-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local archery = Module:new("archery_ws_mods")

-----------------------------------
-- Apex Arrow
-- Notes on this modification;
-- Raised AGI mod.
-----------------------------------

archery:addOverride ("xi.globals.weaponskills.apex_arrow.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
     local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 1
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0
    params.agi_wsc = .98
    params.int_wsc = 0.0 params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1
    params.ignoresDef = true
    params.ignored100 = 0.15
    params.ignored200 = 0.35
    params.ignored300 = 0.5


    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Empyreal Arrow
-- Notes on this modification;
-- Raised STR mod.
-- Raised AGI mod.
-- Raised ATK mod.
-----------------------------------

archery:addOverride ("xi.globals.weaponskills.empyreal_arrow.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 2 params.ftp200 = 2.75 params.ftp300 = 3
    params.str_wsc = 0.20 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.50 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2; params.atk200 = 2; params.atk300 = 2

    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Namas Arrow
-- Notes on this modification;
-- Raised FTP mod.
-- Raised STR mod.
-- Raised AGI mod.
-----------------------------------

archery:addOverride ("xi.globals.weaponskills.namas_arrow.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.6 params.dex_wsc = 0.0 params.vit_wsc = 0.0
    params.agi_wsc = 0.6 params.int_wsc = 0.0 params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1
    params.overrideCE = 160
    params.overrideVE = 480

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.RANGED, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)

    return tpHits, extraHits, criticalHit, damage

end)

return archery
