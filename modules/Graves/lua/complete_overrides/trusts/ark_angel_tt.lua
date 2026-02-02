-----------------------------------
-- Trust: aagk
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ark_angel_tt')


m:addOverride("xi.actions.spells.trust.aatt.onMobSpawn", function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local trustLevel  = mob:getMainLvl()
    local power       = trustLevel * 1.5
    local spellDamage = trustLevel * math.floor((trustLevel + 1) / 10)

    mob:addMod(xi.mod.HASTE_MAGIC, 2500) -- 25% Haste (Magic)
    mob:addMod(xi.mod.MATT, power)
    mob:addMod(xi.mod.MACC, power)
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 1.5)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.REFRESH, 7)
    mob:addMod(xi.mod.ABSORB_DMG_TO_MP, 5)
    mob:addMod(xi.mod.FASTCAST, power / 2)

    mob:addGambit(ai.t.TARGET, { ai.c.MB_AVAILABLE, 0 }, { ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_SC_AVAILABLE, 0 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE }, 60)
    -- Stun all the things!
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_WS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_MS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_JA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.CASTING_MA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    -- Non-stun things
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SOULEATER })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.LAST_RESORT })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.ELEMENTAL_SEAL })

    mob:addListener('WEAPONSKILL_USE', 'AATT_WEAPONSKILL_USE', function(mobArg, target, wsid, tp, action)
        if wsid == 3720 then -- Amon Drive
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM, 2000)
end)
return m
