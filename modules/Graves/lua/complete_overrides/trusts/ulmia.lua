-----------------------------------
-- Trust: ulima
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ulmia')


m:addOverride("xi.actions.spells.trust.ulmia.onMobSpawn", function(mob)
    super(mob)
    mob:addGambit(ai.t.TARGET, { ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE }, { ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.MAGIC_FINALE })
end)

return m
