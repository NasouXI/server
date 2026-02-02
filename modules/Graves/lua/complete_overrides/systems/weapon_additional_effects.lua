require("modules/module_utils")
require("scripts/globals/teleports") -- For warp weapon proc.
require("scripts/globals/status")
require("scripts/globals/magic") -- For resist functions
require("scripts/globals/utils") -- For clamping function
require("scripts/globals/msg")
-------------------------------------

local m = Module:new("weapon_additional_effects")

m:addOverride("xi.additionalEffect.attack", function(attacker, defender, baseAttackDamage, item)
    local addType   = item:getMod(xi.mod.ITEM_ADDEFFECT_TYPE)
    local subEffect = item:getMod(xi.mod.ITEM_SUBEFFECT)
    local damage    = item:getMod(xi.mod.ITEM_ADDEFFECT_DMG)
    local chance    = item:getMod(xi.mod.ITEM_ADDEFFECT_CHANCE)
    local element   = item:getMod(xi.mod.ITEM_ADDEFFECT_ELEMENT)
    local addStatus = item:getMod(xi.mod.ITEM_ADDEFFECT_STATUS)
    local power     = item:getMod(xi.mod.ITEM_ADDEFFECT_POWER)
    local duration  = item:getMod(xi.mod.ITEM_ADDEFFECT_DURATION)
    local msgID     = 0
    local msgParam  = 0

    local procType =
    {
        -- These are arbitrary, make up new ones as needed.
        DAMAGE        = 1,
        DEBUFF        = 2,
        HP_HEAL       = 3,
        MP_HEAL       = 4,
        HP_DRAIN      = 5,
        MP_DRAIN      = 6,
        TP_DRAIN      = 7,
        HPMPTP_DRAIN  = 8,
        DISPEL        = 9,
        ABSORB_STATUS = 10,
        SELF_BUFF     = 11,
        DEATH         = 12,
        EXCALIBUR     = 13
    }

    -- If we're not going to proc, lets not execute all those checks!
    if math.random(1, 100) > chance then
        return 0, 0, 0
    end

    --------------------------------------
    -- Modifications for proc's sourced from ranged attacks. See notes at top of script.
    if xi.additionalEffect.isRanged(item) then
        if element then
            damage = xi.additionalEffect.calcRangeBonus(attacker, defender, element, damage)
        end

        chance = xi.additionalEffect.levelCorrection(defender:getMainLvl(), attacker:getMainLvl(), chance)
    end
    --------------------------------------

    if addType == procType.DAMAGE then
        damage = xi.additionalEffect.calcDamage(attacker, element, defender, damage)
        msgID  = xi.msg.basic.ADD_EFFECT_DMG

        if damage < 0 then
            msgID = xi.msg.basic.ADD_EFFECT_HEAL
        end

        msgParam = damage

    elseif addType == procType.DEBUFF then
        if addStatus and addStatus > 0 then
            local tick = xi.additionalEffect.statusAttack(addStatus, defender)
            msgID      = xi.msg.basic.ADD_EFFECT_STATUS
            defender:addStatusEffect(addStatus, power, tick, duration)
            msgParam = addStatus
        end

    elseif addType == procType.HP_HEAL then -- Its not a drain and works vs undead. https://www.bg-wiki.com/bg/Dominion_Mace
        local hitPoints = damage -- Note: not actually damage, if you wanted damage see HP_DRAIN instead
        -- Unknown what modifies the HP, using power directly for now
        msgID = xi.msg.basic.ADD_EFFECT_HP_HEAL
        attacker:addHP(hitPoints)
        msgParam = hitPoints

    elseif addType == procType.MP_HEAL then -- Mjollnir does this, it is not Aspir.
        local magicPoints = damage
        -- Unknown what modifies this, using power directly for now
        msgID = xi.msg.basic.ADD_EFFECT_MP_HEAL
        attacker:addMP(magicPoints)
        msgParam = magicPoints

    elseif addType == procType.HP_DRAIN or (addType == procType.HPMPTP_DRAIN and math.random(1, 3) == 1) then
        damage = xi.additionalEffect.calcDamage(attacker, element, defender, damage)

        if damage > defender:getHP() then
            damage = defender:getHP()
        end

        msgID    = xi.msg.basic.ADD_EFFECT_HP_DRAIN
        msgParam = damage
        defender:addHP(-damage)
        attacker:addHP(damage)

    elseif addType == procType.MP_DRAIN or (addType == procType.HPMPTP_DRAIN and math.random(1, 3) == 2) then
        damage = xi.additionalEffect.calcDamage(attacker, element, defender, damage)

        if damage > defender:getMP() then
            damage = defender:getMP()
        end

        msgID    = xi.msg.basic.ADD_EFFECT_MP_DRAIN
        msgParam = damage
        defender:addMP(-damage)
        attacker:addMP(damage)

    elseif addType == procType.TP_DRAIN or (addType == procType.HPMPTP_DRAIN and math.random(1, 3) == 3) then
        damage = xi.additionalEffect.calcDamage(attacker, element, defender, damage)

        if damage > defender:getTP() then
            damage = defender:getTP()
        end

        msgID    = xi.msg.basic.ADD_EFFECT_TP_DRAIN
        msgParam = damage
        defender:addTP(-damage)
        attacker:addTP(damage)

    elseif addType == procType.DISPEL then
        local dispel = defender:dispelStatusEffect()
        -- Resistance check should be in dispelStatusEffect() itself
        if dispel == xi.effect.NONE then
            return 0, 0, 0
        else
            msgID = xi.msg.basic.ADD_EFFECT_DISPEL
            msgParam = dispel
        end

    elseif addType == procType.ABSORB then
        -- Ripping off Aura Steal here
        local resist = applyResistanceAddEffect(attacker, defender, element, 0)
        if resist > 0.0625 then
            local stolen = attacker:stealStatusEffect(defender)
            msgID        = xi.msg.basic.STEAL_EFFECT
            msgParam     = stolen
        end

    elseif addType == procType.SELF_BUFF then
        if addStatus == xi.effect.TELEPORT then -- WARP
            attacker:addStatusEffectEx(xi.effect.TELEPORT, 0, xi.teleport.id.WARP, 0, 1)
            msgID    = xi.msg.basic.ADD_EFFECT_WARP
            msgParam = 0
        elseif addStatus == xi.effect.BLINK then -- BLINK http://www.ffxiah.com/item/18830/gusterion
            -- Does not stack with or replace other shadows
            if attacker:hasStatusEffect(xi.effect.BLINK) or attacker:hasStatusEffect(xi.effect.UTSUSEMI) then
                return 0, 0, 0
            else
                attacker:addStatusEffect(xi.effect.BLINK, power, 0, duration)
                msgID    = xi.msg.basic.ADD_EFFECT_SELFBUFF
                msgParam = xi.effect.BLINK
            end
        elseif addStatus == xi.effect.HASTE then
            attacker:addStatusEffect(xi.effect.HASTE, power, 0, duration, 0, 0)
            -- Todo: verify power/duration/tier/overwrite etc
            msgID    = xi.msg.basic.ADD_EFFECT_SELFBUFF
            msgParam = xi.effect.HASTE
        else
            print("scripts/globals/additional_effects.lua : unhandled additional effect selfbuff! Effect ID: "..addStatus)
        end

    elseif addType == procType.DEATH then
        if
            defender:isNM() or
            defender:isUndead() or
            -- Todo: DeathRes has no place in the resistance functions so far..
            math.random(1, 100) > defender:getMod(xi.mod.DEATHRES) -- We are checking for a fail, not a success.
        then
            return 0, 0, 0 -- NMs immune or roll failed so return out
        else
            msgID = xi.msg.basic.ADD_EFFECT_STATUS
            msgParam = xi.effect.KO
            defender:setHP(0)
        end
    elseif addType == procType.EXCALIBUR then
        damage = xi.additionalEffect.calcDamage(attacker, element, defender, damage)
        damage = attacker:getHP() / 4
        defender:addHP(-damage)
        msgID = xi.msg.basic.ADD_EFFECT_DMG_2
        msgParam = damage
    end

    return subEffect, msgID, msgParam
end)

return m
