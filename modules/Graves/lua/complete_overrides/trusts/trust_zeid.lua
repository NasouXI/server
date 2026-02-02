-----------------------------------
-- Trust: zeid
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/utils/utils") -- file dir changed
require("scripts/globals/weaponskills")
-----------------------------------
local m = Module:new('trust_zeid')

m:addOverride("xi.actions.spells.trust.zeid.onMobSpawn", function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local trustLevel  = mob:getMainLvl()
    local power       = trustLevel * 2

    mob:addMod(xi.mod.MATT, power)
    mob:addMod(xi.mod.MACC, power)
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 1.5)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.REGAIN, 15)
    mob:addMod(xi.mod.HASTE_GEAR, 500)


    mob:addListener('WEAPONSKILL_USE', 'ZEID_WEAPONSKILL_USE', function(mobArg, target, wsid, tp, action)
        if wsid == 981 then -- Ground Strike
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)

    mob:addGambit(ai.t.TARGET, { ai.c.NOT_SC_AVAILABLE, 0 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE }, 60)

    -- Stun all the things!
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_WS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_MS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.READYING_JA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    mob:addGambit(ai.t.TARGET, { ai.c.CASTING_MA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })

    -- Non-stun things
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SOULEATER })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.LAST_RESORT })
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 50 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.NETHER_VOID })
    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.HIGHEST, 1000)
end)

return m
