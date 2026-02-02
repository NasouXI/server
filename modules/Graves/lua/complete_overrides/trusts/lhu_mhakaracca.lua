-----------------------------------
require("modules/module_utils")
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/trust")
require("scripts/globals/utils")
require("scripts/globals/weaponskillids")
require("scripts/globals/zone")
-----------------------------------
local m = Module:new("lhu_mhakaracca")

local trustToReplaceName = "lhu_mhakaracca"

m:addOverride(string.format("xi.globals.spells.trust.%s.onSpellCast", trustToReplaceName), function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())

    trust:setModelId(3121) -- Trust: Matsui-P
    trust:renameEntity("Matsui-P")

    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.COPY_IMAGE, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.BLINDNESS, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.KURAYAMI)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.SLOW, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HOJO)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE) 
    trust:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 45)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_WS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_MS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.READYING_JA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.CASTING_MA, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.STUN) 
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.INNIN, ai.r.JA, ai.s.SPECIFIC, xi.ja.INNIN)

    trust:setTrustTPSkillSettings(ai.tp.OPENER, ai.s.RANDOM)

    local power = trust:getMainLvl()
    trust:addMod(xi.mod.MATT, power)
    trust:addMod(xi.mod.MACC, power)
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power)
    trust:addMod(xi.mod.ACC, power * 4)
    trust:addMod(xi.mod.DOUBLE_ATTACK, 25)  
    trust:addMod(xi.mod.MP, 150)    
end)
m:addOverride(string.format("xi.globals.spells.trust.%s.onMobSpawn", trustToReplaceName), function(mob)
    for _, member in ipairs(mob:getMaster():getParty()) do
        if member:isPC() then
            member:PrintToPlayer("Matsui-P, Lets get this party started", 4, "Matsui-P") --4: MESSAGE_PARTY
        end 
    end
end)

return m