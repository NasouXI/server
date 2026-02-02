-----------------------------------
-- Trust: kupofried
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('kupofried')

m:addOverride("xi.actions.spells.trust.kupofried.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:addStatusEffectEx(xi.effect.COLURE_ACTIVE, xi.effect.COLURE_ACTIVE, 6, 3, 0, xi.effect.CORSAIRS_ROLL, 120, xi.auraTarget.ALLIES, xi.effectFlag.AURA)
    trust:setAutoAttackEnabled(false)
    trust:setUnkillable(true)
end)

return m
