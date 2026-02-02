-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local staff = Module:new("staff_ws_mods")

-----------------------------------
-- Retribution
-- Notes on this modification;
-- Raised FTP mod.
-- Raised MND mod.
-- Raised STR mod.
-- Raised ATK mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.retribution.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.8 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 1 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Shattersoul
-- Notes on this modification;
-- Raised number of hits by one.
-- Raised FTP mod.
-- Raised INT mod.
-- Raised ATK mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.shattersoul.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 4
    params.ftp100 = 2 params.ftp200 = 2 params.ftp300 = 2
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 1.2
	params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if damage > 0 and not target:hasStatusEffect(xi.effect.MAGIC_DEF_DOWN) then
        target:addStatusEffect(xi.effect.MAGIC_DEF_DOWN, 10, 0, 120)
    end
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Gate of Tartarus
-- Notes on this modification;
-- Raised FTP mod.
-- Raised INT mod.
-- Raised ATK mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.gate_of_tartarus.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 3.2 params.ftp200 = 3.2 params.ftp300 = 3.2
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 1.3 params.mnd_wsc = 0.0 params.chr_wsc = 0.6
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if damage > 0 then
        if not target:hasStatusEffect(xi.effect.ATTACK_DOWN) then
            local duration = tp / 1000 * 3 * applyResistanceAddEffect(player, target, xi.magic.ele.WATER, 0)
            target:addStatusEffect(xi.effect.ATTACK_DOWN, 20, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Garland of Bliss
-- Notes on this modification;
-- Raised FTP mod.
-- Raised STR mod.
-- Raised MND mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.garland_of_bliss.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.ftp100 = 3.75 params.ftp200 = 3.75 params.ftp300 = 3.75
    params.str_wsc = 0.6 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 1.2 params.chr_wsc = 0.0
    params.ele = xi.magic.ele.LIGHT
    params.skill = xi.skill.STAFF
    params.includemab = true

    -- Apply Aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)
    if damage > 0 then
        if not target:hasStatusEffect(xi.effect.DEFENSE_DOWN) then
            local duration = (30 + tp / 1000 * 30) * applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0)
            target:addStatusEffect(xi.effect.DEFENSE_DOWN, 12.5, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Omniscience
-- Notes on this modification;
-- Raised FTP mod.
-- Raised MND mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.omniscience.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.ftp100 = 3.4 params.ftp200 = 3.4 params.ftp300 = 3.4
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 1.3 params.chr_wsc = 0.0
    params.ele = xi.magic.ele.DARK
    params.skill = xi.skill.STAFF
    params.includemab = true


    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    -- Apply Aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    if damage > 0 then
        if not target:hasStatusEffect(xi.effect.MAGIC_ATK_DOWN) then
            local duration = tp / 1000 * 60
            target:addStatusEffect(xi.effect.MAGIC_ATK_DOWN, 10, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Vidohunir
-- Notes on this modification;
-- Raised FTP mod.
-- Raised INT mod.
-----------------------------------

staff:addOverride ("xi.globals.weaponskills.vidohunir.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.ftp100 = 2.75 params.ftp200 = 2.75 params.ftp300 = 2.75
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 1
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.ele = xi.magic.ele.DARK
    params.skill = xi.skill.STAFF
    params.includemab = true


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    if damage > 0 then
        local duration = tp / 1000 * 60
        if not target:hasStatusEffect(xi.effect.MAGIC_DEF_DOWN) then
            target:addStatusEffect(xi.effect.MAGIC_DEF_DOWN, 10, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

return staff
