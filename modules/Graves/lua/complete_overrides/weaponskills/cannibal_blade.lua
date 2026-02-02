-----------------------------------
-- Cannibal Blade
-----------------------------------
require("scripts/globals/abilities/pets/automaton/Cannibal_Blade")
require("scripts/globals/automatonweaponskills")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local m = Module:new("cannibal")


m:addOverride("xi.globals.abilities.pets.automaton.cannibal_blade.onAutomatonAbility", function(target, automaton, skill, master, action)
    local params =
    {
        numHits = 1,
        atkmulti = 20.0,
        accBonus = 1000,
        weaponDamage = automaton:getSkillLevel(xi.skill.AUTOMATON_MELEE),
        weaponType = xi.skill.SWORD,
        ftp100 = 0.25,
        ftp200 = 0.4,
        ftp300 = 0.6,
        acc100 = 0.0,
        acc200 = 0.0,
        acc300 = 0.0,
        ignoresDef = true,
        ignored100 = 0.5,
        ignored200 = 0.5,
        ignored300 = 0.5,
        str_wsc = 0.0,
        dex_wsc = 0.0,
        vit_wsc = 0.0,
        agi_wsc = 0.0,
        int_wsc = 0.0,
        mnd_wsc = 0.0,
        chr_wsc = 0.0
    }
    automaton:addMod(xi.mod.ACC, 250)

    if automaton:checkDistance(target) > 7 then
        if params.weaponDamage then
            params.weaponDamage = params.weaponDamage / 1
        else
            params.ftp100 = params.ftp100 / 1
            params.ftp200 = params.ftp200 / 1
            params.ftp300 = params.ftp300 / 1
        end
    end

    local damage = doAutoPhysicalWeaponskill(automaton, target, 0, skill:getTP(), true, action, false, params, skill)

    if damage > 0 then
        if not target:isUndead() then
            automaton:addHP(damage)
            skill:setMsg(xi.msg.basic.SKILL_DRAIN_HP)
        end
    end

    return damage
end)

return m