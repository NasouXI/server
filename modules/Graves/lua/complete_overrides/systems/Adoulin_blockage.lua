-----------------------------------
-- Open up blockades in Adoulin areas
-----------------------------------
--[[
local zname = 
{
{'Dho_Gates', 10, 11, 12, 13},
{'Cirdas_Caverns', 17, 18, 19, 20, 21, 22, 23, 24, 25, 26},
{'Moh_Gates', 12, 13, 14, 15},
{'Morimar_Basalt_Fields', 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55},
{'Marjami_Ravine', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37},
{'Sih_Gates', 17, 18, 19, 20},
{'Woh_Gates', 201, 200},
}
]]--
local info = -- NPC name / CSID / Ascend Descend / Teleport option
{
{'Marjami_Ravine', 'Scalable_Area_0',  14,0,1},
{'Marjami_Ravine', 'Scalable_Area_1',  15,1,2},
{'Marjami_Ravine', 'Scalable_Area_2',  16,0,3},
{'Marjami_Ravine', 'Scalable_Area_3',  17,1,4},
{'Marjami_Ravine', 'Scalable_Area_4',  18,0,5},
{'Marjami_Ravine', 'Scalable_Area_5',  19,1,6},
{'Marjami_Ravine', 'Scalable_Area_6',  20,0,7},
{'Marjami_Ravine', 'Scalable_Area_7',  21,1,8},
{'Marjami_Ravine', 'Scalable_Area_8',  22,0,9},
{'Marjami_Ravine', 'Scalable_Area_9', 23,1,10},
{'Marjami_Ravine', 'Scalable_Area_10',24,0,11},
{'Marjami_Ravine', 'Scalable_Area_11',25,1,12},
{'Marjami_Ravine', 'Scalable_Area_12',26,0,13},
{'Marjami_Ravine', 'Scalable_Area_13',27,1,14},
{'Marjami_Ravine', 'Scalable_Area_14',28,0,15},
{'Marjami_Ravine', 'Scalable_Area_15',29,1,16},
{'Marjami_Ravine', 'Scalable_Area_16',30,0,17},
{'Marjami_Ravine', 'Scalable_Area_17',31,1,18},
{'Marjami_Ravine', 'Scalable_Area_18',32,0,19},
{'Marjami_Ravine', 'Scalable_Area_19',33,1,20},
{'Marjami_Ravine', 'Scalable_Area_20',34,0,21},
{'Marjami_Ravine', 'Scalable_Area_21',35,1,22},
{'Marjami_Ravine', 'Scalable_Area_22',36,0,23},
{'Marjami_Ravine', 'Scalable_Area_23',37,1,24},
{'Dho_Gates'     , 'Scalable_Area_0' ,10,0,1},
{'Dho_Gates'     , 'Scalable_Area_1' ,11,1,2},
{'Dho_Gates'     , 'Scalable_Area_2' ,12,0,3},
{'Dho_Gates'     , 'Scalable_Area_3' ,13,1,4},
{'Moh_Gates'     , 'Scalable_Area_0' ,12,0,1},
{'Moh_Gates'     , 'Scalable_Area_1' ,13,1,2},
{'Moh_Gates'     , 'Scalable_Area_2' ,14,0,3},
{'Moh_Gates'     , 'Scalable_Area_3' ,15,1,4},
{'Woh_Gates'     , 'Scalable_Area_0' ,200,0,1},
{'Woh_Gates'     , 'Scalable_Area_1' ,201,1,2},
{'Sih_Gates'     , 'Scalable_Area_0' ,17,0,1},
{'Sih_Gates'     , 'Scalable_Area_1' ,18,1,2},
{'Sih_Gates'     , 'Scalable_Area_2' ,19,0,3},
{'Sih_Gates'     , 'Scalable_Area_3' ,20,1,4},
{'Morimar_Basalt_Fields', 'Scalable_Area_0',  40,0,1},
{'Morimar_Basalt_Fields', 'Scalable_Area_1',  41,1,2},
{'Morimar_Basalt_Fields', 'Scalable_Area_2',  42,0,3},
{'Morimar_Basalt_Fields', 'Scalable_Area_3',  43,1,4},
{'Morimar_Basalt_Fields', 'Scalable_Area_4',  44,0,5},
{'Morimar_Basalt_Fields', 'Scalable_Area_5',  45,1,6},
{'Morimar_Basalt_Fields', 'Scalable_Area_6',  46,0,7},
{'Morimar_Basalt_Fields', 'Scalable_Area_7',  47,1,8},
{'Morimar_Basalt_Fields', 'Scalable_Area_8',  48,0,9},
{'Morimar_Basalt_Fields', 'Scalable_Area_9', 49,1,10},
{'Morimar_Basalt_Fields', 'Scalable_Area_10',50,0,11},
{'Morimar_Basalt_Fields', 'Scalable_Area_11',51,1,12},
{'Morimar_Basalt_Fields', 'Scalable_Area_12',52,0,13},
{'Morimar_Basalt_Fields', 'Scalable_Area_13',53,1,14},
{'Morimar_Basalt_Fields', 'Scalable_Area_14',54,0,15},
{'Morimar_Basalt_Fields', 'Scalable_Area_15',55,1,16},
{'Cirdas_Caverns', 'Scalable_Area_0',  17,0,1},
{'Cirdas_Caverns', 'Scalable_Area_1',  18,1,2},
{'Cirdas_Caverns', 'Scalable_Area_2',  19,0,3},
{'Cirdas_Caverns', 'Scalable_Area_3',  20,1,4},
{'Cirdas_Caverns', 'Scalable_Area_4',  21,0,5},
{'Cirdas_Caverns', 'Scalable_Area_5',  22,1,6},
{'Cirdas_Caverns', 'Scalable_Area_6',  23,0,7},
{'Cirdas_Caverns', 'Scalable_Area_7',  24,1,8},
{'Cirdas_Caverns', 'Scalable_Area_8',  25,0,9},
{'Cirdas_Caverns', 'Scalable_Area_9',  26,1,10},
}

local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end

for _, entry in pairs(info) do
    ensureTable(string.format('xi.zones.%s.npcs.%s', entry[1], entry[2]))
end


-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------


local m = Module:new("Adoulin_blockage")

for _, entry in pairs(info) do
m:addOverride(string.format("xi.zones.%s.npcs.%s.onTrigger",entry[1], entry[2]), function(player, npc)
    -- if player:hasKeyItem(xi.ki.CLIMBING) and
    --   player:hasKeyItem(xi.ki.PAIR_OF_VELKK_GLOVES) then
       player:startEvent(entry[3],0,0,entry[4],0,0,entry[5])
    -- end
end)
end

for _, entry in pairs(info) do
m:addOverride(string.format("xi.zones.%s.npcs.%s.onEventFinish", entry[1],entry[2]), function(player, csid, option, npc, trade)
    if csid == entry[3] and
       option ~= 1 then
       return
    end
end)
end
return m
