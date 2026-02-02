-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------

local EZMob =
{
    {'Eschan_Warrior'},
    {'Eschan_Pugil'},
    {'Eschan_Crab'},
    {'Eschan_Worm'},
    {'Eschan_Obdella'},
    {'Eschan_Crawler'},
    {'Eschan_Weapon'},
    {'Eschan_Dhalmel'},
    {'Eschan_Coeurl'},
    {'Eschan_Vulture'},
    {'Eschan_Corse'},
    {'Eschan_Sorcerer'},
    {'Eschan_Wasp'},
    {'Eschan_Snapweed'},
    {'Eschan_Goobbue'},
    {'Eschan_Puk'},--
    {'Eschan_Shadow_Dragon'},--
    {'Eschan_Tarichuk'},--
    {'Eschan_Bugard'},--
    {'Eschan_Opo-Opo'},--
    {'Eschan_Yztarg'},--
    {'Eschan_Mosquito'},--
}
local ERMob =
{
{'Eschan_Zdei'},
{'Eschan_Ilaern'},
{'Eschan_Phuabo'},
{'Eschan_Yovra'},
{'Eschan_Euvhi'},
{'Eschan_Clionid'},
{'Eschan_Hpemde'},
{'Eschan_Amoeban'},
{'Eschan_Xzomit'},
{'Eschan_Murex'},
{'Eschan_Ghrah'},
{'Eschan_Limule'},
--{'Eschan_Gargouille'},
{'Eschan_Porxie'},
}

local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
for _, entry in pairs(EZMob) do
ensureTable(string.format("xi.zones.Escha_ZiTah.mobs.%s", entry[1]))
end
for _, entry in pairs(ERMob) do
ensureTable(string.format("xi.zones.Escha_RuAun.mobs.%s", entry[1]))
end

local m = Module:new("add_silt")

for _, entry in pairs(EZMob) do
    local mobName = entry[1]

  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobInitialize', entry[1]), function(mob)
  super(mob)
  end)

  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobSpawn', entry[1]), function(mob)
  super(mob)
  end)

  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobEngage', entry[1]), function(mob, target)
  super(mob, target)
  end)


  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobDeath', entry[1]), function(mob, player, optParams)
    super(mob, player, optParams)
    dropper = mob:getID()
    local rand = math.random(5, 30)
    player:addCurrency('escha_silt', rand)
    player:printToPlayer(string.format("You obtained %s Escha Silt", rand),xi.msg.channel.SYSTEM_3)
    if entry[1] == 'Eschan_Puk' or
              'Eschan_Shadow_Dragon' or
              'Eschan_Tarichuk' or
              'Eschan_Bugard' or
              'Eschan_Opo-Opo' or
              'Eschan_Yztarg' or
              'Eschan_Mosquito' then
    local randz = math.random(1, 10)
    if randz == 3 then
    player:addTreasure(9084, dropper)
    end
    end
  end)
end

for _, entryx in pairs(ERMob) do
  m:addOverride(string.format('xi.zones.Escha_RuAun.mobs.%s.onMobInitialize', entryx[1]), function(mob)
  super(mob)
  end)

  m:addOverride(string.format('xi.zones.Escha_RuAun.mobs.%s.onMobSpawn', entryx[1]), function(mob)
  super(mob)
  end)

  m:addOverride(string.format('xi.zones.Escha_RuAun.mobs.%s.onMobEngage', entryx[1]), function(mob, target)
  super(mob, target)
  end)

  m:addOverride(string.format('xi.zones.Escha_RuAun.mobs.%s.onMobDeath', entryx[1]), function(mob, player, optParams)
    super(mob, player, optParams)
    dropper = mob:getID()
    local randx = math.random(15, 45)
    player:addCurrency('escha_silt', randx)
    player:printToPlayer(string.format("You obtained %s Escha Silt", randx),xi.msg.channel.SYSTEM_3)
  end)
end

  m:addOverride('xi.zones.Escha_RuAun.mobs.Eschan_Gargouille.onMobInitialize', function(mob)
  super(mob)
  end)

  m:addOverride('xi.zones.Escha_RuAun.mobs.Eschan_Gargouille.onMobSpawn', function(mob)
  super(mob)
  end)

  m:addOverride('xi.zones.Escha_RuAun.mobs.Eschan_Gargouille.onMobEngage', function(mob, target)
  super(mob, target)
  end)

  m:addOverride('xi.zones.Escha_RuAun.mobs.Eschan_Gargouille.onMobDeath', function(mob, player, optParams)
    super(mob, player, optParams)
    dropper = mob:getID()
    local randx = math.random(15, 45)
    player:addCurrency('escha_silt', randx)
    player:printToPlayer(string.format("You obtained %s Escha Silt", randx),xi.msg.channel.SYSTEM_3)
  end)


return m
