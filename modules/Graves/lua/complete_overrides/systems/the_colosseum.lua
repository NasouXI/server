-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("the_colosseum")

m:addOverride('xi.zones.The_Colosseum.Zone.onInitialize', function(zone)
    zone:registerCuboidTriggerArea(1, -47, -1.0, -4, -44, 1, 4)
end)

m:addOverride('xi.zones.The_Colosseum.Zone.onTriggerAreaEnter', function(player, triggerArea)
    switch (triggerArea:getTriggerAreaID()): caseof
    {
        [1] = function()
            player:startEvent(51)
        end,
    }
end)

m:addOverride('xi.zones.The_Colosseum.Zone.onEventFinish', function(player, csid, option, npc)
    if csid == 51 and
        option == 1 then
        player:setPos(80.2866, 0.0000, -103.8602, 194, 50)
    else return
    end
end)

return m

