-----------------------------------
-- Trust: Valaineral
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('Valaineral')

local trustToReplaceName = 'valaineral'

m:addOverride(string.format('xi.actions.spells.trust.%s.onMobSpawn', trustToReplaceName), function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    local master = mob:getMaster()
    local valHate = master:getCharVar("ValHate")
    local hateMod = 50 + valHate -- Default is 50, increased by ValHate value

	--Print for when Trust is summoned to tell player what they've unlocked with rank points.  Doesn't appear if no trades have been done.
	if master and master:isPC() and valHate > 0 then
			master:printToPlayer(string.format("My enmity has been increased by %d", valHate), 0, "Valaineral")
		end
		
    local defBonus = mob:getMainLvl() * 1.1
    mob:addMod(xi.mod.CURE_POTENCY, 50)
    mob:addMod(xi.mod.ENMITY, hateMod)
    mob:addMod(xi.mod.SPELLINTERRUPT, 35)
    mob:addMod(xi.mod.REFRESH, 4)
    mob:addMod(xi.mod.DMG, -900)
    mob:addMod(xi.mod.DEF, defBonus)
    mob:setMobMod(xi.mobMod.CAN_SHIELD_BLOCK, 1)
    mob:setMod(xi.mod.SHIELDBLOCKRATE, 45)

    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.MAJESTY }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.MAJESTY })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SENTINEL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 50 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    
	--Unlocks Shield Bash at 35 rank points
    if valHate > 35 then
        mob:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SHIELD_BASH })
        if master and master:isPC() then
            master:printToPlayer("You've unlocked my Shield Bash skill!", 0, "Valaineral")
        end
    end

    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.MAJESTY }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.MAJESTY })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SENTINEL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL })
    mob:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 50 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE })
    
    -- Special counters
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.CHAINSPELL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART })
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.MANAFONT }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART })
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS, xi.effect.ASTRAL_FLOW }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.RAMPART })

    -- Enmity control
    mob:addGambit(ai.t.SELF, { ai.c.NOT_HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.DIVINE_EMBLEM })      -- uses DE specifically with flash for enmity boost.
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })

    -- Healing / Sleep counter
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_I }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })         -- wakes up sleepers
    mob:addGambit(ai.t.PARTY, { ai.c.STATUS, xi.effect.SLEEP_II }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.CURE })        -- wakes up sleepers

    -- Self Buffs
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SENTINEL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL })          -- Uses SENTINEL first
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SENTINEL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.DEFENDER })          -- Uses Defender when SENTINEL wears
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.ENLIGHT }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ENLIGHT })          -- Uses Defender when SENTINEL wears
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.PHALANX }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PHALANX })          -- Uses Defender when SENTINEL wears
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.REPRISAL }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.REPRISAL })          -- Uses Defender when SENTINEL wears
    
    -- MP recovery
    mob:addGambit(ai.t.SELF, {ai.c.MPP_LT, 50}, {ai.r.JA, ai.s.SPECIFIC, xi.ja.CHIVALRY}) 

		--Enmity Transfer Listener
		mob:addListener('ABILITY_USE', 'VAL_ABILITY_USE', function(user, target, ability, action)
			if not user then return end

			local master = user:getMaster()
			if not master or not master:isPC() then return end

			local valHate = master:getCharVar("ValHate") or 0
			if valHate <= 0 then return end -- Skip enmity transfer if no ValHate bonus

			local party = master:getPartyWithTrusts()
			local range = 15
			local abilityID = ability:getID()

			--Add/Remove Abilities here
			local transferPercentages = {
				[xi.ja.PROVOKE]       = { multiplier = 1.25, name = "Provoke" },
				[xi.ja.SENTINEL]      = { multiplier = 1.5, name = "Sentinel" },
				[xi.ja.DEFENDER]      = { multiplier = 1.5, name = "Defender" },
				[xi.ja.MAJESTY]       = { multiplier = 0.5, name = "Majesty" },
				[xi.ja.DIVINE_EMBLEM] = { multiplier = 0.25, name = "Divine Emblem" },
				[xi.ja.RAMPART]       = { multiplier = 0.25, name = "Rampart" },
				[xi.ja.SHIELD_BASH]   = { multiplier = 1.25, name = "Shield Bash" },
			}

			local data = transferPercentages[abilityID]
			if not data then return end

			local transferAmount = valHate * data.multiplier

			if not target or not target:isMob() then
				target = master:getTarget()
				if not target or not target:isMob() then return end
			end

			for _, member in ipairs(party) do
				if member ~= user then
					local ceBefore = target:getCE(member)
					local veBefore = target:getVE(member)
					local totalBefore = ceBefore + veBefore

					member:transferEnmity(user, transferAmount, range)

					-- local totalTransferred = math.floor(totalBefore * (transferAmount / 100))
					-- master:printToPlayer(string.format(
					--     "Transferred %d CE/VE from %s to Valaineral (%.1f%% via %s).",
					--     totalTransferred,
					--     member:getName(),
					--     transferAmount,
					--     data.name
					-- ), 0, "Valaineral")
				end
			end

			-- Debug: show remaining CE/VE per party member
			for _, member in ipairs(party) do
				local ce = target:getCE(member)
				local ve = target:getVE(member)

				-- printf('%s enmity: %d (CE: %d, VE: %d)', member:getName(), ce + ve, ce, ve)

				--if ce >= 30000 or ve >= 30000 then
				--	master:printToParty(string.format(
				--	"I have capped enmity! (CE: %d, VE: %d)",
				--	member:getName(), ce, ve
				--	), 0, "Valaineral")
				--end
			end
		end)
end)

return m
