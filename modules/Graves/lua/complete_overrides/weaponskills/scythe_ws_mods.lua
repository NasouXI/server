-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local scythe = Module:new("scythe_ws_mods")

-----------------------------------
-- Guillotine
-- Scythe weapon skill
-- Skill level: 200
-- Delivers a four-hit attack. Duration varies with TP.
-- Modifiers: STR:25%  INT:25%
-- 100%TP     200%TP     300%TP
-- 0.7        0.7        0.7
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.guillotine.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 4
    params.ftp100 = 0.7 params.ftp200 = 0.7 params.ftp300 = 0.7
    params.str_wsc = 0.25 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.25 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200=0.0 params.crit300=0.0
    params.canCrit = false
    params.acc100 = 0 params.acc200=0 params.acc300=0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if (damage > 0 and target:hasStatusEffect(xi.effect.SILENCE) == false) then
        local duration = (30 + (tp/1000 * 30)) * applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0)
        target:addStatusEffect(xi.effect.SILENCE, 1, 0, duration)
    end
    return tpHits, extraHits, criticalHit, damage

end)

-----------------------------------
-- Spiral Hell
-- Scythe weapon skill
-- Skill level: 240 QUESTED
-- Delivers a single-hit attack. Damage varies with TP.
-- Modifiers: STR:50%  INT:50%
-- 100%TP     200%TP     300%TP
-- 2          2.25        2.5
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.spiral_hell.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 2 params.ftp200 = 2.25 params.ftp300 = 2.5
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.5 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200=0.0 params.crit300=0.0
    params.canCrit = false
    params.acc100 = 0 params.acc200=0 params.acc300=0
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Insurgency
-- Scythe weapon skill
-- Skill level: N/A
-- Delivers a fourfold attack. Damage varies with TP. Liberator: Aftermath effect varies with TP.
-- Available only after completing the Unlocking a Myth (Dark Knight) quest.
-- Appears to be heavily modified by attack.
-- Aligned with the Flame Gorget, Light Gorget & Shadow Gorget.
-- Aligned with the Flame Belt, Light Belt & Shadow Belt.
-- Element: None
-- Modifiers: STR:20%  INT:20%
-- 100%TP    200%TP    300%TP
-- 0.50      0.75      1.00
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.insurgency.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 4
    params.ftp100 = 0.5 params.ftp200 = 0.75 params.ftp300 = 1
    params.str_wsc = 0.2 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.2
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
-- Entropy
-- Scythe weapon skill
-- Skill level: 357
-- Description: Delivers a fourfold attack that converts damage dealt into own MP. Damage varies with TP.
-- In order to obtain Entropy, the quest Martial Mastery must be completed.
-- MP recovery is about 20% of damage dealt.
-- Aligned with the Shadow Gorget, Soil Gorget & Aqua Gorget.
-- Aligned with the Shadow Belt, Soil Belt & Aqua Belt.
-- Element: None
-- Modifiers: INT:85%
-- 100%TP    200%TP    300%TP
-- 1.2       1.4       1.5
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.entropy.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 4
    params.ftp100 = 1.2 params.ftp200 = 1.4 params.ftp300 = 1.5
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0
    params.agi_wsc = 0.0 params.int_wsc = 0.85 params.mnd_wsc = 0.0
    params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.3 params.atk200 = 1.4 params.atk300 = 1.5

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    player:addMP(damage * 0.2)

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Catastrophe
-- Scythe weapon skill
-- Skill Level: N/A
-- Drain target's HP. Bec de Faucon/Apocalypse: Additional effect: Haste
-- This weapon skill is available with the stage 5 relic Scythe Apocalypse or within Dynamis with the stage 4 Bec de Faucon.
-- Also available without Aftermath effects with the Crisis Scythe. After 13 weapon skills have been used successfully, gives one "charge" of Catastrophe.
-- Aligned with the Shadow Gorget & Soil Gorget.
-- Aligned with the Shadow Belt & Soil Belt.
-- Element: None
-- Modifiers: INT:50%  STR:50%
-- 100%TP    200%TP    300%TP
-- 2.3       2.3       2.3
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.catastrophe.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 2.3 params.ftp200 = 2.3 params.ftp300 = 2.3
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.5 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 1.0 params.crit200 = 1.0 params.crit300 = 1.0
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.1 params.atk200 = 1.1 params.atk300 = 1.1

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if not target:isUndead() then
        player:addHP(math.floor(damage * math.random(3, 7) / 10))
    end

    return tpHits, extraHits, criticalHit, damage
end)

-----------------------------------
-- Quietus
-- Scythe weapon skill
-- Skill Level: N/A
-- Delivers a triple damage attack that ignores target's defense. Amount ignored varies with TP. Redemption: Aftermath.
-- Available only when equipped with Redemption (85)/(90)/(95)/(99) or Penitence +1/+2/+3/Umiliati.
-- Aligned with the Shadow Gorget, Aqua Gorget & Snow Gorget.
-- Aligned with the Shadow Belt, Aqua Belt & Snow Belt.
-- Element: None
-- Modifiers: STR: 40% INT: 40%
-- 100%TP    200%TP    300%TP
-- 3.00        3.00      3.00
-----------------------------------

scythe:addOverride("xi.globals.weaponskills.quietus.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)

local weaponskill_object = {}

    local params = {}
    params.numHits = 1
    params.ftp100 = 3.0 params.ftp200 = 3.0 params.ftp300 = 3.0
    params.str_wsc = 0.4 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.4 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.0 params.atk200 = 1.0 params.atk300 = 1.0
    params.ignoresDef = true
    params.ignored100 = 0.1
    params.ignored200 = 0.3
    params.ignored300 = 0.5

    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.EMPYREAN)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage
end)

return scythe