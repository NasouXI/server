-----------------------------------
-- Claim Shield
-----------------------------------
require("modules/module_utils")
require("scripts/globals/utils")
-----------------------------------
local m = Module:new("claim_shield")

-- NOTE: These names are as they are as filenames.
-- Example: Behemoth's Dominion => Behemoths_Dominion
-- Example: King Behemoth       => King_Behemoth

local nmsToShield =
{
--  { zone name,               mob name                 },

    { "Attohwa_Chasm",         "Citipati"               },
    { "Attohwa_Chasm",         "Tiamat"                 },
    { "Attohwa_Chasm",         "Xolotl"                 },
    { "Arrapago_Reef",         "Medusa"                 },
    { "Behemoths_Dominion",    "Behemoth"               },
    { "Caedarva_Mire",         "Khimaira"               },
    { "Dragons_Aery",          "Fafnir"                 },
    { "FeiYin",                "Capricious_Cassie"      },
    { "Garlaige_Citadel",      "Serket"                 },
    { "Gustav_Tunnel",         "Bune"                   },
    { "Halvung",               "Gurfurlur_the_Menacing" },
    { "Jugner_Forest",         "King_Arthro"            },
    { "King_Ranperres_Tomb",   "Vrtra"                  },
    { "Kuftal_Tunnel",         "Guivre"                 },
    { "Labyrinth_of_Onzozo",   "Lord_of_Onzozo"         },
    { "Mamook",                "Gulool_Ja_Ja"           },
    { "Mamook",                "Hundredfaced_Hapool_Ja" },
    { "Maze_of_Shakhrami",     "Argus"                  },
    { "Maze_of_Shakhrami",     "Leech_King"             },
    { "Mount_Zhayolm",         "Cerberus"               },
    { "Rolanberry_Fields",     "Simurgh"                },
    { "RoMaeve",               "Shikigami_Weapon"       },
    { "Sauromugue_Champaign",  "Roc"                    },
    { "Sea_Serpent_Grotto",    "Charybdis"              },
    { "Sea_Serpent_Grotto",    "Novv_the_Whitehearted"  },
    { "Sea_Serpent_Grotto",    "Zuug_the_Shoreleaper"   },
    { "Sea_Serpent_Grotto",    "Ocean_Sahagin"          },
    { "Uleguerand_Range",      "Jormungand"             },
    { "Valley_of_Sorrows",     "Adamantoise"            },
    { "Wajaom_Woodlands",      "Hydra"                  },
    { "Western_Altepa_Desert", "King_Vinegarroon"       },
}

-- NOTE: At the time we iterate over these entries, the Lua zone and mob objects won't be ready,
--     : so we deal with everything as strings for now.
for _, entry in pairs(nmsToShield) do
    local zoneName = entry[1]
    local mobName  = entry[2]

    m:addOverride(string.format("xi.zones.%s.mobs.%s.onMobSpawn", zoneName, mobName), function(mob)
        -- Whatever was there before.
        super(mob)

        -- New stuff below.
--        local shieldTime = math.random(5000, 7000) -- We define it here, becouse we don't want it to be the same for all mobs.
        local shieldTime = 7000 -- We define it here, becouse we don't want it to be the same for all mobs.

        mob:setClaimable(false)
        mob:setUnkillable(true)
        mob:setCallForHelpBlocked(true)
        mob:stun(shieldTime)

        mob:timer(shieldTime, function(mobArg)
            local enmityList = mobArg:getEnmityList()
            local numEntries = #enmityList

            mobArg:setClaimable(true)
            mobArg:setUnkillable(false)
            mobArg:setCallForHelpBlocked(false)
            mobArg:resetAI()
            mobArg:setHP(mobArg:getMaxHP())

            local claimWinner = utils.randomEntry(enmityList)["entity"]

            if claimWinner then
                mobArg:updateClaim(claimWinner)
            end
        end)
    end)
end

return m
