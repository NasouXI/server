-----------------------------------
-- Trust: Lion II
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('lion_ii')

local trustToReplaceName = 'lion_ii'


m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local master = mob:getMaster()
    local THMod  = master:getCharVar("LionTH")
    mob:addMod(xi.mod.TREASURE_HUNTER, THMod)
    mob:addMod(xi.mod.GILFINDER, THMod)
    mob:addMod(xi.mod.TRIPLE_ATTACK, 20)
  if mob:getMaster():getMainLvl() == 99 then 
  local power = mob:getMainLvl() * 1.1
    mob:addStatusEffect(xi.effect.MAX_HP_BOOST, power, 0, 0)
    mob:setHP(mob:getMaxHP())
    mob:setMP(mob:getMaxMP())
    mob:setMod(xi.mod.DOUBLE_ATTACK, 30)
    mob:setMod(xi.mod.TRIPLE_ATTACK, 15)
    mob:addMod(xi.mod.REGAIN, 5)
    mob:addMod(xi.mod.ATT, power + 100)
    mob:addMod(xi.mod.ACC, power + 200)
    mob:addMod(xi.mod.DEF, power + 100)
    mob:addMod(xi.mod.MAIN_DMG_RATING, 25)
    mob:addMod(xi.mod.SAVETP, 50)
    mob:addMod(xi.mod.STORETP, 50)
    mob:addMod(xi.mod.RATT, power)
    mob:addMod(xi.mod.RACC, power)
    mob:addMod(xi.mod.STR, power)
    mob:addMod(xi.mod.DEX, power)
    mob:addMod(xi.mod.VIT, power)
    mob:addMod(xi.mod.AGI, power)
    mob:addMod(xi.mod.INT, power)
    mob:addMod(xi.mod.MND, power)
    mob:addMod(xi.mod.CHR, power)
	mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.SUBTLE_BLOW, power / 2)
end
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COPY_IMAGE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI} )
    mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 3000)
end)

return m
