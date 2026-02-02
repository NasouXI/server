-----------------------------------
-- Common Requires
-----------------------------------
require("modules/module_utils")
require('scripts/globals/npc_util')
require("scripts/globals/status")

-----------------------------------
-- ID Requires
-----------------------------------
local dragonsAeryID   = require("scripts/zones/Dragons_Aery/IDs")
local valleySorrowsID = require("scripts/zones/Valley_of_Sorrows/IDs")
local behemothDomID   = require("scripts/zones/Behemoths_Dominion/IDs")

-----------------------------------
-- Module definition
-----------------------------------
local m = Module:new("land_king_qms")

m:addOverride("xi.zones.Dragons_Aery.npcs.qm0.onTrade", function(player, npc, trade)
    if not GetMobByID(dragonsAeryID.mob.FAFNIR):isSpawned() and not GetMobByID(dragonsAeryID.mob.NIDHOGG):isSpawned() then
        if npcUtil.tradeHasExactly(trade, 3340) and npcUtil.popFromQM(player, npc, dragonsAeryID.mob.NIDHOGG) then
            player:confirmTrade()
        end
    end
end)

m:addOverride("xi.zones.Valley_of_Sorrows.npcs.qm1.onTrade", function(player, npc, trade)
    if not GetMobByID(valleySorrowsID.mob.ADAMANTOISE):isSpawned() and not GetMobByID(valleySorrowsID.mob.ASPIDOCHELONE):isSpawned() then
        if npcUtil.tradeHasExactly(trade, 3344) and npcUtil.popFromQM(player, npc, valleySorrowsID.mob.ASPIDOCHELONE) then
            player:confirmTrade()
        end
    end
end)

m:addOverride("xi.zones.Behemoths_Dominion.npcs.qm2.onTrade", function(player, npc, trade)
    if not GetMobByID(behemothDomID.mob.BEHEMOTH):isSpawned() and not GetMobByID(behemothDomID.mob.KING_BEHEMOTH):isSpawned() then
        if npcUtil.tradeHasExactly(trade, 3342) and npcUtil.popFromQM(player, npc, behemothDomID.mob.KING_BEHEMOTH) then
            player:confirmTrade()
        end
    end
end)

return m
