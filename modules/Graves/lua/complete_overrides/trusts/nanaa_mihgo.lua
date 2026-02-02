-----------------------------------
-- Trust: Nanaa Mihgo
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('nanaa_mihgo')

m:addOverride("xi.globals.spells.trust.nanaa_mihgo.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    xi.trust.teamworkMessage(trust, {
        [xi.magic.spell.ROMAA_MIHGO] = xi.trust.message_offset.TEAMWORK_1,
    })

    trust:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.DESPOIL)

    trust:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.HIGHEST)

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