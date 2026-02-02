-----------------------------------
-- Trust: maat
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('maat_trust')


m:addOverride("xi.actions.spells.trust.maat.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())
    
    trust:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.MANTRA })
    
    trust:addListener("WEAPONSKILL_USE", "MAAT_WEAPONSKILL_USE", function(mobArg, target, wsid, tp, action)
        if wsid == 3263 then -- Bear Killer
            --  Heh heh heh
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)
    
    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.HIGHEST)
    
    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 3)
    trust:addMod(xi.mod.DOUBLE_ATTACK, 15)
end)

return m
