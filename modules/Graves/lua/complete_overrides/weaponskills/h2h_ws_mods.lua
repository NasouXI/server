-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local h2h = Module:new("h2h_ws_mods")

-----------------------------------
-- Shijin Spiral
-- Notes on this modification;
-- Raised FTP mod.
-- Raised DEX mod.
-- Raised ATK mod.
-----------------------------------

h2h:addOverride ("xi.globals.weaponskills.shijin_spiral.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 4
    params.ftp100 = 1.5 params.ftp200 = 1.5 params.ftp300 = 1.5
    params.str_wsc = 0.0 params.dex_wsc = 0.85
    params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.2; params.atk200 = 1.2; params.atk300 = 1.2
    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)


    if damage > 0 then
        local duration = (tp / 1000) + 4
        if not target:hasStatusEffect(xi.effect.PLAGUE) then
            target:addStatusEffect(xi.effect.PLAGUE, 5, 0, duration)
        end
    end
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Final Heaven
-- Notes on this modification;
-- Raised VIT mod.
-- Raised ATK mod.
-----------------------------------

h2h:addOverride ("xi.globals.weaponskills.final_heaven.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.str_wsc = 0.0        params.dex_wsc = 0.0
    params.vit_wsc = 1.2        params.agi_wsc = 0.0
    params.int_wsc = 0.0        params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.ftp100 = 3.0 params.ftp200 = 3.0 params.ftp300 = 3.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2; params.atk200 = 2; params.atk300 = 2


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Ascetics Fury
-- Notes on this modification;
-- Raised FTP mod.
-- Raised STR mod.
-- Raised ATK mod.
-----------------------------------

h2h:addOverride ("xi.globals.weaponskills.ascetics_fury.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local params = {}
    params.numHits = 1
    params.ftp100 = 2 params.ftp200 = 2 params.ftp300 = 2
    params.str_wsc = 0.75 params.dex_wsc = 0.0 params.vit_wsc = 0.75 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.1 params.crit200 = 0.2 params.crit300 = 0.4
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2.5; params.atk200 = 2.5; params.atk300 = 2.5


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Stringing Pummel
-- Notes on this modification;
-- Raised FTP mod.
-- Raised CRIT mod.
-- Raised ATK mod.
-----------------------------------

h2h:addOverride ("xi.globals.weaponskills.stringing_pummel.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 5
    params.ftp100 = 1.5 params.ftp200 = 1.5 params.ftp300 = 1.5
    params.str_wsc = 0.32 params.dex_wsc = 0.0 params.vit_wsc = 0.32 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.35 params.crit200 = 0.35 params.crit300 = 0.35
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.1 params.atk200 = 1.1 params.atk300 = 1.1


    -- Apply Aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

return h2h
