-----------------------------------
-- Trust: King of Hearts
-- Spell Action Script
-----------------------------------

require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('king_of_hearts')

local trustToReplaceName = 'king_of_hearts'

m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    
	mob:setAutoAttackEnabled(true)
	
	local trustLevel = mob:getMainLvl()

    -- Increase HP
    mob:setMod(xi.mod.HP, 1.25 * trustLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
	
	--Increase MP
	local currentMP = mob:getMP()
	
	mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 80, 0, 0)
    mob:setMP(mob:getMaxMP())
	mob:addMod(xi.mod.DEF, trustLevel * 1.5)
    mob:addMod(xi.mod.MDEF, trustLevel * 1.5)
	mob:addMod(xi.mod.MEVA, trustLevel * 1.5)
    mob:addMod(xi.mod.EVA, trustLevel * 1.5 )
	
	-- Enhancing Magic Duration increase 50%
	mob:addMod(xi.mod.ENH_MAGIC_DURATION, 1.5)

    mob:addMod(xi.mod.FASTCAST, 400)
	
	mob:addMod(xi.mod.REFRESH, 5)
	mob:addMod(xi.mod.REGEN, 5)
	mob:setMod(xi.mod.DOUBLE_ATTACK, 10) -- workaround because casting temper to self causes an endless loop
	
	 -- Job Abilities
    mob:addStatusEffect(xi.effect.COMPOSURE, 0, 0, 0)
		
    -- GAMBIT SETUP
    -- The AI will check these rules from top to bottom.
	
    ---------------------------------------------------
	
	-- Status Ailment Removal (-na spells)
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.POISON }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.POISONA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.BLINDNESS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BLINDNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SILENCE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PETRIFICATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PLAGUE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.CURSE_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DOOM }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.CURSE_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.BANE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })	
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })

-- 	Healing
	mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 50 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })

-- 	Debuff
	mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.DIA }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.DIA }, 60)
	mob:addGambit(ai.t.TARGET, { ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE }, { ai.r.MS, ai.s.SPECIFIC, 3689 }, 30) --SHUFFLE to dispel buff. Cooldown 30 seconds
		
-- 	Standard Buffs
    mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.REFRESH }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REFRESH })
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PHALANX })
	mob:addGambit(ai.t.TOP_ENMITY, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PHALANX_II })
	
-- 	MOB WS
	mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
	    
end)

return m