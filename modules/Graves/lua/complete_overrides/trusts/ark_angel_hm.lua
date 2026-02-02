-----------------------------------
-- Trust: aahm
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/utils/utils") -- file dir changed
require("scripts/globals/weaponskills")
-----------------------------------
local m = Module:new('ark_angel_hm')

m:addOverride("xi.globals.spells.trust.aahm.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    -- Shadows are represented by xi.effect.COPY_IMAGE, but with different icons depending on the tier
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.COPY_IMAGE, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.BLINDNESS, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.KURAYAMI, 60)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.SLOW, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HOJO, 60)

    -- DD Mode
    trust:addSimpleGambit(ai.t.SELF, ai.c.PT_HAS_TANK, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.BERSERK)
    trust:addSimpleGambit(ai.t.SELF, ai.c.PT_HAS_TANK, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.INNIN)
    trust:addSimpleGambit(ai.t.TANK, ai.c.HPP_LT, 50, ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)

    -- Tank Mode
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_PT_HAS_TANK, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_PT_HAS_TANK, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.WARCRY)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_PT_HAS_TANK, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.YONIN)
    trust:addSimpleGambit(ai.t.MASTER, ai.c.HPP_LT, 50, ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)

    local power = trust:getMainLvl() / 3

    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.ATT, power * 3)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.UTSUSEMI_BONUS, 1)


    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
end)
return m
