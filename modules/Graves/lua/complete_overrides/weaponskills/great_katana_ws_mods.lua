-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------

local great_katana = Module:new("great_katana_ws_mods")

great_katana:addOverride ("xi.globals.weaponskills.tachi_gekko.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 1
    params.ftp100 = 1.75 params.ftp200 = 1.88 params.ftp300 = 2.0
    params.str_wsc = 1.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2.2; params.atk200 = 2.2; params.atk300 = 2.2


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    -- Silence duration changed from 60 to 45 as per bg-wiki: http://www.bg-wiki.com/bg/Tachi:_Gekko
    if damage > 0 and not target:hasStatusEffect(xi.effect.SILENCE) then
        local duration = 60 * applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0)
        target:addStatusEffect(xi.effect.SILENCE, 1, 0, duration)
    end

    return tpHits, extraHits, criticalHit, damage

end)

great_katana:addOverride ("xi.globals.weaponskills.tachi_kasha.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 1
    params.ftp100 = 2 params.ftp200 = 2.6875 params.ftp300 = 4.125
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.65; params.atk200 = 1.65; params.atk300 = 1.65

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    if damage > 0 and not target:hasStatusEffect(xi.effect.PARALYSIS) then
        local duration = 60 * applyResistanceAddEffect(player, target, xi.magic.ele.ICE, 0)
        target:addStatusEffect(xi.effect.PARALYSIS, 25, 0, duration)
    end

    return tpHits, extraHits, criticalHit, damage

end)

great_katana:addOverride ("xi.globals.weaponskills.tachi_rana.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 3
    params.ftp100 = 2 params.ftp200 = 2 params.ftp300 = 2
    params.str_wsc = 0.8 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 1.0 params.acc200 = 1.0 params.acc300 = 1 -- TODO: verify -- "Accuracy varies with TP" in retail. All current evidence points to that this modifier is static values, not percentages.
    params.atk100 = 1.175; params.atk200 = 1.175; params.atk300 = 1.175


    -- Apply aftermath
    xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    return tpHits, extraHits, criticalHit, damage

end)

great_katana:addOverride ("xi.globals.weaponskills.tachi_shoha.onUseWeaponSkill", function(player, target, wsID, tp, primary, action, taChar)
    local unlockedWS = xi.aeonics.onTrigger(player, wsID)

    if not unlockedWS then
        return
    end

    local params = {}
    params.numHits = 2
    params.ftp100 = 1.375 params.ftp200 = 2.1875 params.ftp300 = 2.6875
    params.str_wsc = 0.0 + (player:getMerit(xi.merit.STR) * 0.11) params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.375; params.atk200 = 1.375; params.atk300 = 1.375


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
    return tpHits, extraHits, criticalHit, damage
end)

return great_katana