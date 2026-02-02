-----------------------------------
-- Trust: august
-- Authored by Neckbeard
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/utils/utils") -- file dir changed
require("scripts/globals/weaponskills")
-----------------------------------
local m = Module:new('august')

m:addOverride("xi.actions.spells.trust.august.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())
    local augustLevel = trust:getMainLvl()

    -- Reset LocalVar on Spawn
    caster:setLocalVar("daybreak_WS", 0)

    -- Increase HP & MP
    trust:setMod(xi.mod.HP, 9 * augustLevel)
    trust:setMod(xi.mod.MP, 2 * augustLevel)
    trust:updateHealth()
    trust:addHP(trust:getMaxHP())
    trust:addMP(trust:getMaxMP())

    -- AAEV PullOver
    local power = trust:getMainLvl() * 1.5
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.REGEN, 5)
    trust:addMod(xi.mod.ABSORB_DMG_TO_MP, 5)
    trust:addMod(xi.mod.FASTCAST, power / 2)
    trust:addMod(xi.mod.CURE_POTENCY, power)
    trust:addMod(xi.mod.ENMITY, power * 111)

    -- Melee Skills (Added TP)
    trust:setMobSkillAttack(1197)
    -- TP Controller
    trust:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.RANDOM, 1500)
    -- Logic
    trust:addGambit(ai.t.SELF, { ai.c.NOT_HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE }) -- Provoke
    trust:addGambit(ai.t.PARTY, { ai.c.HPP_LT, 70 }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE }) -- Cure
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SENTINEL }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL }) -- Sentinel
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.REPRISAL }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.REPRISAL }) -- Reprisal
    -- Retail shows a range of CD (Unsure if Haste effected)
    trust:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.FLASH }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH })
    -- Daybreak Varaible
    caster:setLocalVar("daybreak_CD", os.time() + 180) -- Apply CD on spawn

    -- Daybreak Logic
    trust:addListener("COMBAT_TICK", "AUGUST_COMBAT_TICK", function(trustArg, targetArg)
        local coolDown = caster:getLocalVar("daybreak_CD")

        if caster:getMainLvl() >= 75 and coolDown < os.time() then
            -- remove PDT buff
            trustArg:setMod(xi.mod.DMGPHYS, 0) -- DMG reset from Daybreak.lua
            caster:setLocalVar("daybreak_WS", 0) -- Reset LocalVar
            -- Cooldown of Daybreak
            if (trust:getTarget():getMainLvl() > caster:getMainLvl() + 10) and trust:getTP() >= 1000 then -- 100% trigger if mobLvl > player + 10
                trustArg:useMobAbility(3652)
                trustArg:setTP(0)
                caster:setLocalVar("daybreak_CD", os.time() + 180)
                caster:setLocalVar("daybreak_WS", 1)

            elseif trust:getTP() >= 1000 then
                local roll = math.random(1, 10)

                if roll <= 3 then -- 30% trigger
                    trustArg:useMobAbility(3652)
                    trustArg:setTP(0)
                    caster:setLocalVar("daybreak_CD", os.time() + 180)
                    caster:setLocalVar("daybreak_WS", 1)
                else
                    print("Daybreak: 2 min CD")
                    caster:setLocalVar("daybreak_CD", os.time() + 120)
                end
            end
        end

        if caster:getLocalVar("daybreak_WS") == 1 and coolDown > os.time() then
            local randomTP = math.random(1, 2)

            if trust:getTP() >= 1000  and randomTP == 1 then
                trustArg:useMobAbility(3656)
                trustArg:setTP(0)
                caster:setLocalVar("daybreak_WS", 2)
            elseif trust:getTP() >= 1000  and randomTP == 2 then
                trustArg:useMobAbility(3657)
                trustArg:setTP(0)
                caster:setLocalVar("daybreak_WS", 2)
            end

        elseif caster:getLocalVar("daybreak_WS") == 2 and trust:getTP() >= 1000 then
            trustArg:useMobAbility(3658)
            trustArg:setTP(0)
            caster:setLocalVar("daybreak_WS", 0)
        end

    end)
end)

m:addOverride("xi.actions.spells.trust.august.onMobSpawn", function(caster, target, spell)
end)

m:addOverride("xi.actions.spells.trust.august.onMobDespawn", function(mob)
    mob:removeListener("AUGUST_COMBAT_TICK")
end)

-- Add TP logic and Damage adjustments to August Attacks
    -- Sword
    m:addOverride("xi.actions.mobskills.august_melee_sword.onMobWeaponSkill", function(target, mob, skill)
        local numhits = 2
        local accmod = 1
        local dmgmod = 1.1
        local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
        local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)
        skill:setMsg(xi.msg.basic.HIT_DMG)

        if dmg > 0 then
            mob:addTP(144)
        end

        return dmg
    end)
    -- Bow
    m:addOverride("xi.actions.mobskills.august_melee_bow.onMobWeaponSkill", function(target, mob, skill)
        local numhits = 2
        local accmod = 1
        local dmgmod = 1
        local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
        local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.RANGED, xi.damageType.PIERCING, info.hitslanded)
        target:takeDamage(dmg, mob, xi.attackType.RANGED, xi.damageType.PIERCING)
        skill:setMsg(xi.msg.basic.HIT_DMG)

        if dmg > 0 then
            mob:addTP(134)
        end

        return dmg
    end)
    -- H2H
    m:addOverride("xi.actions.mobskills.august_melee_h2h.onMobWeaponSkill", function(target, mob, skill)
        local numhits = 1
        local accmod = 2
        local dmgmod = 1.3
        local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
        local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.BLUNT, info.hitslanded)
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.BLUNT)
        skill:setMsg(xi.msg.basic.HIT_DMG)

        if dmg > 0 then
            mob:addTP(134)
        end

        return dmg
    end)
    -- Axe
    m:addOverride("xi.actions.mobskills.august_melee_axe.onMobWeaponSkill", function(target, mob, skill)
        local numhits = 1
        local accmod = 2
        local dmgmod = 1.3
        local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
        local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)
        skill:setMsg(xi.msg.basic.HIT_DMG)

        if dmg > 0 then
            mob:addTP(144)
        end

        return dmg
    end)

-- August mobskills
    -- Alabaster Burst
    xi.module.ensureTable("xi.actions.mobskills.alabaster_burst")
        m:addOverride("xi.actions.mobskills.alabaster_burst.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.alabaster_burst.onMobWeaponSkill", function(target, mob, skill)
            local numhits = 3
            local accmod = 2
            local dmgmod = 4.5
            local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
            local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
            target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)

            return dmg
        end)
    -- Tartaric Sigil
    xi.module.ensureTable("xi.actions.mobskills.tartaric_sigil")
        m:addOverride("xi.actions.mobskills.tartaric_sigil.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.tartaric_sigil.onMobWeaponSkill", function(target, mob, skill)
            local damage = math.floor(mob:getWeaponDmg() * 3)
            local dmgmod = 3.4
            damage = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.DARK, dmgmod, xi.mobskills.magicalTpBonus.MAB_BONUS, 1)
            damage = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.DARK, xi.mobskills.shadowBehavior.IGNORE_SHADOWS)
            target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.DARK)

            return damage
        end)
    -- Null Field
    xi.module.ensureTable("xi.actions.mobskills.null_field")
        m:addOverride("xi.actions.mobskills.null_field.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.null_field.onMobWeaponSkill", function(target, mob, skill)
            local damage = math.floor(mob:getWeaponDmg() * 3)
            local dmgmod = 2
            damage   = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.FIRE, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT, 1)
            damage    = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.FIRE, xi.mobskills.shadowBehavior.WIPE_SHADOWS)
            target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.FIRE)

            return damage
        end)
    -- Fulminous Fury
    xi.module.ensureTable("xi.actions.mobskills.fulminous_fury")
        m:addOverride("xi.actions.mobskills.fulminous_fury.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.fulminous_fury.onMobWeaponSkill", function(target, mob, skill)
            xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.SLOW, 1250, 0, 60)
            xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.POISON, mob:getMainLvl() / 10, 3, 60)
            xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.SILENCE, 1, 0, 60)
            xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.PARALYSIS, 15, 0, 60)
            xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.BLINDNESS, 15, 0, 60)
            local damage = math.floor(mob:getWeaponDmg() * 4)
            local dmgmod = 2
            damage = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.THUNDER, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT, 1)
            damage = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.THUNDER, xi.mobskills.shadowBehavior.WIPE_SHADOWS)
            target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.THUNDER)

            return damage
        end)
    -- No Quarter
    xi.module.ensureTable("xi.actions.mobskills.no_quarter")
        m:addOverride("xi.actions.mobskills.no_quarter.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.no_quarter.onMobWeaponSkill", function(target, mob, skill)
            local numhits = 3
            local accmod = 3
            local dmgmod = 4
            local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
            local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
            target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)

            return dmg
        end)
    -- Daybreak
    xi.module.ensureTable("xi.actions.mobskills.daybreak")
        m:addOverride("xi.actions.mobskills.daybreak.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.daybreak.onMobWeaponSkill", function(target, mob, skill)
            local trustLvl = mob:getMainLvl()

            mob:setAnimationSub(5) -- WINGS
            -- erase effects (using erase)
            mob:delStatusEffect(xi.effect.PARALYSIS)
            mob:delStatusEffect(xi.effect.BIND)
            mob:delStatusEffect(xi.effect.WEIGHT)
            mob:delStatusEffect(xi.effect.ADDLE)
            mob:delStatusEffect(xi.effect.BURN)
            mob:delStatusEffect(xi.effect.FROST)
            mob:delStatusEffect(xi.effect.CHOKE)
            mob:delStatusEffect(xi.effect.RASP)
            mob:delStatusEffect(xi.effect.SHOCK)
            mob:delStatusEffect(xi.effect.DROWN)
            mob:delStatusEffect(xi.effect.DIA)
            mob:delStatusEffect(xi.effect.BIO)
            mob:delStatusEffect(xi.effect.STR_DOWN)
            mob:delStatusEffect(xi.effect.DEX_DOWN)
            mob:delStatusEffect(xi.effect.VIT_DOWN)
            mob:delStatusEffect(xi.effect.AGI_DOWN)
            mob:delStatusEffect(xi.effect.INT_DOWN)
            mob:delStatusEffect(xi.effect.MND_DOWN)
            mob:delStatusEffect(xi.effect.CHR_DOWN)
            mob:delStatusEffect(xi.effect.MAX_HP_DOWN)
            mob:delStatusEffect(xi.effect.MAX_MP_DOWN)
            mob:delStatusEffect(xi.effect.ATTACK_DOWN)
            mob:delStatusEffect(xi.effect.EVASION_DOWN)
            mob:delStatusEffect(xi.effect.DEFENSE_DOWN)
            mob:delStatusEffect(xi.effect.MAGIC_DEF_DOWN)
            mob:delStatusEffect(xi.effect.INHIBIT_TP)
            mob:delStatusEffect(xi.effect.MAGIC_ACC_DOWN)
            mob:delStatusEffect(xi.effect.MAGIC_ATK_DOWN)
            -- August will heal slightly based off level
            mob:addHP(trustLvl * 7)
            mob:addMP(trustLvl * 7)
            -- Damage taken -50% (Video supports this)
            mob:setMod(xi.mod.DMGPHYS, 50) -- See Module for removal

            local damage = math.floor(mob:getWeaponDmg() * 4)
            local dmgmod = 3
            damage   = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.LIGHT, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT, 1)
            damage    = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.LIGHT, xi.mobskills.shadowBehavior.WIPE_SHADOWS)
            target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.LIGHT)

            return damage
        end)
    -- Noble Frenzy
    xi.module.ensureTable("xi.actions.mobskills.noble_frenzy")
        m:addOverride("xi.actions.mobskills.noble_frenzy.onMobSkillCheck", function(target, mob, skill)
            return 0
        end)
        m:addOverride("xi.actions.mobskills.noble_frenzy.onMobWeaponSkill", function(target, mob, skill)
            local numhits = 5
            local accmod  = 2
            local dmgmod  = 4.5
            local info    = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.DMG_VARIES, 1.5625, 1.875, 2.50)
            local dmg     = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)
            target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)

            return dmg
        end)

return m
