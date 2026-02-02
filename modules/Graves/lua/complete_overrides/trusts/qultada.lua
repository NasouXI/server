-----------------------------------
-- Trust: qultada
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('qultada')

m:addOverride("xi.actions.spells.trust.qultada.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.SAMURAI_ROLL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SAMURAI_ROLL })
    trust:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.FIGHTERS_ROLL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.FIGHTERS_ROLL })
    trust:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.RATTACK, 0, 0 }, 10)

    trust:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.RANDOM)

    local power = trust:getMainLvl() / 3
    trust:addMod(xi.mod.MACC, power)
end)

return m
