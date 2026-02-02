-----------------------------------
-- Trust: aagk
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ark_angel_gk')


m:addOverride("xi.actions.spells.trust.aagk.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())
    local aagkLevel = trust:getMainLvl()

    -- Increase HP & MP
    trust:setMod(xi.mod.HP, 9 * aagkLevel)
    trust:updateHealth()
    trust:addHP(trust:getMaxHP())
  
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.HASSO }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.HASSO })
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.MEDITATE }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.MEDITATE })
    trust:addGambit(ai.t.SELF, { ai.c.HAS_TOP_ENMITY, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.THIRD_EYE })
    trust:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.JUMP })
    trust:addGambit(ai.t.TARGET, { ai.c.ALWAYS, 0 }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.HIGH_JUMP })
    trust:addGambit(ai.t.SELF, { ai.c.NOT_STATUS, xi.effect.SEKKANOKI }, { ai.r.JA, ai.s.SPECIFIC, xi.ja.SEKKANOKI })

    trust:setTrustTPSkillSettings(ai.tp.CLOSER, ai.s.HIGHEST)
    
    local power = trust:getMainLvl() * 2
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power * 5)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.WSACC, power * 5)
    trust:addMod(xi.mod.STR, power * 2)
    trust:addMod(xi.mod.STORETP, 240)
    trust:addMod(xi.mod.JUMP_TP_BONUS, 250)
end)

    -- Tachi Fudo
    xi.module.ensureTable("xi.actions.mobskills.tachi_fudo")
        m:addOverride("xi.actions.mobskills.tachi_fudo.onMobSkillCheck", function(target, mob, skill)

            return 0
        end)
        m:addOverride("xi.actions.mobskills.tachi_fudo.onMobWeaponSkill", function(target, mob, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 4
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.DMG_VARIES, 1, 2, 3)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)

    -- Around 700 damage from AA GK
    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)
    return dmg
        end)
return m
