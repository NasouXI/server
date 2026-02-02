-----------------------------------
-- Trust: Leonoyne (DRK/BLM Hybrid)
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('leonoyne')

---------------------------------------------------------
-- Helper: Always return Tier II nukes
---------------------------------------------------------
local function getTier2Nuke()
    return xi.magic.spell.BLIZZARD_II
end

---------------------------------------------------------
-- Helper: Skillchain element → Tier II MB spell
---------------------------------------------------------
local function getMBSpellFromSC(scElement)
    -- Map SC → elemental flavor
    local scToElement = {
        [xi.skillchain.FUSION]        = "FIRE",
        [xi.skillchain.LIQUEFACTION]  = "FIRE",
        [xi.skillchain.LIGHT]         = "LIGHT",

        [xi.skillchain.FRAGMENTATION] = "THUNDER",
        [xi.skillchain.DETONATION]    = "WIND",

        [xi.skillchain.DISTORTION]    = "ICE",
        [xi.skillchain.INDURATION]    = "ICE",
        [xi.skillchain.REVERBERATION] = "WATER",

        [xi.skillchain.GRAVITATION]   = "EARTH",
        [xi.skillchain.SCISSION]      = "EARTH",
        [xi.skillchain.COMPRESSION]   = "DARK",

        [xi.skillchain.DARKNESS]      = "DARK",
    }

    local ele = scToElement[scElement]
    if not ele then return nil end

    -- Always Tier II spells
    local elementToTier2 = {
        FIRE      = xi.magic.spell.FIRE_II,
        ICE       = xi.magic.spell.BLIZZARD_II,
        WIND      = xi.magic.spell.AERO_II,
        EARTH     = xi.magic.spell.STONE_II,
        WATER     = xi.magic.spell.WATER_II,
        THUNDER   = xi.magic.spell.THUNDER_II,
        DARK      = xi.magic.spell.DRAIN,     -- DRK flavor
        LIGHT     = xi.magic.spell.BANISH_II, -- if available
    }

    return elementToTier2[ele]
end

---------------------------------------------------------
-- Main Trust Logic
---------------------------------------------------------
m:addOverride("xi.actions.spells.trust.leonoyne.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    ---------------------------------------------------------
    -- REACTIVE STUN
    ---------------------------------------------------------
    trust:addGambit(ai.t.TARGET, { ai.c.READYING_WS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    trust:addGambit(ai.t.TARGET, { ai.c.READYING_MS, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    trust:addGambit(ai.t.TARGET, { ai.c.READYING_JA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })
    trust:addGambit(ai.t.TARGET, { ai.c.CASTING_MA, 0 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN })

    ---------------------------------------------------------
    -- DRK OFFENSIVE MODES
    ---------------------------------------------------------
    trust:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.LAST_RESORT })
    trust:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SOULEATER })

    ---------------------------------------------------------
    -- DARK MAGIC CORE
    ---------------------------------------------------------
    trust:addGambit(ai.t.TARGET, { ai.c.HPP_LT, 60 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DRAIN })
    trust:addGambit(ai.t.TARGET, { ai.c.MPP_LT, 40 }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ASPIR })
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.BIO }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BIO_II })
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.STR_DOWN }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ABSORB_STR })
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.ACC_DOWN }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ABSORB_ACC })

    ---------------------------------------------------------
    -- NORMAL NUKING (Tier II only)
    ---------------------------------------------------------
    trust:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 },
        { ai.r.MA, ai.s.SPECIFIC, getTier2Nuke() })

    ---------------------------------------------------------
    -- MAGIC BURST (Tier II only)
    ---------------------------------------------------------
    trust:addListener("SKILLCHAIN", "LEONOYNE_MB", function(mob, scTarget, scElement, action)
        local spell = getMBSpellFromSC(scElement)
        if not spell then return end

        mob:timer(700, function(m)
            if m:isDead() or scTarget:isDead() then return end
            m:castSpell(spell, scTarget)
        end)
    end)

    ---------------------------------------------------------
    -- GREAT SWORD WEAPONSKILLS
    ---------------------------------------------------------
    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.HIGHEST)

    trust:addListener("COMBAT_TICK", "LEONOYNE_WS", function(mob)
        if mob:getTP() < 1000 then return end

        local wsList = {
            144, -- Hard Slash
            145, -- Power Slash
            146, -- Frostbite
            147, -- Freezebite
            148, -- Shockwave
            149, -- Crescent Moon
            150, -- Sickle Moon
            151, -- Spinning Slash
            152, -- Ground Strike
            3532, -- Torcleaver (if available)
        }

        mob:useMobAbility(wsList[math.random(#wsList)])
    end)

    ---------------------------------------------------------
    -- STAT SCALING
    ---------------------------------------------------------
    local power = trust:getMainLvl()

    trust:addMod(xi.mod.MATT, power * 2)
    trust:addMod(xi.mod.MACC, power * 2)
    trust:addMod(xi.mod.DEF, power * 2)
    trust:addMod(xi.mod.MDEF, power * 2)
    trust:addMod(xi.mod.ATT, power * 3)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.DOUBLE_ATTACK, 20)
    trust:addMod(xi.mod.TRIPLE_ATTACK, 9)
    trust:addMod(xi.mod.STORETP, 100)
    trust:addMod(xi.mod.REFRESH, 3)
end)

return m
