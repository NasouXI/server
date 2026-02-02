require("modules/module_utils")
require('scripts/globals/keyitems')
require('scripts/globals/npc_util')
require('scripts/globals/quests')
-----------------------------------

local m = Module:new("curio_vendor_moogle_assault_badges")

local function medalCheck(player)
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.CONFESSIONS_OF_ROYALTY) and not player:hasKeyItem(xi.keyItem.PSC_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.PSC_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.ASTRAL_WAVES) and not player:hasKeyItem(xi.keyItem.PFC_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.PFC_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.THE_BLACK_COFFIN) and not player:hasKeyItem(xi.keyItem.SP_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.SP_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.TEAHOUSE_TUMULT) and not player:hasKeyItem(xi.keyItem.LC_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.LC_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.FOILED_AMBITION) and not player:hasKeyItem(xi.keyItem.C_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.C_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.BASTION_OF_KNOWLEDGE) and not player:hasKeyItem(xi.keyItem.S_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.S_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.IN_THE_BLOOD) and not player:hasKeyItem(xi.keyItem.SM_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.SM_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.GAZE_OF_THE_SABOTEUR) and not player:hasKeyItem(xi.keyItem.CS_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.CS_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.UNRAVELING_REASON) and not player:hasKeyItem(xi.keyItem.SL_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.SL_WILDCAT_BADGE)
    end
    if player:hasCompletedMission(xi.mission.log_id.TOAU, xi.mission.id.toau.NASHMEIRAS_PLEA) and not player:hasKeyItem(xi.keyItem.FL_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.FL_WILDCAT_BADGE)
    end
    if player:getCurrentMission(xi.mission.log_id.TOAU, xi.mission.id.toau.ETERNAL_MERCENARY) and not player:hasKeyItem(xi.keyItem.CAPTAIN_WILDCAT_BADGE) then
        npcUtil.giveKeyItem(player, xi.keyItem.CAPTAIN_WILDCAT_BADGE)
    end
end

m:addOverride("xi.zones.Port_San_dOria.npcs.Curio_Vendor_Moogle.onTrigger", function(player, npc)
    if not player:hasKeyItem(xi.keyItem.CAPTAIN_WILDCAT_BADGE) then
        medalCheck(player)
    end

    player:startEvent(9601)
end)

m:addOverride("xi.zones.Port_Bastok.npcs.Curio_Vendor_Moogle.onTrigger",  function(player, npc)
    if not player:hasKeyItem(xi.keyItem.CAPTAIN_WILDCAT_BADGE) then
        medalCheck(player)
    end

    player:startEvent(9601)
end)

m:addOverride("xi.zones.Port_Windurst.npcs.Curio_Vendor_Moogle.onTrigger", function(player, npc)
    if not player:hasKeyItem(xi.keyItem.CAPTAIN_WILDCAT_BADGE) then
        medalCheck(player)
    end

    player:startEvent(9601)
end)

return m
