-----------------------------------
-- Trust: Selh'teus
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('selh_teus')

local trustToReplaceName = 'selh_teus'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local selhteusLevel = mob:getMainLvl()
    local power = mob:getMainLvl() * 1.5
    mob:setMod(xi.mod.HP, 5 * selhteusLevel)
    mob:setMod(xi.mod.MP, 2 * selhteusLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
    mob:addMP(mob:getMaxMP())
    mob:addMod(xi.mod.MATT, power)
    mob:addMod(xi.mod.MACC, power)
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 5)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.RATT, power * 5)
    mob:addMod(xi.mod.RACC, power * 5)
    mob:addMod(xi.mod.REGAIN, 50)

    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.RANDOM, 3000)

  mob:addListener('COMBAT_TICK', 'SELHTEUS_CTICK', function(mobArg)
    local selAbil  = mob:getLocalVar('SelhAbil')
    local rejuvTimer = mob:getLocalVar('SelhRejTime')
        for _, partyMember in ipairs(mob:getMaster():getPartyWithTrusts()) do
            if  partyMember:getHP() < partyMember:getMaxHP() * .75 or
                partyMember:hasStatusEffect(xi.effect.SLEEP_I) or
                partyMember:hasStatusEffect(xi.effect.SLEEP_II) or
                partyMember:hasStatusEffect(xi.effect.LULLABY) then
                selAbil = selAbil + 1
            end
        end

        if rejuvTimer < os.time() then
           if mob:getTP() > 1000 and
              selAbil >= 1 then
                        mob:useMobAbility(1509)
                        mob:setLocalVar('SelhAbil', 0)
                        mob:setLocalVar('SelhRejTime', os.time() + 240) -- 3 minute cool down
                        for _, partyMember in ipairs(mob:getMaster():getPartyWithTrusts()) do
                               partyMember:addStatusEffect(xi.effect.REGAIN, 5, 0, 30) -- adds regain for 30 seconds
                               partyMember:addStatusEffect(xi.effect.REGEN, 5, 0, 30) -- adds regen for 30 seconds
                               partyMember:eraseAllStatusEffect()
                            local effects =
                                    {
                                    xi.effect.TERROR,
                                    xi.effect.SLEEP_I,
                                    xi.effect.SLEEP_II,
                                    xi.effect.LULLABY,
                                    xi.effect.STUN,
                                    xi.effect.SILENCE,
                                    xi.effect.WEAKNESS,
                                    xi.effect.PARALYSIS,
                                    xi.effect.BLINDNESS,
                                    xi.effect.AMNESIA,
                                    xi.effect.CHARM_I,
                                    xi.effect.CHARM_II,
                                    xi.effect.POISON,
                                    xi.effect.PETRIFICATION,
                                    }
                                    for _, v in pairs(effects) do
                                        partyMember:delStatusEffect(v)
                                    end
                        end
           end
        end
  end)
end)

return m
