-----------------------------------
-- Trust: Prishe
-- Spell Action Script
-----------------------------------

require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('prishe')

local trustToReplaceName = 'prishe'

m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)

local trustLevel = mob:getMainLvl()

    -- Increase HP
    mob:setMod(xi.mod.HP, 1.5 * trustLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
	
	--Increase MP
	local currentMP = mob:getMP()	
	mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 120, 0, 0)
    mob:setMP(mob:getMaxMP())
	
	mob:addMod(xi.mod.DEF, trustLevel * 1.5)
    mob:addMod(xi.mod.MDEF, trustLevel * 1.5)
	mob:addMod(xi.mod.MEVA, trustLevel * 1.5)
    mob:addMod(xi.mod.EVA, trustLevel * 1.5 )
    mob:addMod(xi.mod.MACC, trustLevel * 2)
    mob:addMod(xi.mod.MATT, trustLevel * 3)
	mob:addMod(xi.mod.MAGIC_DAMAGE, trustLevel * 3)
    mob:addMod(xi.mod.INT, trustLevel * 2)
	
	-- Enhancing Magic Duration increase 50%
	mob:addMod(xi.mod.ENH_MAGIC_DURATION, 1.5)
	
	mob:addMod(xi.mod.FASTCAST, 400)
	
	local sublimationBonus = mob:getMainLvl() / 5
    mob:addMod(xi.mod.SUBLIMATION_BONUS, sublimationBonus)
	
	-- GAMBIT SETUP
    -- The AI will check these rules from top to bottom.
	
    ---------------------------------------------------
	
	mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.ACCESSION}, { ai.r.JA, ai.s.SPECIFIC, xi.ja.ACCESSION }) -- ACCESSION

	--EMERGENCY HEALS
	mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 33 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
	
	--Wake from Sleep
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE }) 
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.LULLABY }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })
	
	--SUBLIMATION
    mob:addListener('COMBAT_TICK', 'ADELHEID_CTICK', function(mobArg)
        if
            mobArg:getHPP() > 50 and
            mobArg:getMPP() < 100 and
            not mobArg:hasStatusEffect(xi.effect.SUBLIMATION_ACTIVATED) and
            not mobArg:hasStatusEffect(xi.effect.SUBLIMATION_COMPLETE)
        then
            mobArg:useJobAbility(233, mobArg)
        end

        if
            mobArg:getMPP() < 25 and
            mobArg:hasStatusEffect(xi.effect.SUBLIMATION_COMPLETE)
        then
            mobArg:useJobAbility(233, mobArg)
        end

    end)
	
	--BUFFS
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.REFRESH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.REFRESH }) 
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.ACCESSION}, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.REGEN }, 120) 
		
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PHALANX })
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.STONESKIN }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONESKIN }, 150)
	mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.AQUAVEIL }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.AQUAVEIL }, 180) 
	
	mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.PERPETUANCE}, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PERPETUANCE })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.PERPETUANCE}, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ADLOQUIUM }, 180)
	
	--Storms
	mob:addGambit(ai.t.SELF, { ai.c.NO_STORM, 0 }, { ai.r.MA, ai.s.STORM_DAY, 0 }, 0)

	-- KLIMAFORM	
	mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.MANIFESTATION }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.MANIFESTATION }, 20)
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.MANIFESTATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.KLIMAFORM }, 180)
	
	--HELIX
	mob:addGambit(ai.t.PARTY, { ai.c.READYING_WS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.EBULLIENCE }, 10) 
	mob:addGambit(ai.t.TARGET, { ai.c.MB_AVAILABLE, 0 }, { ai.r.MA, ai.s.MB_ELEMENT, 0}, 0)
	
	mob:setAutoAttackEnabled(false)
	mob:setMobMod(xi.mobMod.TRUST_DISTANCE, xi.trust.movementType.MID_RANGE)
    
end)

return m
