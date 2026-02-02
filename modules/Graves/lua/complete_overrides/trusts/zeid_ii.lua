-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/utils/utils") -- file dir changed
require("scripts/globals/weaponskills")
-----------------------------------

local m = Module:new('zeid_ii')

m:addOverride("xi.globals.spells.trust.zeid_ii.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_WS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_MS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_JA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.CASTING_MA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.SELF, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.SOULEATER)
    trust:addSimpleGambit(ai.t.SELF, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.LAST_RESORT)

    trust:setTrustTPSkillSettings(ai.tp.CLOSER, ai.s.RANDOM)
    
    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 3)   
end)

return m