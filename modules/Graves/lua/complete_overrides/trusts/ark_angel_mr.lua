-----------------------------------
-- Trust: aamr
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ark_angel_mr')


m:addOverride("xi.actions.spells.trust.aamr.onMobSpawn", function(mob)
   xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    local aamrLevel = mob:getMainLvl()

    -- Increase HP & MP
    mob:setMod(xi.mod.HP, 9 * aamrLevel)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())

    local power = mob:getMainLvl() * 2
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 2)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.MACC, power * 5)
    mob:addMod(xi.mod.MATT, power * 5)
    mob:addMod(xi.mod.WSACC, power * 5)
    mob:addMod(xi.mod.DEX, power)
    mob:addMod(xi.mod.AGI, power)
    mob:addMod(xi.mod.DOUBLE_ATTACK, 15)
    mob:addMod(xi.mod.TRIPLE_ATTACK, 15)
    mob:addMod(xi.mod.STORETP, 240)
    mob:addMod(xi.mod.REGAIN, 10)
    mob:addMod(xi.mod.HASTE_GEAR, 500)

    -- Shadows are represented by xi.effect.COPY_IMAGE, but with different icons depending on the tier
    mob:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.COPY_IMAGE }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI })
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.BLINDNESS }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.KURAYAMI }, 60)
    mob:addGambit(ai.t.TARGET, { ai.c.NOT_STATUS, xi.effect.SLOW }, { ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HOJO }, 60)   -- mob:addSimpleGambit(ai.t.SELF, ai.c.TP_GTE, 1000, ai.r.JA, ai.s.SPECIFIC, xi.ja.SNEAK_ATTACK)


    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.BERSERK })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.WARCRY })
    mob:addGambit(ai.t.SELF, { ai.c.ALWAYS, 0 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.AGGRESSOR })
    if mob:getMaster():getMainLvl() > 75 then
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 51 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.RESTRAINT })
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 51 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.BLOOD_RAGE })
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 51 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.BRAZEN_RUSH })
    end
    mob:addGambit(ai.t.SELF, { ai.c.HPP_LT, 51 },  { ai.r.JA, ai.s.SPECIFIC, xi.ja.MIGHTY_STRIKES })
    mob:addGambit(ai.t.SELF, { ai.c.PT_HAS_TANK, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.INNIN }) 

    mob:addListener('ABILITY_USE',  'MIGHTY_STRIKS_ABILITY', function(mob, target, ability, action)
                        if ability:getID() == 16 then
                           mob:useMobAbility(695) -- blood weapon
                                mob:timer(2, function(mobArg)
                                mobArg:useJobAbility(xi.ja.LAST_RESORT)
                                end)
                                mob:timer(4, function(mobArg)
                                mobArg:useJobAbility(xi.ja.SOULEATER)
                                end)
                        end
    end)

    mob:setTrustTPSkillSettings(ai.tp.ASAP , ai.s.HIGHEST, 2000)
end)

    -- Cloud Splitter
    xi.module.ensureTable("xi.actions.mobskills.cloudsplitter")
        m:addOverride("xi.actions.mobskills.cloudsplitter.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.cloudsplitter.onMobWeaponSkill", function(target, mob, skill)
            local damage = math.floor(mob:getWeaponDmg() * 3)
            local dmgmod = 2
            damage = xi.mobskills.mobMagicalMove(mob, target, skill, damage, xi.element.THUNDER, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT, 1)
            damage = xi.mobskills.mobFinalAdjustments(damage, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.THUNDER, xi.mobskills.shadowBehavior.WIPE_SHADOWS)
            target:takeDamage(damage, mob, xi.attackType.MAGICAL, xi.damageType.THUNDER)

            return damage
        end)

return m
