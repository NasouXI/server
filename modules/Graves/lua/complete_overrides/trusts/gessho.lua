-----------------------------------
-- Trust: Gessho (True Ninja AI)
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('gessho')

-- NIN elemental wheel mapping
local ninWheel = {
    FIRE      = xi.magic.spell.KATON_NI,
    WIND      = xi.magic.spell.HUTON_NI,
    EARTH     = xi.magic.spell.DOTON_NI,
    ICE       = xi.magic.spell.HYOTON_NI,
    LIGHTNING = xi.magic.spell.RAITON_NI,
    WATER     = xi.magic.spell.SUITON_NI,
}

-- Skillchain → Element → NIN spell
local function getNinjaBurstSpell(element)
    local scToElement = {
        [xi.skillchain.FUSION]        = "FIRE",
        [xi.skillchain.LIGHT]         = "FIRE",
        [xi.skillchain.LIQUEFACTION]  = "FIRE",

        [xi.skillchain.DISTORTION]    = "WATER",
        [xi.skillchain.DARKNESS]      = "WATER",
        [xi.skillchain.REVERBERATION] = "WATER",

        [xi.skillchain.GRAVITATION]   = "EARTH",
        [xi.skillchain.COMPRESSION]   = "EARTH",
        [xi.skillchain.SCISSION]      = "EARTH",

        [xi.skillchain.FRAGMENTATION] = "WIND",
        [xi.skillchain.DETONATION]    = "WIND",

        [xi.skillchain.INDURATION]    = "ICE",
        [xi.skillchain.IMPACTION]     = "LIGHTNING",
    }

    local ele = scToElement[element]
    if not ele then return nil end
    return ninWheel[ele]
end

-----------------------------------
-- Main Trust Logic
-----------------------------------
m:addOverride("xi.actions.spells.trust.gessho.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    xi.trust.teamworkMessage(trust, {
        [xi.magic.spell.NAJA_SALAHEEM] = xi.trust.messageOffset.TEAMWORK_1,
        [xi.magic.spell.ABQUHBAH]      = xi.trust.messageOffset.TEAMWORK_2,
    })

    ---------------------------------------------------------
    -- NINJA STATS
    ---------------------------------------------------------
    local power = trust:getMainLvl()

    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 4)

    -- Ninja identity
    trust:addMod(xi.mod.DUAL_WIELD, math.floor(power * 0.5)) -- ~50 DW at 99
    trust:addMod(xi.mod.SUBTLE_BLOW, 20)
    trust:addMod(xi.mod.SUBTLE_BLOW_II, 20)
    trust:addMod(xi.mod.EVA, power * 3)
    trust:addMod(xi.mod.STORE_TP, 20)
    trust:addMod(xi.mod.CRITHITRATE, 10)

    -- Enmity control
    trust:addMod(xi.mod.ENMITY, power * 40)
    trust:addMod(xi.mod.ENMITY_LOSS_REDUCTION, 20)

    ---------------------------------------------------------
    -- WEAPONSKILL FLAVOR MESSAGE
    ---------------------------------------------------------
    trust:addListener("WEAPONSKILL_USE", "GESSHO_WEAPONSKILL_USE", function(mobArg, target, wsid, tp, action)
        if wsid == 3257 then -- Shibaraku
            xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1)
        end
    end)

    ---------------------------------------------------------
    -- UTSUSEMI PRIORITY
    ---------------------------------------------------------
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COPY_IMAGE },
        { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.UTSUSEMI_NI })

    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COPY_IMAGE },
        { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.UTSUSEMI_ICHI })

    ---------------------------------------------------------
    -- YONIN / INNIN LOGIC
    ---------------------------------------------------------
    trust:addGambit(ai.t.SELF,
        { ai.c.HAS_TOP_ENMITY, 0 },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.YONIN })

    trust:addGambit(ai.t.SELF,
        { ai.c.NOT_HAS_TOP_ENMITY, 0 },
        { ai.r.JA, ai.s.SPECIFIC, xi.ja.INNIN })

    ---------------------------------------------------------
    -- DOTON TANKING LOGIC
    ---------------------------------------------------------
    -- Maintain Doton when tanking
    trust:addGambit(ai.t.SELF,
        { ai.c.HAS_TOP_ENMITY, 0, ai.c.NOT_STATUS, xi.effect.DOTON },
        { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DOTON_NI })

    trust:addGambit(ai.t.SELF,
        { ai.c.HAS_TOP_ENMITY, 0, ai.c.NOT_STATUS, xi.effect.DOTON },
        { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DOTON_ICHI })

    -- Refresh Doton when <10s left
    trust:addGambit(ai.t.SELF,
        { ai.c.HAS_TOP_ENMITY, 0, ai.c.STATUS_TIME_LESS, { xi.effect.DOTON, 10 } },
        { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DOTON_NI })

    ---------------------------------------------------------
    -- ELEMENTAL WHEEL (NIN STYLE)
    ---------------------------------------------------------
    trust:addGambit(ai.t.TARGET, { ai.c.ALWAYS }, { ai.r.MA, ai.s.CYCLE, {
        xi.magic.spell.KATON_NI, xi.magic.spell.KATON_ICHI,
        xi.magic.spell.HYOTON_NI, xi.magic.spell.HYOTON_ICHI,
        xi.magic.spell.HUTON_NI,  xi.magic.spell.HUTON_ICHI,
        xi.magic.spell.DOTON_NI,  xi.magic.spell.DOTON_ICHI,
        xi.magic.spell.RAITON_NI, xi.magic.spell.RAITON_ICHI,
        xi.magic.spell.SUITON_NI, xi.magic.spell.SUITON_ICHI,
    }})

    ---------------------------------------------------------
    -- AUTOMATIC MAGIC BURST
    ---------------------------------------------------------
    trust:addListener("SKILLCHAIN", "GESSHO_MB", function(mob, target, skillchainElement, action)
        local spell = getNinjaBurstSpell(skillchainElement)
        if not spell then return end

        mob:timer(800, function(m)
            if m:isDead() or target:isDead() then return end
            m:castSpell(spell, target)
        end)
    end)

    ---------------------------------------------------------
    -- NINJA WEAPONSKILL LOGIC
    ---------------------------------------------------------
    trust:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.HIGHEST)

    trust:addListener("COMBAT_TICK", "GESSHO_WS_PICKER", function(mob)
        if mob:getTP() < 1000 then return end

        local wsList = {
            225,  -- Blade: Jin
            226,  -- Blade: Ten
            227,  -- Blade: Chi
            3284, -- Blade: Hi (if available)
        }

        mob:useMobAbility(wsList[math.random(#wsList)])
    end)
end)

return m
