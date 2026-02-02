-----------------------------------
-- Common Requires
-----------------------------------
local zname = 
{
{'Arrapago_Reef'},
{'Attohwa_Chasm'},
{'Aydeewa_Subterrane'},
{'Batallia_Downs'},
{'Batallia_Downs_[S]'},
{'Behemoths_Dominion'},
{'Bibiki_Bay'},
{'Buburimu_Peninsula'},
{'Caedarva_Mire'},
{'Crawlers_Nest'},
{'Crawlers_Nest_[S]'},
{'Dangruf_Wadi'},
{'East_Ronfaure'},
{'East_Ronfaure_[S]'},
{'East_Sarutabaruta'},
{'Fort_Karugo-Narugo_[S]'},
{'Garlaige_Citadel'},
{'Garlaige_Citadel_[S]'},
{'Grauberg_[S]'},
{'Gusgen_Mines'},
{'Ifrits_Cauldron'},
{'Jugner_Forest'},
{'Jugner_Forest_[S]'},
{'King_Ranperres_Tomb'},
{'Konschtat_Highlands'},
{'Kuftal_Tunnel'},
{'La_Theine_Plateau'},
{'Lower_Delkfutts_Tower'},
{'Lufaise_Meadows'},
{'Mamook'},
{'Maze_of_Shakhrami'},
{'Meriphataud_Mountains'},
{'Meriphataud_Mountains_[S]'},
{'Misareaux_Coast'},
{'Mount_Zhayolm'},
{'North_Gustaberg'},
{'North_Gustaberg_[S]'},
{'Ordelles_Caves'},
{'Outer_Horutoto_Ruins'},
{'Pashhow_Marshlands'},
{'Pashhow_Marshlands_[S]'},
{'Qufim_Island'},
{'Quicksand_Caves'},
{'RoMaeve'},
{'Rolanberry_Fields'},
{'Rolanberry_Fields_[S]'},
{'RuAun_Gardens'},
{'Sauromugue_Champaign'},
{'Sauromugue_Champaign_[S]'},
{'South_Gustaberg'},
{'Tahrongi_Canyon'},
{'Temple_of_Uggalepih'},
{'The_Boyahda_Tree'},
{'The_Eldieme_Necropolis'},
{'The_Eldieme_Necropolis_[S]'},
{'The_Sanctuary_of_ZiTah'},
{'The_Shrine_of_RuAvitau'},
{'Uleguerand_Range'},
{'Valkurm_Dunes'},
{'VeLugannon_Palace'},
{'Vunkerl_Inlet_[S]'},
{'West_Ronfaure'},
{'West_Sarutabaruta'},
{'West_Sarutabaruta_[S]'},
{'Western_Altepa_Desert'},
{'Yuhtunga_Jungle'},
}
--- Puts the planar rifts in the zones without having a file in zones/npcs
local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end

for _, entry in pairs(zname) do
    ensureTable(string.format('xi.zones.%s.npcs.Planar_Rift', entry[1]))
end
--ensureTable("xi.zones.West_Ronfaure.npcs.Planar_Rift")

-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
require("scripts/globals/Voidwatch")
-----------------------------------

local m = Module:new("Planar_Rifts")
for _, entry in pairs(zname) do
m:addOverride(string.format("xi.zones.%s.npcs.Planar_Rift.onTrigger",entry[1]), function(player, npc)
xi.voidwatch.qmOnTrigger(player, npc)
end)
end

for _, entry in pairs(zname) do
m:addOverride(string.format("xi.zones.%s.npcs.Planar_Rift.onEventFinish", entry[1]), function(player, csid, option, npc, trade)
xi.voidwatch.qmOnEventFinish(player, npc, mob, option)
end)
end
return m
