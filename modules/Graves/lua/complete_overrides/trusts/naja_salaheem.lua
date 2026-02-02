-----------------------------------
-- Trust: naja_salaheem
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('naja_salaheem')

m:addOverride("xi.actions.spells.trust.naja_salaheem.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    xi.trust.teamworkMessage(trust, {
        [xi.magic.spell.GESSHO] = xi.trust.messageOffset.TEAMWORK_1,
        [xi.magic.spell.RONGELOUTS] = xi.trust.messageOffset.TEAMWORK_2,
        [xi.magic.spell.ABQUHBAH] = xi.trust.messageOffset.TEAMWORK_3,
    })

    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)

    trust:addListener("WEAPONSKILL_USE", "NAJA_WEAPONSKILL_USE", function(mobArg, target, wsid, tp, action)
        if wsid == 3215 then -- Peacebreaker
            --  Cha-ching! Thirty gold coins!
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)

    trust:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.FOCUS })
    trust:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.DODGE })
    trust:addGambit(ai.t.SELF, { ai.c.HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.COUNTERSTANCE })

    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power*3)
    trust:addMod(xi.mod.STORETP, 10)
end)

return m
