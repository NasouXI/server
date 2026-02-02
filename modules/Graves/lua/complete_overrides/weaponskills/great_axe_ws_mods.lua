-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local greatAxe = Module:new("great_axe_ws_mods")

-----------------------------------
-- Raging Rush
-- Great Axe weapon skill
-- Skill level: 200 (Warriors only.)
-- Delivers a three-hit attack. Chance of params.critical hit varies with TP.
-- Will stack with Sneak Attack.
-- Aligned with the Snow Gorget & Aqua Gorget.
-- Aligned with the Snow Belt & Aqua Belt.
-- Element: None
-- Modifiers: STR:50%
-- 100%TP    200%TP    300%TP
-- 1.00      1.00      1.00
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.raging_rush.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 3
    params.ftp100 = 1 params.ftp200 = 1 params.ftp300 = 1
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.1 params.crit200 = 0.3 params.crit300 = 0.5
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Steel Cyclone
-- Great Axe weapon skill
-- Skill level: 240
-- Delivers a single-hit attack. Damage varies with TP.
-- In order to obtain Steel Cyclone, the quest The Weight of Your Limits must be completed.
-- Will stack with Sneak Attack.
-- Aligned with the Breeze Gorget, Aqua Gorget & Snow Gorget.
-- Aligned with the Breeze Belt, Aqua Belt & Snow Belt.
-- Element: None
-- Modifiers: STR:60%  VIT:60%
-- 100%TP    200%TP    300%TP
-- 1.8        1.9       2.0
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.steel_cyclone.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 1.8 params.ftp200 = 1.9 params.ftp300 = 2
    params.str_wsc = 0.6 params.dex_wsc = 0.0 params.vit_wsc = 0.6 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.66; params.atk200 = 1.66; params.atk300 = 1.66

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Full Break
-- Great Axe weapon skill
-- Skill level: 225 (Warriors only.)
-- Lowers enemy's attack, defense, params.accuracy, and evasion. Duration of effect varies with TP.
-- Lowers attack and defense by 12.5%, evasion by 20 points, and estimated to also lower params.accuracy by 20 points.
-- These enfeebles are given as four seperate status effects, resists calculated seperately for each. They almost always wear off simultaneously, but have been observed to wear off at different times.
-- Strong against: Coeurls.
-- Immune: Antica, Cockatrice, Crawlers, Worms.
-- Will stack with Sneak Attack.
-- Aligned with the Aqua Gorget & Snow Gorget.
-- Aligned with the Aqua Belt & Snow Belt.
-- Element: Earth
-- Modifiers: STR:50%  VIT:50%
-- 100%TP    200%TP    300%TP
-- 1.5        1.5       1.5
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.full_break.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 1.5 params.ftp200 = 1.5 params.ftp300 = 1.5
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.5 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1
    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if (damage > 0) then
        local duration = (tp / 1000 * 30) + 60
        if (target:hasStatusEffect(xi.effect.DEFENSE_DOWN) == false) then
            target:addStatusEffect(xi.effect.DEFENSE_DOWN, 12.5, 0, duration * applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0))
        end
        if (target:hasStatusEffect(xi.effect.ATTACK_DOWN) == false) then
            target:addStatusEffect(xi.effect.ATTACK_DOWN, 12.5, 0, duration * applyResistanceAddEffect(player, target, xi.magic.ele.WATER, 0))
        end
        if (target:hasStatusEffect(xi.effect.EVASION_DOWN) == false) then
            target:addStatusEffect(xi.effect.EVASION_DOWN, 20, 0, duration * applyResistanceAddEffect(player, target, xi.magic.ele.ICE, 0))
        end
        if (target:hasStatusEffect(xi.effect.ACCURACY_DOWN) == false) then
            target:addStatusEffect(xi.effect.ACCURACY_DOWN, 20, 0, duration * applyResistanceAddEffect(player, target, xi.magic.ele.EARTH, 0))
        end
    end
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Metatron Torment
-- Hand-to-Hand Skill level: 5 Description: Delivers a threefold attack. Damage varies wit weapon skill
-- Great Axe Weapon Skill
-- Skill Level: N/A
-- Lowers target's defense. Additional effect: temporarily lowers damage taken from enemies.
-- Defense Down effect is 18.5%, 1 minute duration.
-- Damage reduced is 20.4% or 52/256.
-- Lasts 20 seconds at 100TP, 40 seconds at 200TP and 60 seconds at 300TP.
-- Available only when equipped with the Relic Weapons Abaddon Killer (Dynamis use only) or Bravura.
-- Also available as a Latent effect on Barbarus Bhuj
-- Since these Relic Weapons are only available to Warriors, only Warriors may use this Weapon Skill.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: STR:80%
-- 100%TP    200%TP    300%TP
-- 2.75      2.75      2.75
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.metatron_torment.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 2.75 params.ftp200 = 2.75 params.ftp300 = 2.75
    params.str_wsc = 0.8 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    if damage > 0 then
        local duration = tp / 1000 * 20 * applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0)
        target:addStatusEffect(xi.effect.DEFENSE_DOWN, 19, 0, duration)
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Ukko's Fury
-- Great Axe Weapon Skill
-- Skill Level: N/A
-- Description: Delivers a twofold attack that slows target. Chance of params.critical hit varies with TP. Ukonvasara: Aftermath.
-- Available only when equipped with Ukonvasara (85), Ukonvasara (90), Ukonvasara (95), Maschu +1, Maschu +2.
-- Aligned with the Light Gorget, Breeze Gorget & Thunder Gorget.
-- Aligned with the Light Belt, Breeze Belt & Thunder Belt.
-- Element: None
-- Skillchain Properties: Light/Fragmentation
-- Modifiers: STR:80%
-- Damage Multipliers by TP:
-- 100%TP    200%TP    300%TP
-- 2.5        2.5        2.5
-- params.critical Chance added with TP:
-- 100%TP    200%TP    300%TP
-- 10%        20%        40%
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.ukkos_fury.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 2
    params.ftp100 = 2.5 params.ftp200 = 2.5 params.ftp300 = 2.5
    params.str_wsc = 0.8 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.10 params.crit200 = 0.20 params.crit300 = 0.40
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.EMPYREAN)

    if damage > 0 then
        if not target:hasStatusEffect(xi.effect.SLOW) then
            local duration = 60 * applyResistanceAddEffect(player, target, xi.magic.ele.EARTH, 0)
            target:addStatusEffect(xi.effect.SLOW, 1500, 0, duration)
        end
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Kings Justice
-- Great Axe weapon skill
-- Skill Level: N/A
-- Delivers a threefold attack. Damage varies with TP. Conqueror: Aftermath effect varies with TP.
-- Available only after completing the Unlocking a Myth (Warrior) quest.
-- Aligned with the Breeze Gorget, Thunder Gorget & Soil Gorget.
-- Aligned with the Breeze Belt, Thunder Belt & Soil Belt.
-- Element: None
-- Staff weapon skill Skill level: 10 Delivers a single-hit attack. Damage varies with TP. Element: Non
-- Modifiers: STR:50%
-- 100%TP    200%TP    300%TP
-- 1.00      1.25      1.50
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.kings_justice.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 3
    params.ftp100 = 1.25 params.ftp200 = 1.4 params.ftp300 = 1.65
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Upheaval
-- Great Axe weapon skill
-- Skill Level: 357
-- Delivers a four-hit attack. Damage varies with TP.
-- In order to obtain Upheaval, the quest Martial Mastery must be completed.
-- Aligned with Flame Gorget, Light Gorget & Shadow Gorget.
-- Aligned with Flame Belt, Light Belt & Shadow Belt.
-- Element: None
-- Modifiers: VIT: 70%, depending on merit points upgrades.
-- 100%TP    200%TP    300%TP
-- 0.8        1.0       1.2
-----------------------------------

greatAxe:addOverride ("xi.globals.weaponskills.upheaval.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end
	
    local params = {}
    params.numHits = 4
    params.ftp100 = 0.8 params.ftp200 = 1.0 params.ftp300 = 1.2
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.7 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage

end)

return greatAxe