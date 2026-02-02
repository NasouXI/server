-----------------------------------
-- Trust: ullegore
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('Ullegore')


m:addOverride("xi.actions.spells.trust.ullegore.onMobSpawn", function(mob)
   xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local ullegoreLevel = mob:getMainLvl()

    -- Increase HP & MP
    mob:setMod(xi.mod.HP, 9 * ullegoreLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
    local spellDamage = ullegoreLevel * math.floor((ullegoreLevel + 1) / 10)
    local power = mob:getMainLvl() * 2
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 2)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.MACC, power * 5)
    mob:addMod(xi.mod.MATT, power * 5)
    mob:addMod(xi.mod.HASTE_GEAR, 500)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.REFRESH, 5)
    mob:addMod(xi.mod.HASTE_MAGIC, 25)
    mob:addMod(xi.mod.MAGIC_DAMAGE, spellDamage)

    mob:addGambit(ai.t.TARGET, { ai.c.MB_AVAILABLE, 0 }, { ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_SC_AVAILABLE, 0 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE }, 30)

    mob:addListener('WEAPONSKILL_USE',  'MEMENTO_MORI_ABILITY', function(mobArg, target, wsid, tp, action)
                        if wsid == 3624 then
                                mobArg:timer(30, function(mobArg)
                                mobArg:castSpell(219) -- comet
                                end)
                        end
    end)
    mob:addListener('WEAPONSKILL_USE',  'BORED_TO_TEARS_ABILITY', function(mobArg, target, wsid, tp, action)
                        if wsid == 3627 then -- bored to tears
                            -- The <target> has become noticeably bored"!
                            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
                        end
    end)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
end)
return m
