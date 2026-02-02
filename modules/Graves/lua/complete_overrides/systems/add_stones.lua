
local SoAMob =
{
{'Calfcleaving_Chapuli','Yahse_Hunting_Grounds'},
{'Canopycrusher_Beetle','Yahse_Hunting_Grounds'},
{'Umbril','Yahse_Hunting_Grounds'},
{'Burning_Mantis','Yahse_Hunting_Grounds'},
{'Twitherym_Infestation','Yahse_Hunting_Grounds'},
{'Nettled_Wasp','Yahse_Hunting_Grounds'},
{'Ulbukan_Sheep','Yahse_Hunting_Grounds'},
{'Pinetorum','Yahse_Hunting_Grounds'},
{'Edacious_Orobon','Yahse_Hunting_Grounds'},
{'Bight_Uragnite','Yahse_Hunting_Grounds'},
{'Luckybug_Hoarder','Yahse_Hunting_Grounds'},
{'Numbing_Blossom','Yahse_Hunting_Grounds'},
{'Beady_Panopt','Yahse_Hunting_Grounds'},
{'Monstrosiraptor','Yahse_Hunting_Grounds'},
{'Hinterland_Peiste','Yahse_Hunting_Grounds'},
{'Verdant_Treant','Yahse_Hunting_Grounds'},
{'Broad_Scarlet','Yahse_Hunting_Grounds'},
{'Fiery_Wasp','Yahse_Hunting_Grounds'},
{'Shy_Heartwing','Yahse_Hunting_Grounds'},
{'Frondescent_Leafkin','Yahse_Hunting_Grounds'},
{'Velkk_Marauder','Yahse_Hunting_Grounds'},
{'Fluffy_Sheep','Ceizak_Battlegrounds'},
{'Irascible_Baelfyr','Ceizak_Battlegrounds'},
{'Blanched_Mandragora','Ceizak_Battlegrounds'},
{'Bight_Uragnite','Ceizak_Battlegrounds'},
{'Twigtrip_Lapinion','Ceizak_Battlegrounds'},
{'Deathmaw_Orobon','Ceizak_Battlegrounds'},
{'Fernfelling_Chapuli','Ceizak_Battlegrounds'},
{'Appetent_Umbril','Ceizak_Battlegrounds'},
{'Careening_Twitherym','Ceizak_Battlegrounds'},
{'Unbridled_Ungeweder','Ceizak_Battlegrounds'},
{'Frenzied_Mantis','Ceizak_Battlegrounds'},
{'Belaboring_Wasp','Ceizak_Battlegrounds'},
{'Undergrowth_Hornet','Ceizak_Battlegrounds'},
{'Longclaw_Raptor','Ceizak_Battlegrounds'},
{'Sedge_Scorpion','Ceizak_Battlegrounds'},
{'Numbing_Blossom','Ceizak_Battlegrounds'},
{'Knobby_Treant','Ceizak_Battlegrounds'},
{'Resplendent_Luckybug','Ceizak_Battlegrounds'},
{'Colossal_Spider','Ceizak_Battlegrounds'},
{'Downy_Emerald','Ceizak_Battlegrounds'},
{'Cornered_Heartwing','Ceizak_Battlegrounds'},
{'Mischievous_Leafkin','Ceizak_Battlegrounds'},
{'Velkk_Torturer','Ceizak_Battlegrounds'},
{'Riverwashed_Toad','Foret_de_Hennetiel'},
{'Zoldeff_Jagil','Foret_de_Hennetiel'},
{'Hoary_Craklaw','Foret_de_Hennetiel'},
{'Treefrost_Gefyrst','Foret_de_Hennetiel'},
{'Perfidious_Crab','Foret_de_Hennetiel'},
{'Bellicose_Tarichuk','Foret_de_Hennetiel'},
{'Phantasmagoric_Umbril','Foret_de_Hennetiel'},
{'Skinsipper_Chigoe','Foret_de_Hennetiel'},
{'Scummy_Slug','Foret_de_Hennetiel'},
{'Careening_Twitherym','Foret_de_Hennetiel'},
{'Primordial_Orobon','Foret_de_Hennetiel'},
{'Vorst_Gnat','Foret_de_Hennetiel'},
{'Velkk_Destructeur','Foret_de_Hennetiel'},
{'Velkk_Sage','Foret_de_Hennetiel'},
{'Vampire_Leech','Foret_de_Hennetiel'},
{'Numbing_Blossom','Foret_de_Hennetiel'},
{'Glutinous_Clot','Foret_de_Hennetiel'},
{'Shrouded_Obdella','Foret_de_Hennetiel'},
{'Bashful_Heartwing','Foret_de_Hennetiel'},
{'Epigean_Leafkin','Foret_de_Hennetiel'},
}

local dropsoa =
{
{261, 8930, 8939, 8948, 8957}, -- snowslit_stone -- snowtip_stone -- snowdim_stone -- snoworb_stone
{260, 8933, 8942, 8951, 8960}, -- leafslit_stone -- leaftip_stone -- leafdim_stone -- leaforb_stone
{262, 8936, 8945, 8954, 8963}, -- duskslit_stone -- dusktip_stone -- duskdim_stone -- duskorb_stone
}


local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
for _, entry in pairs(SoAMob) do
ensureTable(string.format("xi.zones.%s.mobs.%s", entry[2], entry[1]))
end

-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------



local m = Module:new("add_stones")

for _, entry in pairs(SoAMob) do
    local mobName     = entry[1]
    local zoneName    = entry[2]
  m:addOverride(string.format('xi.zones.%s.mobs.%s.onMobDeath', zoneName, mobName), function(mob, player, isKiller)
  super(mob, player)

  
  for _, drops in pairs(dropsoa) do
    if mob:getZoneID() == drops[1] then
        local randz = math.random(2,5)
        local randc = math.random(0,2)
            if randc == 0 then
                return
            else
               npcUtil.giveItem(player, {{drops[randz], randc}})
                return
            end
    end
  end
  end)
end

return m
