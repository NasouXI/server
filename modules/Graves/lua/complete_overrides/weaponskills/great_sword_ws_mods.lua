-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local greatsword = Module:new("greatsword_ws_mods")

-----------------------------------
-- Spinning Slash
-- Great Sword weapon skill
-- Skill level: 225
-- Delivers a single-hit attack. Damage varies with TP.
-- Modifiers: STR:30%  INT:30%
-- 100%TP     200%TP     300%TP
-- 2          2          2
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.spinning_slash.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 2 params.ftp200 = 2 params.ftp300 = 2
    params.str_wsc = 0.3 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.3 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200=0.0 params.crit300=0.0
    params.canCrit = false
    params.acc100 = 0 params.acc200=0 params.acc300=0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Ground Strike
-- Great Sword weapon skill
-- Skill level: 250 QUESTED
-- Delivers a single-hit attack. Damage varies with TP.
-- Modifiers: STR:50% INT:50%
-- 100%TP     200%TP     300%TP
-- 1.5         1.75       2.0
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.ground_strike.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 1.5 params.ftp200 = 1.75 params.ftp300 = 2.0
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.5 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200=0.0 params.crit300=0.0
    params.canCrit = false
    params.acc100 = 0 params.acc200=0 params.acc300=0
    params.atk100 = 1.75; params.atk200 = 1.75; params.atk300 = 1.75

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Herculean Slash
-- Great Sword weapon skill
-- Skill Level: 290
-- Paralyzes target. Duration of effect varies with TP.
-- Aligned with the Snow Gorget, Thunder Gorget & Breeze Gorget.
-- Aligned with the Snow Belt, Thunder Belt & Breeze Belt.
-- Element: Ice
-- Modifiers: VIT:60%
-- As this is a magic-based weaponskill it is also modified by Magic Attack Bonus.
-- 100%TP    200%TP    300%TP
-- 3.50      3.50      3.50
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.herculean_slash.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.ftp100 = 3.5 params.ftp200 = 3.5 params.ftp300 = 3.5
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.6 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.ele = xi.magic.ele.ICE
    params.skill = xi.skill.GREAT_SWORD
    params.includemab = true


    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    if (damage > 0 and target:hasStatusEffect(xi.effect.PARALYSIS) == false) then
        local duration = (tp/1000 * 60) * applyResistanceAddEffect(player, target, xi.magic.ele.ICE, 0)
        target:addStatusEffect(xi.effect.PARALYSIS, 30, 0, duration)
    end
    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Resolution
-- Great Sword weapon skill
-- Skill Level: 357
-- Delivers a fivefold attack. Damage varies with TP.
-- In order to obtain Resolution, the quest Martial Mastery must be completed.
-- This Weapon Skill's first hit params.ftp is duplicated for all additional hits.
-- Resolution has an attack penalty of -8%.
-- Aligned with the Breeze Gorget, Thunder Gorget & Soil Gorget.
-- Aligned with the Breeze Belt, Thunder Belt & Soil Belt.
-- Element: None
-- Modifiers: STR:85%%
-- 100%TP    200%TP    300%TP
-- 0.8        0.9       0.1
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.resolution.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 5
    params.ftp100 = 0.8 params.ftp200 = 0.9 params.ftp300 = 1.0
    params.str_wsc = 0.85 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200= 0.0 params.acc300= 0.0
    params.atk100 = 1.1 params.atk200 = 1.1 params.atk300 = 1.1
    params.multiHitfTP = true


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Scourge
-- Great Sword weapon skill
-- Skill level: N/A
-- Additional effect: temporarily improves params.critical hit rate.
-- params.critical hit rate boost duration is based on TP when the weapon skill is used. 100% TP will give 20 seconds of params.critical hit rate boost this scales linearly to 60 seconds of params.critical hit rate boost at 300% TP. 5 TP = 1 Second of Aftermath.
-- Parses show the params.critical hit rate increase from the Scourge Aftermath is between 10% and 15%.
-- This weapon skill is only available with the stage 5 relic Great Sword Ragnarok or within Dynamis with the stage 4 Valhalla.
-- Aligned with the Light Gorget & Flame Gorget.
-- Aligned with the Light Belt & Flame Belt.
-- Element: None
-- Modifiers: STR:50%  VIT:50%
-- 100%TP    200%TP    300%TP
-- 3.00      3.00      3.00
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.scourge.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.5 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 1.0 params.crit200 = 1.0 params.crit300 = 1.0
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.0 params.atk200 = 1.0 params.atk300 = 1.0

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Torcleaver
-- Skill Level: N/A
-- Description: Deals triple damage. Damage varies with TP. Caladbolg: Aftermath.
-- Available only when equipped with Caladbolg (85)/(90)/(95) or Espafut +1/+2/+3.
-- Aligned with the Light Gorget, Aqua Gorget & Snow Gorget.
-- Aligned with the Light Belt, Aqua Belt & Snow Belt.
-- Element: None
-- Skillchain Properties: Light/Distortion
-- Modifiers: VIT:60%
-- Damage Multipliers by TP:
-- 100%TP    200%TP    300%TP
-- 2.8        3         3.2
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.torcleaver.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 2.8 params.ftp200 = 3 params.ftp300 = 3.2
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.6 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.00 params.crit200 = 0.00 params.crit300 = 0.00
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.0 params.atk200 = 1.0 params.atk300 = 1.0

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.EMPYREAN)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Dimidiation
-- Great Sword weapon skill
-- Skill Level: N/A
-- Delivers a twofold attack. Damage varies with TP. Epeolatry: Aftermath effect varies with TP.
-- Will stack with Sneak Attack.
-- Element: None
-- Skillchain Elements: Light/Fragmentation (Fire, Thunder, Wind, Light gorget/belt aligned)
-- Modifiers: DEX:60%
-- 1000 TP   2000 TP   3000 TP
-- 1.5        1.75       2
-----------------------------------

greatsword:addOverride("xi.globals.weaponskills.dimidiation.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 2
    params.ftp100 = 1.5 params.ftp200 = 1.75 params.ftp300 = 2
    params.str_wsc = 0.0 params.dex_wsc = 0.6 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.25 params.atk200 = 1.25 params.atk300 = 1.25
    params.ignoresDef = false
    params.ignored100 = 0
    params.ignored200 = 0
    params.ignored300 = 0

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)
return greatsword