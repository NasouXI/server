-----------------------------------
-- Trust: maximilian
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('maximilian')


m:addOverride("xi.actions.spells.trust.maximilian.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COPY_IMAGE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI })

    trust:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.HIGHEST)

    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 4)
    trust:addMod(xi.mod.DOUBLE_ATTACK, 15)
    trust:addMod(xi.mod.DUAL_WIELD, math.floor(power * 0.5)) -- ~50 DW at 99	
	
end)

return m
