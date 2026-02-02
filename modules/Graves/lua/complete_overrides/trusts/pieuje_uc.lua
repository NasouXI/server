-----------------------------------
-- Trust: Pieuje (UC)
-- Spell Action Script
-----------------------------------

require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('pieuje_uc')

local trustToReplaceName = 'pieuje_uc'

m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    --[[
        Summon: With your courage and valor, Altana's children will live to see a brighter day.
        Summon (Formerly): Let the Royal Family’s blade be seared forever into their memories!
    ]]
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
	
	mob:addMod(xi.mod.CURE_POTENCY, 50)
	mob:addMod(xi.mod.REFRESH, 5)
    mob:addMod(xi.mod.REGAIN, 34)
    mob:addMod(xi.mod.MPP, 15) -- TODO: This is supposed to increase with Unity rank, but I don't believe that's implemented so it is set to the minimum.
	
	local trustLevel = mob:getMainLvl()

    -- Increase HP & MP
    mob:setMod(xi.mod.HP, 5 * trustLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
	
	-- BEHAVIOR SETTINGS
    ---------------------------------------------------
    mob:setAutoAttackEnabled(true)

    -- GAMBIT SETUP (Actions are prioritized from top to bottom)
    ---------------------------------------------------

    -- Emergency Healing
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 30 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
	
	 -- Special counters
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.CHAINSPELL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SACROSANCTITY })
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.MANAFONT }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SACROSANCTITY })
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.ASTRAL_FLOW }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SACROSANCTITY })

     -- Job Abilities
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.AFFLATUS_MISERY }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.AFFLATUS_MISERY })
	
	--Esuna is too broad, needs to have prompts for status effect
	--mob:addGambit(ai.t.SELF, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE, ai.c.STATUS_COUNT_GTE, 2 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.PLAGUE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
    mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.CURSE_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.CURSE_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	--Research why esuna does not cure bane even with misery up
	--mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.BANE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
    mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.POISON }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.BLINDNESS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	mob:addGambit(ai.t.SELF, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ESUNA })
	
	-- Status Ailment Removal (-na spells)
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.POISON }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.POISONA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.BLINDNESS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BLINDNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SILENCE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PETRIFICATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.CURSE_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.DOOM }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.CURSE_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.BANE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })	
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.PLAGUE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
	mob:addGambit(ai.t.PARTY, { ai.c.STATUS_FLAG, xi.effectFlag.ERASABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })

    -- Standard Healing
	mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 40 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE_V })
	mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 75 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE_IV })
	mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 90 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE_III })

    -- Special Synergy: Cast Regen on Trion
    mob:addGambit(ai.t.TANK, { ai.c.NOT_STATUS, xi.effect.REGEN }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.REGEN_IV })

    -- Buffs
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.PROTECT }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PROTECTRA })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.SHELL }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SHELLRA })
    mob:addGambit(ai.t.MASTER, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
    mob:addGambit(ai.t.MELEE, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.AUSPICE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.AUSPICE })

    -- Enfeebling
	-- mob:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })
	mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })
    
end)

return m