-----------------------------------
-- Trust: lhe_lhangavo
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('lhe_lhangavo')

local trustToReplaceName = 'lhe_lhangavo'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local lhlhLevel = mob:getMainLvl()

    -- Increase HP
    mob:setMod(xi.mod.HP, 9 * lhlhLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())

    local power = mob:getMainLvl() * 2
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 5)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.WSACC, power * 5)
    mob:addMod(xi.mod.STR, power * 2)
    mob:addMod(xi.mod.STORETP, 100)
    mob:addMod(xi.mod.HASTE_GEAR, 500)

    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.FOCUS })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.IMPETUS })
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 50 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.CHAKRA })
    mob:addGambit(ai.t.SELF, { ai.c.HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.DODGE })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_PT_HAS_TANK, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE })
    mob:addGambit(ai.t.SELF, { ai.c.IS_ECOSYSTEM , xi.ecosystem.UNDEAD },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.FORMLESS_STRIKES })
    mob:addGambit(ai.t.SELF, { ai.c.IS_ECOSYSTEM , xi.ecosystem.AMORPH },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.FORMLESS_STRIKES })
    mob:addGambit(ai.t.SELF, { ai.c.IS_ECOSYSTEM , xi.ecosystem.ELEMENTAL },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.FORMLESS_STRIKES })

                    mob:addListener('WEAPONSKILL_USE', 'TRUST_WEAPONSKILL_USE', function(mob, target, wsid, tp, action)
                    if wsid == 11 then -- ascetics_fury
                           mob:injectActionPacket(target:getID(), 3, 26,0,0,0,10,1)
                    elseif wsid == 14 then -- victory_smite
                           mob:injectActionPacket(target:getID(), 3, 29,0,0,0,10,1)
                    elseif wsid == 1033 then -- Dragon Kick 
                           mob:injectActionPacket(target:getID(), 3, 23,0,0,0,10,1)
                    elseif wsid == 1034 then -- Asuran Fist 
                           mob:injectActionPacket(target:getID(), 3, 24,0,0,0,10,1)
                    end
                    end)

    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 2000)
end)

return m
