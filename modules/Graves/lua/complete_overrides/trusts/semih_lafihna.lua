-----------------------------------
-- Trust: semih_lafihna
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('semih_lafihna')


m:addOverride("xi.globals.spells.trust.semih_lafihna.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    xi.trust.teamworkMessage(trust, {
        [xi.magic.spell.STAR_SIBYL] = xi.trust.message_offset.TEAMWORK_1,
        [xi.magic.spell.AJIDO_MARUJIDO] = xi.trust.message_offset.TEAMWORK_2,
    })

    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.BARRAGE, ai.r.JA, ai.s.SPECIFIC, xi.ja.BARRAGE)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SHARPSHOT, ai.r.JA, ai.s.SPECIFIC, xi.ja.SHARPSHOT)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.DOUBLE_SHOT, ai.r.JA, ai.s.SPECIFIC, xi.ja.DOUBLE_SHOT)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.RATTACK, 0, 0)

    trust:addListener("WEAPONSKILL_USE", "SEMIH_LAFIHNA_WEAPONSKILL_USE", function(mobArg, target, wsid, tp, action)
        if wsid == 3490 then -- Stellar Arrow
            -- I'll show you no quarter!
            xi.trust.message(mobArg, xi.trust.message_offset.SPECIAL_MOVE_1)
        end
    end)

    trust:setAutoAttackEnabled(false)

    trust:addMod(xi.mod.STORETP, 40)
    trust:addMod(xi.mod.RACC, power * 3)  
end)

return m