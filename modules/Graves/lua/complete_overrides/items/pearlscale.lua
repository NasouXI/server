require("modules/module_utils")
require("scripts/globals/status")
--------------------------------------------

local m = Module:new("pearlscale")

-- Elvorseal food (Pearlscale 5714)
m:addOverride("xi.globals.items.pearlscale.onItemCheck", function(target)
    if target:hasStatusEffect(xi.effect.ELVORSEAL) then
        result = xi.msg.basic.IS_FULL
    end

    return result
end)

m:addOverride("xi.globals.items.pearlscale.onItemUse", function(target)
    target:addStatusEffect(xi.effect.ELVORSEAL, 1, 0, 3600)
end)

m:addOverride("xi.globals.items.pearlscale.onEffectGain", function(target)
end)

m:addOverride("xi.globals.items.pearlscale.onEffectLose", function(target)
end)

return m
