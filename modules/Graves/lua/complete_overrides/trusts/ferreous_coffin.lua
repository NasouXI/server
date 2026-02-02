-----------------------------------
-- Trust: Ferreous_Coffin

--Upgrade system overview:

--Gradually Increasing: Cursna bonus & Healing Skill bonus
--Refresh Bonus: +1 at 15, +2 at 30
--Unlock Protectra/Shellra at 40

--At max rank Cursna should have ~50% Doom removal rate
--At base, it is ~30%
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('Ferreous_Coffin')

local trustToReplaceName = 'ferreous_coffin'

m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    local master = mob:getMaster()
	local coffinrankup = 0
	if master and master:isPC() then
		coffinrankup = master:getCharVar("coffinrankup") or 0
	end

--Text to tell the player what their upgrades are
	if coffinrankup >= 1 then
		local cursnaBoost = 20 + coffinrankup
		if coffinrankup >= 40 then
			master:printToPlayer(string.format("I have %d upgrade points. Refresh: +4, Cursna: %d.", coffinrankup, cursnaBoost), 0, "Ferreous Coffin")
			master:printToPlayer(string.format("Protectra/Shellra unlocked", coffinrankup, cursnaBoost), 0, "Ferreous Coffin")
		elseif coffinrankup >= 15 then
			master:printToPlayer(string.format(
				"I have %d upgrade points. Refresh: +3, Cursna: %d",
				coffinrankup, cursnaBoost), 0, "Ferreous Coffin")
		else
			master:printToPlayer(string.format(
				"I have %d upgrade points. Cursna: %d",
				coffinrankup, cursnaBoost), 0, "Ferreous Coffin")
		end
	end
    -- Scaling Refresh: +2 base, +3 at 15, +4 at 30
    local refreshBonus = 2
    if coffinrankup >= 30 then
        refreshBonus = 4
    elseif coffinrankup >= 15 then
        refreshBonus = 3
    end

--add mods here https://github.com/FFXILevelDown/LevelDown-LSB/blob/2762c088a25d65a9125d4d82307164d331d4ba3b/scripts/enum/mod.lua#L761
    mob:addMod(xi.mod.REFRESH, refreshBonus)
    mob:addMod(xi.mod.ENHANCES_CURSNA, 20 + coffinrankup) --Default is 20
	mob:addMod(xi.mod.HEALING, coffinrankup * 2) --Custom Addition - Healing skill at 99 is 424

    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLOW }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ERASE })
    mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.HASTE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.HASTE })

    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })

    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 75 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })

    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.PARALYSIS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PARALYNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.BLINDNESS }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BLINDNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.SILENCE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.SILENA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.PETRIFICATION }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STONA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.DISEASE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.VIRUNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.CURSE_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.CURSE_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.BANE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })
    mob:addGambit(ai.t.TOP_ENMITY, { ai.c.STATUS, xi.effect.DOOM }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURSNA })

    mob:addGambit(ai.t.PARTY_DEAD, { ai.c.ALWAYS, 0 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.RAISE })

	-- Custom Addition
    -- Only add Protectra/Shellra gambits at max coffinrankup
    if coffinrankup >= 40 then
        mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.PROTECT }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PROTECTRA })
        mob:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.SHELL }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SHELLRA })
    end

    mob:addListener('WEAPONSKILL_USE', 'FERREOUS_COFFIN_WEAPONSKILL_USE', function(mobArg, target, wsid, tp, action)
        if wsid == 170 then -- Randgrith
            if math.random(1, 100) <= 66 then
                xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
            end
            mob:addStatusEffect(xi.effect.ACCURACY_BOOST, 20, 0, 20) -- Cheat in Relic AM ACC
			-- TODO: Expand Relic (Mjollnir) Handling (Occ. Double Damage, etc)
        end
    end)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)
end)

return m