require("modules/module_utils")
require('scripts/globals/npc_util')
-----------------------------------
local m = Module:new("salvage_gear")

m:addOverride("xi.zones.Aht_Urhgan_Whitegate.npcs.Ghanraam.onTrade", function(player, npc, trade)
    local imperialGoldPieces = npcUtil.tradeHas(trade, {{ 2187, 10 }})

    if player:getFreeSlotsCount() > 1 and imperialGoldPieces then
        local orichalcumIngots   = npcUtil.tradeHas(trade, {{  747,  6 }})
        local wootzIngots        = npcUtil.tradeHas(trade, {{  686,  6 }})
        local bloodwoodLumber    = npcUtil.tradeHas(trade, {{  730,  6 }})
        local wamouraCloth       = npcUtil.tradeHas(trade, {{ 2289,  6 }})
        local maridLeather       = npcUtil.tradeHas(trade, {{ 2152,  6 }})

        if npcUtil.tradeHas(trade, 16085, 16086, 16087) and orichalcumIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 16084)
        elseif npcUtil.tradeHas(trade, 14547, 14548, 14549) and wootzIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 14546)
        elseif npcUtil.tradeHas(trade, 14962, 14963, 14964) and bloodwoodLumber then
            player:tradeComplete()
            npcUtil.giveItem(player, 14961)
        elseif npcUtil.tradeHas(trade, 15626, 15627, 15628) and wamouraCloth then
            player:tradeComplete()
            npcUtil.giveItem(player, 15625)
        elseif npcUtil.tradeHas(trade, 15712, 15713, 15714) and maridLeather then
            player:tradeComplete()
            npcUtil.giveItem(player, 15711)
        elseif npcUtil.tradeHas(trade, 16089, 16090, 16091) and orichalcumIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 16088)
        elseif npcUtil.tradeHas(trade, 14551, 14552, 14553) and wootzIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 14550)
        elseif npcUtil.tradeHas(trade, 14966, 14967, 14968) and bloodwoodLumber then
            player:tradeComplete()
            npcUtil.giveItem(player, 14965)
        elseif npcUtil.tradeHas(trade, 15630, 15631, 15632) and wamouraCloth then
            player:tradeComplete()
            npcUtil.giveItem(player, 15629)
        elseif npcUtil.tradeHas(trade, 15716, 15717, 15718) and maridLeather then
            player:tradeComplete()
            npcUtil.giveItem(player, 15715)
        elseif npcUtil.tradeHas(trade, 16093, 16094, 16095) and orichalcumIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 16092)
        elseif npcUtil.tradeHas(trade, 14555, 14556, 14557) and wootzIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 14554)
        elseif npcUtil.tradeHas(trade, 14970, 14971, 14972) and bloodwoodLumber then
            player:tradeComplete()
            npcUtil.giveItem(player, 14969)
        elseif npcUtil.tradeHas(trade, 15634, 15635, 15636) and wamouraCloth then
            player:tradeComplete()
            npcUtil.giveItem(player, 15633)
        elseif npcUtil.tradeHas(trade, 15720, 15721, 15722) and maridLeather then
            player:tradeComplete()
            npcUtil.giveItem(player, 15719)
        elseif npcUtil.tradeHas(trade, 16097, 16098, 16099) and orichalcumIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 16096)
        elseif npcUtil.tradeHas(trade, 14559, 14560, 14561) and wootzIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 14558)
        elseif npcUtil.tradeHas(trade, 14974, 14975, 14976) and bloodwoodLumber then
            player:tradeComplete()
            npcUtil.giveItem(player, 14973)
        elseif npcUtil.tradeHas(trade, 15638, 15639, 15640) and wamouraCloth then
            player:tradeComplete()
            npcUtil.giveItem(player, 15637)
        elseif npcUtil.tradeHas(trade, 15724, 15725, 15726) and maridLeather then
            player:tradeComplete()
            npcUtil.giveItem(player, 15723)
        elseif npcUtil.tradeHas(trade, 16101, 16102, 16103) and orichalcumIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 16100)
        elseif npcUtil.tradeHas(trade, 14563, 14564, 14565) and wootzIngots then
            player:tradeComplete()
            npcUtil.giveItem(player, 14562)
        elseif npcUtil.tradeHas(trade, 14978, 14979, 14980) and bloodwoodLumber then
            player:tradeComplete()
            npcUtil.giveItem(player, 14977)
        elseif npcUtil.tradeHas(trade, 15642, 15643, 15644) and wamouraCloth then
            player:tradeComplete()
            npcUtil.giveItem(player, 15641)
        elseif npcUtil.tradeHas(trade, 15728, 15729, 15730) and maridLeather then
            player:tradeComplete()
            npcUtil.giveItem(player, 15727)
        end
    else
        player:PrintToPlayer("Ghanraam: Please return after sorting your inventory", 0xD)
    end
end)

return m
