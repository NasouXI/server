-----------------------------------
-- Trust: rainemard
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('rainemard')


m:addOverride("xi.actions.spells.trust.rainemard.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COMPOSURE }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.COMPOSURE })
    trust:addGambit(ai.t.SELF, { ai.c.MPP_LT, 5 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.CONVERT })
    trust:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 50 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    trust:addGambit(ai.t.MELEE, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
    trust:addGambit(ai.t.CASTER, { ai.c.NOT_STATUS, xi.effect.REFRESH }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REFRESH })
    trust:addGambit(ai.t.TANK, { ai.c.NOT_STATUS, xi.effect.REFRESH }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REFRESH })
    trust:addGambit(ai.t.RANGED, { ai.c.NOT_STATUS, xi.effect.FLURRY }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.FLURRY })
    trust:addGambit(ai.t.TOP_ENMITY, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PHALANX })
    trust:addGambit(ai.t.TARGET, { ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DISPEL })
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.ENBLIZZARD }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.ENBLIZZARD }, 60)
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.DIA }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.DIA }, 60)
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.SLOW }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SLOW }, 60)
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.EVASION_DOWN }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.DISTRACT }, 60)   

    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)

    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power * 2)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ENSPELL_DMG, power / 4)
    trust:addMod(xi.mod.HASTE_MAGIC, power / 3)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 2)
end)

return m
