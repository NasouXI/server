require("modules/module_utils")
require("scripts/globals/shop")
-----------------------------------

local m = Module:new("teodor")

m:addOverride("xi.zones.Throne_Room.Zone.onInitialize", function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local teodor = zone:insertDynamicEntity({
        objtype  = xi.objType.NPC,
        name     = "Teodor",
        look     = 3103,
        x        = -0.255,
        y        = 0.000,
        z        = -19.674,
        rotation = 180,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,

        onTrigger = function(player, npc)
            local stock =
            {
                6377, 100000,    -- Imperial Chair
                6378, 100000,    -- Decorative Chair 
                6379, 100000,    -- Ornate Stool
                6380, 100000,    -- Refined Chair
                6408, 100000,    -- Portable Container
                6411, 100000,    -- Chocobo Chair
                6409, 200000,    -- Ephramadian Throne
                6412, 200000,    -- Leaf Bench
                6413, 200000,    -- Astral Cube
                6410, 500000,    -- Shadow Throne
            }

            player:PrintToPlayer("Have a seat", 0, npc:getPacketName())
            xi.shop.general(player, stock)
        end,
    })

    utils.unused(teodor)
end)

return m
