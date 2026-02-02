-----------------------------------
-- Trust: Mayakov (Enhanced Dancer AI)
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('mayakov')

m:addOverride("xi.actions.spells.trust.mayakov.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    ---------------------------------------------------------
    -- HEALING / SUPPORT WALTZES
    ---------------------------------------------------------
    trust:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 65 },
        { ai.r.JA, ai.s.HIGHEST_WALTZ, xi.ja.CURING_WALTZ })

    trust:addGambit(ai.t.SELF, { ai.c.STATUS_FLAG, xi.effectFlag.WALTZABLE },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.HEALING_WALTZ })

    ---------------------------------------------------------
    -- SAMBA / DANCE MODES
    ---------------------------------------------------------
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SABER_DANCE },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.SABER_DANCE })

    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.HASTE_SAMBA },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.HASTE_SAMBA })

    ---------------------------------------------------------
    -- ROGUE'S ROLL (if COR present)
    ---------------------------------------------------------
    trust:addGambit(ai.t.PARTY, { ai.c.NOT_STATUS, xi.effect.ROGUES_ROLL },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.ROGUES_ROLL })

    ---------------------------------------------------------
    -- STEPS + PRESTO LOGIC
    ---------------------------------------------------------
    -- Use Presto when Daze < 10s
    trust:addGambit(ai.t.TARGET, { ai.c.STATUS_LT, xi.effect.BEWILDERED_DAZE_1, 10 },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.PRESTO })

    -- After Presto, apply Feather Step
    trust:addGambit(ai.t.SELF, { ai.c.STATUS, xi.effect.PRESTO },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.FEATHER_STEP })

    ---------------------------------------------------------
    -- FLOURISHES (DNC TP ENGINE)
    ---------------------------------------------------------
    -- Reverse Flourish when 3+ finishing moves
    trust:addGambit(ai.t.SELF, { ai.c.FINISHING_MOVES_GE, 3 },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.REVERSE_FLOURISH })

    -- No Foot Rise when TP < 500
    trust:addGambit(ai.t.SELF, { ai.c.TP_LT, 500 },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.NO_FOOT_RISE })

    ---------------------------------------------------------
    -- WEAPONSKILL LOGIC (Dancer-appropriate)
    ---------------------------------------------------------
    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.HIGHEST)

    trust:addListener("COMBAT_TICK", "MAYAKOV_WS", function(mob)
        if mob:getTP() < 1000 then return end

        local wsList = {
            225, -- Dancing Edge
            226, -- Shark Bite
            227, -- Evisceration
            3284, -- Rudra's Storm (if available)
        }

        mob:useMobAbility(wsList[math.random(#wsList)])
    end)

    ---------------------------------------------------------
    -- STAT SCALING (DNC‑like)
    ---------------------------------------------------------
    local power = trust:getMainLvl()

    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 4)

    -- Dancer traits
    trust:addMod(xi.mod.STORETP, 35)
    trust:addMod(xi.mod.DOUBLE_ATTACK, 20)
    trust:addMod(xi.mod.TRIPLE_ATTACK, 10)

    -- **Dual Wield added**
    trust:addMod(xi.mod.DUAL_WIELD, math.floor(power * 0.4)) -- ~40 DW at 99

end)

return m

