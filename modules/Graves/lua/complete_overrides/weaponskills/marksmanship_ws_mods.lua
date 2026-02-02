-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local marksmanship = Module:new("marksmanship_ws_mods")


-----------------------------------
-- Coronach
-- Skill Level: N/A
-- Description: Additional effect: temporarily lowers enmity.
-- Lowers Enmity for a certain amount of time. (Enmity -20)
-- Regardless of the damage, Coronach hate is only 80CE / 240 VE (Enmity- effect included).
-- This weapon skill is only available with the stage 5 relic Gun Annihilator, within Dynamis with the stage 4 Ferdinand or under the latent effect of Exequy Gun.
-- Aligned with the Breeze Gorget & Thunder Gorget.
-- Aligned with the Breeze Belt & Thunder Belt.
-- Properties
-- Element: None
-- Skillchain Properties: Darkness/Fragmentation
-- Modifiers: DEX:60%  AGI:40%
-- Damage Multipliers by TP:
-- 100%TP    200%TP    300%TP
--  3.00    3.00    3.00
-----------------------------------

marksmanship:addOverride("xi.globals.weaponskills.coronach.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local weaponskill_object = {}
    local params = {}
        params.numHits = 1
        params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
        params.str_wsc = 0.0 params.dex_wsc = 0.6 params.vit_wsc = 0.0
        params.agi_wsc = 0.6 params.int_wsc = 0.0 params.mnd_wsc = 0.0
        params.chr_wsc = 0.0
        params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
        params.canCrit = false
        params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
        params.atk100 = 1; params.atk200 = 1; params.atk300 = 1
        params.overrideCE = 80
        params.overrideVE = 240

    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)

    -- Apply aftermath
    if damage > 0 then
        xi.aftermath.addStatusEffect(player, tp, xi.slot.RANGED, xi.aftermath.type.RELIC)
    end

    return tpHits, extraHits, criticalHit, damage
    
end)

-----------------------------------
-- Last Stand
-- Skill Level: 357
-- Description: Attacks once or twice, depending on remaining ammunition. Damage dealt varies with TP.
-- If the first shot of the weapon skill does enough damage to defeat the target, the second shot will not be used.
-- To obtain Last Stand, the quest Martial Mastery must be completed.
-- This Weapon Skill's first hit fTP is duplicated for all additional hits.
-- Aligned with the Flame Gorget, Light Gorget & Aqua Gorget.
-- Properties
-- Element: N/A
-- Skillchain Properties: Fusion/Reverberation
-- Modifiers: AGI:98%
-- Damage Multipliers by TP:
-- 100%TP    200%TP    300%TP
--   2.7      2.8       3.0

-----------------------------------

marksmanship:addOverride("xi.globals.weaponskills.last_stand.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local weaponskill_object = {}    
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
        params.numHits = 2
        params.ftp100 = 2.7 params.ftp200 = 2.8 params.ftp300 = 3.0
        params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0
        params.agi_wsc = 0.98 params.int_wsc = 0.0 params.mnd_wsc = 0.0
        params.chr_wsc = 0.0
        params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
        params.canCrit = false
        params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
        params.atk100 = 1.0 params.atk200 = 1.0 params.atk300 = 1.0
        params.multiHitfTP = true

    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)
    return tpHits, extraHits, criticalHit, damage
    
end)

-----------------------------------
-- Detonator
-- Marksmanship weapon skill
-- Skill Level: 250
-- Delivers a single-hit attack. Damage varies with TP.
-- In order to obtain Detonator, the quest Shoot First, Ask Questions Later must be completed.
-- Despite the lack of a STR weaponskill mod, STR is still the most potent stat for increasing this weaponskill's damage to the point at which fSTR2 is capped.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: AGI:30%
-- 100%TP    200%TP    300%TP
-- 2.0       2.75      3.0
-----------------------------------

marksmanship:addOverride("xi.globals.weaponskills.detonator.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local weaponskill_object = {}     
    local params = {}
        params.numHits = 1
        params.ftp100 = 2.0 params.ftp200 = 2.75 params.ftp300 = 3.0
        params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.7 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
        params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
        params.canCrit = false
        params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
        params.atk100 = 2.0 params.atk200 = 2.0 params.atk300 = 2.0

    local damage, criticalHit, tpHits, extraHits = doRangedWeaponskill(player, target, wsID, params, tp, action, primary)
    return tpHits, extraHits, criticalHit, damage
    
end)

return marksmanship