-----------------------------------
-- Belly Dance
--
-- Description: Charms all targets in an area of effect, that are facing the Lamia.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: 15' radial
-- Notes: Used only by Lamia NM's, particularly in Besieged.
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
require("modules/module_utils")
-----------------------------------
local m = Module:new("lamia_charm_fix")

m:addOverride("xi.globals.mobskills.belly_dance.onMobWeaponSkill", function(target, mob, skill)
    local typeEffect = xi.effect.CHARM_I
    local power = 0

    if not target:isPC() then
        skill:setMsg(xi.msg.basic.SKILL_MISS)
        return typeEffect
    end

    local msg = xi.mobskills.mobStatusEffectMove(mob, target, typeEffect, power, 3, 90)
    if msg == xi.msg.basic.SKILL_ENFEEB_IS then
        mob:charm(target)
    end
    skill:setMsg(msg)

    return typeEffect
end)

return m
