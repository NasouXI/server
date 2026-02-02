--------------------------------------------
-- Item: Beitetsu Parcel
-- Repurposed as a container for escha beads
--------------------------------------------
require("modules/module_utils")
--------------------------------------------
local m = Module:new("bead_pouch")

m:addOverride("xi.globals.items.bead_pouch.onItemUse", function(target)
    local beads = math.random(5,15)
    target:addCurrency("escha_beads", beads)
    target:PrintToPlayer(string.format("You find %s escha beads.", beads), xi.msg.channel.SYSTEM_3)
end)

return m
