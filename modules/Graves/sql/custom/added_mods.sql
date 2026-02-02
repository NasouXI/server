-- Shadowwind Fixed/Added/Checked --
DELETE FROM `item_mods` WHERE itemId = 21102; -- Mafic Cudgel
DELETE FROM `item_mods` WHERE itemId = 27620; -- Aurists Cape +1
DELETE FROM `item_mods` WHERE itemId = 15965; -- Ethereal Earring
DELETE FROM `item_mods` WHERE itemId = 10819; -- Flume Belt
DELETE FROM `item_mods` WHERE itemId = 28437; -- Flume Belt +1
DELETE FROM `item_mods` WHERE itemId = 28137; -- Augury Cuisses +1
DELETE FROM `item_mods` WHERE itemId = 26871; -- Emet Harness +1
DELETE FROM `item_mods` WHERE itemId = 27994; -- Macabre Gauntlets +1
DELETE FROM `item_mods` WHERE itemId = 28416; -- Lucidity Sash
DELETE FROM `item_mods` WHERE itemId = 14625; -- Evokers Ring
DELETE FROM `item_mods` WHERE itemId = 20864; -- Castigation
DELETE FROM `item_mods` WHERE itemId = 21419; -- Rigorous Grip +1
DELETE FROM `item_mods` WHERE itemId = 20982; -- Shuhansadamune
DELETE FROM `item_mods` WHERE itemId = 26943; -- Agony Jerkin +1
DELETE FROM `item_mods` WHERE itemId = 27051; -- Kachimusha Kote +1
DELETE FROM `item_mods` WHERE itemID = 25747; -- Meghanada Cuirie
DELETE FROM `item_mods` WHERE itemID = 25748; -- Meghanada Cuirie +1
DELETE FROM `item_mods` WHERE itemId = 13505; -- judges ring
DELETE FROM `item_mods` WHERE itemId = 13606; -- judges cape
DELETE FROM `item_mods` WHERE itemId = 21621; -- Naegling
DELETE FROM `item_mods` WHERE itemId = 26785; -- Hike Khat +1
DELETE FROM `item_mods` WHERE itemId = 28484; -- Nourishing earring
DELETE FROM `item_mods` WHERE itemId = 20765; -- Tunglmyrkvi
DELETE FROM `item_mods` WHERE itemId = 27862; -- Savas Jawshan 
DELETE FROM `item_mods` WHERE itemId = 22040; -- Daybreak 
DELETE FROM `item_mods` WHERE itemId = 27594; -- Annealed Mantle 
DELETE FROM `item_mods` WHERE itemId = 20529; -- Calved Claws 
DELETE FROM `item_mods` WHERE itemId = 20615; -- Levante Dagger 
DELETE FROM `item_mods` WHERE itemId = 20944; -- Pelagos Lance 
DELETE FROM `item_mods` WHERE itemId = 20856; -- Phreatic Axe 
DELETE FROM `item_mods` WHERE itemId = 26970; -- Lapidary Tunic  


UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 25969; -- mousai crackows +1
UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 26538; -- mousai manteel +1
UPDATE `item_equipment` SET su_level = 3 WHERE itemId = 25902; -- mousai seraweels +1
------------------------------Accessories------------------------------
-- Annealed Mantle
REPLACE INTO `item_mods` VALUES (27594,1,13);  -- DEF: 13
REPLACE INTO `item_mods` VALUES (27594,8,5);   -- STR: 5
REPLACE INTO `item_mods` VALUES (27594,288,4); -- DOUBLE_ATTACK: 4
REPLACE INTO `item_latents` VALUES (27594,23,20,52,1); -- ATT: 20
-- Arasy Sachet
REPLACE INTO `item_mods_pet` VALUES (21393,1040,20, 1);      -- AVATAR_LVL_BONUS:
-- Aurgelmir Orb
REPLACE INTO `item_mods` VALUES (22297,8,5);      -- STR:
REPLACE INTO `item_mods` VALUES (22297,9,5);      -- DEX:
REPLACE INTO `item_mods` VALUES (22297,10,5);      -- VIT:
REPLACE INTO `item_mods` VALUES (22297,23,7);      -- ATT:
REPLACE INTO `item_mods` VALUES (22297,73,4);      -- STORETP:
-- Aurgelmir Orb +1
REPLACE INTO `item_mods` VALUES (22298,8,7);      -- STR:
REPLACE INTO `item_mods` VALUES (22298,9,7);      -- DEX:
REPLACE INTO `item_mods` VALUES (22298,10,7);      -- VIT:
REPLACE INTO `item_mods` VALUES (22298,23,10);      -- ATT:
REPLACE INTO `item_mods` VALUES (22298,73,5);      -- STORETP:
-- Aurists Cape
REPLACE INTO `item_mods` VALUES (27619,1,16); -- DEF: 16
REPLACE INTO `item_mods` VALUES (27619,5,40); -- MP: 40
REPLACE INTO `item_mods` VALUES (27619,12,7); -- INT: 7
REPLACE INTO `item_mods` VALUES (27619,13,7); -- MND: 7
REPLACE INTO `item_mods` VALUES (27619,25,7); -- ACC: 7
REPLACE INTO `item_mods` VALUES (27619,30,7); -- MACC: 7
-- Aurists Cape +1
REPLACE INTO `item_mods` VALUES (27620,1,17);  -- DEF: 17
REPLACE INTO `item_mods` VALUES (27620,5,45);  -- MP: 45
REPLACE INTO `item_mods` VALUES (27620,12,8); -- INT: 8
REPLACE INTO `item_mods` VALUES (27620,13,8); -- MND: 8
REPLACE INTO `item_mods` VALUES (27620,25,8); -- ACC: 8
REPLACE INTO `item_mods` VALUES (27620,30,8); -- MACC: 8
-- Ayanmo Ring
REPLACE INTO `item_mods` VALUES (26209,1,7);  -- DEF
REPLACE INTO `item_mods` VALUES (26209,25,6);  -- ACC
REPLACE INTO `item_mods` VALUES (26209,30,6);  -- MACC
REPLACE INTO `item_mods` VALUES (26209,160,-300);  -- DMG
-- Balder Earring
REPLACE INTO `item_mods` VALUES (26114,23,7);  -- ATT
REPLACE INTO `item_mods` VALUES (26114,68,7);  -- EVA
REPLACE INTO `item_mods` VALUES (26114,73,2);  -- STORETP
-- Balder Earring +1 
REPLACE INTO `item_mods` VALUES (26115,23,10);  -- ATT
REPLACE INTO `item_mods` VALUES (26115,68,10);  -- EVA
REPLACE INTO `item_mods` VALUES (26115,73,3);  -- STORETP
-- Bathy Choker
REPLACE INTO `item_mods` VALUES (27517,1,9);      -- DEF
REPLACE INTO `item_mods` VALUES (27517,2,30);      -- HP
REPLACE INTO `item_mods` VALUES (27517,289,10);      -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (27517,370,2);      -- REGEN
-- Benthos Grip
REPLACE INTO `item_mods` VALUES (21420,5,10); -- MP: 10
-- Bilious Torque
REPLACE INTO `item_mods` VALUES (26007,80,15);      -- HTH
REPLACE INTO `item_mods` VALUES (26007,105,15);     -- MARKSMAN
-- Bragi Earring 
REPLACE INTO `item_mods` VALUES (26101, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26101, 119, 10);  -- SINGING
-- Cath Palug Earring
REPLACE INTO `item_mods` VALUES (26087,117,5);      -- SUMMONING
REPLACE INTO `item_mods` VALUES (26087,369,1);      -- REFRESH
REPLACE INTO `item_mods_pet` VALUES (26087,25,7,1);      -- ACC
REPLACE INTO `item_mods_pet` VALUES (26087,26,7,1);      -- RACC
REPLACE INTO `item_mods_pet` VALUES (26087,30,7,1);      -- MACC
-- Cath Palug Ring
REPLACE INTO `item_mods` VALUES (28473,2,40);      -- HP
REPLACE INTO `item_mods` VALUES (28473,160,-500);      -- DMG
REPLACE INTO `item_mods_pet` VALUES (28473,25,12,0);      -- ACC
REPLACE INTO `item_mods_pet` VALUES (28473,26,12,0);      -- RACC
REPLACE INTO `item_mods_pet` VALUES (28473,30,12,0);      -- MACC
REPLACE INTO `item_mods_pet` VALUES (28473,288,5,0);      -- DOUBLE_ATTACK
-- Clemency Grip
REPLACE INTO `item_mods` VALUES (21413, 5, 30); --clemency grip -- MP
-- Cloud Hairpin
REPLACE INTO `item_mods` VALUES (28350,17,10);  -- WIND_MEVA
REPLACE INTO `item_mods` VALUES (28350,21,10);  -- LIGHT_MEVA
REPLACE INTO `item_mods` VALUES (28350,163,-300);  -- DMGMAGIC
-- Cloud Hairpin +1  
REPLACE INTO `item_mods` VALUES (28351,17,15);  -- WIND_MEVA
REPLACE INTO `item_mods` VALUES (28351,21,15);  -- LIGHT_MEVA
REPLACE INTO `item_mods` VALUES (28351,25,5);  -- ACC
REPLACE INTO `item_mods` VALUES (28351,163,-500);  -- DMGMAGIC
-- Consumm. Torque 
REPLACE INTO `item_mods` VALUES (26000,913,3);      -- BLOOD_BOON: 3
REPLACE INTO `item_mods_pet` VALUES (26000,25,5,1);      -- ACC: 5
REPLACE INTO `item_mods_pet` VALUES (26000,30,5,1);      -- MACC: 5
REPLACE INTO `item_mods_pet` VALUES (26000,27,5,1);      -- ENMITY: 5
-- Cornelia's belt
REPLACE INTO `item_mods` VALUES (26365,1,10);      -- DEF: 10
REPLACE INTO `item_mods` VALUES (26365,8,10);      -- STR: 10
REPLACE INTO `item_mods` VALUES (26365,291,5);     -- Counter: 5
REPLACE INTO `item_mods` VALUES (26365,384,1000);  -- HASTE_GEAR: 1000
-- Cornelia's Ring
REPLACE INTO `item_mods` VALUES (26227, 48, 10); -- Cornelia's Ring -- WSACC
REPLACE INTO `item_mods` VALUES (26227, 840, 10); -- Cornelia's Ring -- ALL_WSDMG_ALL_HITS
-- Crepuscular earring
REPLACE INTO `item_mods` VALUES (26117, 25,  10); -- Crepuscular earring -- acc
REPLACE INTO `item_mods` VALUES (26117, 26,  10); -- Crepuscular earring -- racc
REPLACE INTO `item_mods` VALUES (26117, 30,  10); -- Crepuscular earring -- macc
REPLACE INTO `item_mods` VALUES (26117, 73,   5); -- Crepuscular earring -- store tp
REPLACE INTO `item_mods_pet` VALUES (26117, 25, 10, 0); -- Crepuscular earring -- Increases pet ACC
REPLACE INTO `item_mods_pet` VALUES (26117, 26, 10, 0); -- Crepuscular earring -- Increases pet RACC
REPLACE INTO `item_mods_pet` VALUES (26117, 30, 10, 0); -- Crepuscular earring -- Increases pet MACC
REPLACE INTO `item_mods_pet` VALUES (26117, 73,  5,  0); -- Crepuscular earring -- Increases pet STORETP
-- Crepuscular Ring  
REPLACE INTO `item_mods` VALUES (26220,26,10);    -- RACC: 10
REPLACE INTO `item_mods` VALUES (26220,30,10);    -- MACC: 10
REPLACE INTO `item_mods` VALUES (26220,365,3);    -- SNAP_SHOT: 3
REPLACE INTO `item_mods` VALUES (26220,73,6);    -- STORETP: 6
-- Dampener's torque
REPLACE INTO `item_mods` VALUES (27511, 163, -400);  -- DMGMAGIC: -4%
REPLACE INTO `item_mods` VALUES (27511, 25, 5);  -- ACC: 5
REPLACE INTO `item_mods` VALUES (27511, 23, 5);  -- ATT: 5
REPLACE INTO `item_mods` VALUES (27511, 2, 25);  -- HP: 25
-- Darkside Earring
REPLACE INTO `item_mods` VALUES (27531,120,5); -- STRING: 5
-- Deceivers torque
REPLACE INTO `item_mods` VALUES (26014, 116, 10); --deceivers torque -- DARK
REPLACE INTO `item_mods` VALUES (26014, 120, 10); --deceivers torque -- STRING
REPLACE INTO `item_mods` VALUES (26014, 122, 10); --deceivers torque -- BLUE
REPLACE INTO `item_mods` VALUES (26014, 123, 10); --deceivers torque -- GEOMANCY_SKILL
-- Dellingr Earring 
REPLACE INTO `item_mods` VALUES (26103, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26103, 121, 10);  -- WIND
-- Disperser's Cape
REPLACE INTO `item_mods` VALUES (27606, 1, 10);  -- def
REPLACE INTO `item_mods` VALUES (27606, 242, 20);  -- PARALYZERES
REPLACE INTO `item_mods` VALUES (27606, 519, 5);  -- CURE_CAST_TIME
-- Domesticators Earring
REPLACE INTO `item_mods_pet` VALUES (28505,27,5,0); -- ENMITY: 5
REPLACE INTO `item_mods_pet` VALUES (28505,288,5,0); -- DOUBLE_ATTACK: 3
-- Dominance earring
REPLACE INTO `item_mods` VALUES (27542, 9, 3); -- dominance earring -- dex
REPLACE INTO `item_mods` VALUES (27542, 251, 10); -- dominance earring -- resist stun
-- Dominance earring +
REPLACE INTO `item_mods` VALUES (27543, 9, 4); -- dominance earring +1 -- dex
REPLACE INTO `item_mods` VALUES (27543, 251, 11); -- dominance earring +1 -- resist stun
-- Elite royal collar
REPLACE INTO `item_mods` VALUES (25414,1,30);      -- DEF: 30
REPLACE INTO `item_mods` VALUES (25414,10,10);     -- VIT: 10
REPLACE INTO `item_mods` VALUES (25414,370,3);  -- Regen 3
REPLACE INTO `item_mods` VALUES (25414,160,-500);  -- DMG: -500
-- Empath Necklace
REPLACE INTO `item_mods` VALUES (27514,25,10);      -- ACC: 10
REPLACE INTO `item_mods_pet` VALUES (27514,25,10,0); -- ACC: 10
REPLACE INTO `item_mods_pet` VALUES (27514,26,10,0); -- RACC: 10
REPLACE INTO `item_mods_pet` VALUES (27514,23,10,0); -- ATT: 10
REPLACE INTO `item_mods_pet` VALUES (27514,24,10,0); -- RATT: 10
REPLACE INTO `item_mods_pet` VALUES (27514,370,1,0); -- REGEN: 10
-- Engraved Belt
REPLACE INTO `item_mods` VALUES (28414,1,12);      -- DEF:
REPLACE INTO `item_mods` VALUES (28414,8,7);      -- STR:
REPLACE INTO `item_mods` VALUES (28414,12,7);      -- INT:
REPLACE INTO `item_mods` VALUES (28414,13,7);      -- MND:
REPLACE INTO `item_mods` VALUES (28414,15,20);      -- FIRE_MEVA:
REPLACE INTO `item_mods` VALUES (28414,16,20);      -- ICE_MEVA:
REPLACE INTO `item_mods` VALUES (28414,17,20);      -- WIND_MEVA:
REPLACE INTO `item_mods` VALUES (28414,18,20);      -- EARTH_MEVA:
REPLACE INTO `item_mods` VALUES (28414,19,20);      -- THUNDER_MEVA:
REPLACE INTO `item_mods` VALUES (28414,20,20);      -- WATER_MEVA:
REPLACE INTO `item_mods` VALUES (28414,21,30);      -- LIGHT_MEVA:
REPLACE INTO `item_mods` VALUES (28414,22,30);      -- DARK_MEVA:
REPLACE INTO `item_mods` VALUES (28414,25,10);      -- ACC:
REPLACE INTO `item_mods` VALUES (28414,23,10);      -- ATT:
-- Ephramad's Ring
REPLACE INTO `item_mods` VALUES (26231, 8, 10); -- Ephramad's Ring -- STR
REPLACE INTO `item_mods` VALUES (26231, 9, 10); -- Ephramad's Ring -- DEX
REPLACE INTO `item_mods` VALUES (26231, 11, 10); -- Ephramad's Ring -- AGI
REPLACE INTO `item_mods` VALUES (26231, 25, 20); -- Ephramad's Ring -- ACC
REPLACE INTO `item_mods` VALUES (26231, 23, 20); -- Ephramad's Ring -- ATT
REPLACE INTO `item_mods` VALUES (26231, 26, 20); -- Ephramad's Ring -- RACC
REPLACE INTO `item_mods` VALUES (26231, 24, 20); -- Ephramad's Ring -- RATT
REPLACE INTO `item_mods` VALUES (26231, 1081, 10); -- Ephramad's Ring -- DAMAGE_LIMITP
-- Ethereal Earring
REPLACE INTO `item_mods` VALUES (15965,2,15);  -- HP: 15
REPLACE INTO `item_mods` VALUES (15965,23,5);  -- ATT: 5
REPLACE INTO `item_mods` VALUES (15965,68,5);  -- EVA: 5
REPLACE INTO `item_mods` VALUES (15965,516,300); -- ABSORB_DMG_TO_MP: 3%
-- Evokers Ring
REPLACE INTO `item_mods` VALUES (14625,5,25);   -- MP: 25
REPLACE INTO `item_mods` VALUES (14625,117,10); -- SUMMONING: 10
REPLACE INTO `item_mods` VALUES (14625,371,-1); --evokers ring -- AVATAR_PERPETUATION -1
-- Fickblix's Ring
REPLACE INTO `item_mods` VALUES (26230, 288, 10); -- Fickblix's ring -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (26230, 289, 10); -- Fickblix's ring -- SUBTLE_BLOW
-- Fi Follet Cape
REPLACE INTO `item_mods` VALUES (27609, 5, 40); -- MP
REPLACE INTO `item_mods` VALUES (27609, 113, 8); -- ENHANCE
REPLACE INTO `item_mods` VALUES (27609, 296, 4); -- CONSERVE_MP
-- Fi Follet Cape +1
REPLACE INTO `item_mods` VALUES (27610, 5, 45); -- MP
REPLACE INTO `item_mods` VALUES (27610, 113, 9); -- ENHANCE
REPLACE INTO `item_mods` VALUES (27610, 296, 5); -- CONSERVE_MP
-- Flamma Ring
REPLACE INTO `item_mods` VALUES (26211,1,8);      -- DEF
REPLACE INTO `item_mods` VALUES (26211, 25, 6); -- ACC
REPLACE INTO `item_mods` VALUES (26211,30,6);  -- MACC
REPLACE INTO `item_mods` VALUES (26211,73,5);    -- STORETP
-- Flume Belt
REPLACE INTO `item_mods` VALUES (10819,1,12);     -- DEF: 12
REPLACE INTO `item_mods` VALUES (10819,161,-400); -- DMGPHYS: -400
REPLACE INTO `item_mods` VALUES (10819,164,-400);  -- DMGRANGE: -400
REPLACE INTO `item_mods` VALUES (10819,516,200);    -- ABSORB_DMG_TO_MP: 2
-- Flume Belt +1
REPLACE INTO `item_mods` VALUES (22297,10,4);     -- VIT: 4
REPLACE INTO `item_mods` VALUES (28437,1,15);     -- DEF: 15
REPLACE INTO `item_mods` VALUES (28437,161,-400); -- DMGPHYS: -400
REPLACE INTO `item_mods` VALUES (28437,164,-400); -- DMGRANGE: -400
REPLACE INTO `item_mods` VALUES (28437,516,200);    -- ABSORB_DMG_TO_MP: 2
-- Forefathers' Grip
REPLACE INTO `item_mods` VALUES (21415,2,20);     -- HP: 20
REPLACE INTO `item_mods` VALUES (21415,5,20);     -- MP: 20
REPLACE INTO `item_mods` VALUES (21415,83,7);     -- GSWORD: 7
REPLACE INTO `item_mods` VALUES (21415,28,20);     -- MATT: 3
-- Foresti Earring
REPLACE INTO `item_mods` VALUES (26091, 1, 20); -- Foresti Earring -- def
REPLACE INTO `item_mods` VALUES (26091, 109, 10); -- Foresti Earring -- SHIELD
-- Fotia Belt
REPLACE INTO `item_mods` VALUES (28420,944,7); -- CONSERVE_TP
REPLACE INTO `item_mods` VALUES (28420, 48, 10); -- Fotia Belt -- WSACC
REPLACE INTO `item_mods` VALUES (28420, 840, 10); -- Fotia Belt -- ALL_WSDMG_ALL_HITS
-- Fotia Gorget
REPLACE INTO `item_mods` VALUES (27510, 48, 10); -- Fotia Belt -- WSACC
REPLACE INTO `item_mods` VALUES (27510, 840, 10); -- Fotia Belt -- ALL_WSDMG_ALL_HITS
-- Fulla Earring
REPLACE INTO `item_mods` VALUES (26106, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26106, 124, 10);  -- HANDBELL_SKILL
-- Gelai Earring
REPLACE INTO `item_mods_pet` VALUES (28518,289,9,0); -- SUBTLE_BLOW: 9
-- Gerdr Belt
REPLACE INTO `item_mods` VALUES (26360, 9, 5);  -- DEX
REPLACE INTO `item_mods` VALUES (26360, 11, 5);  -- AGI
REPLACE INTO `item_mods` VALUES (26360, 73, 5);  -- STORETP
REPLACE INTO `item_mods` VALUES (26360, 259, 3);  -- DUAL_WIELD
REPLACE INTO `item_mods` VALUES (26360, 165, 3);  -- CRITHITRATE
-- Gerdr Belt +1
REPLACE INTO `item_mods` VALUES (26361, 9, 7);  -- DEX
REPLACE INTO `item_mods` VALUES (26361, 11, 7);  -- AGI
REPLACE INTO `item_mods` VALUES (26361, 73, 6);  -- STORETP
REPLACE INTO `item_mods` VALUES (26361, 259, 4);  -- DUAL_WIELD
REPLACE INTO `item_mods` VALUES (26361, 165, 4);  -- CRITHITRATE
-- Gersemi Earring 
REPLACE INTO `item_mods` VALUES (26102, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26102, 120, 10);  -- STRING
-- Giuoco Grip
REPLACE INTO `item_mods` VALUES (27601, 296, 4); -- Giuoco Grip -- CONSERVE_MP  
REPLACE INTO `item_mods` VALUES (27601, 28, 7); -- Giuoco Grip -- MATT 
REPLACE INTO `item_mods` VALUES (27601, 161, -100); -- Giuoco Grip -- DMGPHYS
-- Gna earring
REPLACE INTO `item_mods` VALUES (26105, 1, 20); --gna earring -- DEF
REPLACE INTO `item_mods` VALUES (26105, 123, 10); --gna earring -- GEOMANCY_SKILL
-- Grounded mantle
REPLACE INTO `item_mods` VALUES (27601, 1, 20); -- grounded mantle -- def  
REPLACE INTO `item_mods` VALUES (27601, 25, 20); -- grounded mantle -- acc  
REPLACE INTO `item_mods` VALUES (27601, 196, 15); -- grounded mantle -- lightning resist  
REPLACE INTO `item_mods` VALUES (27601, 384, 100); -- grounded mantle -- haste
-- Grounded mantle +1
REPLACE INTO `item_mods` VALUES (27602, 1, 21); -- grounded mantle +1 -- def  
REPLACE INTO `item_mods` VALUES (27602, 25, 21); -- grounded mantle +1 -- acc  
REPLACE INTO `item_mods` VALUES (27602, 196, 20); -- grounded mantle +1 -- lightning resist  
REPLACE INTO `item_mods` VALUES (27602, 384, 200); -- grounded mantle +1 -- haste  
-- Gurebu's Ring
REPLACE INTO `item_mods` VALUES (26226, 13, 10); -- Medada's ring -- MND
REPLACE INTO `item_mods` VALUES (26226, 31, 20); -- Medada's ring -- MEVA
REPLACE INTO `item_mods` VALUES (26226, 958, 20); -- Medada's ring -- STATUSRES
REPLACE INTO `item_mods` VALUES (26226, 370, 2); -- Medada's ring -- REGEN
REPLACE INTO `item_mods` VALUES (26226, 369, 2); -- Medada's ring -- REFRESH
-- Handler's Earring
REPLACE INTO `item_mods` VALUES (28490, 1, 10); --handlers earring -- DEF
REPLACE INTO `item_mods` VALUES (28490, 14, 4); --handlers earring -- CHR
-- Handler's Earring +1
REPLACE INTO `item_mods` VALUES (28491, 1, 11); --handlers earring -- DEF
REPLACE INTO `item_mods` VALUES (28491, 14, 5); --handlers earring +1 -- CHR
-- Hauksbok Arrow
REPLACE INTO `item_mods` VALUES (22293,26,30);  -- RACC: 30
-- Hauksbok Bolt
REPLACE INTO `item_mods` VALUES (22294,11,10);  -- AGI: 10
REPLACE INTO `item_mods` VALUES (22294,30,30);  -- MACC: 30
REPLACE INTO `item_mods` VALUES (22294,28,30);  -- MATT: 30
-- Hauksbok Bullet  
REPLACE INTO `item_mods` VALUES (22295,11,10);  -- AGI: 10
REPLACE INTO `item_mods` VALUES (22295,28,40);  -- MATT: 40
-- Hizamaru Ring
REPLACE INTO `item_mods` VALUES (26206, 1, 8); --hizamaru ring -- DEF
REPLACE INTO `item_mods` VALUES (26206, 25, 6); --hizamaru ring -- ACC
REPLACE INTO `item_mods` VALUES (26206, 68, 12); --hizamaru ring -- EVA
REPLACE INTO `item_mods` VALUES (26206, 73, 5); --hizamaru ring -- STORETP
-- Ilmr Earring
REPLACE INTO `item_mods` VALUES (26097, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26097, 115, 10);  -- ELEM
-- Inyanga Ring
REPLACE INTO `item_mods` VALUES (26207, 1, 6);  -- def
REPLACE INTO `item_mods` VALUES (26207, 30, 6); -- MACC
REPLACE INTO `item_mods` VALUES (26207, 31, 12); -- MEVA
REPLACE INTO `item_mods` VALUES (26207, 163, -200); -- DMGMAGIC
-- Jhakri Ring
REPLACE INTO `item_mods` VALUES (26208, 1, 6);  -- def
REPLACE INTO `item_mods` VALUES (26208, 25, 6); -- ACC
REPLACE INTO `item_mods` VALUES (26208, 23, 6);  -- ATT
REPLACE INTO `item_mods` VALUES (26208, 30, 6); -- MACC
REPLACE INTO `item_mods` VALUES (26208,28,3);  -- MATT
REPLACE INTO `item_mods` VALUES (26208,487,2);  -- MAGIC_BURST_BONUS_CAPPED
-- Lebeche Ring
REPLACE INTO `item_mods` VALUES (28538,909,2);  -- QUICK_MAGIC: 2
-- Lehko's Ring 
REPLACE INTO `item_mods` VALUES (26229, 9, 10); -- Lehko's ring -- DEX
REPLACE INTO `item_mods` VALUES (26229, 73, 10); -- Lehko's ring -- STORETP
REPLACE INTO `item_mods` VALUES (26229, 384, 1000); -- Lehko's ring -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26229, 165, 10); -- Lehko's ring -- CRITHITRATE
-- Lifestream Cape
REPLACE INTO `item_mods` VALUES (28637, 123, 5); -- Lifestream Cape -- GEOMANCY_SKILL
-- Lodurr Earring 
REPLACE INTO `item_mods` VALUES (26099, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26099, 117, 10);  -- SUMMONING
-- Loricate Torque
REPLACE INTO `item_mods` VALUES (26001, 160, -500); --loricate torque -- DMG
-- Lucidity Sash
REPLACE INTO `item_mods` VALUES (28416,1,5);   -- DEF: 5
REPLACE INTO `item_mods` VALUES (28416,117,7); -- SUMMONING: 7
REPLACE INTO `item_mods` VALUES (28416,371,-2); -- AVATAR_PERPETUATION: -2
-- Lugra Earring
REPLACE INTO `item_latents` VALUES (28481,8,7,26,2);     -- DUSK-DAWN: STR 7
REPLACE INTO `item_latents` VALUES (28481,9,7,26,2);     -- DUSK-DAWN: DEX 7
REPLACE INTO `item_latents` VALUES (28481,10,7,26,2);     -- DUSK-DAWN: VIT 7
REPLACE INTO `item_latents` VALUES (28481,12,7,26,2);     -- DUSK-DAWN: INT 7
-- Lugra Earring +1
REPLACE INTO `item_latents` VALUES (28482,8,8,26,2);     -- DUSK-DAWN: STR 8
REPLACE INTO `item_latents` VALUES (28482,9,8,26,2);     -- DUSK-DAWN: DEX 8
REPLACE INTO `item_latents` VALUES (28482,10,8,26,2);     -- DUSK-DAWN: VIT 8
REPLACE INTO `item_latents` VALUES (28482,12,8,26,2);     -- DUSK-DAWN: INT 8
-- Mallquis Ring
REPLACE INTO `item_mods` VALUES (26213,1,6);   -- DEF
REPLACE INTO `item_mods` VALUES (26213,30,6);   -- MACC
REPLACE INTO `item_mods` VALUES (26213,311,6);   -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (26213,901,-3);   -- ELEMENTAL_CELERITY
-- Mani Earring 
REPLACE INTO `item_mods` VALUES (26094, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26094, 116, 10);  -- DARK
-- Marked gorget
REPLACE INTO `item_mods` VALUES (27512, 11, 3);  -- AGI
REPLACE INTO `item_mods` VALUES (27512, 26, 15);  -- RACC
REPLACE INTO `item_mods` VALUES (27512, 24, 15);  -- RATT
REPLACE INTO `item_mods` VALUES (27512, 27, -3);  -- ENMITY
REPLACE INTO `item_mods` VALUES (27512, 73, 2);  -- STORETP
-- Maskirova torque
REPLACE INTO `item_mods` VALUES (26011, 81, 15); -- DAGGER
REPLACE INTO `item_mods` VALUES (26011, 87, 15); -- POLEARM
REPLACE INTO `item_mods` VALUES (26011, 110, 15); -- PARRY
-- Medada's ring
REPLACE INTO `item_mods` VALUES (26225, 12, 10); -- Medada's ring -- INT
REPLACE INTO `item_mods` VALUES (26225, 30, 20); -- Medada's ring -- MACC
REPLACE INTO `item_mods` VALUES (26225, 28, 10); -- Medada's ring -- MATT
REPLACE INTO `item_mods` VALUES (26225, 170, 10); -- Medada's ring -- FASTCAST
-- Meghanada Ring
REPLACE INTO `item_mods` VALUES (26205, 1, 7);   -- DEF
REPLACE INTO `item_mods` VALUES (26205, 25, 6); -- ACC
REPLACE INTO `item_mods` VALUES (26205, 23, 6);  -- ATT
REPLACE INTO `item_mods` VALUES (26205, 26, 6); -- RACC
REPLACE INTO `item_mods` VALUES (26205, 24, 6); -- RATT
REPLACE INTO `item_mods` VALUES (26205, 161, -200); -- DMGPHYS
-- Melic Torque 
REPLACE INTO `item_mods` VALUES (26012, 113, 10); -- ENHANCE
REPLACE INTO `item_mods` VALUES (26012, 115, 10); -- ELEM
REPLACE INTO `item_mods` VALUES (26012, 117, 10); -- SUMMONING
REPLACE INTO `item_mods` VALUES (26012, 121, 10); -- WIND
REPLACE INTO `item_mods` VALUES (26012, 124, 10); -- HANDBELL_SKILL
-- Meili Earring
REPLACE INTO `item_mods` VALUES (26098, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26098, 112, 10);  -- HEALING
-- Mephitas's Ring
REPLACE INTO `item_mods` VALUES (27558, 1, 8);  -- def
REPLACE INTO `item_mods` VALUES (27558, 311, 4);  -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (27558, 7, 100);  -- CONVHPTOMP
-- Mephitas's Ring +1
REPLACE INTO `item_mods` VALUES (27559, 1, 9);  -- def
REPLACE INTO `item_mods` VALUES (27559, 311, 5);  -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (27559, 7, 110);  -- CONVHPTOMP
-- Mimir Earring
REPLACE INTO `item_mods` VALUES (26095, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26095, 113, 10); -- ENHANCE
-- Moonbeam Cape
REPLACE INTO `item_mods` VALUES (26268, 1, 30); --moonbeam cape -- DEF
REPLACE INTO `item_mods` VALUES (26268, 2, 250); --moonbeam cape -- HP
REPLACE INTO `item_mods` VALUES (26268, 160, -500); --moonbeam cape -- DMG
-- Moonbeam Necklace
REPLACE INTO `item_mods` VALUES (26036, 1, 14); --moonbeam necklace -- DEF
REPLACE INTO `item_mods` VALUES (26036, 30, 10); --moonbeam necklace -- MACC
REPLACE INTO `item_mods` VALUES (26036, 31, 10); --moonbeam necklace -- MEVA
REPLACE INTO `item_mods` VALUES (26036, 27, 10); --moonbeam necklace -- ENMITY
REPLACE INTO `item_mods` VALUES (26036, 168, 10); --moonbeam necklace -- SPELLINTERRUPT
-- Moonbeam Nodowa
REPLACE INTO `item_mods` VALUES (26034, 1, 14); --moonbeam nodowa -- DEF
REPLACE INTO `item_mods` VALUES (26034, 25, 20); --moonbeam nodowa -- ACC
REPLACE INTO `item_mods` VALUES (26034, 73, 8); --moonbeam nodowa -- STORETP
REPLACE INTO `item_mods` VALUES (26034, 306, 8); --moonbeam nodowa -- ZANSHIN
-- Moonbeam Ring
REPLACE INTO `item_mods` VALUES (26189, 2, 100); --moonbeam ring -- HP
REPLACE INTO `item_mods` VALUES (26189, 25, 5); --moonbeam ring -- ACC
REPLACE INTO `item_mods` VALUES (26189, 23, 5); --moonbeam ring -- ATT
REPLACE INTO `item_mods` VALUES (26189, 73, 3); --moonbeam ring -- STORETP
REPLACE INTO `item_mods` VALUES (26189, 160, -400); --moonbeam ring -- DMG
-- Moonbow Belt
REPLACE INTO `item_mods` VALUES (26340, 1, 20); --Moonbow Belt  -- DEF
REPLACE INTO `item_mods` VALUES (26340, 8, 15); --Moonbow Belt  -- STR
REPLACE INTO `item_mods` VALUES (26340, 9, 15); --Moonbow Belt  -- DEX
REPLACE INTO `item_mods` VALUES (26340, 302, 6); --Moonbow Belt  -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (26340, 973, 10); --Moonbow Belt  -- SUBTLE_BLOW_II
REPLACE INTO `item_mods` VALUES (26340, 160, -500); --Moonbow Belt  -- DMG
-- Moonbow Belt +1
REPLACE INTO `item_mods` VALUES (26341, 1, 25); --Moonbow Belt  -- DEF
REPLACE INTO `item_mods` VALUES (26341, 8, 20); --Moonbow Belt  -- STR
REPLACE INTO `item_mods` VALUES (26341, 9, 20); --Moonbow Belt  -- DEX
REPLACE INTO `item_mods` VALUES (26341, 302, 8); --Moonbow Belt  -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (26341, 973, 15); --Moonbow Belt  -- SUBTLE_BLOW_II
REPLACE INTO `item_mods` VALUES (26341, 160, -600); --Moonbow Belt  -- DMG
-- Moonbow Whistle 
REPLACE INTO `item_mods` VALUES (26032, 1, 12); --Moonbow Whistle  -- DEF
REPLACE INTO `item_mods` VALUES (26032, 14, 18); --Moonbow Whistle  -- CHR
REPLACE INTO `item_mods` VALUES (26032, 30, 18); --Moonbow Whistle  -- MACC
REPLACE INTO `item_mods` VALUES (26032, 452, 2); --Moonbow Whistle  -- ALL_SONGS_EFFECT
-- Moonbow Whistle +1
REPLACE INTO `item_mods` VALUES (26033, 1, 14); --Moonbow Whistle  -- DEF
REPLACE INTO `item_mods` VALUES (26033, 14, 23); --Moonbow Whistle  -- CHR
REPLACE INTO `item_mods` VALUES (26033, 30, 23); --Moonbow Whistle  -- MACC
REPLACE INTO `item_mods` VALUES (26033, 452, 3); --Moonbow Whistle  -- ALL_SONGS_EFFECT
-- Moonlight Cape
REPLACE INTO `item_mods` VALUES (26269, 1, 35); --moonbeam cape -- DEF
REPLACE INTO `item_mods` VALUES (26269, 2, 275); --moonbeam cape -- HP
REPLACE INTO `item_mods` VALUES (26269, 160, -600); --moonbeam cape -- DMG
-- Moonlight Necklace
REPLACE INTO `item_mods` VALUES (26037, 1, 16); --Moonlight necklace -- DEF
REPLACE INTO `item_mods` VALUES (26037, 30, 15); --Moonlight necklace -- MACC
REPLACE INTO `item_mods` VALUES (26037, 31, 15); --Moonlight necklace -- MEVA
REPLACE INTO `item_mods` VALUES (26037, 27, 15); --Moonlight necklace -- ENMITY
REPLACE INTO `item_mods` VALUES (26037, 168, 15); --Moonlight necklace -- SPELLINTERRUPT
-- Moonlight Nodowa
REPLACE INTO `item_mods` VALUES (26035, 1, 16); --Moonlight nodowa -- DEF
REPLACE INTO `item_mods` VALUES (26035, 25, 25); --Moonlight nodowa -- ACC
REPLACE INTO `item_mods` VALUES (26035, 73, 10); --Moonlight nodowa -- STORETP
REPLACE INTO `item_mods` VALUES (26035, 306, 10); --Moonlight nodowa -- ZANSHIN
-- Moonlight Ring
REPLACE INTO `item_mods` VALUES (26190, 2, 110); --Moonlight ring -- HP
REPLACE INTO `item_mods` VALUES (26190, 25, 8); --Moonlight ring -- ACC
REPLACE INTO `item_mods` VALUES (26190, 23, 8); --Moonlight ring -- ATT
REPLACE INTO `item_mods` VALUES (26190, 73, 5); --Moonlight ring -- STORETP
REPLACE INTO `item_mods` VALUES (26190, 160, -500); --Moonlight ring -- DMG
-- Mujin Band 
REPLACE INTO `item_mods` VALUES (11672,274,5); -- Mujin Band -- MAGIC_BURST_BONUS_UNCAPPED
-- Mummu Ring
REPLACE INTO `item_mods` VALUES (26212, 1, 7); -- DEF
REPLACE INTO `item_mods` VALUES (26212, 25, 6); -- ACC
REPLACE INTO `item_mods` VALUES (26212, 26, 6); -- RACC
REPLACE INTO `item_mods` VALUES (26212, 30, 6); -- MACC
REPLACE INTO `item_mods` VALUES (26212, 165, 3); -- CRITHITRATE
-- Njordr earring
REPLACE INTO `item_mods` VALUES (26104, 1, 20); -- Njordr earring -- def
REPLACE INTO `item_mods` VALUES (26104, 122, 10); -- Njordr earring -- blue skill 
-- Nourishing Earring
REPLACE INTO `item_mods` VALUES (28484,13,3);  -- MND: 3
REPLACE INTO `item_mods` VALUES (28484,374,2); -- CURE_POTENCY: 2
REPLACE INTO `item_mods` VALUES (28484,519,3); -- CURE_CAST_TIME: 3
-- Null Belt
REPLACE INTO `item_mods` VALUES (26367, 25, 30); -- ACC
REPLACE INTO `item_mods` VALUES (26367, 26, 30); -- RACC
REPLACE INTO `item_mods` VALUES (26367, 30, 30); -- MACC
REPLACE INTO `item_mods` VALUES (26367, 68, 30); -- EVA
REPLACE INTO `item_mods` VALUES (26367, 31, 30); -- MEVA
REPLACE INTO `item_mods` VALUES (26367, 29, 30); -- MDEF
REPLACE INTO `item_mods` VALUES (26367, 370, 30); -- REGEN
-- Null Loop
REPLACE INTO `item_mods` VALUES (26042, 1, 30); -- DEF
REPLACE INTO `item_mods` VALUES (26042, 2, 50); -- HP
REPLACE INTO `item_mods` VALUES (26042, 25, 50); -- ACC
REPLACE INTO `item_mods` VALUES (26042, 26, 50); -- RACC
REPLACE INTO `item_mods` VALUES (26042, 30, 50); -- MACC
REPLACE INTO `item_mods` VALUES (26042, 160, -500); -- DMG
-- Null Shawl
REPLACE INTO `item_mods` VALUES (26274, 25, 50); -- ACC
REPLACE INTO `item_mods` VALUES (26274, 26, 50); -- RACC
REPLACE INTO `item_mods` VALUES (26274, 30, 50); -- MACC
REPLACE INTO `item_mods` VALUES (26274, 68, 50); -- EVA
REPLACE INTO `item_mods` VALUES (26274, 31, 50); -- MEVA
REPLACE INTO `item_mods` VALUES (26274, 288, 7); -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (26274, 73, 7); -- STORETP
-- Odnowa earring
REPLACE INTO `item_mods` VALUES (27548, 8, 2); -- Odnowa earring -- str
REPLACE INTO `item_mods` VALUES (27548, 10, 2); -- Odnowa earring -- vit
REPLACE INTO `item_mods` VALUES (27548, 4, 100); -- Odnowa earring -- convert mp to hp
REPLACE INTO `item_mods` VALUES (27548, 163, -100); -- Odnowa earring -- magic damage taken
-- Orpheus's Sash
REPLACE INTO `item_mods` VALUES (26359, 32, 15); --orpheuss sash -- FIRE_MAB
REPLACE INTO `item_mods` VALUES (26359, 33, 15); --orpheuss sash -- ICE_MAB
REPLACE INTO `item_mods` VALUES (26359, 34, 15); --orpheuss sash -- WIND_MAB
REPLACE INTO `item_mods` VALUES (26359, 35, 15); --orpheuss sash -- EARTH_MAB
REPLACE INTO `item_mods` VALUES (26359, 36, 15); --orpheuss sash -- THUNDER_MAB
REPLACE INTO `item_mods` VALUES (26359, 37, 15); --orpheuss sash -- WATER_MAB
REPLACE INTO `item_mods` VALUES (26359, 38, 15); --orpheuss sash -- LIGHT_MAB
REPLACE INTO `item_mods` VALUES (26359, 39, 15); --orpheuss sash -- DARK_MAB
-- Oshasha's Treatise 
REPLACE INTO `item_mods` VALUES (22302,23,5);  -- ATT: 5
REPLACE INTO `item_mods` VALUES (22302,25,5);  -- ACC: 5
REPLACE INTO `item_mods` VALUES (22302,840,3); -- ALL_WSDMG_ALL_HITS: 3
-- Overbearing Ring
REPLACE INTO `item_mods` VALUES (27552,2,45);  -- HP
REPLACE INTO `item_mods` VALUES (27552,23,15);  -- ATT
REPLACE INTO `item_mods_pet` VALUES (27552,2,45,3); -- Automaton - HP
REPLACE INTO `item_mods_pet` VALUES (27552,23,15,3); -- Automaton - ATT
-- Penetrating Cape
REPLACE INTO `item_mods_pet` VALUES (27605,23,20, 0);  -- ATT: 20
REPLACE INTO `item_mods_pet` VALUES (27605,24,20, 0);  -- RATT: 20
REPLACE INTO `item_mods_pet` VALUES (27605,73,4, 0);  -- STORETP: 4
REPLACE INTO `item_mods_pet` VALUES (27605,384,200, 0);  -- HASTE_GEAR: 2%
-- Perimede Cape
REPLACE INTO `item_mods` VALUES (26243, 1, 17); --perimede cape -- DEF
REPLACE INTO `item_mods` VALUES (26243, 113, 7); --perimede cape -- ENHANCE
REPLACE INTO `item_mods` VALUES (26243, 116, 7); --perimede cape -- DARK
REPLACE INTO `item_mods` VALUES (26243, 909, 4); --perimede cape -- QUICK_MAGIC
-- Platinum moogle belt
REPLACE INTO `item_mods` VALUES (26366,31,15);     -- MEVA: 15
REPLACE INTO `item_mods` VALUES (26366,3,10);     -- HP: 10%
REPLACE INTO `item_mods` VALUES (26366,160,-300);    -- DMG: -300
-- Pratik Earring
REPLACE INTO `item_mods` VALUES (28498,281,50);   -- ENHANCES_SPIRIT_LINK: 50
-- Purity Ring
REPLACE INTO `item_mods` VALUES (27554,31,10);     -- MEVA: 10
REPLACE INTO `item_mods` VALUES (27554,67,7);     -- ENHANCES_CURSNA_RCVD: 7
REPLACE INTO `item_mods` VALUES (27554,163,-400);     -- DMGMAGIC: -4%
REPLACE INTO `item_mods` VALUES (27554,495,7);     -- ENHANCES_HOLYWATER: 7%
-- Ragelise's Ring
REPLACE INTO `item_mods` VALUES (26228, 1, 20); -- Ragelise's Ring -- def
REPLACE INTO `item_mods` VALUES (26228, 10, 10); -- Ragelise's Ring -- vit
REPLACE INTO `item_mods` VALUES (26228, 374, 10); -- Ragelise's Ring -- CURE_POTENCY
REPLACE INTO `item_mods` VALUES (26228, 160, -1000); -- Ragelise's Ring -- DMG
-- Ran Earring
REPLACE INTO `item_mods` VALUES (26089, 1, 20); -- Ran Earring -- def
REPLACE INTO `item_mods` VALUES (26089, 68, 10); -- Ran Earring -- eva
-- Refined grip
REPLACE INTO `item_mods` VALUES (21416, 160, -200); -- Refined grip -- DMG
-- Refined grip +1
REPLACE INTO `item_mods` VALUES (21417, 160, -300); -- Refined grip +1 -- DMG
-- Relucent Cape
REPLACE INTO `item_mods` VALUES (27621, 1, 20); -- Relucent Cape -- def
REPLACE INTO `item_mods` VALUES (27621, 25, 10); -- Relucent Cape -- acc
REPLACE INTO `item_mods` VALUES (27621, 68, 20); -- Relucent Cape -- eva
REPLACE INTO `item_mods` VALUES (27621, 288, 3); -- Relucent Cape -- DOUBLE_ATTACK
-- Rimeice Earring
REPLACE INTO `item_mods_pet` VALUES (28495,160,-100,0); -- All Pets - DMG: -100
-- Rigorous Grip
REPLACE INTO `item_mods` VALUES (21418, 8, 3); -- STR
REPLACE INTO `item_mods` VALUES (21418, 25, 2); -- ACC
-- Rigorous Grip +1
REPLACE INTO `item_mods` VALUES (21419,8,4);   -- STR: 4
REPLACE INTO `item_mods` VALUES (21419,25,3);  -- ACC: 3
-- Sacro Gorget 
REPLACE INTO `item_mods` VALUES (26039, 1, 30);  -- def
REPLACE INTO `item_mods` VALUES (26039, 2, 50);  -- HP
REPLACE INTO `item_mods` VALUES (26039, 27, 5);  -- ENMITY
REPLACE INTO `item_mods` VALUES (26039, 374, 10);  -- CURE_POTENCY
REPLACE INTO `item_mods` VALUES (26039, 838, 10);  -- REGEN_MULTIPLIER
-- Sacro Mantle
REPLACE INTO `item_mods` VALUES (26270, 9, 25); -- DEX
REPLACE INTO `item_mods` VALUES (26270, 10, 25); -- AGI
REPLACE INTO `item_mods` VALUES (26270, 25, 20); -- ACC
REPLACE INTO `item_mods` VALUES (26270, 23, 20); -- ATT
REPLACE INTO `item_mods` VALUES (26270, 26, 20); -- RACC
REPLACE INTO `item_mods` VALUES (26270, 24, 20); -- RATT
REPLACE INTO `item_mods` VALUES (26270, 30, 20); -- MACC
REPLACE INTO `item_mods` VALUES (26270, 840, 6); -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods` VALUES (26270, 175, 8); -- SKILLCHAINDMG
-- Saxnot Earring 
REPLACE INTO `item_mods` VALUES (26093, 1, 20);  -- def
REPLACE INTO `item_mods` VALUES (26093, 111, 10);  -- DIVINE
-- Sibyl Scarf
REPLACE INTO `item_mods` VALUES (25416,12,10);  -- INT: 10
REPLACE INTO `item_mods` VALUES (25416,28,10);  -- MATT: 10
REPLACE INTO `item_mods` VALUES (25416,369,1); -- REFRESH: 1
-- Skrymir Cord
REPLACE INTO `item_mods` VALUES (26356,30,5);  -- MACC:
REPLACE INTO `item_mods` VALUES (26356,28,5);  -- MATT:
REPLACE INTO `item_mods` VALUES (26356,311,30);  -- MAGIC_DAMAGE:
-- Skrymir Cord +1
REPLACE INTO `item_mods` VALUES (26357,30,7);  -- MACC:
REPLACE INTO `item_mods` VALUES (26357,28,7);  -- MATT:
REPLACE INTO `item_mods` VALUES (26357,311,35);  -- MAGIC_DAMAGE:
-- Smertrios's Mantle
REPLACE INTO `item_mods` VALUES (26257,94,8);    -- MEDITATE_DURATION: 8
REPLACE INTO `item_mods` VALUES (26257,174,3); -- SKILLCHAINDMG: 3
-- Solemnity Cape
REPLACE INTO `item_mods` VALUES (26245, 1, 17); --Solemnity Cape -- Def
REPLACE INTO `item_mods` VALUES (26245, 252, 15); --Solemnity Cape -- CHARMRES
REPLACE INTO `item_mods` VALUES (26245, 296, 5); --Solemnity Cape -- CONSERVE_MP
REPLACE INTO `item_mods` VALUES (26245, 374, 7); --Solemnity Cape -- CURE_POTENCY
REPLACE INTO `item_mods` VALUES (26245, 160, -400); --Solemnity Cape -- DMG
-- Sroda Tathlum
REPLACE INTO `item_mods` VALUES (22301, 30, -10); --sroda tathlum -- MACC
REPLACE INTO `item_mods` VALUES (22301, 31, -10); --sroda tathlum -- MEVA
REPLACE INTO `item_mods` VALUES (22301, 562, 10); --sroda tathlum -- MAGIC_CRITHITRATE
-- Staunch Tathlum
REPLACE INTO `item_mods` VALUES (22278, 958, 10); -- Staunch Tathlum -- STATUSRES
REPLACE INTO `item_mods` VALUES (22278, 168, 10); -- Staunch Tathlum -- SPELLINTERRUPT
REPLACE INTO `item_mods` VALUES (22278, 160, -200); -- Staunch Tathlum -- DMG
-- Staunch Tathlum +1
REPLACE INTO `item_mods` VALUES (22279, 958, 11); -- Staunch Tathlum -- STATUSRES
REPLACE INTO `item_mods` VALUES (22279, 168, 11); -- Staunch Tathlum -- SPELLINTERRUPT
REPLACE INTO `item_mods` VALUES (22279, 160, -300); -- Staunch Tathlum -- DMG
-- Subtlety spectacles
REPLACE INTO `item_mods` VALUES (27513, 1, 9);  -- DEF
REPLACE INTO `item_mods` VALUES (27513, 2, 20);  -- HP
REPLACE INTO `item_mods` VALUES (27513, 25, 15);  -- ACC
REPLACE INTO `item_mods` VALUES (27513, 289, 4);  -- SUBTLE_BLOW
-- Sulevia's Ring
REPLACE INTO `item_mods` VALUES (26204, 1, 10);  -- DEF
REPLACE INTO `item_mods` VALUES (26204, 25, 6); -- ACC
REPLACE INTO `item_mods` VALUES (26204, 23, 6);  -- ATT
REPLACE INTO `item_mods` VALUES (26204, 160, -300); -- DMG
-- Tali'ah Ring
REPLACE INTO `item_mods` VALUES (26210, 1, 7);  -- DEF
REPLACE INTO `item_mods` VALUES (26210, 25, 6);  -- ACC
REPLACE INTO `item_mods` VALUES (26210, 30, 6);  -- MACC
REPLACE INTO `item_mods_pet` VALUES (26210, 25, 6, 0);  -- ACC
REPLACE INTO `item_mods_pet` VALUES (26210, 26, 6, 0);  -- RACC
REPLACE INTO `item_mods_pet` VALUES (26210, 30, 6, 0);  -- MACC
-- Tengu-No-Hane
REPLACE INTO `item_latents` VALUES (21367,25,15,26,0);  -- ACC: 15
REPLACE INTO `item_latents` VALUES (21367,23,15,26,0);  -- ATT: 15
-- tempus fugit
REPLACE INTO `item_mods` VALUES (25728, 1, 16); --tempus fugit -- DEF
REPLACE INTO `item_mods` VALUES (26331, 384, 1400); --tempus fugit -- HASTE_GEAR
-- tempus fugit +1
REPLACE INTO `item_mods` VALUES (25728, 1, 17); --tempus fugit +1 -- DEF
REPLACE INTO `item_mods` VALUES (26331, 384, 1500); --tempus fugit +1 -- HASTE_GEAR
-- Thaumaturge's cape
REPLACE INTO `item_mods` VALUES (27607, 296, 4);  -- CONSERVE_MP: 4
REPLACE INTO `item_mods` VALUES (27607, 27, -10);  -- ENMITY: -10
REPLACE INTO `item_mods` VALUES (27607, 5, 25);  -- MP: 25
-- Unmoving Collar
REPLACE INTO `item_mods` VALUES (27508, 1, 10); -- Unmoving Collar -- def
REPLACE INTO `item_mods` VALUES (27508, 10, 8); -- Unmoving Collar -- VIT
REPLACE INTO `item_mods` VALUES (27508, 14, 8); -- Unmoving Collar -- CHR
REPLACE INTO `item_mods` VALUES (27508, 252, 8); -- Unmoving Collar -- CHARMRES
REPLACE INTO `item_mods` VALUES (27508, 27, 9); -- Unmoving Collar -- ENMITY
-- Unmoving Collar +1
REPLACE INTO `item_mods` VALUES (27509, 1, 11); -- Unmoving Collar -- def
REPLACE INTO `item_mods` VALUES (27509, 10, 9); -- Unmoving Collar -- VIT
REPLACE INTO `item_mods` VALUES (27509, 14, 9); -- Unmoving Collar -- CHR
REPLACE INTO `item_mods` VALUES (27509, 252, 9); -- Unmoving Collar -- CHARMRES
REPLACE INTO `item_mods` VALUES (27509, 27, 10); -- Unmoving Collar -- ENMITY
-- Vim Torque
REPLACE INTO `item_mods` VALUES (26021, 1, 14); -- Unmoving Collar -- def
REPLACE INTO `item_latents` VALUES (26021, 368, 15, 10, 0); -- Unmoving Collar -- REGAIN WEAPON_DRAWN
-- TODO -50hp a hit
-- Vim Torque +1
REPLACE INTO `item_mods` VALUES (26022, 1, 15); -- Unmoving Collar -- def
REPLACE INTO `item_latents` VALUES (26022, 368, 20, 10, 0); -- Unmoving Collar -- REGAIN WEAPON_DRAWN
-- TODO -50hp a hit
-- Vor earring
REPLACE INTO `item_mods` VALUES (26096, 1, 20); -- Vor earring -- def
REPLACE INTO `item_mods` VALUES (26096, 114, 10); -- Vor earring -- ENFEEBLE
-- Willpower Grip
REPLACE INTO `item_mods` VALUES (21414, 30, 3);  -- MACC +3
REPLACE INTO `item_mods` VALUES (21414, 28, 5);  -- MATT +5
-- Zwazo earring
REPLACE INTO `item_mods` VALUES (27532, 25, 9); -- zwazo earring -- acc
REPLACE INTO `item_mods` VALUES (27532, 225, 4); -- zwazo earring -- bird killer
REPLACE INTO `item_mods` VALUES (27532, 162, -100); -- zwazo earring -- breath dmg taken 
-- Zwazo earring +1
REPLACE INTO `item_mods` VALUES (27533, 25, 10); -- zwazo earring +1 -- acc
REPLACE INTO `item_mods` VALUES (27533, 225, 5); -- zwazo earring +1 -- bird killer
REPLACE INTO `item_mods` VALUES (27533, 162, -200); -- zwazo earring +1 -- breath dmg taken 
--------------------------------Weapons--------------------------------
-- Aettir
REPLACE INTO `item_mods` VALUES (20761, 1016, 10); -- aettir -- SWIPE
REPLACE INTO `item_mods` VALUES (20761, 840, 10); -- aettir -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods` VALUES (20761, 190, -500); -- aettir -- DMGPHYS_II
-- Anahera Blade
REPLACE INTO `item_mods` VALUES (21049,944,7); -- CONSERVE_TP
-- Anathema Harpe
REPLACE INTO `item_mods` VALUES (20606, 8, 7); --Anathema Harpe -- STR
REPLACE INTO `item_mods` VALUES (20606, 23, 26); --Anathema Harpe -- ATT
REPLACE INTO `item_mods` VALUES (20606, 68, 13); --Anathema Harpe -- EVA
REPLACE INTO `item_mods` VALUES (20606, 288, 2); --Anathema Harpe -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (20606, 246, 15); --Anathema Harpe -- PETRIFYRES
-- Anathema Harpe +1  
REPLACE INTO `item_mods` VALUES (20607, 8, 8); --Anathema Harpe +1   -- STR
REPLACE INTO `item_mods` VALUES (20607, 23, 26); --Anathema Harpe +1   -- ATT
REPLACE INTO `item_mods` VALUES (20607, 68, 13); --Anathema Harpe +1   -- EVA
REPLACE INTO `item_mods` VALUES (20607, 288, 3); --Anathema Harpe +1   -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (20607, 246, 20); --Anathema Harpe +1   -- PETRIFYRES
-- Annealed Lance
REPLACE INTO `item_mods` VALUES (20938, 8, 20);  -- STR: 20
REPLACE INTO `item_mods` VALUES (20938, 23, 40);  -- ATT: 40
REPLACE INTO `item_mods` VALUES (20938, 368, 15);  -- REGAIN: 15
-- Arasy Knife
REPLACE INTO `item_mods` VALUES (21554, 68, 22); -- EVA
-- Arasy Knife +1
REPLACE INTO `item_mods` VALUES (21555, 68, 27); -- EVA
-- Arasy Staff
REPLACE INTO `item_mods` VALUES (22074,274,3);   -- MAGIC_BURST_BONUS_UNCAPPED: 3
-- Arasy Staff +1
REPLACE INTO `item_mods` VALUES (22075,274,5);   -- MAGIC_BURST_BONUS_UNCAPPED: 5
-- Atakigiri
REPLACE INTO `item_latents` VALUES (21036,288,5,28,0);  -- DOUBLE_ATTACK: 5
-- Beheader
REPLACE INTO `item_mods` VALUES (20853, 8, 15); -- Beheader -- STR
REPLACE INTO `item_mods` VALUES (20853, 25, 23); -- Beheader -- ACC
REPLACE INTO `item_mods` VALUES (20853, 31, 20); -- Beheader -- MEVA
-- Beheader +1
REPLACE INTO `item_mods` VALUES (20854, 8, 16); -- Beheader +1 -- STR
REPLACE INTO `item_mods` VALUES (20854, 25, 24); -- Beheader +1 -- ACC
REPLACE INTO `item_mods` VALUES (20854, 31, 21); -- Beheader +1 -- MEVA
-- Bestas Bane
REPLACE INTO `item_mods` VALUES (21368, 15, 12);  -- FIRE_MEVA
REPLACE INTO `item_mods` VALUES (21368,431,2);   -- ITEM_ADDEFFECT_TYPE: DEBUFF
REPLACE INTO `item_mods` VALUES (20681,499,12);   -- ITEM_SUBEFFECT: 12
REPLACE INTO `item_mods` VALUES (20681,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
REPLACE INTO `item_mods` VALUES (20681,950,15);   -- ITEM_ADDEFFECT_ELEMENT: 15
-- Buramgh
REPLACE INTO `item_mods` VALUES (20806, 391, 10); -- Buramgh -- CHARM_CHANCE
REPLACE INTO `item_mods` VALUES (20806, 304, 10); -- Buramgh -- TAME
REPLACE INTO `item_mods_pet` VALUES (20806, 370, 2, 0); --Buramgh -- REGEN
-- Buramgh +1
REPLACE INTO `item_mods` VALUES (20807, 391, 11); -- Buramgh +1 -- CHARM_CHANCE
REPLACE INTO `item_mods` VALUES (20807, 304, 11); -- Buramgh +1 -- TAME
REPLACE INTO `item_mods_pet` VALUES (20807, 370, 3, 0); --Buramgh +1 -- REGEN
-- Calved Claws
REPLACE INTO `item_mods` VALUES (20529,9,12);  -- DEX: 12
REPLACE INTO `item_mods` VALUES (20529,12,12); -- INT: 12
REPLACE INTO `item_mods` VALUES (20529,16,25); -- ICE_MEVA: 25
REPLACE INTO `item_mods` VALUES (20529,25,20); -- ACC: 20
REPLACE INTO `item_mods` VALUES (20529,175,5); -- SKILLCHAINDMG: 5
REPLACE INTO `item_mods` VALUES (20529,431,2);   -- ITEM_ADDEFFECT_TYPE: DEBUFF
REPLACE INTO `item_mods` VALUES (20529,499,11);   -- ITEM_SUBEFFECT: 11
REPLACE INTO `item_mods` VALUES (20529,501,20); -- ITEM_ADDEFFECT_CHANCE: 20
REPLACE INTO `item_mods` VALUES (20529,950,11);   -- ITEM_ADDEFFECT_ELEMENT: 7

-- Cama. Harp
REPLACE INTO `item_mods` VALUES (21408, 120, 10); -- Cama. Harp -- STRING
-- Castigation
REPLACE INTO `item_mods` VALUES (20864,2,35);  -- HP: 35
REPLACE INTO `item_mods` VALUES (20864,10,15); -- VIT: 15
-- Combuster
REPLACE INTO `item_mods` VALUES (20696, 15, 20); -- Combuster -- FIRE_MEVA
REPLACE INTO `item_mods` VALUES (20696, 23, 26); -- Combuster -- ATT
REPLACE INTO `item_mods` VALUES (20696, 162, -1332); -- Combuster -- DMGBREATH
REPLACE INTO `item_mods` VALUES (20696, 233, 5); -- Combuster -- DRAGON_KILLER
-- Combuster +1
REPLACE INTO `item_mods` VALUES (20697, 15, 25); -- Combuster +1 -- FIRE_MEVA
REPLACE INTO `item_mods` VALUES (20697, 23, 26); -- Combuster +1-- ATT
REPLACE INTO `item_mods` VALUES (20697, 162, -1434); -- Combuster +1-- DMGBREATH
REPLACE INTO `item_mods` VALUES (20697, 233, 6); -- Combuster +1-- DRAGON_KILLER
-- Comeuppances
REPLACE INTO `item_mods` VALUES (20507, 8, 19); -- Comeuppances-- STR
REPLACE INTO `item_mods` VALUES (20507, 25, 40); -- Comeuppances-- ACC
REPLACE INTO `item_mods` VALUES (20507, 289, 11); -- Comeuppances-- SUBTLE_BLOW
-- Comeuppances +1
REPLACE INTO `item_mods` VALUES (20508, 8, 20); -- Comeuppances +1-- STR
REPLACE INTO `item_mods` VALUES (20508, 25, 41); -- Comeuppances +1-- ACC
REPLACE INTO `item_mods` VALUES (20508, 289, 12); -- Comeuppances +1-- SUBTLE_BLOW
-- Contemplator
REPLACE INTO `item_mods` VALUES (22057,5,100);   -- MP: 100
REPLACE INTO `item_mods` VALUES (22057,6,15);    -- MPP: 15
REPLACE INTO `item_mods` VALUES (22057,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (22057,13,12);   -- MND: 12
REPLACE INTO `item_mods` VALUES (22057,28,48);   -- MATT: 48
REPLACE INTO `item_mods` VALUES (22057,311,217); -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (22057,71,15);   -- MPHEAL: 15
-- Contemplator +1
REPLACE INTO `item_mods` VALUES (22058,5,110);   -- MP: 110
REPLACE INTO `item_mods` VALUES (22058,6,16);    -- MPP: 16
REPLACE INTO `item_mods` VALUES (22058,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (22058,13,12);   -- MND: 12
REPLACE INTO `item_mods` VALUES (22058,28,49);   -- MATT: 49
REPLACE INTO `item_mods` VALUES (22058,311,217); -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (22058,71,16);   -- MPHEAL: 16
-- Damani horn
REPLACE INTO `item_mods` VALUES (21402, 5, 20); -- Damani horn -- MP
REPLACE INTO `item_mods` VALUES (21402, 121, 3); -- Damani horn -- WIND
REPLACE INTO `item_mods` VALUES (21402, 440, 2); -- Damani horn -- LULLABY_EFFECT
-- Damani horn +1 
REPLACE INTO `item_mods` VALUES (21403, 5, 25); -- Damani horn +1  -- MP
REPLACE INTO `item_mods` VALUES (21403, 121, 4); -- Damani horn +1  -- WIND
REPLACE INTO `item_mods` VALUES (21403, 440, 3); -- Damani horn +1  -- LULLABY_EFFECT
-- Daybreak
REPLACE INTO `item_mods` VALUES (22040,5,60);    -- MP: 60
REPLACE INTO `item_mods` VALUES (22040,13,30);   -- MND: 30
REPLACE INTO `item_mods` VALUES (22040,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (22040,28,40);   -- MATT: 40
REPLACE INTO `item_mods` VALUES (22040,311,241); -- MAGIC_DAMAGE: 241
REPLACE INTO `item_mods` VALUES (22040,31,30);   -- MEVA: 30
REPLACE INTO `item_mods` VALUES (22040,374,30);  -- CURE_POTENCY: 30
REPLACE INTO `item_mods` VALUES (22040,369,1);   -- REFRESH: 1
REPLACE INTO `item_mods` VALUES (22040,38,50);  -- LIGHT_MAB: 50
-- Demersal Degen
REPLACE INTO `item_mods` VALUES (20708, 22, 20); -- Demersal Degen -- DARK_MEVA
-- Demers. Degen +1
REPLACE INTO `item_mods` VALUES (20709, 22, 25); -- Demers. Degen +1 -- DARK_MEVA
-- Emeici  
REPLACE INTO `item_mods` VALUES (20521, 302, 2); -- Emeici -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20521, 73, 4); -- Emeici -- STORETP
REPLACE INTO `item_mods` VALUES (20521, 161, -300); -- Emeici -- DMGPHYS
-- Emeici +1  
REPLACE INTO `item_mods` VALUES (20521, 302, 3); -- Emeici +1 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20521, 73, 5); -- Emeici +1 -- STORETP
REPLACE INTO `item_mods` VALUES (20521, 161, -400); -- Emeici +1 -- DMGPHYS
-- Eosuchus Club
REPLACE INTO `item_mods` VALUES (21104, 12, 6); --eosuchus club -- INT
REPLACE INTO `item_mods` VALUES (21104, 13, 6); --eosuchus club -- MND
REPLACE INTO `item_mods` VALUES (21104, 25, 10); --eosuchus club -- ACC
REPLACE INTO `item_mods` VALUES (21104, 311, 100); --eosuchus club -- MAGIC_DAMAGE
-- Epeolatry 119 
REPLACE INTO `item_mods` VALUES (20753, 27, 18); -- epeolatry 119 -- ENMITY
REPLACE INTO `item_mods` VALUES (20753, 1020, 1); -- epeolatry 119 -- LIEMENT_EXTENDS_TO_AREA: 1
REPLACE INTO `item_mods` VALUES (20753, 190, -2500); -- epeolatry 119 -- DMGPHYS_II
REPLACE INTO `item_mods` VALUES (20753, 256, 30);    -- epeolatry 119 -- AFTERMATH
REPLACE INTO `item_mods` VALUES (20753, 865, 10); -- epeolatry 119 -- MYTHIC_OCC_ATT_TWICE
REPLACE INTO `item_mods` VALUES (20753, 866, 10); -- epeolatry 119 -- MYTHIC_OCC_ATT_THRICE
-- Epeolatry 119 II
REPLACE INTO `item_mods` VALUES (21685, 866, 10); -- epeolatry 119 II -- MYTHIC_OCC_ATT_THRICE
-- Flyssa  
REPLACE INTO `item_mods` VALUES (20681, 25, 20); -- Flyssa  -- ACC
REPLACE INTO `item_mods` VALUES (20681, 30, 20); -- Flyssa  -- MACC
REPLACE INTO `item_mods` VALUES (20681, 111, 15); -- Flyssa  -- DIVINE
REPLACE INTO `item_mods` VALUES (20681, 161, -800); -- Flyssa  -- DMGPHYS
REPLACE INTO `item_mods` VALUES (20681,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (20681,499,7);   -- ITEM_SUBEFFECT: 7
REPLACE INTO `item_mods` VALUES (20681,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (20681,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (20681,950,15);   -- ITEM_ADDEFFECT_ELEMENT: 7
-- Flyssa +1  
REPLACE INTO `item_mods` VALUES (20682, 25, 21); -- Flyssa +1  -- ACC
REPLACE INTO `item_mods` VALUES (20682, 30, 21); -- Flyssa +1  -- MACC
REPLACE INTO `item_mods` VALUES (20682, 111, 16); -- Flyssa +1  -- DIVINE
REPLACE INTO `item_mods` VALUES (20682, 161, -900); -- Flyssa +1  -- DMGPHYS
REPLACE INTO `item_mods` VALUES (20682,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (20682,499,7);   -- ITEM_SUBEFFECT: 7
REPLACE INTO `item_mods` VALUES (20682,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (20682,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (20682,950,15);   -- ITEM_ADDEFFECT_ELEMENT: 7
-- Foreshock sword
REPLACE INTO `item_mods` VALUES (20757, 10, 8); -- Foreshock sword -- VIT
REPLACE INTO `item_mods` VALUES (20757, 12, 13); -- Foreshock sword  -- INT
REPLACE INTO `item_mods` VALUES (20757, 25, 15); -- Foreshock sword  -- ACC
REPLACE INTO `item_mods` VALUES (20757, 23, 26); -- Foreshock sword  -- ATT
REPLACE INTO `item_mods` VALUES (20757, 625, 35); -- Foreshock sword -- Spinning Slash +35%
-- Freydis
REPLACE INTO `item_mods` VALUES (21747, 25, 30); --freydis -- ACC
REPLACE INTO `item_mods` VALUES (21747, 23, 30); --freydis -- ATT
REPLACE INTO `item_mods` VALUES (21747, 27, 6); --freydis -- ENMITY
REPLACE INTO `item_mods` VALUES (21747, 518, 3); --freydis -- SHIELDBLOCKRATE
REPLACE INTO `item_mods` VALUES (21747, 161, -400); --freydis -- DMGPHYS
-- Gae Derg
REPLACE INTO `item_mods` VALUES (20942, 2, 100); --Gae Derg -- HP
REPLACE INTO `item_mods` VALUES (20942, 5, 100); --Gae Derg -- MP
REPLACE INTO `item_mods` VALUES (20942, 25, 18); --Gae Derg -- ACC
REPLACE INTO `item_mods` VALUES (20942, 460, 3); --Gae Derg -- ICE_ABSORB
-- Gae Derg +1
REPLACE INTO `item_mods` VALUES (20943, 2, 110); --Gae Derg +1 -- HP
REPLACE INTO `item_mods` VALUES (20943, 5, 110); --Gae Derg +1 -- MP
REPLACE INTO `item_mods` VALUES (20943, 25, 19); --Gae Derg +1 -- ACC
REPLACE INTO `item_mods` VALUES (20943, 460, 3); --Gae Derg +1 -- ICE_ABSORB
-- Geirrothr
REPLACE INTO `item_mods` VALUES (21856, 8, 25);  -- STR
REPLACE INTO `item_mods` VALUES (21856, 10, 25);  -- VIT
REPLACE INTO `item_mods` VALUES (21856, 25, 42);  -- ACC
REPLACE INTO `item_mods` VALUES (21856, 23, 48);  -- ATT
REPLACE INTO `item_mods` VALUES (21856, 384, 700);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (21856, 165, 7);  -- CRITHITRATE
-- Todo:  All Jumps: Increases damage based on current HP
-- Habile Mazrak
REPLACE INTO `item_mods` VALUES (20932, 27, -5); --habile mazrak -- ENMITY
REPLACE INTO `item_mods` VALUES (20932, 25, 36); --habile mazrak -- ACC
REPLACE INTO `item_mods` VALUES (20932, 23, 34); --habile mazrak -- ATT
REPLACE INTO `item_mods` VALUES (20932, 73, 8); --habile mazrak -- STORETP
REPLACE INTO `item_mods` VALUES (20932, 233, 20); --habile mazrak -- DRAGON_KILLER
REPLACE INTO `item_mods` VALUES (20932, 165, 5); --habile mazrak -- CRITHITRATE
-- Habilitator
REPLACE INTO `item_mods` VALUES (21748, 8, 17);  -- STR
REPLACE INTO `item_mods` VALUES (21748, 9, 17);   -- DEX
REPLACE INTO `item_mods` VALUES (21748, 14, 17);   -- CHR
REPLACE INTO `item_mods` VALUES (21748, 161, -200);   -- DMGPHYS
-- Habilitator +1
REPLACE INTO `item_mods` VALUES (21749, 8, 18);  -- STR
REPLACE INTO `item_mods` VALUES (21749, 9, 18);   -- DEX
REPLACE INTO `item_mods` VALUES (21749, 14, 18);   -- CHR
REPLACE INTO `item_mods` VALUES (21749, 161, -300);   -- DMGPHYS
-- Hodadenon
REPLACE INTO `item_mods` VALUES (21755, 8, 22); --hodadenon -- STR
REPLACE INTO `item_mods` VALUES (21755, 23, 45); --hodadenon -- ATT
REPLACE INTO `item_mods` VALUES (21755, 288, 6); --hodadenon -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (21755, 421, 5); --hodadenon -- CRIT_DMG_INCREASE
-- Idris i199
REPLACE INTO `item_mods` VALUES (21070, 30, 25); --idris -- MACC
REPLACE INTO `item_mods` VALUES (21070, 28, 25); --idris -- MATT
REPLACE INTO `item_mods` VALUES (21070, 311, 155); --idris -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (21070, 961, 10); --idris -- GEOMANCY_SKILL - Instead of applying a bonus to Geomancy Skill, this item applies a direct bonus to the potency of all Geomancy Spells on a per-spell basis
REPLACE INTO `item_mods` VALUES (21070, 256, 40); --idris -- AFTERMATH
REPLACE INTO `item_mods_pet` VALUES (21070, 160, -2500, 7); --idris -- DMG
-- Idris i199 II
REPLACE INTO `item_mods` VALUES (21080, 30, 40); --idris -- MACC
REPLACE INTO `item_mods` VALUES (21080, 28, 40); --idris -- MATT
REPLACE INTO `item_mods` VALUES (21080, 311, 217); --idris -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (21080, 961, 10); --idris -- GEOMANCY_SKILL - Instead of applying a bonus to Geomancy Skill, this item applies a direct bonus to the potency of all Geomancy Spells on a per-spell basis
REPLACE INTO `item_mods` VALUES (21080, 256, 40); --idris -- AFTERMATH
REPLACE INTO `item_mods_pet` VALUES (21080, 160, -2500, 7); --idris -- DMG
-- Jugo Kukri
REPLACE INTO `item_mods` VALUES (20608,17,15);   -- WIND_MEVA
REPLACE INTO `item_mods` VALUES (20608,68,22);   -- EVA
REPLACE INTO `item_mods` VALUES (20608,30,20);   -- MACC
REPLACE INTO `item_mods` VALUES (20608,302,2);   -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20608,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (20608,499,3);   -- ITEM_SUBEFFECT: 3
REPLACE INTO `item_mods` VALUES (20608,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (20608,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (20608,950,3);   -- ITEM_ADDEFFECT_ELEMENT: 3
-- Jugo Kukri
REPLACE INTO `item_mods` VALUES (20609,17,20);   -- WIND_MEVA
REPLACE INTO `item_mods` VALUES (20609,68,22);   -- EVA
REPLACE INTO `item_mods` VALUES (20609,30,21);   -- MACC
REPLACE INTO `item_mods` VALUES (20609,302,3);   -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20609,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (20609,499,3);   -- ITEM_SUBEFFECT: 3
REPLACE INTO `item_mods` VALUES (20609,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (20609,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (20609,950,3);   -- ITEM_ADDEFFECT_ELEMENT: 3
-- Kaja Sword
REPLACE INTO `item_mods` VALUES (21620,355,42);  -- ADDS_WEAPONSKILL: 42
REPLACE INTO `item_mods` VALUES (21620,612,15);  -- WSD+% (Savage Blade): 15
-- Kladenets 
REPLACE INTO `item_mods` VALUES (21702,30,20);   -- Kladenets MACC
REPLACE INTO `item_mods` VALUES (21702,902,20);   -- Kladenets OCCULT_ACUMEN
-- Kladenets +1 
REPLACE INTO `item_mods` VALUES (21703,30,21);   -- Kladenets +1 MACC
REPLACE INTO `item_mods` VALUES (21703,902,21);   -- Kladenets +1 OCCULT_ACUMEN
-- Kunimune
REPLACE INTO `item_mods` VALUES (21034,253,25);    -- AMNESIARES
REPLACE INTO `item_mods` VALUES (21034,161,-400);     -- DMGPHYS
-- Kunimune +1
REPLACE INTO `item_mods` VALUES (21035,253,30);    -- AMNESIARES
REPLACE INTO `item_mods` VALUES (21035,161,-500);     -- DMGPHYS
-- Kustawi dagger
REPLACE INTO `item_mods` VALUES (20580, 26, 24); -- kustawi dagger -- RACC
REPLACE INTO `item_mods` VALUES (20580, 24, 15); -- kustawi dagger -- RATT
REPLACE INTO `item_mods` VALUES (20580, 68, 22); -- kustawi dagger -- EVA
REPLACE INTO `item_mods` VALUES (20580, 27, -4); -- kustawi dagger -- ENMITY
-- Kustawi dagger +1
REPLACE INTO `item_mods` VALUES (20581, 26, 25); -- kustawi dagger +1 -- RACC
REPLACE INTO `item_mods` VALUES (20581, 24, 16); -- kustawi dagger +1 -- RATT
REPLACE INTO `item_mods` VALUES (20581, 68, 22); -- kustawi dagger +1 -- EVA
REPLACE INTO `item_mods` VALUES (20581, 27, -5); -- kustawi dagger +1 -- ENMITY
-- Levante Dagger
REPLACE INTO `item_mods` VALUES (20615,11,15); -- AGI: 15
REPLACE INTO `item_mods` VALUES (20615,25,27); -- ACC: 27
REPLACE INTO `item_mods` VALUES (20615,23,15); -- ATT: 15
REPLACE INTO `item_mods` VALUES (20615,68,27); -- EVA: 27
REPLACE INTO `item_mods` VALUES (20615,34,15); -- WIND_MAB: 15
REPLACE INTO `item_mods` VALUES (20615,289,8); -- SUBTLE_BLOW: 8
REPLACE INTO `item_mods` VALUES (20615,431,2);   -- ITEM_ADDEFFECT_TYPE: DEBUFF
REPLACE INTO `item_mods` VALUES (20615,499,13);   -- ITEM_SUBEFFECT: 13
REPLACE INTO `item_mods` VALUES (20615,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
REPLACE INTO `item_mods` VALUES (20615,950,13);   -- ITEM_ADDEFFECT_ELEMENT: 13


-- Lightreaver
REPLACE INTO `item_mods` VALUES (20858,431,13); -- ITEM_ADDEFFECT_TYPE: DEATH
REPLACE INTO `item_mods` VALUES (20858,499,19);   -- ITEM_SUBEFFECT: 4
REPLACE INTO `item_mods` VALUES (20858,501,5); -- ITEM_ADDEFFECT_CHANCE: 5
REPLACE INTO `item_mods` VALUES (20858,950,19);   -- ITEM_ADDEFFECT_ELEMENT: 4
-- Lionheart
REPLACE INTO `item_mods` VALUES (21694, 73, 10); --lionheart -- STORETP
REPLACE INTO `item_mods` VALUES (21694, 345, 500); --lionheart -- TP_BONUS
-- Loxotic Mace 
REPLACE INTO `item_mods` VALUES (21090, 25, 20); -- Loxotic Mace -- ACC
REPLACE INTO `item_mods` VALUES (21090, 23, 20); -- Loxotic Mace -- ATT
REPLACE INTO `item_latents` VALUES (21090,25,30,0,50);   -- Under 50% Health
REPLACE INTO `item_latents` VALUES (21090,23,30,0,50);   -- Under 50% Health
-- Loxotic Mace +1 
REPLACE INTO `item_mods` VALUES (21091, 25, 21); -- Loxotic Mace +1 -- ACC
REPLACE INTO `item_mods` VALUES (21091, 23, 21); -- Loxotic Mace +1 -- ATT
REPLACE INTO `item_latents` VALUES (21091,25,31,0,50);   -- Under 50% Health
REPLACE INTO `item_latents` VALUES (21091,23,31,0,50);   -- Under 50% Health
-- Mafic Cudgel
REPLACE INTO `item_mods` VALUES (21102,10,15);    -- VIT: 15
REPLACE INTO `item_mods` VALUES (21102,12,6);     -- INT: 6
REPLACE INTO `item_mods` VALUES (21102,13,6);     -- MND: 6
REPLACE INTO `item_mods` VALUES (21102,25,27);    -- ACC: 27
REPLACE INTO `item_mods` VALUES (21102,27,6);    -- ENMITY: 6
REPLACE INTO `item_mods` VALUES (21102,161,-1000); -- DMGPHYS: -1000
REPLACE INTO `item_mods` VALUES (21102,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (21102,499,4);   -- ITEM_SUBEFFECT: 4
REPLACE INTO `item_mods` VALUES (21102,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (21102,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (21102,950,4);   -- ITEM_ADDEFFECT_ELEMENT: 4
-- Magesmasher 
REPLACE INTO `item_mods` VALUES (21099,12,6);     -- INT: 6
REPLACE INTO `item_mods` VALUES (21099,13,16);     -- MND: 16
REPLACE INTO `item_mods` VALUES (21099,23,10);     -- ATT: 10
REPLACE INTO `item_mods` VALUES (21099,311,110);     -- MAGIC_DAMAGE: 110
REPLACE INTO `item_latents` VALUES (21099,431,2,59,3);    -- Vs. arcana: DEBUFF
REPLACE INTO `item_latents` VALUES (21099,499,18,59,3);   -- ITEM_SUBEFFECT: 18
REPLACE INTO `item_latents` VALUES (21099,501,50,59,3); -- ITEM_ADDEFFECT_CHANCE: 50
REPLACE INTO `item_latents` VALUES (21099,950,18,59,3);   -- ITEM_ADDEFFECT_ELEMENT: 18
-- Magesmasher +1  
REPLACE INTO `item_mods` VALUES (21100,12,6);     -- INT: 6
REPLACE INTO `item_mods` VALUES (21100,13,16);     -- MND: 16
REPLACE INTO `item_mods` VALUES (21100,23,10);     -- ATT: 10
REPLACE INTO `item_mods` VALUES (21100,311,110);     -- MAGIC_DAMAGE: 110
REPLACE INTO `item_latents` VALUES (21100,431,2,59,3);    -- Vs. arcana: DEBUFF
REPLACE INTO `item_latents` VALUES (21100,499,18,59,3);   -- ITEM_SUBEFFECT: 18
REPLACE INTO `item_latents` VALUES (21100,501,50,59,3); -- ITEM_ADDEFFECT_CHANCE: 50
REPLACE INTO `item_latents` VALUES (21100,950,18,59,3);   -- ITEM_ADDEFFECT_ELEMENT: 18
-- Malison
REPLACE INTO `item_mods` VALUES (21483,11,15);     -- AGI: 15
REPLACE INTO `item_mods` VALUES (21483,26,19);     -- RACC: 19
REPLACE INTO `item_mods` VALUES (21483,163,-300);     -- DMGMAGIC: -3%
-- Malison +1 
REPLACE INTO `item_mods` VALUES (21484,11,16);     -- AGI: 16
REPLACE INTO `item_mods` VALUES (21484,26,20);     -- RACC: 20
REPLACE INTO `item_mods` VALUES (21484,163,-400);     -- DMGMAGIC: -4%
-- Marin staff
REPLACE INTO `item_mods` VALUES (21159,12,12);     -- INT: 12
REPLACE INTO `item_mods` VALUES (21159,13,12);     -- MND: 12
REPLACE INTO `item_mods` VALUES (21159,30,15);     -- MACC: 15
REPLACE INTO `item_mods` VALUES (21159,28,28);     -- MATT: 28
REPLACE INTO `item_mods` VALUES (21159,311,217);     -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (21159,170,2);     -- FASTCAST: 2
REPLACE INTO `item_mods` VALUES (21159,34,10);     -- WIND_MAB: 10
-- Marin Staff +1
REPLACE INTO `item_mods` VALUES (21160,12,12);     -- INT: 12
REPLACE INTO `item_mods` VALUES (21160,13,12);     -- MND: 12
REPLACE INTO `item_mods` VALUES (21160,30,15);     -- MACC: 15
REPLACE INTO `item_mods` VALUES (21160,28,28);     -- MATT: 28
REPLACE INTO `item_mods` VALUES (21160,311,217);     -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (21160,170,3);     -- FASTCAST: 2
REPLACE INTO `item_mods` VALUES (21160,34,11);     -- WIND_MAB: 10
-- Marquetry Staff
REPLACE INTO `item_mods` VALUES (21155,5,88); -- MP: 88
REPLACE INTO `item_mods` VALUES (21155,913,5); -- BLOOD_BOON: 5
-- Mdomo Axe
REPLACE INTO `item_mods` VALUES (20799,364,15);    -- REWARD_HP_BONUS: 14
REPLACE INTO `item_mods_pet` VALUES (20799, 23, 20, 0); -- ATT
REPLACE INTO `item_mods_pet` VALUES (20799, 24, 20, 0); -- RATT
REPLACE INTO `item_mods_pet` VALUES (20799, 28, 15, 0); -- MATT
-- Mdomo Axe +1
REPLACE INTO `item_mods` VALUES (20800,364,15);    -- REWARD_HP_BONUS: 14
REPLACE INTO `item_mods_pet` VALUES (20800, 23, 21, 0); -- ATT
REPLACE INTO `item_mods_pet` VALUES (20800, 24, 21, 0); -- RATT
REPLACE INTO `item_mods_pet` VALUES (20800, 28, 16, 0); -- MATT
-- Medeina Kilij
REPLACE INTO `item_mods` VALUES (20707,369,1);   -- REFRESH: 1
-- Mengado
REPLACE INTO `item_mods` VALUES (21222, 2, 30); -- Mengado -- hp
REPLACE INTO `item_mods` VALUES (21222, 8, 5); -- Mengado -- STR
REPLACE INTO `item_mods` VALUES (21222, 26, 27); -- Mengado -- RACC
REPLACE INTO `item_latents` VALUES (21222,370,2,26,0);    -- Regen 2/tick during Daytime
-- Mengado +1 
REPLACE INTO `item_mods` VALUES (21223, 2, 35); -- Mengado -- hp
REPLACE INTO `item_mods` VALUES (21223, 8, 6); -- Mengado -- STR
REPLACE INTO `item_mods` VALUES (21223, 26, 27); -- Mengado -- RACC
REPLACE INTO `item_latents` VALUES (21223,370,3,26,0);    -- Regen 3/tick during Daytime
-- Mesyohi Sword
REPLACE INTO `item_mods` VALUES (20770,431,10);   -- ITEM_ADDEFFECT_TYPE: DISPEL
REPLACE INTO `item_mods` VALUES (20770,499,8);   -- ITEM_SUBEFFECT: 8
REPLACE INTO `item_mods` VALUES (20770,501,5); -- ITEM_ADDEFFECT_CHANCE: 5
-- Mesyohi Rod
REPLACE INTO `item_mods` VALUES (21122,431,6);   -- ITEM_ADDEFFECT_TYPE: MP_DRAIN
REPLACE INTO `item_mods` VALUES (21122,499,22);   -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (21122,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
-- Mijin
REPLACE INTO `item_mods` VALUES (20983, 8, 5);  -- STR +5
REPLACE INTO `item_mods` VALUES (20983, 9, 5);  -- DEX +5
REPLACE INTO `item_mods` VALUES (20983, 25, 27);  -- ACC +27
REPLACE INTO `item_mods` VALUES (20983, 26, 10);  -- RACC +10
REPLACE INTO `item_mods` VALUES (20983, 24, 10);  -- RATT +10
REPLACE INTO `item_mods` VALUES (20983, 68, 34);  -- EVA +34
-- Montante sword
REPLACE INTO `item_mods` VALUES (21688, 2, 60); -- montante sword -- hp
REPLACE INTO `item_mods` VALUES (21688, 23, 33); -- montante sword  -- att
REPLACE INTO `item_mods` VALUES (21688, 73, 10); -- montante sword  -- store tp
REPLACE INTO `item_mods` VALUES (21688,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (21688,499,1);   -- ITEM_SUBEFFECT: 1
REPLACE INTO `item_mods` VALUES (21688,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (21688,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (21688,950,1);   -- ITEM_ADDEFFECT_ELEMENT: 1
-- Montante sword +1
REPLACE INTO `item_mods` VALUES (21689, 2, 70); -- montante sword +1 -- hp
REPLACE INTO `item_mods` VALUES (21689, 23, 34); -- montante sword +1 -- att
REPLACE INTO `item_mods` VALUES (21689, 73, 11); -- montante sword +1 -- store tp
REPLACE INTO `item_mods` VALUES (21689,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (21689,499,1);   -- ITEM_SUBEFFECT: 1
REPLACE INTO `item_mods` VALUES (21689,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (21689,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (21689,950,1);   -- ITEM_ADDEFFECT_ELEMENT: 1
-- Naegling
REPLACE INTO `item_mods` VALUES (21621,9,15);    -- DEX: 15
REPLACE INTO `item_mods` VALUES (21621,12,15);   -- INT: 15
REPLACE INTO `item_mods` VALUES (21621,13,15);   -- MND: 15
REPLACE INTO `item_mods` VALUES (21621,25,40);   -- ACC: 40
REPLACE INTO `item_mods` VALUES (21621,23,30);   -- ATT: 30
REPLACE INTO `item_mods` VALUES (21621,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (21621,28,16);   -- MATT: 16
REPLACE INTO `item_mods` VALUES (21621,311,217); -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (21621,355,42);  -- ADDS_WEAPONSKILL: 42
REPLACE INTO `item_mods` VALUES (21621,612,15);  -- WSD+% (Savage Blade): 15
-- Nibiru knife
REPLACE INTO `item_mods` VALUES (20600, 9, 5);  -- DEX: 5
REPLACE INTO `item_mods` VALUES (20600, 11, 5);  -- AGI: 5
REPLACE INTO `item_mods` VALUES (20600, 14, 5);  -- CHR: 5
REPLACE INTO `item_mods` VALUES (20600, 68, 29);  -- EVA: 29
REPLACE INTO `item_mods` VALUES (20600, 165, 2);  -- CRITHITRATE: 2
-- Nibiru blade
REPLACE INTO `item_mods` VALUES (20710, 8, 5);  -- STR: 5
REPLACE INTO `item_mods` VALUES (20710, 9, 5);  -- DEX: 5
REPLACE INTO `item_mods` VALUES (20710, 25, 7);  -- ACC: 7
REPLACE INTO `item_mods` VALUES (20710, 288, 2);  -- DOUBLE_ATTACK: 2%
-- Nibiru tabar
REPLACE INTO `item_mods` VALUES (20801, 8, 5);  -- STR: 5
REPLACE INTO `item_mods` VALUES (20801, 10, 5);  -- VIT: 5
REPLACE INTO `item_mods` VALUES (20801, 23, 7);  -- ATT: 7
REPLACE INTO `item_mods_pet` VALUES (20801, 27, 5, 0); -- ENMITY: 5
REPLACE INTO `item_mods_pet` VALUES (20801, 288, 2, 0); -- DOUBLE_ATTACK: 2%
-- Nibiru chopper
REPLACE INTO `item_mods` VALUES (20848, 8, 7);  -- STR: 7
REPLACE INTO `item_mods` VALUES (20848, 9, 7);  -- DEX: 7
REPLACE INTO `item_mods` VALUES (20848, 23, 10);  -- ATT: 10
REPLACE INTO `item_mods` VALUES (20848, 161, -300);  -- DMGPHYS: -3%
-- Nibiru sickle
REPLACE INTO `item_mods` VALUES (20895, 8, 7);  -- STR: 7
REPLACE INTO `item_mods` VALUES (20895, 12, 7);  -- INT: 7
REPLACE INTO `item_mods` VALUES (20895, 23, 10);  -- ATT: 10
REPLACE INTO `item_mods` VALUES (20895, 288, 3);  -- DOUBLE_ATTACK: 3%
-- Nibiru lance
REPLACE INTO `item_mods` VALUES (20939, 8, 7);  -- STR +7
REPLACE INTO `item_mods` VALUES (20939, 9, 7);  -- DEX +7
REPLACE INTO `item_mods` VALUES (20939, 23, 10);  -- ATT +10
REPLACE INTO `item_mods` VALUES (20939, 384, 200);  -- HASTE_GEAR 2%
-- Nibiru cudgel
REPLACE INTO `item_mods` VALUES (21092, 12, 11);  -- INT +11
REPLACE INTO `item_mods` VALUES (21092, 13, 11);  -- MND +11
REPLACE INTO `item_mods` VALUES (21092, 30, 7);  -- MACC +7
REPLACE INTO `item_mods` VALUES (21092, 28, 16);  -- MATT +16
REPLACE INTO `item_mods` VALUES (21092, 311, 124);  -- MAGIC_DAMAGE +124
REPLACE INTO `item_mods` VALUES (21092, 374, 10);  -- CURE_POTENCY 10%
-- Nibiru staff
REPLACE INTO `item_mods` VALUES (21156, 12, 19);  -- INT: 19
REPLACE INTO `item_mods` VALUES (21156, 13, 19);  -- MND: 19
REPLACE INTO `item_mods` VALUES (21156, 28, 38);  -- MATT: 38
REPLACE INTO `item_mods` VALUES (21156, 311, 217);  -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (21156, 170, 4);  -- FASTCAST: 4%
REPLACE INTO `item_mods_pet` VALUES (21156, 28, 110, 0); -- MATT: 110
-- Nibiru bow
REPLACE INTO `item_mods` VALUES (21216, 8, 7);  -- STR +7
REPLACE INTO `item_mods` VALUES (21216, 11, 7);  -- AGI +7
REPLACE INTO `item_mods` VALUES (21216, 26, 10);  -- RACC +10
REPLACE INTO `item_mods` VALUES (21216, 27, -7);  -- ENMITY -7
-- Nibiru gun
REPLACE INTO `item_mods` VALUES (21273, 9, 7);  -- DEX +7
REPLACE INTO `item_mods` VALUES (21273, 11, 7);  -- AGI +7
REPLACE INTO `item_mods` VALUES (21273, 24, 10);  -- RATT +10
REPLACE INTO `item_mods` VALUES (21273, 420, 20);  -- BARRAGE_ACC +10
-- Nibiru harp
REPLACE INTO `item_mods` VALUES (21399, 14, 7);  -- CHR +7
REPLACE INTO `item_mods` VALUES (21399, 30, 10);  -- MACC +10
REPLACE INTO `item_mods` VALUES (21399, 445, 2);  -- CAROL_EFFECT +2
-- Nibiru Faussar
REPLACE INTO `item_mods` VALUES (21699, 8, 7);  -- STR +7
REPLACE INTO `item_mods` VALUES (21699, 9, 7);  -- DEX +7
REPLACE INTO `item_mods` VALUES (21699, 23, 10);  -- ATT +10
REPLACE INTO `item_mods` VALUES (21699, 375, 10);  -- CURE_POTENCY_RCVD 10%
-- Nullis
REPLACE INTO `item_mods` VALUES (21695, 25, 18); --Nullis -- ACC
REPLACE INTO `item_mods` VALUES (21695, 23, 33); --Nullis -- ATT
REPLACE INTO `item_mods` VALUES (21695, 288, 3); --Nullis -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (21695,431,10);   -- ITEM_ADDEFFECT_TYPE: DISPEL
REPLACE INTO `item_mods` VALUES (21695,499,8);   -- ITEM_SUBEFFECT: 8
REPLACE INTO `item_mods` VALUES (21695,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
-- Nullis +1
REPLACE INTO `item_mods` VALUES (21696, 25, 19); --Nullis +1 -- ACC
REPLACE INTO `item_mods` VALUES (21696, 23, 34); --Nullis +1 -- ATT
REPLACE INTO `item_mods` VALUES (21696, 288, 4); --Nullis +1 -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (21696,431,10);   -- ITEM_ADDEFFECT_TYPE: DISPEL
REPLACE INTO `item_mods` VALUES (21696,499,8);   -- ITEM_SUBEFFECT: 8
REPLACE INTO `item_mods` VALUES (21696,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
-- Paloma Bow
REPLACE INTO `item_mods` VALUES (21219,8,14);   -- STR: 14
REPLACE INTO `item_mods` VALUES (21219,11,14);  -- AGI: 14
REPLACE INTO `item_mods` VALUES (21219,24,30);  -- RATT: 30
REPLACE INTO `item_mods` VALUES (21219,359,10); -- RAPID_SHOT: 10
-- Paloma Bow +1
DELETE FROM `item_mods` WHERE itemId = 21220; -- Paloma Bow +1
REPLACE INTO `item_mods` VALUES (21220,8,15);   -- STR: 15
REPLACE INTO `item_mods` VALUES (21220,11,15);  -- AGI: 15
REPLACE INTO `item_mods` VALUES (21220,24,31);  -- RATT: 31
REPLACE INTO `item_mods` VALUES (21220,359,11); -- RAPID_SHOT: 11
-- Pelagos Lance
REPLACE INTO `item_mods` VALUES (20944,25,15);  -- ACC: 15
REPLACE INTO `item_mods` VALUES (20944,281,30); -- ENHANCES_SPIRIT_LINK: 30
REPLACE INTO `item_mods_pet` VALUES (20944,161,-300,2); -- Wyvern - DMGPHYS: -300
-- Perfervid Sword
REPLACE INTO `item_mods` VALUES (20716, 8, 15); --Perfervid Sword -- STR
REPLACE INTO `item_mods` VALUES (20716, 15, 25); --Perfervid Sword -- FIRE_MEVA
REPLACE INTO `item_mods` VALUES (20716, 25, 20); --Perfervid Sword -- ACC
REPLACE INTO `item_mods` VALUES (20716, 32, 15); --Perfervid Sword -- FIRE_MAB
REPLACE INTO `item_mods` VALUES (20716,431,1);   -- ITEM_ADDEFFECT_TYPE: DAMAGE
REPLACE INTO `item_mods` VALUES (20716,499,1);   -- ITEM_SUBEFFECT: 1
REPLACE INTO `item_mods` VALUES (20716,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (20716,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (20716,950,1);   -- ITEM_ADDEFFECT_ELEMENT: 1
-- Perun 
REPLACE INTO `item_mods` VALUES (20804, 11, 7); --Perun -- AGI
REPLACE INTO `item_mods` VALUES (20804, 25, 14); --Perun -- RACC
REPLACE INTO `item_mods` VALUES (20804, 24, 14); --Perun -- RATT
REPLACE INTO `item_mods` VALUES (20804, 73, 3); --Perun -- STORETP
-- Perun +1 
REPLACE INTO `item_mods` VALUES (20805, 11, 8); --Perun +1 -- AGI
REPLACE INTO `item_mods` VALUES (20805, 25, 15); --Perun +1 -- RACC
REPLACE INTO `item_mods` VALUES (20805, 24, 15); --Perun +1 -- RATT
REPLACE INTO `item_mods` VALUES (20805, 73, 4); --Perun +1 -- STORETP
-- Pixquizpan
REPLACE INTO `item_mods` VALUES (21805, 5, 60);   -- MP
REPLACE INTO `item_mods` VALUES (21805, 8, 15);   -- STR
REPLACE INTO `item_mods` VALUES (21805, 12, 15);   -- INT
REPLACE INTO `item_mods` VALUES (21805, 25, 25);   -- ACC
REPLACE INTO `item_mods` VALUES (21805, 30, 25);   -- MACC
REPLACE INTO `item_mods` VALUES (21805, 311, 186);   -- MAGIC_DAMAGE
-- Pixquizpan +1
REPLACE INTO `item_mods` VALUES (21806, 5, 70);   -- MP
REPLACE INTO `item_mods` VALUES (21806, 8, 16);   -- STR
REPLACE INTO `item_mods` VALUES (21806, 12, 16);   -- INT
REPLACE INTO `item_mods` VALUES (21806, 25, 26);   -- ACC
REPLACE INTO `item_mods` VALUES (21806, 30, 26);   -- MACC
REPLACE INTO `item_mods` VALUES (21806, 311, 186);   -- MAGIC_DAMAGE
-- Pouwhenua
REPLACE INTO `item_mods` VALUES (21162, 25, 8);   -- ACC
REPLACE INTO `item_mods` VALUES (21162, 23, 8);   -- ATT
REPLACE INTO `item_mods` VALUES (21162, 302, 2);   -- TRIPLE_ATTACK
REPLACE INTO `item_latents` VALUES (21162,370,2,42,1);    -- Regen 2/tick during Sunny weather
-- Pouwhenua +1
REPLACE INTO `item_mods` VALUES (21163, 25, 8);   -- ACC
REPLACE INTO `item_mods` VALUES (21163, 23, 8);   -- ATT
REPLACE INTO `item_mods` VALUES (21163, 302, 3);   -- TRIPLE_ATTACK
REPLACE INTO `item_latents` VALUES (21163,370,3,42,1);    -- Regen 3/tick during Sunny weather
-- Raicho
REPLACE INTO `item_mods` VALUES (20980, 8, 13); -- Raicho -- STR
REPLACE INTO `item_mods` VALUES (20980, 11, 13); -- Raicho -- AGI
REPLACE INTO `item_mods` VALUES (20980, 25, 15); -- Raicho -- ACC
REPLACE INTO `item_mods` VALUES (20980, 68, 37); -- Raicho -- EVA
REPLACE INTO `item_mods` VALUES (20980, 163, -600); -- Raicho -- DMGMAGIC
-- Raicho +1 
REPLACE INTO `item_mods` VALUES (20981, 8, 14); -- Raicho +1 -- STR
REPLACE INTO `item_mods` VALUES (20981, 11, 14); -- Raicho +1 -- AGI
REPLACE INTO `item_mods` VALUES (20981, 25, 16); -- Raicho +1 -- ACC
REPLACE INTO `item_mods` VALUES (20981, 68, 38); -- Raicho +1 -- EVA
REPLACE INTO `item_mods` VALUES (20981, 163, -700); -- Raicho +1 -- DMGMAGIC
-- Router
REPLACE INTO `item_mods` VALUES (20847, 8, 20);  -- STR: 20
REPLACE INTO `item_mods` VALUES (20847, 23, 40);  -- ATT: 40
REPLACE INTO `item_mods` VALUES (20847, 430, 4);  -- QUAD_ATTACK: 4
REPLACE INTO `item_mods` VALUES (20847, 175, 6);  -- SKILLCHAINDMG: 6
-- Septoptic
REPLACE INTO `item_mods` VALUES (21075, 2, 80); -- HP
REPLACE INTO `item_mods` VALUES (21075, 5, 80); -- MP
REPLACE INTO `item_mods` VALUES (21075, 12, 6); -- INT
REPLACE INTO `item_mods` VALUES (21075, 13, 6); -- MND
REPLACE INTO `item_mods` VALUES (21075, 19, 20); -- THUNDER_MEVA
REPLACE INTO `item_mods` VALUES (21075, 20, 20); -- WATER_MEVA
REPLACE INTO `item_mods` VALUES (21075, 21, 20); -- LIGHT_MEVA
REPLACE INTO `item_mods` VALUES (21075, 28, 16); -- MATT
REPLACE INTO `item_mods` VALUES (21075, 311, 124); -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (21075, 115, 20); -- ELEM
-- Septoptic +1
REPLACE INTO `item_mods` VALUES (21076, 2, 90); -- HP
REPLACE INTO `item_mods` VALUES (21076, 5, 90); -- MP
REPLACE INTO `item_mods` VALUES (21076, 12, 6); -- INT
REPLACE INTO `item_mods` VALUES (21076, 13, 6); -- MND
REPLACE INTO `item_mods` VALUES (21076, 19, 25); -- THUNDER_MEVA
REPLACE INTO `item_mods` VALUES (21076, 20, 25); -- WATER_MEVA
REPLACE INTO `item_mods` VALUES (21076, 21, 25); -- LIGHT_MEVA
REPLACE INTO `item_mods` VALUES (21076, 28, 16); -- MATT
REPLACE INTO `item_mods` VALUES (21076, 311, 124); -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (21076, 115, 21); -- ELEM
-- Shishio
REPLACE INTO `item_mods` VALUES (21022, 23, 40); --shishio -- ATT
REPLACE INTO `item_mods` VALUES (21022, 24, 30); --shishio -- RATT
REPLACE INTO `item_mods` VALUES (21022, 161, -300); --shishio -- DMGPHYS
-- Shuhansadamune
REPLACE INTO `item_mods` VALUES (20982,27,10);    -- ENMITY: 10
REPLACE INTO `item_mods` VALUES (20982,68,22);    -- EVA: 22
REPLACE INTO `item_mods` VALUES (20982,161,-300); -- DMGPHYS: -300
REPLACE INTO `item_mods` VALUES (20982,170,5);    -- FASTCAST: 5
REPLACE INTO `item_mods` VALUES (20982,291,5);    -- COUNTER: 5
-- Staccato Staff
REPLACE INTO `item_mods` VALUES (21166,311,200); -- MAGIC_DAMAGE: 3
REPLACE INTO `item_mods` VALUES (21166,499,5);   -- ITEM_SUBEFFECT: 5
REPLACE INTO `item_mods` VALUES (21166,500,100);   -- ITEM_ADDEFFECT_DMG: 100
REPLACE INTO `item_mods` VALUES (21166,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
REPLACE INTO `item_mods` VALUES (21166,950,5);   -- ITEM_ADDEFFECT_ELEMENT: 5
-- Sucellus
REPLACE INTO `item_mods` VALUES (21083, 12, 6); --sucellus -- INT
REPLACE INTO `item_mods` VALUES (21083, 13, 6); --sucellus -- MND
REPLACE INTO `item_mods` VALUES (21083, 28, 16); --sucellus -- MATT
REPLACE INTO `item_mods` VALUES (21083, 170, 5); --sucellus -- FASTCAST
REPLACE INTO `item_mods` VALUES (21083, 296, 5); --sucellus -- CONSERVE_MP
REPLACE INTO `item_mods` VALUES (21083, 311, 124); --sucellus -- MAGIC_DAMAGE
REPLACE INTO `item_mods_pet` VALUES (21083, 370, 3, 0); --sucellus -- REGEN
REPLACE INTO `item_mods_pet` VALUES (21083, 160, -300, 0); --sucellus -- DMG
-- Takoba
REPLACE INTO `item_mods` VALUES (21687, 25, 35); --takoba -- ACC
REPLACE INTO `item_mods` VALUES (21687, 30, 20); --takoba -- MACC
REPLACE INTO `item_mods` VALUES (21687, 27, 9); --takoba -- ENMITY
REPLACE INTO `item_mods` VALUES (21687, 160, -300); --takoba -- DMG
-- Tancho
REPLACE INTO `item_mods` VALUES (20987, 9, 9); -- DEX
REPLACE INTO `item_mods` VALUES (20987, 11, 9); -- AGI
REPLACE INTO `item_mods` VALUES (20987, 25, 20); -- ACC
REPLACE INTO `item_mods` VALUES (20987, 26, 20); -- RACC
REPLACE INTO `item_mods` VALUES (20987, 68, 22); -- EVA
REPLACE INTO `item_mods` VALUES (20987, 168, 30); -- SPELLINTERRUPT
-- Tancho +1
REPLACE INTO `item_mods` VALUES (20988, 9, 10); -- DEX
REPLACE INTO `item_mods` VALUES (20988, 11, 10); -- AGI
REPLACE INTO `item_mods` VALUES (20988, 25, 21); -- ACC
REPLACE INTO `item_mods` VALUES (20988, 26, 21); -- RACC
REPLACE INTO `item_mods` VALUES (20988, 68, 22); -- EVA
REPLACE INTO `item_mods` VALUES (20988, 168, 35); -- SPELLINTERRUPT
-- Tanmogayi sword
REPLACE INTO `item_mods` VALUES (20679, 2, 50); -- tanmogayi sword -- hp
REPLACE INTO `item_mods` VALUES (20679, 5, 50); -- tanmogayi sword -- mp
REPLACE INTO `item_mods` VALUES (20679, 25, 35); -- tanmogayi sword -- acc
REPLACE INTO `item_mods` VALUES (20679, 165, 3); -- tanmogayi sword -- crit hit rate
-- Tanmogayi sword +1
REPLACE INTO `item_mods` VALUES (20680, 2, 55); -- tanmogayi sword +1 -- hp
REPLACE INTO `item_mods` VALUES (20680, 5, 55); -- tanmogayi sword +1 -- mp
REPLACE INTO `item_mods` VALUES (20680, 25, 36); -- tanmogayi sword +1 -- acc
REPLACE INTO `item_mods` VALUES (20680, 165, 4); -- tanmogayi sword +1 -- crit hit rate
-- Ternion Dagger
REPLACE INTO `item_mods` VALUES (20603, 2, 40); -- Ternion Dagger -- HP
REPLACE INTO `item_mods` VALUES (20603, 25, 27); -- Ternion Dagger -- ACC
REPLACE INTO `item_mods` VALUES (20603, 68, 27); -- Ternion Dagger -- EVA
REPLACE INTO `item_mods` VALUES (20603, 302, 3); -- Ternion Dagger -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20603, 289, 8); -- Ternion Dagger -- SUBTLE_BLOW
-- Ternion Dagger +1
REPLACE INTO `item_mods` VALUES (20604, 2, 45); -- Ternion Dagger +1 -- HP
REPLACE INTO `item_mods` VALUES (20604, 25, 27); -- Ternion Dagger +1 -- ACC
REPLACE INTO `item_mods` VALUES (20604, 68, 27); -- Ternion Dagger +1 -- EVA
REPLACE INTO `item_mods` VALUES (20604, 302, 4); -- Ternion Dagger +1 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (20604, 289, 9); -- Ternion Dagger +1 -- SUBTLE_BLOW
-- Togakushi Shuriken
REPLACE INTO `item_mods` VALUES (21357, 10, 3);  -- VIT
REPLACE INTO `item_mods` VALUES (21357, 11, 3);  -- AGI
REPLACE INTO `item_mods` VALUES (21357, 25, 3);  -- ACC
REPLACE INTO `item_mods` VALUES (21357, 23, 3);  -- ATT
REPLACE INTO `item_mods` VALUES (21357, 26, 3);  -- RACC
-- Trepidity Mantle
REPLACE INTO `item_latents` VALUES (28600,8,10,32,0);  -- STR: 10
REPLACE INTO `item_latents` VALUES (28600,9,10,32,0);  -- DEX: 10
REPLACE INTO `item_latents` VALUES (28600,10,10,32,0);  -- VIT: 10
REPLACE INTO `item_latents` VALUES (28600,11,10,32,0);  -- AGI: 10
REPLACE INTO `item_latents` VALUES (28600,12,10,32,0);  -- INT: 10
REPLACE INTO `item_latents` VALUES (28600,13,10,32,0);  -- MND: 10
REPLACE INTO `item_latents` VALUES (28600,14,10,32,0);  -- CHR: 10
-- Triska Scyth NQ
REPLACE INTO `item_mods` VALUES (20898, 23,   20); --Triska Scyth -- ATT
REPLACE INTO `item_mods` VALUES (20898, 384, 100); --Triska Scyth -- haste
REPLACE INTO `item_mods` VALUES (20898, 165,   9); --Triska Scyth -- crit hit rate
REPLACE INTO `item_mods` VALUES (20898, 421,   5); --Triska Scyth -- crit hit dmg
-- Triska Scyth +1
REPLACE INTO `item_mods` VALUES (20899, 23,   21); --Triska Scyth -- ATT
REPLACE INTO `item_mods` VALUES (20899, 384, 200); --Triska Scyth -- haste
REPLACE INTO `item_mods` VALUES (20899, 165,  10); --Triska Scyth -- crit hit rate
REPLACE INTO `item_mods` VALUES (20899, 421,   6); --Triska Scyth -- crit hit dmg
-- Hangaku-No-Yumi
REPLACE INTO `item_mods` VALUES (21227,1053,2);    -- TRUE_SHOT_EFFECT: 2
-- Tunglmyrkvi
REPLACE INTO `item_mods` VALUES (20765,2,50);  -- HP: 50
REPLACE INTO `item_mods` VALUES (20765,23,36); -- ATT: 36
REPLACE INTO `item_mods` VALUES (20765,28,20); -- MATT: 20
REPLACE INTO `item_mods` VALUES (20765,27,20); -- ENMITY: 5
-- Ushenzi
REPLACE INTO `item_mods` VALUES (21690, 8, 13); -- Ushenzi -- STR
REPLACE INTO `item_mods` VALUES (21690, 9, 13); -- Ushenzi -- DEX
REPLACE INTO `item_mods` VALUES (21690, 25, 21); -- Ushenzi -- ACC
REPLACE INTO `item_mods` VALUES (21690, 369, 1); -- Ushenzi -- REFRESH
REPLACE INTO `item_mods` VALUES (21690, 431, 10); -- Ushenzi -- ITEM_ADDEFFECT_TYPE: DISPEL
REPLACE INTO `item_mods` VALUES (21690,499,8);   -- ITEM_SUBEFFECT: 8
REPLACE INTO `item_mods` VALUES (21690,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
-- Ushenzi +1
REPLACE INTO `item_mods` VALUES (21691, 8, 14); -- Ushenzi -- STR
REPLACE INTO `item_mods` VALUES (21691, 9, 14); -- Ushenzi -- DEX
REPLACE INTO `item_mods` VALUES (21691, 25, 22); -- Ushenzi -- ACC
REPLACE INTO `item_mods` VALUES (21691, 369, 2); -- Ushenzi -- REFRESH
REPLACE INTO `item_mods` VALUES (21691, 431, 10); -- Ushenzi -- ITEM_ADDEFFECT_TYPE: DISPEL
REPLACE INTO `item_mods` VALUES (21691,499,8);   -- ITEM_SUBEFFECT: 8
REPLACE INTO `item_mods` VALUES (21691,501,50); -- ITEM_ADDEFFECT_CHANCE: 50
-- Wingcutter
REPLACE INTO `item_mods` VALUES (21349,11,5);  -- AGI: 5
REPLACE INTO `item_mods` VALUES (21349,17,15); -- WIND_MEVA: 15
REPLACE INTO `item_mods` VALUES (21349,165,1); -- CRITHITRATE: 1
-- Wingcutter +1
DELETE FROM `item_mods` WHERE itemId = 21350; -- Paloma Bow +1
REPLACE INTO `item_mods` VALUES (21350,11,6);  -- AGI: 6
REPLACE INTO `item_mods` VALUES (21350,17,20); -- WIND_MEVA: 20
REPLACE INTO `item_mods` VALUES (21350,165,2); -- CRITHITRATE: 2
-- Zantetsuken
REPLACE INTO `item_mods` VALUES (20683, 8, 15); --zantetsuken -- STR
REPLACE INTO `item_mods` VALUES (20683, 25, 27); --zantetsuken -- ACC
REPLACE INTO `item_mods` VALUES (20683, 23, 33); --zantetsuken -- ATT
REPLACE INTO `item_mods` VALUES (20683, 384, 400); --zantetsuken -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (20683, 430, 3); --zantetsuken -- QUAD_ATTACK
REPLACE INTO `item_mods` VALUES (20683, 431, 13); --zantetsuken -- ITEM_ADDEFFECT_TYPE DEATH
REPLACE INTO `item_mods` VALUES (20683, 499, 19); --zantetsuken -- ITEM_SUBEFFECT
REPLACE INTO `item_mods` VALUES (20683,501,15); -- ITEM_ADDEFFECT_CHANCE: 15
-- Zantetsuken X
REPLACE INTO `item_mods` VALUES (21664, 8, 25);  -- STR
REPLACE INTO `item_mods` VALUES (21664, 25, 42);  -- ACC
REPLACE INTO `item_mods` VALUES (21664, 23, 48);  -- ATT
REPLACE INTO `item_mods` VALUES (21664, 384, 400);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (21664, 73, 6);  -- STORETP
REPLACE INTO `item_mods` VALUES (20683, 431, 2);  -- ITEM_ADDEFFECT_TYPE DEBUFF
REPLACE INTO `item_mods` VALUES (20683, 499, 18);  -- ITEM_SUBEFFECT DEFENSE_DOWN
REPLACE INTO `item_mods` VALUES (20683,501,25); -- ITEM_ADDEFFECT_CHANCE: 25

-- SU2 Weapons---------------------------------- 
-- Beryllium Arrow
REPLACE INTO `item_mods` VALUES (21295,26,12); -- RACC: 12
-- Beryllium Kris
REPLACE INTO `item_mods` VALUES (21556,355,24); -- ADDS_WEAPONSKILL: SHARK BITE
REPLACE INTO `item_mods` VALUES (21556,9,7);  -- DEX: 7
REPLACE INTO `item_mods` VALUES (21556,11,7);  -- AGI: 7
REPLACE INTO `item_mods` VALUES (21556,25,47);   -- ACC: 47
REPLACE INTO `item_mods` VALUES (21556,68,27);   -- EVA: 27
REPLACE INTO `item_mods` VALUES (21556,48,15);   -- WSACC: 15
-- Beryllium Kris +1
REPLACE INTO `item_mods` VALUES (21557,355,24); -- ADDS_WEAPONSKILL: SHARK BITE
REPLACE INTO `item_mods` VALUES (21557,9,12);  -- DEX: 12
REPLACE INTO `item_mods` VALUES (21557,11,12);  -- AGI: 12
REPLACE INTO `item_mods` VALUES (21557,25,52);   -- ACC: 52
REPLACE INTO `item_mods` VALUES (21557,68,27);   -- EVA: 27
REPLACE INTO `item_mods` VALUES (21557,48,20);   -- WSACC: 20
-- Beryllium Pick
REPLACE INTO `item_mods` VALUES (21708,355,71); -- ADDS_WEAPONSKILL: MISTRAL AXE
REPLACE INTO `item_mods` VALUES (21708,8,10);  -- STR: 10
REPLACE INTO `item_mods` VALUES (21708,25,27);   -- ACC: 27
REPLACE INTO `item_mods` VALUES (21708,48,15);   -- WSACC: 15
-- Beryllium Pick +1
REPLACE INTO `item_mods` VALUES (21709,355,71); -- ADDS_WEAPONSKILL: MISTRAL AXE
REPLACE INTO `item_mods` VALUES (21709,8,15);  -- STR: 15
REPLACE INTO `item_mods` VALUES (21709,25,32);   -- ACC: 32
REPLACE INTO `item_mods` VALUES (21709,48,20);   -- WSACC: 20
-- Blurred Bow +1
REPLACE INTO `item_mods` VALUES (21218,841,7); -- WSD: 7%
-- Blurred Claws
UPDATE item_weapon SET subskill = 28 WHERE itemId = 20525;
-- Blurred Claws +1
UPDATE item_weapon SET subskill = 28 WHERE itemId = 20526;
-- Blurred Claymore +1
REPLACE INTO `item_mods` VALUES (21701,865,1); -- MYTHIC_OCC_ATT_TWICE
-- Blurred Harp +1
REPLACE INTO `item_mods` VALUES (21401,453,2); -- MAXIMUM_SONGS_BONUS: 2
-- Blurred Knife
UPDATE item_weapon SET ilvl_macc = 188 WHERE itemId = 20601;
-- Blurred Knife +1
UPDATE item_weapon SET ilvl_macc = 188 WHERE itemId = 20602;
-- Blurred Shield
REPLACE INTO `item_mods` VALUES (27643,1,120);  -- DEF: 120
REPLACE INTO `item_mods` VALUES (27643,25,15); -- ACC: 15
REPLACE INTO `item_mods` VALUES (27643,23,15); -- ATT: 15
REPLACE INTO `item_mods` VALUES (27643,109,112);  -- SHIELD: 112
REPLACE INTO `item_mods` VALUES (27643,518,5); -- SHIELDBLOCKRATE: 5
REPLACE INTO `item_mods` VALUES (27643,841,5); -- WSD: 5
-- Blurred Shield +1
REPLACE INTO `item_mods` VALUES (27644,1,130);  -- DEF: 130
REPLACE INTO `item_mods` VALUES (27644,25,20);  -- ACC: 20
REPLACE INTO `item_mods` VALUES (27644,23,20);  -- ATT: 20
REPLACE INTO `item_mods` VALUES (27644,109,112);  -- SHIELD: 112
REPLACE INTO `item_mods` VALUES (27644,518,10); -- SHIELDBLOCKRATE: 10
REPLACE INTO `item_mods` VALUES (27644,841,7);  -- WSD: 7
-- Blurred Staff
REPLACE INTO `item_mods` VALUES (21157,311,217); -- MAGIC_DAMAGE
-- Blurred Staff +1
REPLACE INTO `item_mods` VALUES (21158,311,217); -- MAGIC_DAMAGE
-- Enriching Sword
UPDATE item_weapon SET ilvl_macc = 201 WHERE itemId = 21606;
-- Enriching Sword +1
UPDATE item_weapon SET ilvl_macc = 201 WHERE itemId = 21607;
-- Hepatizon Axe
REPLACE INTO `item_mods` VALUES (21765,355,87); -- ADDS_WEAPONSKILL: FULL BREAK
-- Hepatizon Axe +1
REPLACE INTO `item_mods` VALUES (21766,355,87); -- ADDS_WEAPONSKILL: FULL BREAK
-- Hepatizon Baghnakhs
UPDATE item_weapon SET subskill = 28 WHERE itemId = 21511;
REPLACE INTO `item_mods` VALUES (21511,355,8); -- ADDS_WEAPONSKILL: DRAGON KICK
-- Hepatizon Baghnakhs +1
UPDATE item_weapon SET subskill = 28 WHERE itemId = 21512;
REPLACE INTO `item_mods` VALUES (21512,355,8); -- ADDS_WEAPONSKILL: DRAGON KICK
-- Hepatizon Rapier
REPLACE INTO `item_mods` VALUES (21610,355,41); -- ADDS_WEAPONSKILL: MISTRAL AXE
REPLACE INTO `item_mods` VALUES (21610,8,3);  -- STR: 3
REPLACE INTO `item_mods` VALUES (21610,13,3);  -- MND: 3
REPLACE INTO `item_mods` VALUES (21610,25,17);   -- ACC: 17
REPLACE INTO `item_mods` VALUES (21610,28,14);  -- MATT: 14
REPLACE INTO `item_mods` VALUES (21610,311,108);  -- MAGIC_DAMAGE: 108
REPLACE INTO `item_mods` VALUES (21610,48,15);   -- WSACC: 15
-- Hepatizon Rapier +1
REPLACE INTO `item_mods` VALUES (21611,355,41); -- ADDS_WEAPONSKILL: MISTRAL AXE
REPLACE INTO `item_mods` VALUES (21611,8,8);  -- STR: 8
REPLACE INTO `item_mods` VALUES (21611,13,8);  -- MND: 8
REPLACE INTO `item_mods` VALUES (21611,25,22);   -- ACC: 22
REPLACE INTO `item_mods` VALUES (21611,28,14);  -- MATT: 14
REPLACE INTO `item_mods` VALUES (21611,311,108);  -- MAGIC_DAMAGE: 108
REPLACE INTO `item_mods` VALUES (21611,48,20);   -- WSACC: 20
-- Hepatizon Sapara +1
REPLACE INTO `item_mods` VALUES (21615,48,20);   -- WSACC: 20
-- Jolt Counter
UPDATE item_weapon SET subskill = 28 WHERE itemId = 21506;
-- Jolt Counter +1
UPDATE item_weapon SET subskill = 28 WHERE itemId = 215067;
REPLACE INTO `item_mods` VALUES (21507, 8, 15); --pair of jolt counter +1 -- STR
REPLACE INTO `item_mods` VALUES (21507, 10, 15); --pair of jolt counter +1 -- VIT
REPLACE INTO `item_mods` VALUES (21507, 25, 30); --pair of jolt counter +1 -- ACC
REPLACE INTO `item_mods` VALUES (21507, 291, 18); --pair of jolt counter +1 -- COUNTER
-- Malfeasance
REPLACE INTO `item_mods` VALUES (20754,23,40);  -- ATT: 40
REPLACE INTO `item_mods` VALUES (20754,39,15);  -- DARK_MAB: 15
REPLACE INTO `item_mods` VALUES (20754,343,20);  -- ENSPELL_DMG: 20
-- Malfeasance +1
REPLACE INTO `item_mods` VALUES (20755,23,41);  -- ATT: 41
REPLACE INTO `item_mods` VALUES (20755,39,16);  -- DARK_MAB: 16
REPLACE INTO `item_mods` VALUES (20755,343,21);  -- ENSPELL_DMG: 21
-- Phreatic Axe
REPLACE INTO `item_mods` VALUES (20856,8,10);  -- STR: 10
REPLACE INTO `item_mods` VALUES (20856,13,15); -- MND: 15
REPLACE INTO `item_mods` VALUES (20856,23,15); -- ATT: 15
REPLACE INTO `item_mods` VALUES (20856,306,5); -- ZANSHIN: 5
-- Sancus Sachet
DELETE FROM `item_mods` WHERE itemId = 21394;
REPLACE INTO `item_mods` VALUES (21394,541,6); -- BP_II DELAY: 6
REPLACE INTO `item_mods` VALUES (21394,126,10);   -- BP_DAMAGE : 10
REPLACE INTO `item_mods` VALUES (21394,1040,20); -- AVATAR_LVL_BONUS: 20
-- Sancus Sachet +1
DELETE FROM `item_mods` WHERE itemId = 21395;
REPLACE INTO `item_mods` VALUES (21395,541,7); -- BP_II DELAY: 7
REPLACE INTO `item_mods` VALUES (21395,126,15);   -- BP_DAMAGE : 15
REPLACE INTO `item_mods` VALUES (21395,1040,20); -- AVATAR_LVL_BONUS: 20
-- Shishio
REPLACE INTO `item_mods` VALUES (21022, 23, 40); --shishio -- ATT
REPLACE INTO `item_mods` VALUES (21022, 24, 30); --shishio -- RATT
REPLACE INTO `item_mods` VALUES (21022, 161, -300); --shishio -- DMGPHYS
-- Terpander
REPLACE INTO `item_mods` VALUES (21407,453,1); -- add additional song
-- Vadose Rod
REPLACE INTO `item_mods` VALUES (21103,519,5);    -- CURE_CAST_TIME: 5
-- Was
REPLACE INTO `item_mods` VALUES (22076,126,20);   -- BP_DAMAGE : 20
-- Was +1
REPLACE INTO `item_mods` VALUES (22077,126,25);   -- BP_DAMAGE : 25
-- Zantetsuken X
REPLACE INTO `item_mods` VALUES (21664, 8, 25); --zantetsuken x -- STR
REPLACE INTO `item_mods` VALUES (21664, 25, 42); --zantetsuken x -- ACC
REPLACE INTO `item_mods` VALUES (21664, 23, 48); --zantetsuken x -- ATT
REPLACE INTO `item_mods` VALUES (21664, 384, 700); --zantetsuken x -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (21664, 73, 6); --zantetsuken x -- STORETP
--------------------------------Armor--------------------------------
-- Adorned Helm 
REPLACE INTO `item_mods` VALUES (26714,1,112);    -- DEF: 112
-- Agoge Lorica +3
REPLACE INTO `item_mods` VALUES (23465,1,165);   -- DEF: 165
REPLACE INTO `item_mods` VALUES (23465,2,81);    -- HP: 81
REPLACE INTO `item_mods` VALUES (23465,8,36);    -- STR: 36
REPLACE INTO `item_mods` VALUES (23465,9,35);    -- DEX: 35
REPLACE INTO `item_mods` VALUES (23465,10,36);   -- VIT: 36
REPLACE INTO `item_mods` VALUES (23465,11,30);   -- AGI: 30
REPLACE INTO `item_mods` VALUES (23465,12,30);   -- INT: 30
REPLACE INTO `item_mods` VALUES (23465,13,30);   -- MND: 30
REPLACE INTO `item_mods` VALUES (23465,14,30);   -- CHR: 30
REPLACE INTO `item_mods` VALUES (23465,23,85);   -- ATT: 85
REPLACE INTO `item_mods` VALUES (23465,25,50);   -- ACC: 50
REPLACE INTO `item_mods` VALUES (23465,29,7);    -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23465,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23465,31,84);   -- MEVA: 84
REPLACE INTO `item_mods` VALUES (23465,68,64);   -- EVA: 64
REPLACE INTO `item_mods` VALUES (23465,288,7);   -- DOUBLE_ATTACK: 7
REPLACE INTO `item_mods` VALUES (23465,384,400); -- HASTE_GEAR: 4%
-- Aggressor+30
-- Agoge Mufflers +3
REPLACE INTO `item_mods` VALUES (23532,1,119);    -- DEF: 119
REPLACE INTO `item_mods` VALUES (23532,2,70);     -- HP: 70
REPLACE INTO `item_mods` VALUES (23532,8,25);     -- STR: 25
REPLACE INTO `item_mods` VALUES (23532,9,39);     -- DEX: 39
REPLACE INTO `item_mods` VALUES (23532,10,47);    -- VIT: 47
REPLACE INTO `item_mods` VALUES (23532,11,13);     -- AGI: 13
REPLACE INTO `item_mods` VALUES (23532,12,21);    -- INT: 21
REPLACE INTO `item_mods` VALUES (23532,13,36);    -- MND: 36
REPLACE INTO `item_mods` VALUES (23532,14,26);    -- CHR: 26
REPLACE INTO `item_mods` VALUES (23532,23,86);    -- ATT: 86
REPLACE INTO `item_mods` VALUES (23532,25,38);    -- ACC: 38
REPLACE INTO `item_mods` VALUES (23532,29,4);     -- MDEF: 4
REPLACE INTO `item_mods` VALUES (23532,30,38);    -- MACC: 38
REPLACE INTO `item_mods` VALUES (23532,31,63);    -- MEVA: 63
REPLACE INTO `item_mods` VALUES (23532,68,42);    -- EVA: 42
REPLACE INTO `item_mods` VALUES (23532,161,-600); -- DMGPHYS: -6%
REPLACE INTO `item_mods` VALUES (23532,384,500);  -- HASTE_GEAR: 5%
--Defender +15
-- Agony Jerkin
REPLACE INTO `item_mods` VALUES (26942,1,135);    -- DEF: 
REPLACE INTO `item_mods` VALUES (26942,2,59);     -- HP: 
REPLACE INTO `item_mods` VALUES (26942,5,44);     -- MP: 
REPLACE INTO `item_mods` VALUES (26942,8,24);     -- STR: 
REPLACE INTO `item_mods` VALUES (26942,9,35);     -- DEX: 
REPLACE INTO `item_mods` VALUES (26942,10,24);    -- VIT: 
REPLACE INTO `item_mods` VALUES (26942,11,28);     -- AGI: 
REPLACE INTO `item_mods` VALUES (26942,12,23);    -- INT: 
REPLACE INTO `item_mods` VALUES (26942,13,23);    -- MND: 
REPLACE INTO `item_mods` VALUES (26942,14,23);    -- CHR: 
REPLACE INTO `item_mods` VALUES (26942,23,23);    -- ATT: 
REPLACE INTO `item_mods` VALUES (26942,29,6);     -- MDEF: 
REPLACE INTO `item_mods` VALUES (26942,31,64);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (26942,68,49);    -- EVA: 
REPLACE INTO `item_mods` VALUES (26942,227,5);     -- LIZARD_KILLER
REPLACE INTO `item_mods` VALUES (26942,384,400);  -- HASTE_GEAR: 
-- Agony Jerkin +1
REPLACE INTO `item_mods` VALUES (26943,1,136);   -- DEF: 136
REPLACE INTO `item_mods` VALUES (26943,2,59);    -- HP: 59
REPLACE INTO `item_mods` VALUES (26943,5,44);    -- MP: 44
REPLACE INTO `item_mods` VALUES (26943,8,24);    -- STR: 24
REPLACE INTO `item_mods` VALUES (26943,9,35);    -- DEX: 35
REPLACE INTO `item_mods` VALUES (26943,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (26943,11,28);   -- AGI: 28
REPLACE INTO `item_mods` VALUES (26943,12,23);   -- INT: 23
REPLACE INTO `item_mods` VALUES (26943,13,23);   -- MND: 23
REPLACE INTO `item_mods` VALUES (26943,14,23);   -- CHR: 23
REPLACE INTO `item_mods` VALUES (26943,23,24);   -- ATT: 24
REPLACE INTO `item_mods` VALUES (26943,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (26943,31,64);   -- MEVA: 64
REPLACE INTO `item_mods` VALUES (26943,68,49);   -- EVA: 49
REPLACE INTO `item_mods` VALUES (26943,227,6);   -- LIZARD_KILLER: 6
REPLACE INTO `item_mods` VALUES (26943,384,400); -- HASTE_GEAR: 400
-- Ahosi Leggings
REPLACE INTO `item_mods` VALUES (25920, 1, 84); --ahosi leggings -- DEF
REPLACE INTO `item_mods` VALUES (25920, 2, 18); --ahosi leggings -- HP
REPLACE INTO `item_mods` VALUES (25920, 5, 29); --ahosi leggings -- MP
REPLACE INTO `item_mods` VALUES (25920, 8, 17); --ahosi leggings -- STR
REPLACE INTO `item_mods` VALUES (25920, 9, 26); --ahosi leggings -- DEX
REPLACE INTO `item_mods` VALUES (25920, 10, 11); --ahosi leggings -- VIT
REPLACE INTO `item_mods` VALUES (25920, 11, 38); --ahosi leggings -- AGI
REPLACE INTO `item_mods` VALUES (25920, 13, 16); --ahosi leggings -- MND
REPLACE INTO `item_mods` VALUES (25920, 14, 32); --ahosi leggings -- CHR
REPLACE INTO `item_mods` VALUES (25920, 25, 35); --ahosi leggings -- ACC
REPLACE INTO `item_mods` VALUES (25920, 27, 7); --ahosi leggings -- ENMITY
REPLACE INTO `item_mods` VALUES (25920, 29, 5); --ahosi leggings -- MDEF
REPLACE INTO `item_mods` VALUES (25920, 31, 107); --ahosi leggings -- MEVA
REPLACE INTO `item_mods` VALUES (25920, 68, 77); --ahosi leggings -- EVA
REPLACE INTO `item_mods` VALUES (25920, 161, -400); --ahosi leggings -- DMGPHYS
REPLACE INTO `item_mods` VALUES (25920, 384, 400); --ahosi leggings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25920, 15, 15); --ahosi leggings -- FIRE_MEVA
REPLACE INTO `item_mods` VALUES (25920, 16, 15); --ahosi leggings -- ICE_MEVA
REPLACE INTO `item_mods` VALUES (25920, 17, 15); --ahosi leggings -- WIND_MEVA
REPLACE INTO `item_mods` VALUES (25920, 18, 15); --ahosi leggings -- EARTH_MEVA
REPLACE INTO `item_mods` VALUES (25920, 19, 15); --ahosi leggings -- THUNDER_MEVA
REPLACE INTO `item_mods` VALUES (25920, 20, 15); --ahosi leggings -- WATER_MEVA
REPLACE INTO `item_mods` VALUES (25920, 21, 15); --ahosi leggings -- LIGHT_MEVA
REPLACE INTO `item_mods` VALUES (25920, 22, 15); --ahosi leggings -- DARK_MEVA
-- Ajax
REPLACE INTO `item_mods` VALUES (27638, 1, 120); -- Ajax -- DEF
REPLACE INTO `item_mods` VALUES (27638, 109, 112); -- Ajax -- SHIELD
REPLACE INTO `item_mods` VALUES (27638, 476, 4); -- Ajax -- NULL_MAGICAL_DAMAGE
REPLACE INTO `item_mods` VALUES (27638, 163, -2100); -- Ajax -- DMGMAGIC
-- Ajax +1
REPLACE INTO `item_mods` VALUES (27639, 1, 122); -- Ajax +1 -- DEF
REPLACE INTO `item_mods` VALUES (27639, 109, 112); -- Ajax +1 -- SHIELD
REPLACE INTO `item_mods` VALUES (27639, 476, 4); -- Ajax +1 -- NULL_MAGICAL_DAMAGE
REPLACE INTO `item_mods` VALUES (27639, 163, -2100); -- Ajax +1 -- DMGMAGIC
-- Alhazen Hat
REPLACE INTO `item_mods` VALUES (26786,25,40); -- ACC: 40
REPLACE INTO `item_mods` VALUES (26786,26,40); -- RACC: 40
REPLACE INTO `item_mods` VALUES (26786,31,40); -- MEVA: 40
REPLACE INTO `item_mods` VALUES (26786,68,40); -- EVA: 40
-- Augury Cuisses
REPLACE INTO `item_mods` VALUES (28136,1,123);   -- DEF: 123
REPLACE INTO `item_mods` VALUES (28136,2,50);    -- HP: 50
REPLACE INTO `item_mods` VALUES (28136,8,30);    -- STR: 30
REPLACE INTO `item_mods` VALUES (28136,10,17);   -- VIT: 17
REPLACE INTO `item_mods` VALUES (28136,11,17);   -- AGI: 17
REPLACE INTO `item_mods` VALUES (28136,12,33);   -- INT: 33
REPLACE INTO `item_mods` VALUES (28136,13,20);   -- MND: 20
REPLACE INTO `item_mods` VALUES (28136,14,16);   -- CHR: 16
REPLACE INTO `item_mods` VALUES (28136,23,15);   -- ATT: 16
REPLACE INTO `item_mods` VALUES (28136,28,15);   -- MATT: 16
REPLACE INTO `item_mods` VALUES (28136,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (28136,31,80);   -- MEVA: 80
REPLACE INTO `item_mods` VALUES (28136,68,27);   -- EVA: 27
REPLACE INTO `item_mods` VALUES (28136,296,6);   -- CONSERVE_MP: 
REPLACE INTO `item_mods` VALUES (28136,384,600); -- HASTE_GEAR: 600
-- Augury Cuisses +1
REPLACE INTO `item_mods` VALUES (28137,1,124);   -- DEF: 124
REPLACE INTO `item_mods` VALUES (28137,2,50);    -- HP: 50
REPLACE INTO `item_mods` VALUES (28137,8,30);    -- STR: 30
REPLACE INTO `item_mods` VALUES (28137,10,17);   -- VIT: 17
REPLACE INTO `item_mods` VALUES (28137,11,17);   -- AGI: 17
REPLACE INTO `item_mods` VALUES (28137,12,33);   -- INT: 33
REPLACE INTO `item_mods` VALUES (28137,13,20);   -- MND: 20
REPLACE INTO `item_mods` VALUES (28137,14,16);   -- CHR: 16
REPLACE INTO `item_mods` VALUES (28137,23,16);   -- ATT: 16
REPLACE INTO `item_mods` VALUES (28137,28,16);   -- MATT: 16
REPLACE INTO `item_mods` VALUES (28137,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (28137,31,80);   -- MEVA: 80
REPLACE INTO `item_mods` VALUES (28137,296,7);   -- CONSERVE_MP: 7
REPLACE INTO `item_mods` VALUES (28137,68,27);   -- EVA: 27
REPLACE INTO `item_mods` VALUES (28137,384,600); -- HASTE_GEAR: 600
-- Amalric Gages
REPLACE INTO `item_mods` VALUES (27119,274,5);    -- MAGIC_BURST_BONUS_UNCAPPED: 5
-- Amalric Gages +1
REPLACE INTO `item_mods` VALUES (27120,274,6);    -- MAGIC_BURST_BONUS_UNCAPPED: 6
-- Ankusa Gloves +3
REPLACE INTO `item_mods` VALUES (23540, 1, 111); --ankusa gloves +3 -- DEF
REPLACE INTO `item_mods` VALUES (23540, 2, 45); --ankusa gloves +3 -- HP
REPLACE INTO `item_mods` VALUES (23540, 8, 21); --ankusa gloves +3 -- STR
REPLACE INTO `item_mods` VALUES (23540, 9, 45); --ankusa gloves +3 -- DEX
REPLACE INTO `item_mods` VALUES (23540, 10, 42); --ankusa gloves +3 -- VIT
REPLACE INTO `item_mods` VALUES (23540, 11, 22); --ankusa gloves +3 -- AGI
REPLACE INTO `item_mods` VALUES (23540, 12, 22); --ankusa gloves +3 -- INT
REPLACE INTO `item_mods` VALUES (23540, 13, 40); --ankusa gloves +3 -- MND
REPLACE INTO `item_mods` VALUES (23540, 14, 27); --ankusa gloves +3 -- CHR
REPLACE INTO `item_mods` VALUES (23540, 25, 38); --ankusa gloves +3 -- ACC
REPLACE INTO `item_mods` VALUES (23540, 23, 63); --ankusa gloves +3 -- ATT
REPLACE INTO `item_mods` VALUES (23540, 30, 38); --ankusa gloves +3 -- MACC
REPLACE INTO `item_mods` VALUES (23540, 68, 44); --ankusa gloves +3 -- EVA
REPLACE INTO `item_mods` VALUES (23540, 31, 57); --ankusa gloves +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23540, 29, 4); --ankusa gloves +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23540, 384, 500); --ankusa gloves +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23540, 391, 13); --ankusa gloves +3 -- CHARM_CHANCE
REPLACE INTO `item_mods` VALUES (23540, 564, 2);   -- JUG_LEVEL_RANGE: 2
REPLACE INTO `item_mods_pet` VALUES (23540, 161, -600, 0);   -- pet DMGPHYS
-- Ankusa Helm +3 
REPLACE INTO `item_mods` VALUES (23406, 1, 123); --ankusa helm +3 -- DEF
REPLACE INTO `item_mods` VALUES (23406, 2, 56); --ankusa helm +3 -- HP
REPLACE INTO `item_mods` VALUES (23406, 3, 43); --ankusa helm +3 -- HPP
REPLACE INTO `item_mods` VALUES (23406, 8, 32); --ankusa helm +3 -- STR
REPLACE INTO `item_mods` VALUES (23406, 9, 36); --ankusa helm +3 -- DEX
REPLACE INTO `item_mods` VALUES (23406, 10, 25); --ankusa helm +3 -- VIT
REPLACE INTO `item_mods` VALUES (23406, 11, 29); --ankusa helm +3 -- AGI
REPLACE INTO `item_mods` VALUES (23406, 12, 25); --ankusa helm +3 -- INT
REPLACE INTO `item_mods` VALUES (23406, 13, 25); --ankusa helm +3 -- MND
REPLACE INTO `item_mods` VALUES (23406, 14, 33); --ankusa helm +3 -- CHR
REPLACE INTO `item_mods` VALUES (23406, 25, 37); --ankusa helm +3 -- ACC
REPLACE INTO `item_mods` VALUES (23406, 23, 62); --ankusa helm +3 -- ATT
REPLACE INTO `item_mods` VALUES (23406, 30, 37); --ankusa helm +3 -- MACC
REPLACE INTO `item_mods` VALUES (23406, 68, 64); --ankusa helm +3 -- EVA
REPLACE INTO `item_mods` VALUES (23406, 31, 73); --ankusa helm +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23406, 29, 4); --ankusa helm +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23406, 384, 800); --ankusa helm +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23406, 391, 14); --ankusa helm +3 -- CHARM_CHANCE
REPLACE INTO `item_mods` VALUES (23406, 224, 5); --ankusa helm +3 -- VERMIN_KILLER
REPLACE INTO `item_mods` VALUES (23406, 225, 5); --ankusa helm +3 -- BIRD_KILLER
REPLACE INTO `item_mods` VALUES (23406, 226, 5); --ankusa helm +3 -- AMORPH_KILLER
REPLACE INTO `item_mods` VALUES (23406, 227, 5); --ankusa helm +3 -- LIZARD_KILLER
REPLACE INTO `item_mods` VALUES (23406, 228, 5); --ankusa helm +3 -- AQUAN_KILLER
REPLACE INTO `item_mods` VALUES (23406, 229, 5); --ankusa helm +3 -- PLANTOID_KILLER
REPLACE INTO `item_mods` VALUES (23406, 230, 5); --ankusa helm +3 -- BEAST_KILLER
REPLACE INTO `item_mods` VALUES (23406, 231, 5); --ankusa helm +3 -- UNDEAD_KILLER
REPLACE INTO `item_mods` VALUES (23406, 232, 5); --ankusa helm +3 -- ARCANA_KILLER
REPLACE INTO `item_mods` VALUES (23406, 233, 5); --ankusa helm +3 -- DRAGON_KILLER
REPLACE INTO `item_mods` VALUES (23406, 234, 5); --ankusa helm +3 -- DEMON_KILLER
REPLACE INTO `item_mods` VALUES (23406, 235, 5); --ankusa helm +3 -- EMPTY_KILLER
REPLACE INTO `item_mods` VALUES (23406, 236, 5); --ankusa helm +3 -- HUMANOID_KILLER
REPLACE INTO `item_mods` VALUES (23406, 237, 5); --ankusa helm +3 -- LUMINIAN_KILLER
REPLACE INTO `item_mods` VALUES (23406, 238, 5); --ankusa helm +3 -- LUMINION_KILLER
REPLACE INTO `item_mods` VALUES (23406, 840, 10); --ankusa helm +3 -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods_pet` VALUES (23406, 384, 600, 0);   -- pet HASTE_GEAR
-- An. Jackcoat +3 
REPLACE INTO `item_mods` VALUES (23473, 1, 153); --ankusa jackcoat +3 -- DEF
REPLACE INTO `item_mods` VALUES (23473, 2, 79); --ankusa jackcoat +3 -- HP
REPLACE INTO `item_mods` VALUES (23473, 5, 64); --ankusa jackcoat +3 -- MP
REPLACE INTO `item_mods` VALUES (23473, 8, 38); --ankusa jackcoat +3 -- STR
REPLACE INTO `item_mods` VALUES (23473, 9, 43); --ankusa jackcoat +3 -- DEX
REPLACE INTO `item_mods` VALUES (23473, 10, 34); --ankusa jackcoat +3 -- VIT
REPLACE INTO `item_mods` VALUES (23473, 11, 38); --ankusa jackcoat +3 -- AGI
REPLACE INTO `item_mods` VALUES (23473, 12, 37); --ankusa jackcoat +3 -- INT
REPLACE INTO `item_mods` VALUES (23473, 13, 33); --ankusa jackcoat +3 -- MND
REPLACE INTO `item_mods` VALUES (23473, 14, 33); --ankusa jackcoat +3 -- CHR
REPLACE INTO `item_mods` VALUES (23473, 25, 40); --ankusa jackcoat +3 -- ACC
REPLACE INTO `item_mods` VALUES (23473, 23, 65); --ankusa jackcoat +3 -- ATT
REPLACE INTO `item_mods` VALUES (23473, 30, 40); --ankusa jackcoat +3 -- MACC
REPLACE INTO `item_mods` VALUES (23473, 68, 69); --ankusa jackcoat +3 -- EVA
REPLACE INTO `item_mods` VALUES (23473, 31, 84); --ankusa jackcoat +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23473, 29, 8); --ankusa jackcoat +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23473, 384, 400); --ankusa jackcoat +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23473, 391, 16); --ankusa jackcoat +3 -- CHARM_CHANCE
REPLACE INTO `item_mods_pet` VALUES (23473, 288, 5, 0);   -- pet DOUBLE_ATTACK
REPLACE INTO `item_mods_pet` VALUES (23473, 384, 600, 0);   -- pet HASTE_GEAR
-- To Do: Augments "Reward" III
-- Ankusa Trousers +3  
REPLACE INTO `item_mods` VALUES (23607, 1, 132); --ankusa trousers +3 -- DEF
REPLACE INTO `item_mods` VALUES (23607, 2, 67); --ankusa trousers +3 -- HP
REPLACE INTO `item_mods` VALUES (23607, 8, 39); --ankusa trousers +3 -- STR
REPLACE INTO `item_mods` VALUES (23607, 9, 20); --ankusa trousers +3 -- DEX
REPLACE INTO `item_mods` VALUES (23607, 10, 26); --ankusa trousers +3 -- VIT
REPLACE INTO `item_mods` VALUES (23607, 11, 30); --ankusa trousers +3 -- AGI
REPLACE INTO `item_mods` VALUES (23607, 12, 40); --ankusa trousers +3 -- INT
REPLACE INTO `item_mods` VALUES (23607, 13, 27); --ankusa trousers +3 -- MND
REPLACE INTO `item_mods` VALUES (23607, 14, 21); --ankusa trousers +3 -- CHR
REPLACE INTO `item_mods` VALUES (23607, 25, 39); --ankusa trousers +3 -- ACC
REPLACE INTO `item_mods` VALUES (23607, 23, 64); --ankusa trousers +3 -- ATT
REPLACE INTO `item_mods` VALUES (23607, 30, 39); --ankusa trousers +3 -- MACC
REPLACE INTO `item_mods` VALUES (23607, 68, 58); --ankusa trousers +3 -- EVA
REPLACE INTO `item_mods` VALUES (23607, 31, 89); --ankusa trousers +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23607, 29, 7); --ankusa trousers +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23607, 384, 600); --ankusa trousers +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23607, 391, 11); --ankusa trousers +3 -- CHARM_CHANCE
REPLACE INTO `item_mods_pet` VALUES (23607, 384, 600, 0);   -- pet HASTE_GEAR
REPLACE INTO `item_mods_pet` VALUES (23607, 73, 600, 0);   -- pet STORETP
-- To Do: "Reward" recast delay -21
-- Annointed Kalasiris
REPLACE INTO `item_mods` VALUES (26960, 384, 300);  -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (26960, 374, 10);  -- CURE_POTENCY: 10%
REPLACE INTO `item_mods` VALUES (26960, 369, 2);  -- REFRESH: 2
REPLACE INTO `item_mods` VALUES (26960, 68, 41);  -- EVA: 41
REPLACE INTO `item_mods` VALUES (26960, 31, 80);  -- MEVA: 80
REPLACE INTO `item_mods` VALUES (26960, 30, 25);  -- MACC: 25
REPLACE INTO `item_mods` VALUES (26960, 29, 7);  -- MDEF: 7
REPLACE INTO `item_mods` VALUES (26960, 14, 29);  -- CHR: 29
REPLACE INTO `item_mods` VALUES (26960, 13, 33);  -- MND: 33
REPLACE INTO `item_mods` VALUES (26960, 12, 30);  -- INT: 30
REPLACE INTO `item_mods` VALUES (26960, 11, 20);  -- AGI: 20
REPLACE INTO `item_mods` VALUES (26960, 10, 20);  -- VIT: 20
REPLACE INTO `item_mods` VALUES (26960, 9, 20);  -- DEX: 20
REPLACE INTO `item_mods` VALUES (26960, 8, 20);  -- STR: 20
REPLACE INTO `item_mods` VALUES (26960, 5, 64);  -- MP: 64
REPLACE INTO `item_mods` VALUES (26960, 2, 52);  -- HP: 52
REPLACE INTO `item_mods` VALUES (26960, 1, 127);  -- DEF: 127
-- Apogee Crown
REPLACE INTO `item_mods_pet` VALUES (26676,2,100,1); -- Avatar - HP: 100
REPLACE INTO `item_mods_pet` VALUES (26676,25,25,1); -- Avatar - ACC: 25
REPLACE INTO `item_mods_pet` VALUES (26676,27,9,1); -- Avatar - ENMITY: 9
-- Apogee Dalmatica
REPLACE INTO `item_mods_pet` VALUES (26852,2,160,1); -- Avatar - HP: 150
-- Apogee Mitts
REPLACE INTO `item_mods_pet` VALUES (27028,2,80,1); -- Avatar - HP: 80
REPLACE INTO `item_mods_pet` VALUES (27028,25,28,1); -- Avatar - ACC: 28
REPLACE INTO `item_mods_pet` VALUES (27028,30,28,1); -- Avatar - MACC: 28
-- Apogee Mitts +1
REPLACE INTO `item_mods_pet` VALUES (27029,2,90,1); -- Avatar - HP: 90
REPLACE INTO `item_mods_pet` VALUES (27029,25,38,1); -- Avatar - ACC: 38
REPLACE INTO `item_mods_pet` VALUES (27029,30,38,1); -- Avatar - MACC: 38
-- Apogee Pumps
REPLACE INTO `item_mods_pet` VALUES (27380,2,80,1); -- Avatar - HP: 80
REPLACE INTO `item_mods_pet` VALUES (27380,126,1,1); -- Avatar - BP_DAMAGE: 1
-- Apogee Pumps +1
REPLACE INTO `item_mods_pet` VALUES (27381,2,90,1); -- Avatar - HP: 90
REPLACE INTO `item_mods_pet` VALUES (27381,126,2,1); -- Avatar - BP_DAMAGE: 2
-- Apogee Slacks
REPLACE INTO `item_mods_pet` VALUES (27204,2,100,1); -- Avatar - HP: 100
REPLACE INTO `item_mods_pet` VALUES (27204,27,6,1); -- Avatar - ENMITY: 6
REPLACE INTO `item_mods_pet` VALUES (27204,126,6,1); -- Avatar - BP_DAMAGE: 6
-- Apogee Slacks +1
REPLACE INTO `item_mods_pet` VALUES (27205,2,110,1); -- Avatar - HP: 110
REPLACE INTO `item_mods_pet` VALUES (27205,27,6,1); -- Avatar - ENMITY: 6
REPLACE INTO `item_mods_pet` VALUES (27205,126,7,1); -- Avatar - BP_DAMAGE: 7
-- Arbatel Bracers +3
REPLACE INTO `item_mods` VALUES (23573,1,112);   -- DEF: 112
REPLACE INTO `item_mods` VALUES (23573,2,48);    -- HP: 48
REPLACE INTO `item_mods` VALUES (23573,5,60);    -- MP: 60
REPLACE INTO `item_mods` VALUES (23573,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (23573,9,40);    -- DEX: 40
REPLACE INTO `item_mods` VALUES (23573,10,38);   -- VIT: 38
REPLACE INTO `item_mods` VALUES (23573,11,20);   -- AGI: 20
REPLACE INTO `item_mods` VALUES (23573,12,36);   -- INT: 36
REPLACE INTO `item_mods` VALUES (23573,13,47);   -- MND: 47
REPLACE INTO `item_mods` VALUES (23573,14,32);   -- CHR: 32
REPLACE INTO `item_mods` VALUES (23573,25,62);   -- ACC: 62
REPLACE INTO `item_mods` VALUES (23573,27,-12);  -- ENMITY: -12
REPLACE INTO `item_mods` VALUES (23573,28,52);   -- MATT: 52
REPLACE INTO `item_mods` VALUES (23573,29,7);    -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23573,30,62);   -- MACC: 62
REPLACE INTO `item_mods` VALUES (23573,31,98);   -- MEVA: 98
REPLACE INTO `item_mods` VALUES (23573,68,69);   -- EVA: 69
REPLACE INTO `item_mods` VALUES (23573,311,32);  -- MAGIC_DAMAGE: 32
REPLACE INTO `item_mods` VALUES (23573,384,300); -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (23573,487,15);  -- MAG_BURST_BONUS: 15
-- TODO: "Perpetuance": 65%
-- Arbatel Bonnet +3
REPLACE INTO `item_mods` VALUES (23439,1,123);    -- DEF: 123
REPLACE INTO `item_mods` VALUES (23439,2,61);     -- HP: 61
REPLACE INTO `item_mods` VALUES (23439,5,86);     -- MP: 86
REPLACE INTO `item_mods` VALUES (23439,8,24);     -- STR: 24
REPLACE INTO `item_mods` VALUES (23439,9,25);     -- DEX: 25
REPLACE INTO `item_mods` VALUES (23439,10,27);    -- VIT: 27
REPLACE INTO `item_mods` VALUES (23439,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (23439,12,38);    -- INT: 38
REPLACE INTO `item_mods` VALUES (23439,13,34);    -- MND: 34
REPLACE INTO `item_mods` VALUES (23439,14,32);    -- CHR: 32
REPLACE INTO `item_mods` VALUES (23439,25,61);    -- ACC: 61
REPLACE INTO `item_mods` VALUES (23439,28,51);    -- MATT: 51
REPLACE INTO `item_mods` VALUES (23439,29,10);     -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23439,30,61);    -- MACC: 61
REPLACE INTO `item_mods` VALUES (23439,31,136);   -- MEVA: 136
REPLACE INTO `item_mods` VALUES (23439,68,83);    -- EVA: 83
REPLACE INTO `item_mods` VALUES (23439,113,24);   -- ENHANCE: 24
REPLACE INTO `item_mods` VALUES (23439,160,-1000); -- DMG: -10%
REPLACE INTO `item_mods` VALUES (23439,311,31);   -- MAGIC_DAMAGE: 31
REPLACE INTO `item_mods` VALUES (23439,384,600);  -- HASTE_GEAR: 6%
REPLACE INTO `item_mods` VALUES (23439,568,21);   -- RAPTURE_AMOUNT: 21
REPLACE INTO `item_mods` VALUES (23439,569,21);   -- EBULLIENCE_AMOUNT: 21
REPLACE INTO `item_mods` VALUES (23439,838,25);   -- REGEN_MULTIPLIER: 25%
-- Arbatel Gown +3
REPLACE INTO `item_mods` VALUES (23506,1,152);     -- DEF: 152
REPLACE INTO `item_mods` VALUES (23506,2,80);      -- HP: 80
REPLACE INTO `item_mods` VALUES (23506,5,97);      -- MP: 97
REPLACE INTO `item_mods` VALUES (23506,8,29);      -- STR: 29
REPLACE INTO `item_mods` VALUES (23506,9,34);      -- DEX: 34
REPLACE INTO `item_mods` VALUES (23506,10,34);     -- VIT: 34
REPLACE INTO `item_mods` VALUES (23506,11,34);     -- AGI: 34
REPLACE INTO `item_mods` VALUES (23506,12,50);     -- INT: 50
REPLACE INTO `item_mods` VALUES (23506,13,43);     -- MND: 43
REPLACE INTO `item_mods` VALUES (23506,14,43);     -- CHR: 43
REPLACE INTO `item_mods` VALUES (23506,25,64);     -- ACC: 54
REPLACE INTO `item_mods` VALUES (23506,28,59);     -- MATT: 59
REPLACE INTO `item_mods` VALUES (23506,29,11);     -- MDEF: 11
REPLACE INTO `item_mods` VALUES (23506,30,64);     -- MACC: 64
REPLACE INTO `item_mods` VALUES (23506,31,141);    -- MEVA: 141
REPLACE INTO `item_mods` VALUES (23506,68,88);     -- EVA: 88
REPLACE INTO `item_mods` VALUES (23506,160,-1300); -- DMG: -13%
REPLACE INTO `item_mods` VALUES (23506,311,34);    -- MAGIC_DAMAGE: 34
REPLACE INTO `item_mods` VALUES (23506,27,-28);   -- ENMITY: -28
REPLACE INTO `item_mods` VALUES (23506,369,4);     -- REFRESH: 4
REPLACE INTO `item_mods` VALUES (23506,384,300);   -- HASTE_GEAR: 3%
-- Arbatel Loafers +3
REPLACE INTO `item_mods` VALUES (23707,1,95);    -- DEF: 95
REPLACE INTO `item_mods` VALUES (23707,2,39);     -- HP: 39
REPLACE INTO `item_mods` VALUES (23707,5,90);    -- MP: 90
REPLACE INTO `item_mods` VALUES (23707,8,18);     -- STR: 18
REPLACE INTO `item_mods` VALUES (23707,9,21);     -- DEX: 21
REPLACE INTO `item_mods` VALUES (23707,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (23707,11,44);   -- AGI: 44
REPLACE INTO `item_mods` VALUES (23707,12,34);   -- INT: 34
REPLACE INTO `item_mods` VALUES (23707,13,32);   -- MND: 32
REPLACE INTO `item_mods` VALUES (23707,14,47);   -- CHR: 47
REPLACE INTO `item_mods` VALUES (23707,25,60);   -- ACC: 60
REPLACE INTO `item_mods` VALUES (23707,30,60);   -- MACC: 60
REPLACE INTO `item_mods` VALUES (23707,28,50);   -- MATT: 50
REPLACE INTO `item_mods` VALUES (23707,29,10);    -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23707,31,168);  -- MEVA: 168
REPLACE INTO `item_mods` VALUES (23707,68,110);   -- EVA: 110
REPLACE INTO `item_mods` VALUES (23707,115,33);  -- ELEM: 33
REPLACE INTO `item_mods` VALUES (23707,311,30);  -- MAGIC_DAMAGE: 30
REPLACE INTO `item_mods` VALUES (23707,384,300); -- HASTE_GEAR: 300
REPLACE INTO `item_mods` VALUES (23707,274,5); -- MAGIC_BURST_BONUS_UNCAPPED: 5
-- Arbatel Pants +3
REPLACE INTO `item_mods` VALUES (23640,1,134);   -- DEF: 134
REPLACE INTO `item_mods` VALUES (23640,2,68);    -- HP: 68
REPLACE INTO `item_mods` VALUES (23640,5,74);    -- MP: 74
REPLACE INTO `item_mods` VALUES (23640,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23640,10,23);   -- VIT: 23
REPLACE INTO `item_mods` VALUES (23640,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (23640,12,53);   -- INT: 53
REPLACE INTO `item_mods` VALUES (23640,13,38);   -- MND: 38
REPLACE INTO `item_mods` VALUES (23640,14,32);   -- CHR: 32
REPLACE INTO `item_mods` VALUES (23640,25,63);   -- ACC: 63
REPLACE INTO `item_mods` VALUES (23640,30,63);   -- MACC: 63
REPLACE INTO `item_mods` VALUES (23640,28,54);   -- MATT: 54
REPLACE INTO `item_mods` VALUES (23640,29,10);   -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23640,31,168);  -- MEVA: 168
REPLACE INTO `item_mods` VALUES (23640,68,74);   -- EVA: 74
REPLACE INTO `item_mods` VALUES (23640,114,28);  -- ENFEEBLE: 28
REPLACE INTO `item_mods` VALUES (23640,384,500); -- HASTE_GEAR: 500
REPLACE INTO `item_mods` VALUES (23640,311,33);  -- MAGIC_DAMAGE: 33
REPLACE INTO `item_mods` VALUES (23640,160,-1200); -- DMG: -12%
-- Arcadian Beret +3
REPLACE INTO `item_mods` VALUES (23408,1,120);   -- DEF: 120
REPLACE INTO `item_mods` VALUES (23408,2,56);    -- HP: 56
REPLACE INTO `item_mods` VALUES (23408,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23408,9,29);    -- DEX: 29
REPLACE INTO `item_mods` VALUES (23408,10,22);   -- VIT: 22
REPLACE INTO `item_mods` VALUES (23408,11,37);   -- AGI: 37
REPLACE INTO `item_mods` VALUES (23408,12,25);   -- INT: 25
REPLACE INTO `item_mods` VALUES (23408,13,31);   -- MND: 31
REPLACE INTO `item_mods` VALUES (23408,14,26);   -- CHR: 26
REPLACE INTO `item_mods` VALUES (23408,24,62);   -- RATT: 62
REPLACE INTO `item_mods` VALUES (23408,26,37);   -- RACC: 37
REPLACE INTO `item_mods` VALUES (23408,27,-8);   -- ENMITY: -8
REPLACE INTO `item_mods` VALUES (23408,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (23408,30,37);   -- MACC: 37
REPLACE INTO `item_mods` VALUES (23408,31,73);   -- MEVA: 73
REPLACE INTO `item_mods` VALUES (23408,68,64);   -- EVA: 64
REPLACE INTO `item_mods` VALUES (23408,305,38);  -- RECYCLE: 38
REPLACE INTO `item_mods` VALUES (23408,359,14);  -- RAPID_SHOT: 14
REPLACE INTO `item_mods` VALUES (23408,384,800); -- HASTE_GEAR: 8%
-- Arcadian braccae +3
REPLACE INTO `item_mods` VALUES (23609,1,130);   -- DEF: 130
REPLACE INTO `item_mods` VALUES (23609,2,87);    -- HP: 87
REPLACE INTO `item_mods` VALUES (23609,5,43);    -- MP: 43
REPLACE INTO `item_mods` VALUES (23609,8,39);    -- STR: 39
REPLACE INTO `item_mods` VALUES (23609,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (23609,11,33);   -- AGI: 33
REPLACE INTO `item_mods` VALUES (23609,12,40);   -- INT: 40
REPLACE INTO `item_mods` VALUES (23609,13,27);   -- MND: 27
REPLACE INTO `item_mods` VALUES (23609,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (23609,24,81);   -- RATT: 81
REPLACE INTO `item_mods` VALUES (23609,26,47);   -- RACC: 47
REPLACE INTO `item_mods` VALUES (23609,27,-7);   -- ENMITY: -7
REPLACE INTO `item_mods` VALUES (23609,29,7);    -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23609,30,39);   -- MACC: 39
REPLACE INTO `item_mods` VALUES (23609,31,89);   -- MEVA: 89
REPLACE INTO `item_mods` VALUES (23609,68,58);   -- EVA: 58
REPLACE INTO `item_mods` VALUES (23609,365,7);   -- SNAP_SHOT: 7
REPLACE INTO `item_mods` VALUES (23609,384,600); -- HASTE_GEAR: 6%
REPLACE INTO `item_mods` VALUES (23609,840,10);   -- ALL_WSDMG_ALL_HITS: 10
-- Arcadian bracers +3
REPLACE INTO `item_mods` VALUES (23542,1,106);    -- DEF: 106
REPLACE INTO `item_mods` VALUES (23542,2,45);    -- HP: 45
REPLACE INTO `item_mods` VALUES (23542,8,25);    -- STR: 25
REPLACE INTO `item_mods` VALUES (23542,9,45);    -- DEX: 45
REPLACE INTO `item_mods` VALUES (23542,10,39);   -- VIT: 39
REPLACE INTO `item_mods` VALUES (23542,11,21);   -- AGI: 21
REPLACE INTO `item_mods` VALUES (23542,12,22);   -- INT: 22
REPLACE INTO `item_mods` VALUES (23542,13,40);   -- MND: 40
REPLACE INTO `item_mods` VALUES (23542,14,27);   -- CHR: 27
REPLACE INTO `item_mods` VALUES (23542,24,79);   -- RATT: 79
REPLACE INTO `item_mods` VALUES (23542,26,38);   -- RACC: 38
REPLACE INTO `item_mods` VALUES (23542,27,-6);   -- ENMITY: -6
REPLACE INTO `item_mods` VALUES (23542,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (23542,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23542,31,57);   -- MEVA: 57
REPLACE INTO `item_mods` VALUES (23542,68,60);   -- EVA: 60
REPLACE INTO `item_mods` VALUES (23542,365,6);   -- SNAP_SHOT: 6
REPLACE INTO `item_mods` VALUES (23542,384,500); -- HASTE_GEAR: 5%
-- Arcadian Jerkin +3
REPLACE INTO `item_mods` VALUES (23475,1,151);   -- DEF: 151
REPLACE INTO `item_mods` VALUES (23475,2,79);    -- HP: 79
REPLACE INTO `item_mods` VALUES (23475,5,64);    -- MP: 64
REPLACE INTO `item_mods` VALUES (23475,8,37);    -- STR: 37
REPLACE INTO `item_mods` VALUES (23475,9,39);    -- DEX: 39
REPLACE INTO `item_mods` VALUES (23475,10,31);   -- VIT: 31
REPLACE INTO `item_mods` VALUES (23475,11,43);   -- AGI: 43
REPLACE INTO `item_mods` VALUES (23475,12,33);   -- INT: 33
REPLACE INTO `item_mods` VALUES (23475,13,33);   -- MND: 33
REPLACE INTO `item_mods` VALUES (23475,14,33);   -- CHR: 33
REPLACE INTO `item_mods` VALUES (23475,24,65);   -- RATT: 65
REPLACE INTO `item_mods` VALUES (23475,26,40);   -- RACC: 40
REPLACE INTO `item_mods` VALUES (23475,27,-8);   -- ENMITY: -8
REPLACE INTO `item_mods` VALUES (23475,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23475,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23475,31,84);   -- MEVA: 84
REPLACE INTO `item_mods` VALUES (23475,68,69);   -- EVA: 69
REPLACE INTO `item_mods` VALUES (23475,359,16);  -- RAPID_SHOT: 16
REPLACE INTO `item_mods` VALUES (23475,384,400); -- HASTE_GEAR: 4%
-- TODO: "Double Shot" damage +11 Double Shot: Occasionally becomes Triple Shot
-- Archmage's coat +3
REPLACE INTO `item_mods` VALUES (23468,1,145);   -- DEF: 145
REPLACE INTO `item_mods` VALUES (23468,2,74);    -- HP: 74
REPLACE INTO `item_mods` VALUES (23468,5,79);    -- MP: 79
REPLACE INTO `item_mods` VALUES (23468,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23468,9,31);    -- DEX: 31
REPLACE INTO `item_mods` VALUES (23468,10,31);   -- VIT: 31
REPLACE INTO `item_mods` VALUES (23468,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (23468,12,46);   -- INT: 46
REPLACE INTO `item_mods` VALUES (23468,13,39);   -- MND: 39
REPLACE INTO `item_mods` VALUES (23468,14,39);   -- CHR: 39
REPLACE INTO `item_mods` VALUES (23468,25,40);   -- ACC: 40
REPLACE INTO `item_mods` VALUES (23468,27,-12);  -- ENMITY: -12
REPLACE INTO `item_mods` VALUES (23468,28,52);   -- MATT: 52
REPLACE INTO `item_mods` VALUES (23468,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23468,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23468,31,100);   -- MEVA: 100
REPLACE INTO `item_mods` VALUES (23468,68,61);   -- EVA: 61
REPLACE INTO `item_mods` VALUES (23468,115,24);  -- ELEM: 24
REPLACE INTO `item_mods` VALUES (23468,369,3);   -- REFRESH: 3
REPLACE INTO `item_mods` VALUES (23468,394,300); -- HASTE_GEAR: 3%
-- Archmage's gloves +3
REPLACE INTO `item_mods` VALUES (23535,1,99);    -- DEF: 99
REPLACE INTO `item_mods` VALUES (23535,2,42);    -- HP: 42
REPLACE INTO `item_mods` VALUES (23535,5,34);    -- MP: 34 
REPLACE INTO `item_mods` VALUES (23535,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (23535,9,38);    -- DEX: 38
REPLACE INTO `item_mods` VALUES (23535,10,35);   -- VIT: 35
REPLACE INTO `item_mods` VALUES (23535,11,15);   -- AGI: 15
REPLACE INTO `item_mods` VALUES (23535,12,36);   -- INT: 36
REPLACE INTO `item_mods` VALUES (23535,13,43);   -- MND: 43
REPLACE INTO `item_mods` VALUES (23535,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (23535,25,38);   -- ACC: 38
REPLACE INTO `item_mods` VALUES (23535,27,-7);   -- ENMITY: -7
REPLACE INTO `item_mods` VALUES (23535,28,50);   -- MATT: 50
REPLACE INTO `item_mods` VALUES (23535,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (23535,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23535,31,57);   -- MEVA: 57
REPLACE INTO `item_mods` VALUES (23535,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23535,115,23);  -- ELEM: 23
REPLACE INTO `item_mods` VALUES (23535,116,23);  -- DARK: 23
REPLACE INTO `item_mods` VALUES (23535,384,300); -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (23535,487,20);  -- MAG_BURST_BONUS: 20
-- Archmage's tonban +3
REPLACE INTO `item_mods` VALUES (23602,1,123);   -- DEF: 123
REPLACE INTO `item_mods` VALUES (23602,2,63);    -- HP: 63
REPLACE INTO `item_mods` VALUES (23602,5,85);    -- MP: 85
REPLACE INTO `item_mods` VALUES (23602,8,35);    -- STR: 35
REPLACE INTO `item_mods` VALUES (23602,10,22);   -- VIT: 22
REPLACE INTO `item_mods` VALUES (23602,11,27);   -- AGI: 27
REPLACE INTO `item_mods` VALUES (23602,12,50);   -- INT: 50
REPLACE INTO `item_mods` VALUES (23602,13,34);   -- MND: 34
REPLACE INTO `item_mods` VALUES (23602,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (23602,25,39);   -- ACC: 39
REPLACE INTO `item_mods` VALUES (23602,27,-7);   -- ENMITY: -7
REPLACE INTO `item_mods` VALUES (23602,28,58);   -- MATT: 58
REPLACE INTO `item_mods` VALUES (23602,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23602,30,46);   -- MACC: 46
REPLACE INTO `item_mods` VALUES (23602,31,127);  -- MEVA: 127
REPLACE INTO `item_mods` VALUES (23602,68,47);   -- EVA: 47
REPLACE INTO `item_mods` VALUES (23602,384,500); -- HASTE_GEAR: 5%
REPLACE INTO `item_mods` VALUES (23602,274,3); -- MAGIC_BURST_BONUS_UNCAPPED: 3
-- Arjuna Breeches
REPLACE INTO `item_mods` VALUES (25854, 1, 135); --arjuna breeches -- DEF
REPLACE INTO `item_mods` VALUES (25854, 2, 57); --arjuna breeches -- HP
REPLACE INTO `item_mods` VALUES (25854, 5, 41); --arjuna breeches -- MP
REPLACE INTO `item_mods` VALUES (25854, 8, 35); --arjuna breeches -- STR
REPLACE INTO `item_mods` VALUES (25854, 10, 23); --arjuna breeches -- VIT
REPLACE INTO `item_mods` VALUES (25854, 11, 15); --arjuna breeches -- AGI
REPLACE INTO `item_mods` VALUES (25854, 12, 26); --arjuna breeches -- INT
REPLACE INTO `item_mods` VALUES (25854, 13, 10); --arjuna breeches -- MND
REPLACE INTO `item_mods` VALUES (25854, 14, 7); --arjuna breeches -- CHR
REPLACE INTO `item_mods` VALUES (25854, 25, 38); --arjuna breeches -- ACC
REPLACE INTO `item_mods` VALUES (25854, 29, 3); --arjuna breeches -- MDEF
REPLACE INTO `item_mods` VALUES (25854, 31, 86); --arjuna breeches -- MEVA
REPLACE INTO `item_mods` VALUES (25854, 68, 19); --arjuna breeches -- EVA
REPLACE INTO `item_mods` VALUES (25854, 161, -400); --arjuna breeches -- DMGPHYS
REPLACE INTO `item_mods` VALUES (25854, 170, 4); --arjuna breeches -- FASTCAST
REPLACE INTO `item_mods` VALUES (25854, 384, 500); --arjuna breeches -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25854, 518, 3); --arjuna breeches -- SHIELDBLOCKRATE
-- Arke Corazza
REPLACE INTO `item_mods` VALUES (26533, 1, 159); --arke corazza -- DEF
REPLACE INTO `item_mods` VALUES (26533, 2, 205); --arke corazza -- HP
REPLACE INTO `item_mods` VALUES (26533, 8, 34); --arke corazza -- STR
REPLACE INTO `item_mods` VALUES (26533, 9, 26); --arke corazza -- DEX
REPLACE INTO `item_mods` VALUES (26533, 10, 38); --arke corazza -- VIT
REPLACE INTO `item_mods` VALUES (26533, 11, 21); --arke corazza -- AGI
REPLACE INTO `item_mods` VALUES (26533, 12, 24); --arke corazza -- INT
REPLACE INTO `item_mods` VALUES (26533, 13, 26); --arke corazza -- MND
REPLACE INTO `item_mods` VALUES (26533, 14, 24); --arke corazza -- CHR
REPLACE INTO `item_mods` VALUES (26533, 25, 42); --arke corazza -- ACC
REPLACE INTO `item_mods` VALUES (26533, 160, -1200); --arke corazza -- DMG
REPLACE INTO `item_mods` VALUES (26533, 384, 300); --arke corazza -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26533, 958, 7); --arke corazza -- STATUSRES
-- Arke Corazza +1
REPLACE INTO `item_mods` VALUES (26534, 1, 169); --arke corazza +1 -- DEF
REPLACE INTO `item_mods` VALUES (26534, 2, 225); --arke corazza +1 -- HP
REPLACE INTO `item_mods` VALUES (26534, 8, 39); --arke corazza +1 -- STR
REPLACE INTO `item_mods` VALUES (26534, 9, 26); --arke corazza +1 -- DEX
REPLACE INTO `item_mods` VALUES (26534, 10, 43); --arke corazza +1 -- VIT
REPLACE INTO `item_mods` VALUES (26534, 11, 21); --arke corazza +1 -- AGI
REPLACE INTO `item_mods` VALUES (26534, 12, 24); --arke corazza +1 -- INT
REPLACE INTO `item_mods` VALUES (26534, 13, 26); --arke corazza +1 -- MND
REPLACE INTO `item_mods` VALUES (26534, 14, 24); --arke corazza +1 -- CHR
REPLACE INTO `item_mods` VALUES (26534, 25, 52); --arke corazza +1 -- ACC
REPLACE INTO `item_mods` VALUES (26534, 384, 300); --arke corazza +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26534, 958, 8); --arke corazza +1 -- STATUSRES
REPLACE INTO `item_mods` VALUES (26534, 160, -1300); --arke corazza +1 -- DMG
-- Arke Cosciales
REPLACE INTO `item_mods` VALUES (25897, 1, 141); --arke cosciales -- DEF
REPLACE INTO `item_mods` VALUES (25897, 2, 171); --arke cosciales -- HP
REPLACE INTO `item_mods` VALUES (25897, 8, 40); --arke cosciales -- STR
REPLACE INTO `item_mods` VALUES (25897, 10, 30); --arke cosciales -- VIT
REPLACE INTO `item_mods` VALUES (25897, 11, 19); --arke cosciales -- AGI
REPLACE INTO `item_mods` VALUES (25897, 12, 30); --arke cosciales -- INT
REPLACE INTO `item_mods` VALUES (25897, 13, 20); --arke cosciales -- MND
REPLACE INTO `item_mods` VALUES (25897, 14, 15); --arke cosciales -- CHR
REPLACE INTO `item_mods` VALUES (25897, 25, 41); --arke cosciales -- ACC
REPLACE INTO `item_mods` VALUES (25897, 160, -1000); --arke cosciales -- DMG
REPLACE INTO `item_mods` VALUES (25897, 384, 500); --arke cosciales -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25897, 958, 6); --arke cosciales -- STATUSRES
-- Arke Cosciales +1
REPLACE INTO `item_mods` VALUES (25898, 1, 151); --arke cosciales +1 -- DEF
REPLACE INTO `item_mods` VALUES (25898, 2, 191); --arke cosciales +1 -- HP
REPLACE INTO `item_mods` VALUES (25898, 8, 45); --arke cosciales +1 -- STR
REPLACE INTO `item_mods` VALUES (25898, 10, 35); --arke cosciales +1 -- VIT
REPLACE INTO `item_mods` VALUES (25898, 11, 19); --arke cosciales +1 -- AGI
REPLACE INTO `item_mods` VALUES (25898, 12, 30); --arke cosciales +1 -- INT
REPLACE INTO `item_mods` VALUES (25898, 13, 20); --arke cosciales +1 -- MND
REPLACE INTO `item_mods` VALUES (25898, 14, 15); --arke cosciales +1 -- CHR
REPLACE INTO `item_mods` VALUES (25898, 25, 51); --arke cosciales +1 -- ACC
REPLACE INTO `item_mods` VALUES (25898, 384, 500); --arke cosciales +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25898, 958, 7); --arke cosciales +1 -- STATUSRES
REPLACE INTO `item_mods` VALUES (25898, 160, -1100); --arke cosciales +1 -- DMG
-- Arke Gambieras
REPLACE INTO `item_mods` VALUES (25964, 1, 99); --arke gambieras -- DEF
REPLACE INTO `item_mods` VALUES (25964, 2, 114); --arke gambieras -- HP
REPLACE INTO `item_mods` VALUES (25964, 8, 21); --arke gambieras -- STR
REPLACE INTO `item_mods` VALUES (25964, 9, 20); --arke gambieras -- DEX
REPLACE INTO `item_mods` VALUES (25964, 10, 26); --arke gambieras -- VIT
REPLACE INTO `item_mods` VALUES (25964, 11, 33); --arke gambieras -- AGI
REPLACE INTO `item_mods` VALUES (25964, 13, 19); --arke gambieras -- MND
REPLACE INTO `item_mods` VALUES (25964, 14, 31); --arke gambieras -- CHR
REPLACE INTO `item_mods` VALUES (25964, 25, 38); --arke gambieras -- ACC
REPLACE INTO `item_mods` VALUES (25964, 160, -400); --arke gambieras -- DMG
REPLACE INTO `item_mods` VALUES (25964, 384, 300); --arke gambieras -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25964, 958, 4); --arke gambieras -- STATUSRES
-- Arke Gambieras +1
REPLACE INTO `item_mods` VALUES (25965, 1, 109); --arke gambieras +1 -- DEF
REPLACE INTO `item_mods` VALUES (25965, 2, 134); --arke gambieras +1 -- HP
REPLACE INTO `item_mods` VALUES (25965, 8, 26); --arke gambieras +1 -- STR
REPLACE INTO `item_mods` VALUES (25965, 9, 20); --arke gambieras +1 -- DEX
REPLACE INTO `item_mods` VALUES (25965, 10, 31); --arke gambieras +1 -- VIT
REPLACE INTO `item_mods` VALUES (25965, 11, 33); --arke gambieras +1 -- AGI
REPLACE INTO `item_mods` VALUES (25965, 13, 19); --arke gambieras +1 -- MND
REPLACE INTO `item_mods` VALUES (25965, 14, 31); --arke gambieras +1 -- CHR
REPLACE INTO `item_mods` VALUES (25965, 25, 48); --arke gambieras +1 -- ACC
REPLACE INTO `item_mods` VALUES (25965, 384, 300); --arke gambieras +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25965, 958, 5); --arke gambieras +1 -- STATUSRES
REPLACE INTO `item_mods` VALUES (25965, 160, -500); --arke gambieras +1 -- DMG
-- Arke Manopolas
REPLACE INTO `item_mods` VALUES (25984, 1, 117); --arke manopolas -- DEF
REPLACE INTO `item_mods` VALUES (25984, 2, 102); --arke manopolas -- HP
REPLACE INTO `item_mods` VALUES (25984, 8, 15); --arke manopolas -- STR
REPLACE INTO `item_mods` VALUES (25984, 9, 38); --arke manopolas -- DEX
REPLACE INTO `item_mods` VALUES (25984, 10, 42); --arke manopolas -- VIT
REPLACE INTO `item_mods` VALUES (25984, 12, 12); --arke manopolas -- INT
REPLACE INTO `item_mods` VALUES (25984, 13, 33); --arke manopolas -- MND
REPLACE INTO `item_mods` VALUES (25984, 14, 24); --arke manopolas -- CHR
REPLACE INTO `item_mods` VALUES (25984, 25, 39); --arke manopolas -- ACC
REPLACE INTO `item_mods` VALUES (25984, 384, 400); --arke manopolas -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25984, 958, 3); --arke manopolas -- STATUSRES
REPLACE INTO `item_mods` VALUES (25984, 160, -600); --arke manopolas -- DMG
-- Arke Manopolas +1
REPLACE INTO `item_mods` VALUES (25985, 1, 127); --arke manopolas +1 -- DEF
REPLACE INTO `item_mods` VALUES (25985, 2, 122); --arke manopolas +1 -- HP
REPLACE INTO `item_mods` VALUES (25985, 8, 20); --arke manopolas +1 -- STR
REPLACE INTO `item_mods` VALUES (25985, 9, 38); --arke manopolas +1 -- DEX
REPLACE INTO `item_mods` VALUES (25985, 10, 47); --arke manopolas +1 -- VIT
REPLACE INTO `item_mods` VALUES (25985, 12, 12); --arke manopolas +1 -- INT
REPLACE INTO `item_mods` VALUES (25985, 13, 33); --arke manopolas +1 -- MND
REPLACE INTO `item_mods` VALUES (25985, 14, 24); --arke manopolas +1 -- CHR
REPLACE INTO `item_mods` VALUES (25985, 25, 49); --arke manopolas +1 -- ACC
REPLACE INTO `item_mods` VALUES (25985, 384, 400); --arke manopolas +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25985, 958, 4); --arke manopolas +1 -- STATUSRES
REPLACE INTO `item_mods` VALUES (25985, 160, -700); --arke manopolas +1 -- DMG
-- Assiduity Pants
REPLACE INTO `item_mods` VALUES (28134,1,104);   -- DEF: 105
REPLACE INTO `item_mods` VALUES (28134,2,43);    -- HP: 43
REPLACE INTO `item_mods` VALUES (28134,5,29);    -- MP: 29
REPLACE INTO `item_mods` VALUES (28134,8,25);    -- STR: 25
REPLACE INTO `item_mods` VALUES (28134,10,12);   -- VIT: 12
REPLACE INTO `item_mods` VALUES (28134,11,17);   -- AGI: 17
REPLACE INTO `item_mods` VALUES (28134,12,36);   -- INT: 36
REPLACE INTO `item_mods` VALUES (28134,13,26);   -- MND: 26
REPLACE INTO `item_mods` VALUES (28134,14,19);   -- CHR: 19
REPLACE INTO `item_mods` VALUES (28134,27,-5);   -- ENMITY: -6
REPLACE INTO `item_mods` VALUES (28134,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (28134,31,107);  -- MEVA: 107
REPLACE INTO `item_mods` VALUES (28134,68,27);   -- EVA: 27
REPLACE INTO `item_mods` VALUES (28134,384,500); -- HASTE_GEAR: 500
REPLACE INTO `item_mods` VALUES (28134,371,-2);   -- AVATAR_PERPETUATION: -2
-- Assiduity Pants +1
REPLACE INTO `item_mods` VALUES (28135,371,-3);   -- AVATAR_PERPETUATION: -3
-- Ayanmo Corazza +2
REPLACE INTO `item_mods` VALUES (25795,1,153);    -- DEF: 153
REPLACE INTO `item_mods` VALUES (25795,2,57);     -- HP: 57
REPLACE INTO `item_mods` VALUES (25795,5,59);     -- MP: 59
REPLACE INTO `item_mods` VALUES (25795,8,28);     -- STR: 28
REPLACE INTO `item_mods` VALUES (25795,9,48);     -- DEX: 48
REPLACE INTO `item_mods` VALUES (25795,10,24);    -- VIT: 24
REPLACE INTO `item_mods` VALUES (25795,11,33);    -- AGI: 33
REPLACE INTO `item_mods` VALUES (25795,12,21);    -- INT: 21
REPLACE INTO `item_mods` VALUES (25795,13,31);    -- MND: 31
REPLACE INTO `item_mods` VALUES (25795,14,21);    -- CHR: 21
REPLACE INTO `item_mods` VALUES (25795,25,46);    -- ACC: 46
REPLACE INTO `item_mods` VALUES (25795,29,6);     -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25795,30,46);    -- MACC: 46
REPLACE INTO `item_mods` VALUES (25795,31,64);    -- MEVA: 64
REPLACE INTO `item_mods` VALUES (25795,68,38);    -- EVA: 38
REPLACE INTO `item_mods` VALUES (25795,288,7);    -- DOUBLE_ATTACK: 7
REPLACE INTO `item_mods` VALUES (25795,160,-600); -- DMG: -600
REPLACE INTO `item_mods` VALUES (25795,384,400);  -- HASTE_GEAR: 400
-- Ayanmo Cosciales +2
REPLACE INTO `item_mods` VALUES (25884,1,135);    -- DEF: 135
REPLACE INTO `item_mods` VALUES (25884,2,45);     -- HP: 45
REPLACE INTO `item_mods` VALUES (25884,5,41);     -- MP: 41
REPLACE INTO `item_mods` VALUES (25884,8,33);     -- STR: 33
REPLACE INTO `item_mods` VALUES (25884,9,11);      -- DEX: 11
REPLACE INTO `item_mods` VALUES (25884,10,16);    -- VIT: 16
REPLACE INTO `item_mods` VALUES (25884,11,34);    -- AGI: 34
REPLACE INTO `item_mods` VALUES (25884,12,29);    -- INT: 29
REPLACE INTO `item_mods` VALUES (25884,13,26);    -- MND: 26
REPLACE INTO `item_mods` VALUES (25884,14,10);    -- CHR: 10
REPLACE INTO `item_mods` VALUES (25884,25,45);    -- ACC: 45
REPLACE INTO `item_mods` VALUES (25884,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25884,30,45);    -- MACC: 45
REPLACE INTO `item_mods` VALUES (25884,31,69);    -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25884,68,24);    -- EVA: 24
REPLACE INTO `item_mods` VALUES (25884,160,-500); -- DMG: -500
REPLACE INTO `item_mods` VALUES (25884,170,6);    -- FASTCAST: 6
REPLACE INTO `item_mods` VALUES (25884,384,900);  -- HASTE_GEAR: 900
-- Ayanmo Manopolas +2	
REPLACE INTO `item_mods` VALUES (25833,1,111);    -- DEF: 111
REPLACE INTO `item_mods` VALUES (25833,2,22);     -- HP: 22
REPLACE INTO `item_mods` VALUES (25833,5,14);     -- MP: 14
REPLACE INTO `item_mods` VALUES (25833,8,16);     -- STR: 16
REPLACE INTO `item_mods` VALUES (25833,9,53);     -- DEX: 53
REPLACE INTO `item_mods` VALUES (25833,10,30);    -- VIT: 30
REPLACE INTO `item_mods` VALUES (25833,11,11);    -- AGI: 11
REPLACE INTO `item_mods` VALUES (25833,12,14);    -- INT: 14
REPLACE INTO `item_mods` VALUES (25833,13,37);    -- MND: 37
REPLACE INTO `item_mods` VALUES (25833,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (25833,25,43);    -- ACC: 43
REPLACE INTO `item_mods` VALUES (25833,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25833,30,43);    -- MACC: 43
REPLACE INTO `item_mods` VALUES (25833,31,37);    -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25833,68,19);    -- EVA: 19
REPLACE INTO `item_mods` VALUES (25833,73,6);     -- STORETP: 6
REPLACE INTO `item_mods` VALUES (25833,160,-300); -- DMG: -300
REPLACE INTO `item_mods` VALUES (25833,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25833,432,17);  -- ENSPELL_DMG_BONUS: 17
-- Azimuth Coat
REPLACE INTO `item_mods` VALUES (26938,1,92);   -- DEF: 
REPLACE INTO `item_mods` VALUES (26938,2,23);    -- HP: 
REPLACE INTO `item_mods` VALUES (26938,5,56);    -- MP: 
REPLACE INTO `item_mods` VALUES (26938,8,12);    -- STR: 
REPLACE INTO `item_mods` VALUES (26938,9,12);    -- DEX: 
REPLACE INTO `item_mods` VALUES (26938,10,12);   -- VIT: 
REPLACE INTO `item_mods` VALUES (26938,11,12);   -- AGI: 
REPLACE INTO `item_mods` VALUES (26938,12,22);   -- INT: 
REPLACE INTO `item_mods` VALUES (26938,13,17);   -- MND: 
REPLACE INTO `item_mods` VALUES (26938,14,17);   -- CHR: 
REPLACE INTO `item_mods` VALUES (26938,27,-7);   -- ENMITY: 
REPLACE INTO `item_mods` VALUES (26938,28,13);   -- MATT: 
REPLACE INTO `item_mods` VALUES (26938,29,3);   -- MDEF: 
REPLACE INTO `item_mods` VALUES (26938,30,13);   -- MACC: 
REPLACE INTO `item_mods` VALUES (26938,31,62);  -- MEVA: 
REPLACE INTO `item_mods` VALUES (26938,68,17);   -- EVA: 
REPLACE INTO `item_mods` VALUES (26938,115,13);  -- ELEM: 
REPLACE INTO `item_mods` VALUES (26938,369,2);   -- REFRESH: 
REPLACE INTO `item_mods` VALUES (26938,384,200); -- HASTE_GEAR: 
-- Azimuth Coat+1
REPLACE INTO `item_mods` VALUES (26939,1,128);   -- DEF: 
REPLACE INTO `item_mods` VALUES (26939,2,50);    -- HP: 
REPLACE INTO `item_mods` VALUES (26939,5,67);    -- MP: 
REPLACE INTO `item_mods` VALUES (26939,8,19);    -- STR: 
REPLACE INTO `item_mods` VALUES (26939,9,19);    -- DEX: 
REPLACE INTO `item_mods` VALUES (26939,10,19);   -- VIT: 
REPLACE INTO `item_mods` VALUES (26939,11,19);   -- AGI: 
REPLACE INTO `item_mods` VALUES (26939,12,35);   -- INT: 
REPLACE INTO `item_mods` VALUES (26939,13,28);   -- MND: 
REPLACE INTO `item_mods` VALUES (26939,14,28);   -- CHR: 
REPLACE INTO `item_mods` VALUES (26939,27,-8);   -- ENMITY: 
REPLACE INTO `item_mods` VALUES (26939,28,23);   -- MATT: 
REPLACE INTO `item_mods` VALUES (26939,29,7);   -- MDEF: 
REPLACE INTO `item_mods` VALUES (26939,30,23);   -- MACC: 
REPLACE INTO `item_mods` VALUES (26939,31,91);  -- MEVA: 
REPLACE INTO `item_mods` VALUES (26939,68,38);   -- EVA: 
REPLACE INTO `item_mods` VALUES (26939,115,18);  -- ELEM: 
REPLACE INTO `item_mods` VALUES (26939,369,2);   -- REFRESH: 
REPLACE INTO `item_mods` VALUES (26939,384,300); -- HASTE_GEAR: 
-- Azimuth Coat+2
REPLACE INTO `item_mods` VALUES (23172,274,4); -- MAGIC_BURST_BONUS_UNCAPPED 
-- Azimuth Coat+3
REPLACE INTO `item_mods` VALUES (23507,1,158);   -- DEF: 
REPLACE INTO `item_mods` VALUES (23507,2,80);    -- HP: 
REPLACE INTO `item_mods` VALUES (23507,5,97);    -- MP: 
REPLACE INTO `item_mods` VALUES (23507,8,29);    -- STR: 
REPLACE INTO `item_mods` VALUES (23507,9,34);    -- DEX: 
REPLACE INTO `item_mods` VALUES (23507,10,34);   -- VIT: 
REPLACE INTO `item_mods` VALUES (23507,11,34);   -- AGI: 
REPLACE INTO `item_mods` VALUES (23507,12,50);   -- INT: 
REPLACE INTO `item_mods` VALUES (23507,13,43);   -- MND: 
REPLACE INTO `item_mods` VALUES (23507,14,43);   -- CHR: 
REPLACE INTO `item_mods` VALUES (23507,25,64);   -- ACC: 
REPLACE INTO `item_mods` VALUES (23507,27,-10);   -- ENMITY: 
REPLACE INTO `item_mods` VALUES (23507,28,59);   -- MATT: 
REPLACE INTO `item_mods` VALUES (23507,29,11);   -- MDEF: 
REPLACE INTO `item_mods` VALUES (23507,30,64);   -- MACC: 
REPLACE INTO `item_mods` VALUES (23507,311,34);  -- MAGIC_DAMAGE:
REPLACE INTO `item_mods` VALUES (23507,31,141);  -- MEVA: 
REPLACE INTO `item_mods` VALUES (23507,68,88);   -- EVA: 
REPLACE INTO `item_mods` VALUES (23507,115,28);  -- ELEM: 
REPLACE INTO `item_mods` VALUES (23507,369,4);   -- REFRESH: 
REPLACE INTO `item_mods` VALUES (23507,384,300); -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (23507,274,5); -- MAGIC_BURST_BONUS_UNCAPPED 
-- Azimuth Gaiters
REPLACE INTO `item_mods` VALUES (27451,1,49);      -- DEF: 
REPLACE INTO `item_mods` VALUES (27451,2,34);      -- HP
REPLACE INTO `item_mods` VALUES (27451,5,47);      -- MP:  
REPLACE INTO `item_mods` VALUES (27451,8,5);      -- STR: 
REPLACE INTO `item_mods` VALUES (27451,9,5);      -- DEX: 
REPLACE INTO `item_mods` VALUES (27451,10,5);     -- VIT: 
REPLACE INTO `item_mods` VALUES (27451,11,18);     -- AGI: 
REPLACE INTO `item_mods` VALUES (27451,12,12);     -- INT: 
REPLACE INTO `item_mods` VALUES (27451,13,11);     -- MND: 
REPLACE INTO `item_mods` VALUES (27451,14,20);     -- CHR: 
REPLACE INTO `item_mods` VALUES (27451,68,28);    -- EVA:  
REPLACE INTO `item_mods` VALUES (27451,31,80);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (27451,29,3);      -- MDEF: 
REPLACE INTO `item_mods` VALUES (27451,384,300);   -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (27451,960,15);   -- INDI_DURATION: 
REPLACE INTO `item_mods` VALUES (27451,161,-300); -- DMGPHYS: -
-- Azimuth Gaiters +1
REPLACE INTO `item_mods` VALUES (27452,1,68);      -- DEF: 
REPLACE INTO `item_mods` VALUES (27452,2,39);      -- HP
REPLACE INTO `item_mods` VALUES (27452,5,50);      -- MP:  
REPLACE INTO `item_mods` VALUES (27452,8,8);      -- STR: 
REPLACE INTO `item_mods` VALUES (27452,9,8);      -- DEX: 
REPLACE INTO `item_mods` VALUES (27452,10,8);     -- VIT: 
REPLACE INTO `item_mods` VALUES (27452,11,29);     -- AGI: 
REPLACE INTO `item_mods` VALUES (27452,12,19);     -- INT: 
REPLACE INTO `item_mods` VALUES (27452,13,17);     -- MND: 
REPLACE INTO `item_mods` VALUES (27452,14,32);     -- CHR: 
REPLACE INTO `item_mods` VALUES (27452,68,60);    -- EVA:  
REPLACE INTO `item_mods` VALUES (27452,31,118);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (27452,29,6);      -- MDEF: 
REPLACE INTO `item_mods` VALUES (27452,384,300);   -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (27452,960,20);   -- INDI_DURATION: 
REPLACE INTO `item_mods` VALUES (27452,161,-400); -- DMGPHYS: -
-- Azimuth Gaiters +3
REPLACE INTO `item_mods` VALUES (23708,1,98);      -- DEF: 
REPLACE INTO `item_mods` VALUES (23708,2,59);      -- HP
REPLACE INTO `item_mods` VALUES (23708,5,70);      -- MP:  
REPLACE INTO `item_mods` VALUES (23708,8,18);      -- STR: 
REPLACE INTO `item_mods` VALUES (23708,9,21);      -- DEX: 
REPLACE INTO `item_mods` VALUES (23708,10,23);     -- VIT: 
REPLACE INTO `item_mods` VALUES (23708,11,44);     -- AGI: 
REPLACE INTO `item_mods` VALUES (23708,12,34);     -- INT: 
REPLACE INTO `item_mods` VALUES (23708,13,32);     -- MND: 
REPLACE INTO `item_mods` VALUES (23708,14,47);     -- CHR: 
REPLACE INTO `item_mods` VALUES (23708,28,50);     -- MATT: 
REPLACE INTO `item_mods` VALUES (23708,29,10);     -- MDEF: 
REPLACE INTO `item_mods` VALUES (23708,30,60);     -- MACC: 
REPLACE INTO `item_mods` VALUES (23708,31,168);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (23708,68,110);    -- EVA:  
REPLACE INTO `item_mods` VALUES (23708,160,-1100); -- DMG: -
REPLACE INTO `item_mods` VALUES (23708,311,30);    -- MAGIC_DAMAGE: 
REPLACE INTO `item_mods` VALUES (23708,384,300);   -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (23708,960,30);   -- INDI_DURATION:
-- Azimuth Gloves
REPLACE INTO `item_mods` VALUES (27092,1,62);     -- DEF: 
REPLACE INTO `item_mods` VALUES (27092,2,8);      -- HP: 
REPLACE INTO `item_mods` VALUES (27092,5,57);      -- MP: 
REPLACE INTO `item_mods` VALUES (27092,8,4);      -- STR: 
REPLACE INTO `item_mods` VALUES (27092,9,16);      -- DEX: 
REPLACE INTO `item_mods` VALUES (27092,10,14);     -- VIT: 
REPLACE INTO `item_mods` VALUES (27092,11,3);     -- AGI: 
REPLACE INTO `item_mods` VALUES (27092,12,13);     -- INT: 
REPLACE INTO `item_mods` VALUES (27092,13,20);     -- MND: 
REPLACE INTO `item_mods` VALUES (27092,14,11);     -- CHR: 
REPLACE INTO `item_mods` VALUES (27092,30,17);     -- MACC: 
REPLACE INTO `item_mods` VALUES (27092,68,8);     -- EVA: 
REPLACE INTO `item_mods` VALUES (27092,31,32);     -- MEVA: 
REPLACE INTO `item_mods` VALUES (27092,29,1);      -- MDEF
REPLACE INTO `item_mods` VALUES (27092,114,13);    -- ENFEEBLE: 
REPLACE INTO `item_mods` VALUES (27092,384,300);   -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (27092,27,-10);    -- ENMITY: 
-- Azimuth Gloves +1
REPLACE INTO `item_mods` VALUES (27093,1,85);     -- DEF: 
REPLACE INTO `item_mods` VALUES (27093,2,18);      -- HP: 
REPLACE INTO `item_mods` VALUES (27093,5,60);      -- MP: 
REPLACE INTO `item_mods` VALUES (27093,8,6);      -- STR: 
REPLACE INTO `item_mods` VALUES (27093,9,25);      -- DEX: 
REPLACE INTO `item_mods` VALUES (27093,10,23);     -- VIT: 
REPLACE INTO `item_mods` VALUES (27093,11,5);     -- AGI: 
REPLACE INTO `item_mods` VALUES (27093,12,21);     -- INT: 
REPLACE INTO `item_mods` VALUES (27093,13,32);     -- MND: 
REPLACE INTO `item_mods` VALUES (27093,14,17);     -- CHR: 
REPLACE INTO `item_mods` VALUES (27093,30,27);     -- MACC: 
REPLACE INTO `item_mods` VALUES (27093,68,19);     -- EVA: 
REPLACE INTO `item_mods` VALUES (27093,31,48);     -- MEVA: 
REPLACE INTO `item_mods` VALUES (27093,29,3);      -- MDEF
REPLACE INTO `item_mods` VALUES (27093,114,18);    -- ENFEEBLE: 
REPLACE INTO `item_mods` VALUES (27093,384,300);   -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (27093,27,-11);    -- ENMITY: 
-- Azimuth Gloves +3
REPLACE INTO `item_mods` VALUES (23574,1,115);     -- DEF: 
REPLACE INTO `item_mods` VALUES (23574,2,48);      -- HP: 
REPLACE INTO `item_mods` VALUES (23574,5,80);      -- MP: 
REPLACE INTO `item_mods` VALUES (23574,8,16);      -- STR: 
REPLACE INTO `item_mods` VALUES (23574,9,40);      -- DEX: 
REPLACE INTO `item_mods` VALUES (23574,10,38);     -- VIT: 
REPLACE INTO `item_mods` VALUES (23574,11,20);     -- AGI: 
REPLACE INTO `item_mods` VALUES (23574,12,36);     -- INT: 
REPLACE INTO `item_mods` VALUES (23574,13,47);     -- MND: 
REPLACE INTO `item_mods` VALUES (23574,14,32);     -- CHR: 
REPLACE INTO `item_mods` VALUES (23574,25,62);     -- ACC: 
REPLACE INTO `item_mods` VALUES (23574,27,-13);    -- ENMITY: -
REPLACE INTO `item_mods` VALUES (23574,28,52);     -- MATT
REPLACE INTO `item_mods` VALUES (23574,29,7);      -- MDEF: 
REPLACE INTO `item_mods` VALUES (23574,30,62);     -- MACC: 
REPLACE INTO `item_mods` VALUES (23574,31,98);     -- MEVA: 
REPLACE INTO `item_mods` VALUES (23574,68,69);     -- EVA: 
REPLACE INTO `item_mods` VALUES (23574,114,28);    -- ENFEEBLE: 
REPLACE INTO `item_mods` VALUES (23574,160,-1200); -- DMG: -%
REPLACE INTO `item_mods` VALUES (23574,311,32);    -- MAGIC_DAMAGE: 
REPLACE INTO `item_mods` VALUES (23574,384,300);   -- HASTE_GEAR: 
-- Azimuth Hood
REPLACE INTO `item_mods` VALUES (26780,1,72);     -- DEF: 
REPLACE INTO `item_mods` VALUES (26780,2,15);      -- HP: 
REPLACE INTO `item_mods` VALUES (26780,5,46);      -- MP: 
REPLACE INTO `item_mods` VALUES (26780,8,10);      -- STR: 
REPLACE INTO `item_mods` VALUES (26780,9,10);      -- DEX: 
REPLACE INTO `item_mods` VALUES (26780,10,10);     -- VIT: 
REPLACE INTO `item_mods` VALUES (26780,11,2);     -- AGI: 
REPLACE INTO `item_mods` VALUES (26780,12,21);     -- INT: 
REPLACE INTO `item_mods` VALUES (26780,13,13);     -- MND: 
REPLACE INTO `item_mods` VALUES (26780,14,13);     -- CHR: 
REPLACE INTO `item_mods` VALUES (26780,68,15);     -- EVA: 
REPLACE INTO `item_mods` VALUES (26780,31,58);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (26780,29,3);      -- MDEF
REPLACE INTO `item_mods` VALUES (26780,384,500);   -- HASTE_GEAR: 6
REPLACE INTO `item_mods` VALUES (26780,123,10);    -- GEOMANCY: 
REPLACE INTO `item_mods` VALUES (26780,1025,1);    -- FULL_CIRCLE: 
REPLACE INTO `item_mods_pet` VALUES (26780, 370, 2, 8); -- Luopan REGEN
-- Azimuth Hood +1
REPLACE INTO `item_mods` VALUES (26781,1,98);     -- DEF: 
REPLACE INTO `item_mods` VALUES (26781,2,31);      -- HP: 
REPLACE INTO `item_mods` VALUES (26781,5,56);      -- MP: 
REPLACE INTO `item_mods` VALUES (26781,8,14);      -- STR: 
REPLACE INTO `item_mods` VALUES (26781,9,14);      -- DEX: 
REPLACE INTO `item_mods` VALUES (26781,10,14);     -- VIT: 
REPLACE INTO `item_mods` VALUES (26781,11,3);     -- AGI: 
REPLACE INTO `item_mods` VALUES (26781,12,29);     -- INT: 
REPLACE INTO `item_mods` VALUES (26781,13,19);     -- MND: 
REPLACE INTO `item_mods` VALUES (26781,14,19);     -- CHR: 
REPLACE INTO `item_mods` VALUES (26781,68,33);     -- EVA: 
REPLACE INTO `item_mods` VALUES (26781,31,86);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (26781,29,6);      -- MDEF
REPLACE INTO `item_mods` VALUES (26781,384,600);   -- HASTE_GEAR: 6
REPLACE INTO `item_mods` VALUES (26781,123,15);    -- GEOMANCY: 
REPLACE INTO `item_mods` VALUES (26781,1025,2);    -- FULL_CIRCLE: 
REPLACE INTO `item_mods_pet` VALUES (26781, 370, 3, 8); -- Luopan REGEN
-- Azimuth Hood +3
REPLACE INTO `item_mods` VALUES (23440,1,128);     -- DEF: 
REPLACE INTO `item_mods` VALUES (23440,2,61);      -- HP: 
REPLACE INTO `item_mods` VALUES (23440,5,86);      -- MP: 
REPLACE INTO `item_mods` VALUES (23440,8,24);      -- STR: 
REPLACE INTO `item_mods` VALUES (23440,9,24);      -- DEX: 
REPLACE INTO `item_mods` VALUES (23440,10,24);     -- VIT: 
REPLACE INTO `item_mods` VALUES (23440,11,16);     -- AGI: 
REPLACE INTO `item_mods` VALUES (23440,12,39);     -- INT: 
REPLACE INTO `item_mods` VALUES (23440,13,32);     -- MND: 
REPLACE INTO `item_mods` VALUES (23440,14,32);     -- CHR: 
REPLACE INTO `item_mods` VALUES (23440,25,61);     -- ACC: 
REPLACE INTO `item_mods` VALUES (23440,28,51);     -- MATT: 
REPLACE INTO `item_mods` VALUES (23440,29,10);      -- MDEF: 
REPLACE INTO `item_mods` VALUES (23440,30,61);     -- MACC: 
REPLACE INTO `item_mods` VALUES (23440,31,136);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (23440,68,83);     -- EVA: 
REPLACE INTO `item_mods` VALUES (23440,123,25);    -- GEOMANCY: 
REPLACE INTO `item_mods` VALUES (23440,160,-1200); -- DMG: -%
REPLACE INTO `item_mods` VALUES (23440,311,31);    -- MAGIC_DAMAGE: 
REPLACE INTO `item_mods` VALUES (23440,384,600);   -- HASTE_GEAR: %
REPLACE INTO `item_mods` VALUES (23440,1025,4);    -- FULL_CIRCLE: 3
REPLACE INTO `item_mods_pet` VALUES (23440, 370, 5, 8); -- Luopan REGEN
-- Azimuth Tights
REPLACE INTO `item_mods` VALUES (27277,1,80);   -- DEF: 
REPLACE INTO `item_mods` VALUES (27277,2,18);    -- HP: 
REPLACE INTO `item_mods` VALUES (27277,5,36);    -- MP: 
REPLACE INTO `item_mods` VALUES (27277,8,13);    -- STR: 
REPLACE INTO `item_mods` VALUES (27277,10,5);   -- VIT: 
REPLACE INTO `item_mods` VALUES (27277,11,10);   -- AGI: 
REPLACE INTO `item_mods` VALUES (27277,12,31);   -- INT: 
REPLACE INTO `item_mods` VALUES (27277,13,14);   -- MND: 
REPLACE INTO `item_mods` VALUES (27277,14,11);   -- CHR: 
REPLACE INTO `item_mods` VALUES (27277,30,10);   -- MACC: 
REPLACE INTO `item_mods` VALUES (27277,28,10);   -- MATT: 
REPLACE INTO `item_mods` VALUES (27277,68,11);   -- EVA: 
REPLACE INTO `item_mods` VALUES (27277,31,80);  -- MEVA: 
REPLACE INTO `item_mods` VALUES (27277,29,3);    -- MDEF: 
REPLACE INTO `item_mods` VALUES (27277,116,15);  -- DARK: 
REPLACE INTO `item_mods` VALUES (27277,384,400); -- HASTE_GEAR: %
-- Azimuth Tights +1
REPLACE INTO `item_mods` VALUES (27278,1,108);   -- DEF: 
REPLACE INTO `item_mods` VALUES (27278,2,38);    -- HP: 
REPLACE INTO `item_mods` VALUES (27278,5,44);    -- MP: 
REPLACE INTO `item_mods` VALUES (27278,8,21);    -- STR: 
REPLACE INTO `item_mods` VALUES (27278,10,8);   -- VIT: 
REPLACE INTO `item_mods` VALUES (27278,11,16);   -- AGI: 
REPLACE INTO `item_mods` VALUES (27278,12,45);   -- INT: 
REPLACE INTO `item_mods` VALUES (27278,13,23);   -- MND: 
REPLACE INTO `item_mods` VALUES (27278,14,17);   -- CHR: 
REPLACE INTO `item_mods` VALUES (27278,30,20);   -- MACC: 
REPLACE INTO `item_mods` VALUES (27278,28,20);   -- MATT: 
REPLACE INTO `item_mods` VALUES (27278,68,24);   -- EVA: 
REPLACE INTO `item_mods` VALUES (27278,31,118);  -- MEVA: 
REPLACE INTO `item_mods` VALUES (27278,29,6);    -- MDEF: 
REPLACE INTO `item_mods` VALUES (27278,116,20);  -- DARK: 
REPLACE INTO `item_mods` VALUES (27278,384,500); -- HASTE_GEAR: %
-- Azimuth Tights +3 
REPLACE INTO `item_mods` VALUES (23641,1,138);    -- DEF: 138
REPLACE INTO `item_mods` VALUES (23641,2,68);     -- HP: 68
REPLACE INTO `item_mods` VALUES (23641,5,74);     -- MP: 74
REPLACE INTO `item_mods` VALUES (23641,8,31);     -- STR: 31
REPLACE INTO `item_mods` VALUES (23641,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (23641,11,31);    -- AGI: 31
REPLACE INTO `item_mods` VALUES (23641,12,55);    -- INT: 55
REPLACE INTO `item_mods` VALUES (23641,13,38);    -- MND: 38
REPLACE INTO `item_mods` VALUES (23641,14,32);    -- CHR: 32
REPLACE INTO `item_mods` VALUES (23641,25,63);    -- ACC: 63
REPLACE INTO `item_mods` VALUES (23641,30,63);    -- MACC: 63
REPLACE INTO `item_mods` VALUES (23641,28,58);    -- MATT: 58
REPLACE INTO `item_mods` VALUES (23641,311,33);    -- MAGIC_DAMAGE: 33
REPLACE INTO `item_mods` VALUES (23641,29,10);    -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23641,31,168);   -- MEVA: 168
REPLACE INTO `item_mods` VALUES (23641,68,74);    -- EVA: 74
REPLACE INTO `item_mods` VALUES (23641,116,30); -- DARK: 30
REPLACE INTO `item_mods` VALUES (23641,384,500);  -- HASTE_GEAR: 500
REPLACE INTO `item_mods` VALUES (23641,487,15);  -- MAGIC_BURST_BONUS_CAPPED: 15
-- Bihu Cannions +3 
REPLACE INTO `item_mods` VALUES (23608, 1, 127); -- bihu cannions +3 -- DEF
REPLACE INTO `item_mods` VALUES (23608, 2, 103); -- bihu cannions +3 -- HP
REPLACE INTO `item_mods` VALUES (23608, 5, 89); -- bihu cannions +3 -- MP
REPLACE INTO `item_mods` VALUES (23608, 8, 33); -- bihu cannions +3 -- STR
REPLACE INTO `item_mods` VALUES (23608, 10, 20); -- bihu cannions +3 -- VIT
REPLACE INTO `item_mods` VALUES (23608, 11, 27); -- bihu cannions +3 -- AGI
REPLACE INTO `item_mods` VALUES (23608, 12, 54); -- bihu cannions +3 -- INT
REPLACE INTO `item_mods` VALUES (23608, 13, 43); -- bihu cannions +3 -- MND
REPLACE INTO `item_mods` VALUES (23608, 14, 43); -- bihu cannions +3 -- CHR
REPLACE INTO `item_mods` VALUES (23608, 25, 39); -- bihu cannions +3 -- ACC
REPLACE INTO `item_mods` VALUES (23608, 23, 64); -- bihu cannions +3 -- ATT
REPLACE INTO `item_mods` VALUES (23608, 30, 52); -- bihu cannions +3 -- MACC
REPLACE INTO `item_mods` VALUES (23608, 68, 50); -- bihu cannions +3 -- EVA
REPLACE INTO `item_mods` VALUES (23608, 31, 127); -- bihu cannions +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23608, 29, 8); -- bihu cannions +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23608, 161, -600); -- bihu cannions +3 -- DMGPHYS
REPLACE INTO `item_mods` VALUES (23608, 384, 500); -- bihu cannions +3 -- HASTE_GEAR
-- Bihu Cuffs +3
REPLACE INTO `item_mods` VALUES (23541, 1, 104); -- bihu cuffs +3 -- DEF
REPLACE INTO `item_mods` VALUES (23541, 2, 42); -- bihu cuffs +3 -- HP
REPLACE INTO `item_mods` VALUES (23541, 5, 34); -- bihu cuffs +3 -- MP
REPLACE INTO `item_mods` VALUES (23541, 8, 16); -- bihu cuffs +3 -- STR
REPLACE INTO `item_mods` VALUES (23541, 9, 38); -- bihu cuffs +3 -- DEX
REPLACE INTO `item_mods` VALUES (23541, 10, 35); -- bihu cuffs +3 -- VIT
REPLACE INTO `item_mods` VALUES (23541, 11, 15); -- bihu cuffs +3 -- AGI
REPLACE INTO `item_mods` VALUES (23541, 12, 29); -- bihu cuffs +3 -- INT
REPLACE INTO `item_mods` VALUES (23541, 13, 42); -- bihu cuffs +3 -- MND
REPLACE INTO `item_mods` VALUES (23541, 14, 33); -- bihu cuffs +3 -- CHR
REPLACE INTO `item_mods` VALUES (23541, 25, 38); -- bihu cuffs +3 -- ACC
REPLACE INTO `item_mods` VALUES (23541, 23, 63); -- bihu cuffs +3 -- ATT
REPLACE INTO `item_mods` VALUES (23541, 30, 44); -- bihu cuffs +3 -- MACC
REPLACE INTO `item_mods` VALUES (23541, 68, 44); -- bihu cuffs +3 -- EVA
REPLACE INTO `item_mods` VALUES (23541, 31, 57); -- bihu cuffs +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23541, 29, 5); -- bihu cuffs +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23541, 121, 15); -- bihu cuffs +3 -- WIND
REPLACE INTO `item_mods` VALUES (23541, 384, 300); -- bihu cuffs +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23541, 27, -9); -- bihu cuffs +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23541, 161, -500); -- bihu cuffs +3 -- DMGPHYS
-- Bihu Jstcorps. +3
REPLACE INTO `item_mods` VALUES (23474, 1, 145); -- bihu justaucorps +3 -- DEF
REPLACE INTO `item_mods` VALUES (23474, 2, 89); -- bihu justaucorps +3 -- HP
REPLACE INTO `item_mods` VALUES (23474, 5, 94); -- bihu justaucorps +3 -- MP
REPLACE INTO `item_mods` VALUES (23474, 8, 39); -- bihu justaucorps +3 -- STR
REPLACE INTO `item_mods` VALUES (23474, 9, 41); -- bihu justaucorps +3 -- DEX
REPLACE INTO `item_mods` VALUES (23474, 10, 39); -- bihu justaucorps +3 -- VIT
REPLACE INTO `item_mods` VALUES (23474, 11, 41); -- bihu justaucorps +3 -- AGI
REPLACE INTO `item_mods` VALUES (23474, 12, 39); -- bihu justaucorps +3 -- INT
REPLACE INTO `item_mods` VALUES (23474, 13, 38); -- bihu justaucorps +3 -- MND
REPLACE INTO `item_mods` VALUES (23474, 14, 43); -- bihu justaucorps +3 -- CHR
REPLACE INTO `item_mods` VALUES (23474, 25, 53); -- bihu justaucorps +3 -- ACC
REPLACE INTO `item_mods` VALUES (23474, 23, 92); -- bihu justaucorps +3 -- ATT
REPLACE INTO `item_mods` VALUES (23474, 30, 54); -- bihu justaucorps +3 -- MACC
REPLACE INTO `item_mods` VALUES (23474, 68, 64); -- bihu justaucorps +3 -- EVA
REPLACE INTO `item_mods` VALUES (23474, 31, 100); -- bihu justaucorps +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23474, 29, 8); -- bihu justaucorps +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23474, 384, 300); -- bihu justaucorps +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23474, 840, 10); -- bihu justaucorps +3 -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods` VALUES (23474, 161, -700); -- bihu justaucorps +3 -- DMGPHYS
-- Bihu roundlet +3
REPLACE INTO `item_mods` VALUES (23407, 1, 115); -- bihu roundlet +3 -- DEF
REPLACE INTO `item_mods` VALUES (23407, 2, 56); -- bihu roundlet +3 -- HP
REPLACE INTO `item_mods` VALUES (23407, 5, 52); -- bihu roundlet +3 -- MP
REPLACE INTO `item_mods` VALUES (23407, 8, 21); -- bihu roundlet +3 -- STR
REPLACE INTO `item_mods` VALUES (23407, 9, 24); -- bihu roundlet +3 -- DEX
REPLACE INTO `item_mods` VALUES (23407, 10, 28); -- bihu roundlet +3 -- VIT
REPLACE INTO `item_mods` VALUES (23407, 11, 24); -- bihu roundlet +3 -- AGI
REPLACE INTO `item_mods` VALUES (23407, 12, 29); -- bihu roundlet +3 -- INT
REPLACE INTO `item_mods` VALUES (23407, 13, 27); -- bihu roundlet +3 -- MND
REPLACE INTO `item_mods` VALUES (23407, 14, 40); -- bihu roundlet +3 -- CHR
REPLACE INTO `item_mods` VALUES (23407, 25, 37); -- bihu roundlet +3 -- ACC
REPLACE INTO `item_mods` VALUES (23407, 23, 62); -- bihu roundlet +3 -- ATT
REPLACE INTO `item_mods` VALUES (23407, 30, 51); -- bihu roundlet +3 -- MACC
REPLACE INTO `item_mods` VALUES (23407, 68, 58); -- bihu roundlet +3 -- EVA
REPLACE INTO `item_mods` VALUES (23407, 31, 95); -- bihu roundlet +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23407, 29, 7); -- bihu roundlet +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23407, 119, 18); -- bihu roundlet +3 -- SINGING
REPLACE INTO `item_mods` VALUES (23407, 384, 600); -- bihu roundlet +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23407, 27, -9); -- bihu roundlet +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23407, 161, -600); -- bihu roundlet +3 -- DMGPHYS
-- Blistering Sallet
REPLACE INTO `item_mods` VALUES (25601, 1, 110); -- DEF
REPLACE INTO `item_mods` VALUES (25601, 2, 38);  -- HP
REPLACE INTO `item_mods` VALUES (25601, 8, 16);  -- STR
REPLACE INTO `item_mods` VALUES (25601, 9, 16);  -- DEX
REPLACE INTO `item_mods` VALUES (25601, 10, 16);  -- VIT
REPLACE INTO `item_mods` VALUES (25601, 11, 16);  -- AGI
REPLACE INTO `item_mods` VALUES (25601, 12, 16);  -- INT
REPLACE INTO `item_mods` VALUES (25601, 13, 16);  -- MND
REPLACE INTO `item_mods` VALUES (25601, 14, 16);  -- CHR
REPLACE INTO `item_mods` VALUES (25601, 25, 7);  -- ACC
REPLACE INTO `item_mods` VALUES (25601, 68, 36);  -- EVA
REPLACE INTO `item_mods` VALUES (25601, 31, 53);  -- MEVA
REPLACE INTO `item_mods` VALUES (25601, 29, 2);  -- MDEF
REPLACE INTO `item_mods` VALUES (25601, 384, 800);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25601, 288, 2);  -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (25601, 161, -200);  -- DMGPHYS
-- Blistering Sallet +1
REPLACE INTO `item_mods` VALUES (25602, 1, 111); -- DEF
REPLACE INTO `item_mods` VALUES (25602, 2, 38);  -- HP
REPLACE INTO `item_mods` VALUES (25602, 8, 16);  -- STR
REPLACE INTO `item_mods` VALUES (25602, 9, 16);  -- DEX
REPLACE INTO `item_mods` VALUES (25602, 10, 16);  -- VIT
REPLACE INTO `item_mods` VALUES (25602, 11, 16);  -- AGI
REPLACE INTO `item_mods` VALUES (25602, 12, 16);  -- INT
REPLACE INTO `item_mods` VALUES (25602, 13, 16);  -- MND
REPLACE INTO `item_mods` VALUES (25602, 14, 16);  -- CHR
REPLACE INTO `item_mods` VALUES (25602, 25, 8);  -- ACC
REPLACE INTO `item_mods` VALUES (25602, 68, 36);  -- EVA
REPLACE INTO `item_mods` VALUES (25602, 31, 53);  -- MEVA
REPLACE INTO `item_mods` VALUES (25602, 29, 2);  -- MDEF
REPLACE INTO `item_mods` VALUES (25602, 384, 800);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25602, 288, 3);  -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (25602, 161, -300);  -- DMGPHYS
-- Caballarius breeches +3
REPLACE INTO `item_mods` VALUES (23605,1,151);    -- DEF: 151
REPLACE INTO `item_mods` VALUES (23605,2,72);     -- HP: 72
REPLACE INTO `item_mods` VALUES (23605,5,100);     -- MP: 100
REPLACE INTO `item_mods` VALUES (23605,8,50);     -- STR: 50
REPLACE INTO `item_mods` VALUES (23605,10,36);    -- VIT: 36
REPLACE INTO `item_mods` VALUES (23605,11,26);    -- AGI: 26
REPLACE INTO `item_mods` VALUES (23605,12,35);    -- INT: 35
REPLACE INTO `item_mods` VALUES (23605,13,27);    -- MND: 27
REPLACE INTO `item_mods` VALUES (23605,14,20);    -- CHR: 20
REPLACE INTO `item_mods` VALUES (23605,23,64);    -- ATT: 64
REPLACE INTO `item_mods` VALUES (23605,25,39);    -- ACC: 39
REPLACE INTO `item_mods` VALUES (23605,27,9);     -- ENMITY: 9
REPLACE INTO `item_mods` VALUES (23605,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (23605,30,39);    -- MACC: 39
REPLACE INTO `item_mods` VALUES (23605,31,84);    -- MEVA: 84
REPLACE INTO `item_mods` VALUES (23605,68,42);    -- EVA: 42
REPLACE INTO `item_mods` VALUES (23605,161,-700); -- DMGPHYS: -7%
REPLACE INTO `item_mods` VALUES (23605,168,10);    -- SPELLINTERRUPT: 10
REPLACE INTO `item_mods` VALUES (23605,384,500);  -- HASTE_GEAR: 5%
-- Caballarius coronet +3
REPLACE INTO `item_mods` VALUES (23404,1,140);   -- DEF: 140
REPLACE INTO `item_mods` VALUES (23404,2,116);   -- HP: 116
REPLACE INTO `item_mods` VALUES (23404,5,98);    -- MP: 98
REPLACE INTO `item_mods` VALUES (23404,8,32);    -- STR: 32
REPLACE INTO `item_mods` VALUES (23404,9,26);    -- DEX: 26
REPLACE INTO `item_mods` VALUES (23404,10,43);   -- VIT: 43
REPLACE INTO `item_mods` VALUES (23404,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (23404,12,24);   -- INT: 24
REPLACE INTO `item_mods` VALUES (23404,13,24);   -- MND: 24
REPLACE INTO `item_mods` VALUES (23404,14,24);   -- CHR: 24
REPLACE INTO `item_mods` VALUES (23404,23,62);   -- ATT: 62
REPLACE INTO `item_mods` VALUES (23404,25,37);   -- ACC: 37
REPLACE INTO `item_mods` VALUES (23404,27,9);    -- ENMITY: 9
REPLACE INTO `item_mods` VALUES (23404,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (23404,30,37);   -- MACC: 37
REPLACE INTO `item_mods` VALUES (23404,31,52);   -- MEVA: 52
REPLACE INTO `item_mods` VALUES (23404,68,53);   -- EVA: 53
REPLACE INTO `item_mods` VALUES (23404,92,30);   -- RAMPART_DURATION: 30
REPLACE INTO `item_mods` VALUES (23404,384,700); -- HASTE_GEAR: 7%
-- Caballarius gauntlets +3
REPLACE INTO `item_mods` VALUES (23538,1,125);   -- DEF: 125
REPLACE INTO `item_mods` VALUES (23538,2,124);   -- HP: 124
REPLACE INTO `item_mods` VALUES (23538,8,20);    -- STR: 20
REPLACE INTO `item_mods` VALUES (23538,9,39);    -- DEX: 39
REPLACE INTO `item_mods` VALUES (23538,10,47);   -- VIT: 47
REPLACE INTO `item_mods` VALUES (23538,12,18);   -- INT: 18
REPLACE INTO `item_mods` VALUES (23538,13,39);   -- MND: 39
REPLACE INTO `item_mods` VALUES (23538,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (23538,23,63);   -- ATT: 63
REPLACE INTO `item_mods` VALUES (23538,25,38);   -- ACC: 38
REPLACE INTO `item_mods` VALUES (23538,27,9);    -- ENMITY: 9
REPLACE INTO `item_mods` VALUES (23538,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (23538,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23538,31,46);   -- MEVA: 46
REPLACE INTO `item_mods` VALUES (23538,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23538,384,400); -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23538,385,35);  -- SHIELD_BASH: 35
-- TODO: Shield Bash: "Dispel"
-- Caballarius surcoat +3
REPLACE INTO `item_mods` VALUES (23471,1,171);     -- DEF: 171
REPLACE INTO `item_mods` VALUES (23471,2,138);     -- HP: 138
REPLACE INTO `item_mods` VALUES (23471,5,110);     -- MP: 110
REPLACE INTO `item_mods` VALUES (23471,8,39);      -- STR: 39
REPLACE INTO `item_mods` VALUES (23471,9,29);      -- DEX: 29
REPLACE INTO `item_mods` VALUES (23471,10,39);     -- VIT: 39
REPLACE INTO `item_mods` VALUES (23471,11,29);     -- AGI: 29
REPLACE INTO `item_mods` VALUES (23471,12,29);     -- INT: 29
REPLACE INTO `item_mods` VALUES (23471,13,29);     -- MND: 29
REPLACE INTO `item_mods` VALUES (23471,14,29);     -- CHR: 29
REPLACE INTO `item_mods` VALUES (23471,23,65);     -- ATT: 65
REPLACE INTO `item_mods` VALUES (23471,25,40);     -- ACC: 40
REPLACE INTO `item_mods` VALUES (23471,27,10);      -- ENMITY: 10
REPLACE INTO `item_mods` VALUES (23471,29,6);      -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23471,30,40);     -- MACC: 40
REPLACE INTO `item_mods` VALUES (23471,31,68);     -- MEVA: 68
REPLACE INTO `item_mods` VALUES (23471,68,61);     -- EVA: 61
REPLACE INTO `item_mods` VALUES (23471,160,-1200); -- DMG: -12%
REPLACE INTO `item_mods` VALUES (23471,384,300);   -- HASTE_GEAR: 3%
-- Cath Palug Crown --Nih Fixed, Added Avatar Stats into pets
REPLACE INTO `item_mods` VALUES (25593,1,95);    -- DEF: 95
REPLACE INTO `item_mods` VALUES (25593,2,45);    -- HP: 45
REPLACE INTO `item_mods` VALUES (25593,5,44);    -- MP: 44
REPLACE INTO `item_mods` VALUES (25593,8,24);    -- STR: 24
REPLACE INTO `item_mods` VALUES (25593,9,24);    -- DEX: 24
REPLACE INTO `item_mods` VALUES (25593,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (25593,11,24);   -- AGI: 24
REPLACE INTO `item_mods` VALUES (25593,12,34);   -- INT: 34
REPLACE INTO `item_mods` VALUES (25593,13,34);   -- MND: 34
REPLACE INTO `item_mods` VALUES (25593,28,45);   -- MATT: 45
REPLACE INTO `item_mods` VALUES (25593,30,50);   -- MACC: 50
REPLACE INTO `item_mods` VALUES (25593,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25593,31,86);   -- MEVA: 86
REPLACE INTO `item_mods` VALUES (25593,68,33);   -- EVA: 33
REPLACE INTO `item_mods` VALUES (25593,170,8);   -- FASTCAST: 8
REPLACE INTO `item_mods` VALUES (25593,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods_pet` VALUES (25593,25,38,1);  -- Avatar - ACC: 38
REPLACE INTO `item_mods_pet` VALUES (25593,26,38,1);  -- Avatar - RACC: 38
REPLACE INTO `item_mods_pet` VALUES (25593,28,38,1);  -- Avatar - MATT: 38
REPLACE INTO `item_mods_pet` VALUES (25593,30,38,1);  -- Avatar - MACC: 38
REPLACE INTO `item_mods_pet` VALUES (25593,126,10,1); -- Avatar - BP_DAMAGE: 10
-- Chasseurs Culottes +3
REPLACE INTO `item_mods` VALUES (23637,1,143);   -- DEF: 143
REPLACE INTO `item_mods` VALUES (23637,2,75);    -- HP: 75
REPLACE INTO `item_mods` VALUES (23637,5,68);    -- MP: 68
REPLACE INTO `item_mods` VALUES (23637,8,45);    -- STR: 45
REPLACE INTO `item_mods` VALUES (23637,9,20);    -- DEX: 20
REPLACE INTO `item_mods` VALUES (23637,10,27);   -- VIT: 27
REPLACE INTO `item_mods` VALUES (23637,11,43);   -- AGI: 43
REPLACE INTO `item_mods` VALUES (23637,12,43);   -- INT: 43
REPLACE INTO `item_mods` VALUES (23637,13,31);   -- MND: 31
REPLACE INTO `item_mods` VALUES (23637,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (23637,24,63);   -- RATT: 63
REPLACE INTO `item_mods` VALUES (23637,25,63);   -- ACC: 63
REPLACE INTO `item_mods` VALUES (23637,26,63);   -- RACC: 63
REPLACE INTO `item_mods` VALUES (23637,29,9);    -- MDEF: 9
REPLACE INTO `item_mods` VALUES (23637,30,63);   -- MACC: 63
REPLACE INTO `item_mods` VALUES (23637,31,125);  -- MEVA: 125
REPLACE INTO `item_mods` VALUES (23637,68,91);   -- EVA: 91
REPLACE INTO `item_mods` VALUES (23637,73,12);   -- STORETP: 12
REPLACE INTO `item_mods` VALUES (23637,365,9);   -- SNAP_SHOT: 9
REPLACE INTO `item_mods` VALUES (23637,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (23637,892,100); -- ENHANCES_CASTERS_ROLL: 100
REPLACE INTO `item_mods` VALUES (23637,160,-1200); -- DMG: -1200
-- Chasseur's Frac +3
REPLACE INTO `item_mods` VALUES (23503,1,161);     -- DEF: 161
REPLACE INTO `item_mods` VALUES (23503,2,87);      -- HP: 87
REPLACE INTO `item_mods` VALUES (23503,5,89);      -- MP: 89
REPLACE INTO `item_mods` VALUES (23503,8,40);      -- STR: 40
REPLACE INTO `item_mods` VALUES (23503,9,43);      -- DEX: 43
REPLACE INTO `item_mods` VALUES (23503,10,33);     -- VIT: 33
REPLACE INTO `item_mods` VALUES (23503,11,49);     -- AGI: 49
REPLACE INTO `item_mods` VALUES (23503,12,34);     -- INT: 34
REPLACE INTO `item_mods` VALUES (23503,13,34);     -- MND: 34
REPLACE INTO `item_mods` VALUES (23503,14,29);     -- CHR: 29
REPLACE INTO `item_mods` VALUES (23503,24,74);     -- RATT: 74
REPLACE INTO `item_mods` VALUES (23503,25,64);     -- ACC: 64
REPLACE INTO `item_mods` VALUES (23503,26,64);     -- RACC: 64
REPLACE INTO `item_mods` VALUES (23503,29,10);      -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23503,30,64);     -- MACC: 64
REPLACE INTO `item_mods` VALUES (23503,31,119);    -- MEVA: 119
REPLACE INTO `item_mods` VALUES (23503,68,102);     -- EVA: 102
REPLACE INTO `item_mods` VALUES (23503,160,-1300); -- DMG: -13%
REPLACE INTO `item_mods` VALUES (23503,384,400);   -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23503,467,14);    -- TRIPLE SHOT: 14
REPLACE INTO `item_mods` VALUES (23503,895,100);   -- ENHANCES_TACTICIANS_ROLL: 100
-- Chasseur's Gants +3
REPLACE INTO `item_mods` VALUES (23570,1,120);   -- DEF: 120
REPLACE INTO `item_mods` VALUES (23570,2,52);    -- HP: 52
REPLACE INTO `item_mods` VALUES (23570,8,28);    -- STR: 28
REPLACE INTO `item_mods` VALUES (23570,9,49);    -- DEX: 49
REPLACE INTO `item_mods` VALUES (23570,10,38);   -- VIT: 38
REPLACE INTO `item_mods` VALUES (23570,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (23570,12,23);   -- INT: 23
REPLACE INTO `item_mods` VALUES (23570,13,44);   -- MND: 44
REPLACE INTO `item_mods` VALUES (23570,14,26);   -- CHR: 26
REPLACE INTO `item_mods` VALUES (23570,24,62);   -- RATT: 62
REPLACE INTO `item_mods` VALUES (23570,25,62);   -- ACC: 62
REPLACE INTO `item_mods` VALUES (23570,26,62);   -- RACC: 62
REPLACE INTO `item_mods` VALUES (23570,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23570,30,62);   -- MACC: 62
REPLACE INTO `item_mods` VALUES (23570,31,93);   -- MEVA: 93
REPLACE INTO `item_mods` VALUES (23570,68,77);   -- EVA: 77
REPLACE INTO `item_mods` VALUES (23570,165,8);   -- CRITHITRATE: 8
REPLACE INTO `item_mods` VALUES (23570,384,500); -- HASTE_GEAR: 5%
REPLACE INTO `item_mods` VALUES (23570,840,12);   -- ALL_WSDMG_ALL_HITS: 12
REPLACE INTO `item_mods` VALUES (23570,882,55);  -- PHANTOM_DURATION: 60
REPLACE INTO `item_mods` VALUES (23570,894,100);   -- ENHANCES_ALLIES_ROLL: 100
-- Chasseur's tricorne +3
REPLACE INTO `item_mods` VALUES (23436,1,130);    -- DEF: 130
REPLACE INTO `item_mods` VALUES (23436,2,64);     -- HP: 64
REPLACE INTO `item_mods` VALUES (23436,8,31);     -- STR: 31
REPLACE INTO `item_mods` VALUES (23436,9,33);     -- DEX: 33
REPLACE INTO `item_mods` VALUES (23436,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (23436,11,40);    -- AGI: 40
REPLACE INTO `item_mods` VALUES (23436,12,27);    -- INT: 27
REPLACE INTO `item_mods` VALUES (23436,13,27);    -- MND: 27
REPLACE INTO `item_mods` VALUES (23436,14,22);    -- CHR: 22
REPLACE INTO `item_mods` VALUES (23436,24,61);    -- RATT: 61
REPLACE INTO `item_mods` VALUES (23436,25,61);    -- ACC: 61
REPLACE INTO `item_mods` VALUES (23436,26,61);    -- RACC: 61
REPLACE INTO `item_mods` VALUES (23436,29,7);     -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23436,30,61);    -- MACC: 61
REPLACE INTO `item_mods` VALUES (23436,31,109);    -- MEVA: 109
REPLACE INTO `item_mods` VALUES (23436,68,97);    -- EVA: 97
REPLACE INTO `item_mods` VALUES (23436,160,-1000); -- DMG: -10%
REPLACE INTO `item_mods` VALUES (23436,359,18);   -- RAPID_SHOT: 18
REPLACE INTO `item_mods` VALUES (23436,384,800);  -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23436,893,100);  -- ENHANCES_BLITZERS_ROLL: 100
-- Chozoron Coselete
REPLACE INTO `item_mods` VALUES (26971,25,10);    -- ACC: 10
REPLACE INTO `item_mods` VALUES (26971,30,10);    -- MACC: 10
REPLACE INTO `item_mods` VALUES (26971,68,52);    -- EVA: 52
REPLACE INTO `item_mods` VALUES (26971,31,80);    -- MEVA: 80
-- Cohort Cloak
REPLACE INTO `item_mods` VALUES (25680,1,217);    -- DEF: 217
REPLACE INTO `item_mods` VALUES (25680,2,91);     -- HP: 91
REPLACE INTO `item_mods` VALUES (25680,5,91);     -- MP: 91
REPLACE INTO `item_mods` VALUES (25680,8,35);     -- STR: 35
REPLACE INTO `item_mods` VALUES (25680,9,35);     -- DEX: 35
REPLACE INTO `item_mods` VALUES (25680,10,35);    -- VIT: 35
REPLACE INTO `item_mods` VALUES (25680,11,35);    -- AGI: 35
REPLACE INTO `item_mods` VALUES (25680,12,55);    -- INT: 55
REPLACE INTO `item_mods` VALUES (25680,13,55);    -- MND: 55
REPLACE INTO `item_mods` VALUES (25680,14,48);    -- CHR: 48
REPLACE INTO `item_mods` VALUES (25680,68,77);    -- EVA: 77
REPLACE INTO `item_mods` VALUES (25680,31,156);    -- MEVA: 156
REPLACE INTO `item_mods` VALUES (25680,29,12);     -- MDEF: 12
REPLACE INTO `item_mods` VALUES (25680,114,33);     -- ENFEEBLE: 33
REPLACE INTO `item_mods` VALUES (25680,115,33);     -- ELEM: 33
REPLACE INTO `item_mods` VALUES (25680,384,900);  -- HASTE_GEAR: 9%
-- Cohort Cloak +1
REPLACE INTO `item_mods` VALUES (25681,1,218);    -- DEF: 218
REPLACE INTO `item_mods` VALUES (25681,2,91);     -- HP: 91
REPLACE INTO `item_mods` VALUES (25681,5,91);     -- MP: 91
REPLACE INTO `item_mods` VALUES (25681,8,35);     -- STR: 35
REPLACE INTO `item_mods` VALUES (25681,9,35);     -- DEX: 35
REPLACE INTO `item_mods` VALUES (25681,10,35);    -- VIT: 35
REPLACE INTO `item_mods` VALUES (25681,11,35);    -- AGI: 35
REPLACE INTO `item_mods` VALUES (25681,12,56);    -- INT: 56
REPLACE INTO `item_mods` VALUES (25681,13,56);    -- MND: 56
REPLACE INTO `item_mods` VALUES (25681,14,48);    -- CHR: 48
REPLACE INTO `item_mods` VALUES (25681,68,77);    -- EVA: 77
REPLACE INTO `item_mods` VALUES (25681,31,156);    -- MEVA: 156
REPLACE INTO `item_mods` VALUES (25681,29,12);     -- MDEF: 12
REPLACE INTO `item_mods` VALUES (25681,114,34);     -- ENFEEBLE: 34
REPLACE INTO `item_mods` VALUES (25681,115,34);     -- ELEM: 34
REPLACE INTO `item_mods` VALUES (25681,384,900);  -- HASTE_GEAR: 9%

-- composers mitts
REPLACE INTO `item_mods` VALUES (27143, 1, 107); --composers mitts -- DEF
REPLACE INTO `item_mods` VALUES (27143, 2, 27); --composers mitts -- HP
REPLACE INTO `item_mods` VALUES (27143, 8, 8); --composers mitts -- STR
REPLACE INTO `item_mods` VALUES (27143, 9, 32); --composers mitts -- DEX
REPLACE INTO `item_mods` VALUES (27143, 10, 32); --composers mitts -- VIT
REPLACE INTO `item_mods` VALUES (27143, 11, 7); --composers mitts -- AGI
REPLACE INTO `item_mods` VALUES (27143, 12, 6); --composers mitts -- INT
REPLACE INTO `item_mods` VALUES (27143, 13, 23); --composers mitts -- MND
REPLACE INTO `item_mods` VALUES (27143, 14, 16); --composers mitts -- CHR
REPLACE INTO `item_mods` VALUES (27143, 23, 20); --composers mitts -- ATT
REPLACE INTO `item_mods` VALUES (27143, 25, 30); --composers mitts -- ACC
REPLACE INTO `item_mods` VALUES (27143, 29, 1); --composers mitts -- MDEF
REPLACE INTO `item_mods` VALUES (27143, 31, 32); --composers mitts -- MEVA
REPLACE INTO `item_mods` VALUES (27143, 68, 24); --composers mitts -- EVA
REPLACE INTO `item_mods` VALUES (27143, 384, 400); --composers mitts -- HASTE_GEAR
-- Composer's Sabots
REPLACE INTO `item_mods` VALUES (27499, 1, 89); --composers sabots -- DEF
REPLACE INTO `item_mods` VALUES (27499, 2, 15); --composers sabots -- HP
REPLACE INTO `item_mods` VALUES (27499, 8, 16); --composers sabots -- STR
REPLACE INTO `item_mods` VALUES (27499, 9, 19); --composers sabots -- DEX
REPLACE INTO `item_mods` VALUES (27499, 10, 16); --composers sabots -- VIT
REPLACE INTO `item_mods` VALUES (27499, 11, 25); --composers sabots -- AGI
REPLACE INTO `item_mods` VALUES (27499, 13, 5); --composers sabots -- MND
REPLACE INTO `item_mods` VALUES (27499, 14, 19); --composers sabots -- CHR
REPLACE INTO `item_mods` VALUES (27499, 23, 30); --composers sabots -- ATT
REPLACE INTO `item_mods` VALUES (27499, 25, 20); --composers sabots -- ACC
REPLACE INTO `item_mods` VALUES (27499, 29, 2); --composers sabots -- MDEF
REPLACE INTO `item_mods` VALUES (27499, 31, 80); --composers sabots -- MEVA
REPLACE INTO `item_mods` VALUES (27499, 68, 55); --composers sabots -- EVA
REPLACE INTO `item_mods` VALUES (27499, 384, 300); --composers sabots -- HASTE_GEAR
-- Crepuscular Cloak
REPLACE INTO `item_mods` VALUES (23799, 1, 264);  -- DEF
REPLACE INTO `item_mods` VALUES (23799, 2, 97);  -- HP
REPLACE INTO `item_mods` VALUES (23799, 5, 97);  -- MP
REPLACE INTO `item_mods` VALUES (23799, 8, 60);  -- STR
REPLACE INTO `item_mods` VALUES (23799, 9, 55);  -- DEX
REPLACE INTO `item_mods` VALUES (23799, 10, 30);  -- VIT
REPLACE INTO `item_mods` VALUES (23799, 11, 25);  -- AGI
REPLACE INTO `item_mods` VALUES (23799, 12, 80);  -- INT
REPLACE INTO `item_mods` VALUES (23799, 13, 64);  -- MND
REPLACE INTO `item_mods` VALUES (23799, 14, 61);  -- CHR
REPLACE INTO `item_mods` VALUES (23799, 25, 85);  -- ACC
REPLACE INTO `item_mods` VALUES (23799, 30, 85);  -- MACC
REPLACE INTO `item_mods` VALUES (23799, 28, 85);  -- MATT
REPLACE INTO `item_mods` VALUES (23799, 68, 155);  -- EVA
REPLACE INTO `item_mods` VALUES (23799, 31, 231);  -- MEVA
REPLACE INTO `item_mods` VALUES (23799, 29, 16);  -- MDEF
REPLACE INTO `item_mods` VALUES (23799, 384, 900);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23799, 27, -15);  -- ENMITY
-- Crepuscular Helm
REPLACE INTO `item_mods` VALUES (23797, 1, 156); --crepuscular helm -- DEF
REPLACE INTO `item_mods` VALUES (23797, 2, 114); --crepuscular helm -- HP
REPLACE INTO `item_mods` VALUES (23797, 8, 41); --crepuscular helm -- STR
REPLACE INTO `item_mods` VALUES (23797, 9, 28); --crepuscular helm -- DEX
REPLACE INTO `item_mods` VALUES (23797, 10, 48); --crepuscular helm -- VIT
REPLACE INTO `item_mods` VALUES (23797, 11, 29); --crepuscular helm -- AGI
REPLACE INTO `item_mods` VALUES (23797, 12, 27); --crepuscular helm -- INT
REPLACE INTO `item_mods` VALUES (23797, 13, 31); --crepuscular helm -- MND
REPLACE INTO `item_mods` VALUES (23797, 14, 29); --crepuscular helm -- CHR
REPLACE INTO `item_mods` VALUES (23797, 25, 20); --crepuscular helm -- ACC
REPLACE INTO `item_mods` VALUES (23797, 23, 60); --crepuscular helm -- ATT
REPLACE INTO `item_mods` VALUES (23797, 31, 86); --crepuscular helm -- MEVA
REPLACE INTO `item_mods` VALUES (23797, 68, 83); --crepuscular helm -- EVA
REPLACE INTO `item_mods` VALUES (23797, 30, 20); --crepuscular helm -- MACC
REPLACE INTO `item_mods` VALUES (23797, 29, 6); --crepuscular helm -- MDEF
REPLACE INTO `item_mods` VALUES (23797, 384, 400); --crepuscular helm -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23797, 302, 4); --crepuscular helm -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (23797, 370, 3); --crepuscular helm -- REGEN
-- Crepuscular Mail
REPLACE INTO `item_mods` VALUES (23798, 1, 189);  -- DEF
REPLACE INTO `item_mods` VALUES (23798, 2, 159);  -- HP
REPLACE INTO `item_mods` VALUES (23798, 8, 50);  -- STR
REPLACE INTO `item_mods` VALUES (23798, 9, 33);  -- DEX
REPLACE INTO `item_mods` VALUES (23798, 10, 50);  -- VIT
REPLACE INTO `item_mods` VALUES (23798, 11, 33);  -- AGI
REPLACE INTO `item_mods` VALUES (23798, 12, 32);  -- INT
REPLACE INTO `item_mods` VALUES (23798, 13, 36);  -- MND
REPLACE INTO `item_mods` VALUES (23798, 14, 34);  -- CHR
REPLACE INTO `item_mods` VALUES (23798, 25, 55);  -- ACC
REPLACE INTO `item_mods` VALUES (23798, 23, 20);  -- ATT
REPLACE INTO `item_mods` VALUES (23798, 30, 55);  -- MACC
REPLACE INTO `item_mods` VALUES (23798, 68, 94);  -- EVA
REPLACE INTO `item_mods` VALUES (23798, 31, 102);  -- MEVA
REPLACE INTO `item_mods` VALUES (23798, 29, 9);  -- MDEF
REPLACE INTO `item_mods` VALUES (23798, 384, 200);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23798, 73, 10);  -- STORETP
REPLACE INTO `item_mods` VALUES (23798, 369, 2);  -- REFRESH
-- Deliverance 
REPLACE INTO `item_mods` VALUES (27640, 1, 114); --Deliverance -- DEF
REPLACE INTO `item_mods` VALUES (27640, 2, 22); --Deliverance -- HP
REPLACE INTO `item_mods` VALUES (27640, 5, 29); --Deliverance -- MP
REPLACE INTO `item_mods` VALUES (27640, 109, 107); --Deliverance -- SHIELD
REPLACE INTO `item_mods` VALUES (27640, 291, 3); --Deliverance -- COUNTER
REPLACE INTO `item_mods` VALUES (27640, 518, 8); --Deliverance -- SHIELDBLOCKRATE
REPLACE INTO `item_mods` VALUES (27640, 161, -300); --Deliverance -- DMGPHYS
-- Deliverance +1  
REPLACE INTO `item_mods` VALUES (27641, 1, 116); --Deliverance +1  -- DEF
REPLACE INTO `item_mods` VALUES (27641, 2, 22); --Deliverance +1  -- HP
REPLACE INTO `item_mods` VALUES (27641, 5, 29); --Deliverance +1  -- MP
REPLACE INTO `item_mods` VALUES (27641, 109, 107); --Deliverance +1  -- SHIELD
REPLACE INTO `item_mods` VALUES (27641, 291, 4); --Deliverance +1  -- COUNTER
REPLACE INTO `item_mods` VALUES (27641, 518, 9); --Deliverance +1  -- SHIELDBLOCKRATE
REPLACE INTO `item_mods` VALUES (27641, 161, -400); --Deliverance +1  -- DMGPHYS
-- despair cuisses
REPLACE INTO `item_mods` VALUES (27283, 384, 600); --despair cuisses -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27283, 68, 27); --despair cuisses -- EVA
REPLACE INTO `item_mods` VALUES (27283, 31, 80); --despair cuisses -- MEVA
REPLACE INTO `item_mods` VALUES (27283, 29, 4); --despair cuisses -- MDEF
REPLACE INTO `item_mods` VALUES (27283, 27, 4); --despair cuisses -- ENMITY
REPLACE INTO `item_mods` VALUES (27283, 23, 23); --despair cuisses -- ATT
REPLACE INTO `item_mods` VALUES (27283, 14, 16); --despair cuisses -- CHR
REPLACE INTO `item_mods` VALUES (27283, 13, 16); --despair cuisses -- MND
REPLACE INTO `item_mods` VALUES (27283, 12, 29); --despair cuisses -- INT
REPLACE INTO `item_mods` VALUES (27283, 11, 17); --despair cuisses -- AGI
REPLACE INTO `item_mods` VALUES (27283, 10, 21); --despair cuisses -- VIT
REPLACE INTO `item_mods` VALUES (27283, 8, 34); --despair cuisses -- STR
REPLACE INTO `item_mods` VALUES (27283, 2, 50); --despair cuisses -- HP
REPLACE INTO `item_mods` VALUES (27283, 1, 126); --despair cuisses -- DEF
REPLACE INTO `item_mods_pet` VALUES (27283, 23, 23, 0);   -- pet ATT
REPLACE INTO `item_mods_pet` VALUES (27283, 24, 23, 0);   -- pet RATT
-- despair finger gauntlets
REPLACE INTO `item_mods` VALUES (27098, 384, 500); --despair finger gauntlets -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27098, 68, 22); --despair finger gauntlets -- EVA
REPLACE INTO `item_mods` VALUES (27098, 31, 43); --despair finger gauntlets -- MEVA
REPLACE INTO `item_mods` VALUES (27098, 29, 2); --despair finger gauntlets -- MDEF
REPLACE INTO `item_mods` VALUES (27098, 25, 18); --despair finger gauntlets -- ACC
REPLACE INTO `item_mods` VALUES (27098, 23, 18); --despair finger gauntlets -- ATT
REPLACE INTO `item_mods` VALUES (27098, 14, 21); --despair finger gauntlets -- CHR
REPLACE INTO `item_mods` VALUES (27098, 13, 31); --despair finger gauntlets -- MND
REPLACE INTO `item_mods` VALUES (27098, 12, 16); --despair finger gauntlets -- INT
REPLACE INTO `item_mods` VALUES (27098, 11, 8); --despair finger gauntlets -- AGI
REPLACE INTO `item_mods` VALUES (27098, 10, 34); --despair finger gauntlets -- VIT
REPLACE INTO `item_mods` VALUES (27098, 9, 34); --despair finger gauntlets -- DEX
REPLACE INTO `item_mods` VALUES (27098, 8, 15); --despair finger gauntlets -- STR
REPLACE INTO `item_mods` VALUES (27098, 2, 57); --despair finger gauntlets -- HP
REPLACE INTO `item_mods` VALUES (27098, 1, 99); --despair finger gauntlets -- DEF
REPLACE INTO `item_mods_pet` VALUES (27098, 2, 150, 2);   -- Wyvern HP
-- despair greaves
REPLACE INTO `item_mods` VALUES (27458, 384, 400); --despair greaves -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27458, 288, 2); --despair greaves -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (27458, 68, 52); --despair greaves -- EVA
REPLACE INTO `item_mods` VALUES (27458, 31, 80); --despair greaves -- MEVA
REPLACE INTO `item_mods` VALUES (27458, 29, 3); --despair greaves -- MDEF
REPLACE INTO `item_mods` VALUES (27458, 25, 17); --despair greaves -- ACC
REPLACE INTO `item_mods` VALUES (27458, 14, 28); --despair greaves -- CHR
REPLACE INTO `item_mods` VALUES (27458, 13, 11); --despair greaves -- MND
REPLACE INTO `item_mods` VALUES (27458, 11, 33); --despair greaves -- AGI
REPLACE INTO `item_mods` VALUES (27458, 10, 15); --despair greaves -- VIT
REPLACE INTO `item_mods` VALUES (27458, 9, 16); --despair greaves -- DEX
REPLACE INTO `item_mods` VALUES (27458, 8, 19); --despair greaves -- STR
REPLACE INTO `item_mods` VALUES (27458, 2, 15); --despair greaves -- HP
REPLACE INTO `item_mods` VALUES (27458, 1, 82); --despair greaves -- DEF
REPLACE INTO `item_mods_pet` VALUES (27458, 25, 17, 0);   -- pet ACC
REPLACE INTO `item_mods_pet` VALUES (27458, 26, 17, 0);   -- pet RACC
-- despair helm
REPLACE INTO `item_mods` VALUES (26792, 384, 800); --despair helm -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26792, 68, 36); --despair helm -- EVA
REPLACE INTO `item_mods` VALUES (26792, 31, 53); --despair helm -- MEVA
REPLACE INTO `item_mods` VALUES (26792, 29, 2); --despair helm -- MDEF
REPLACE INTO `item_mods` VALUES (26792, 25, 20); --despair helm -- ACC
REPLACE INTO `item_mods` VALUES (26792, 23, 20); --despair helm -- ATT
REPLACE INTO `item_mods` VALUES (26792, 14, 20); --despair helm -- CHR
REPLACE INTO `item_mods` VALUES (26792, 13, 20); --despair helm -- MND
REPLACE INTO `item_mods` VALUES (26792, 12, 20); --despair helm -- INT
REPLACE INTO `item_mods` VALUES (26792, 11, 20); --despair helm -- AGI
REPLACE INTO `item_mods` VALUES (26792, 10, 20); --despair helm -- VIT
REPLACE INTO `item_mods` VALUES (26792, 9, 21); --despair helm -- DEX
REPLACE INTO `item_mods` VALUES (26792, 8, 21); --despair helm -- STR
REPLACE INTO `item_mods` VALUES (26792, 2, 38); --despair helm -- HP
REPLACE INTO `item_mods` VALUES (26792, 1, 113); --despair helm -- DEF
REPLACE INTO `item_mods_pet` VALUES (26792, 25, 20, 0);   -- pet ACC
REPLACE INTO `item_mods_pet` VALUES (26792, 26, 20, 0);   -- pet RACC
REPLACE INTO `item_mods_pet` VALUES (26792, 23, 20, 0);   -- pet ATT
REPLACE INTO `item_mods_pet` VALUES (26792, 24, 20, 0);   -- pet RATT
-- despair mail
REPLACE INTO `item_mods` VALUES (26948, 384, 400); --despair mail -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26948, 68, 44); --despair mail -- EVA
REPLACE INTO `item_mods` VALUES (26948, 31, 64); --despair mail -- MEVA
REPLACE INTO `item_mods` VALUES (26948, 29, 5); --despair mail -- MDEF
REPLACE INTO `item_mods` VALUES (26948, 25, 23); --despair mail -- ACC
REPLACE INTO `item_mods` VALUES (26948, 14, 23); --despair mail -- CHR
REPLACE INTO `item_mods` VALUES (26948, 13, 23); --despair mail -- MND
REPLACE INTO `item_mods` VALUES (26948, 12, 23); --despair mail -- INT
REPLACE INTO `item_mods` VALUES (26948, 11, 23); --despair mail -- AGI
REPLACE INTO `item_mods` VALUES (26948, 10, 30); --despair mail -- VIT
REPLACE INTO `item_mods` VALUES (26948, 9, 29); --despair mail -- DEX
REPLACE INTO `item_mods` VALUES (26948, 8, 30); --despair mail -- STR
REPLACE INTO `item_mods` VALUES (26948, 2, 121); --despair mail -- HP
REPLACE INTO `item_mods` VALUES (26948, 1, 143); --despair mail -- DEF
REPLACE INTO `item_mods_pet` VALUES (26948, 288, 3, 0);   -- pet DOUBLE_ATTACK
-- Ea Cuffs
REPLACE INTO `item_mods` VALUES (25980, 1, 91); --ea cuffs -- DEF
REPLACE INTO `item_mods` VALUES (25980, 2, 6); --ea cuffs -- HP
REPLACE INTO `item_mods` VALUES (25980, 5, 14); --ea cuffs -- MP
REPLACE INTO `item_mods` VALUES (25980, 8, 7); --ea cuffs -- STR
REPLACE INTO `item_mods` VALUES (25980, 9, 29); --ea cuffs -- DEX
REPLACE INTO `item_mods` VALUES (25980, 10, 30); --ea cuffs -- VIT
REPLACE INTO `item_mods` VALUES (25980, 12, 35); --ea cuffs -- INT
REPLACE INTO `item_mods` VALUES (25980, 13, 35); --ea cuffs -- MND
REPLACE INTO `item_mods` VALUES (25980, 14, 23); --ea cuffs -- CHR
REPLACE INTO `item_mods` VALUES (25980, 30, 39); --ea cuffs -- MACC
REPLACE INTO `item_mods` VALUES (25980, 68, 27); --ea cuffs -- EVA
REPLACE INTO `item_mods` VALUES (25980, 31, 91); --ea cuffs -- MEVA
REPLACE INTO `item_mods` VALUES (25980, 28, 30); --ea cuffs -- MATT
REPLACE INTO `item_mods` VALUES (25980, 29, 4); --ea cuffs -- MDEF
REPLACE INTO `item_mods` VALUES (25980, 384, 300); --ea cuffs -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25980, 487, 5); --ea cuffs -- MAGIC_BURST_BONUS_CAPPED
REPLACE INTO `item_mods` VALUES (25980, 274, 5); --ea cuffs -- MAGIC_BURST_BONUS_UNCAPPED
-- Ea Houppelande
REPLACE INTO `item_mods` VALUES (26529, 1, 133); --ea houppelande -- DEF
REPLACE INTO `item_mods` VALUES (26529, 2, 68); --ea houppelande -- HP
REPLACE INTO `item_mods` VALUES (26529, 5, 94); --ea houppelande -- MP
REPLACE INTO `item_mods` VALUES (26529, 8, 23); --ea houppelande -- STR
REPLACE INTO `item_mods` VALUES (26529, 9, 24); --ea houppelande -- DEX
REPLACE INTO `item_mods` VALUES (26529, 10, 26); --ea houppelande -- VIT
REPLACE INTO `item_mods` VALUES (26529, 11, 26); --ea houppelande -- AGI
REPLACE INTO `item_mods` VALUES (26529, 12, 43); --ea houppelande -- INT
REPLACE INTO `item_mods` VALUES (26529, 13, 32); --ea houppelande -- MND
REPLACE INTO `item_mods` VALUES (26529, 14, 34); --ea houppelande -- CHR
REPLACE INTO `item_mods` VALUES (26529, 28, 39); --ea houppelande -- MATT
REPLACE INTO `item_mods` VALUES (26529, 29, 8); --ea houppelande -- MDEF
REPLACE INTO `item_mods` VALUES (26529, 30, 42); --ea houppelande -- MACC
REPLACE INTO `item_mods` VALUES (26529, 31, 118); --ea houppelande -- MEVA
REPLACE INTO `item_mods` VALUES (26529, 68, 45); --ea houppelande -- EVA
REPLACE INTO `item_mods` VALUES (26529, 384, 300); --ea houppelande -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26529, 487, 8); --ea houppelande -- MAGIC_BURST_BONUS_CAPPED
REPLACE INTO `item_mods` VALUES (26529, 274, 8); --ea houppelande -- MAGIC_BURST_BONUS_UNCAPPED
-- Ea Pigaches
REPLACE INTO `item_mods` VALUES (25960, 1, 73); --ea pigaches -- DEF
REPLACE INTO `item_mods` VALUES (25960, 2, 15); --ea pigaches -- HP
REPLACE INTO `item_mods` VALUES (25960, 5, 26); --ea pigaches -- MP
REPLACE INTO `item_mods` VALUES (25960, 8, 11); --ea pigaches -- STR
REPLACE INTO `item_mods` VALUES (25960, 9, 14); --ea pigaches -- DEX
REPLACE INTO `item_mods` VALUES (25960, 10, 15); --ea pigaches -- VIT
REPLACE INTO `item_mods` VALUES (25960, 11, 38); --ea pigaches -- AGI
REPLACE INTO `item_mods` VALUES (25960, 13, 21); --ea pigaches -- MND
REPLACE INTO `item_mods` VALUES (25960, 14, 39); --ea pigaches -- CHR
REPLACE INTO `item_mods` VALUES (25960, 28, 27); --ea pigaches -- MATT
REPLACE INTO `item_mods` VALUES (25960, 30, 38); --ea pigaches -- MACC
REPLACE INTO `item_mods` VALUES (25960, 31, 137); --ea pigaches -- MEVA
REPLACE INTO `item_mods` VALUES (25960, 68, 56); --ea pigaches -- EVA
REPLACE INTO `item_mods` VALUES (25960, 29, 5); --ea pigaches -- MDEF
REPLACE INTO `item_mods` VALUES (25960, 384, 300); --ea pigaches -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25960, 487, 4); --ea pigaches -- MAGIC_BURST_BONUS_CAPPED
REPLACE INTO `item_mods` VALUES (25960, 274, 4); --ea pigaches -- MAGIC_BURST_BONUS_UNCAPPED
-- Ea Slops
REPLACE INTO `item_mods` VALUES (25893, 1, 115); --ea slops -- DEF
REPLACE INTO `item_mods` VALUES (25893, 2, 61); --ea slops -- HP
REPLACE INTO `item_mods` VALUES (25893, 4, 85); --ea slops -- CONVMPTOHP
REPLACE INTO `item_mods` VALUES (25893, 8, 26); --ea slops -- STR
REPLACE INTO `item_mods` VALUES (25893, 10, 17); --ea slops -- VIT
REPLACE INTO `item_mods` VALUES (25893, 11, 24); --ea slops -- AGI
REPLACE INTO `item_mods` VALUES (25893, 12, 43); --ea slops -- INT
REPLACE INTO `item_mods` VALUES (25893, 13, 26); --ea slops -- MND
REPLACE INTO `item_mods` VALUES (25893, 14, 23); --ea slops -- CHR
REPLACE INTO `item_mods` VALUES (25893, 28, 36); --ea slops -- MATT
REPLACE INTO `item_mods` VALUES (25893, 29, 7); --ea slops -- MDEF
REPLACE INTO `item_mods` VALUES (25893, 30, 41); --ea slops -- MACC
REPLACE INTO `item_mods` VALUES (25893, 31, 137); --ea slops -- MEVA
REPLACE INTO `item_mods` VALUES (25893, 68, 37); --ea slops -- EVA
REPLACE INTO `item_mods` VALUES (25893, 384, 500); --ea slops -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25893, 487, 7); --ea slops -- MAGIC_BURST_BONUS_CAPPED
REPLACE INTO `item_mods` VALUES (25893, 274, 7); --ea slops -- MAGIC_BURST_BONUS_UNCAPPED
-- Emet Harness
REPLACE INTO `item_mods` VALUES (26870, 161, -500);  -- DMGPHYS
REPLACE INTO `item_mods` VALUES (26870, 27, 9);  -- ENMITY
REPLACE INTO `item_mods` VALUES (26870, 384, 400);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26870, 68, 69);  -- EVA
REPLACE INTO `item_mods` VALUES (26870, 31, 64);  -- MEVA
REPLACE INTO `item_mods` VALUES (26870, 29, 5);  -- MDEF
REPLACE INTO `item_mods` VALUES (26870, 14, 23);  -- CHR
REPLACE INTO `item_mods` VALUES (26870, 13, 23);  -- MND
REPLACE INTO `item_mods` VALUES (26870, 12, 23);  -- INT
REPLACE INTO `item_mods` VALUES (26870, 11, 23);  -- AGI
REPLACE INTO `item_mods` VALUES (26870, 10, 25);  -- VIT
REPLACE INTO `item_mods` VALUES (26870, 9, 24);  -- DEX
REPLACE INTO `item_mods` VALUES (26870, 8, 25);  -- STR
REPLACE INTO `item_mods` VALUES (26870, 2, 61);  -- HP
REPLACE INTO `item_mods` VALUES (26870, 1, 130);  -- DEF
-- Emet Harness +1
REPLACE INTO `item_mods` VALUES (26871,1,131);    -- DEF: 131
REPLACE INTO `item_mods` VALUES (26871,2,61);     -- HP: 61
REPLACE INTO `item_mods` VALUES (26871,8,25);     -- STR: 25
REPLACE INTO `item_mods` VALUES (26871,9,24);     -- DEX: 24
REPLACE INTO `item_mods` VALUES (26871,10,25);    -- VIT: 25
REPLACE INTO `item_mods` VALUES (26871,11,23);    -- AGI: 23
REPLACE INTO `item_mods` VALUES (26871,12,23);    -- INT: 23
REPLACE INTO `item_mods` VALUES (26871,13,23);    -- MND: 23
REPLACE INTO `item_mods` VALUES (26871,14,23);    -- CHR: 23
REPLACE INTO `item_mods` VALUES (26871,27,10);    -- ENMITY: 10
REPLACE INTO `item_mods` VALUES (26871,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (26871,31,64);    -- MEVA: 64
REPLACE INTO `item_mods` VALUES (26871,68,70);    -- EVA: 70
REPLACE INTO `item_mods` VALUES (26871,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (26871, 161, -600);  -- DMGPHYS
-- Emicho Coronet
REPLACE INTO `item_mods_pet` VALUES (25609,23,25,0);    -- All Pets - ATT: 25
REPLACE INTO `item_mods_pet` VALUES (25609,384,500,0);    -- All Pets - HASTE_GEAR: 500
-- Emicho Coronet +1
REPLACE INTO `item_mods_pet` VALUES (25610,23,35,0);    -- All Pets - ATT: 35
REPLACE INTO `item_mods_pet` VALUES (25610,384,600,0);    -- All Pets - HASTE_GEAR: 600
-- Emicho Gambieras
REPLACE INTO `item_mods_pet` VALUES (27469,370,4,0);    -- All Pets - REGEN: 4
REPLACE INTO `item_mods_pet` VALUES (27469,480,5,2); -- Wyvern - ABSORB_DMG_CHANCE: 5
-- Emicho Gambieras +1
REPLACE INTO `item_mods_pet` VALUES (27470,370,5,0);    -- All Pets - REGEN: 5
REPLACE INTO `item_mods_pet` VALUES (27470,480,6,2); -- Wyvern - ABSORB_DMG_CHANCE: 6
-- Emicho Gauntlets
REPLACE INTO `item_mods_pet` VALUES (27113,23,25,0);    -- All Pets - ATT: 25
REPLACE INTO `item_mods_pet` VALUES (27113,73,6,0); -- All Pets - STORETP: 6
-- Emicho Gauntlets +1
REPLACE INTO `item_mods_pet` VALUES (27114,23,35,0);    -- All Pets - ATT: 35
REPLACE INTO `item_mods_pet` VALUES (27114,73,7,0); -- All Pets - STORETP: 7
-- Emicho Haubert
REPLACE INTO `item_mods_pet` VALUES (25682,28,25,0);    -- All Pets - MATT: 25
REPLACE INTO `item_mods_pet` VALUES (25682,160,-300,0); -- All Pets - DMG: -300
-- Emicho Haubert +1
REPLACE INTO `item_mods_pet` VALUES (25683,28,35,0);    -- All Pets - MATT: 35
REPLACE INTO `item_mods_pet` VALUES (25683,160,-400,0); -- All Pets - DMG: -400
-- Emicho Hose
REPLACE INTO `item_mods_pet` VALUES (27298,288,4,0); -- All Pets - DOUBLE_ATTACK: 5
REPLACE INTO `item_mods_pet` VALUES (27298,165,4,0); -- All Pets - CRITHITRATE: 5
REPLACE INTO `item_mods_pet` VALUES (27298,3,20,2); -- Wyvern - HPP: 21
-- Emicho Hose +1
REPLACE INTO `item_mods_pet` VALUES (27299,288,5,0); -- All Pets - DOUBLE_ATTACK: 5
REPLACE INTO `item_mods_pet` VALUES (27299,165,5,0); -- All Pets - CRITHITRATE: 5
REPLACE INTO `item_mods_pet` VALUES (27299,3,21,2); -- Wyvern - HPP: 21
-- Enforcer's Harness
REPLACE INTO `item_mods` VALUES (26962, 421, 5);  -- CRIT_DMG_INCREASE: 5
REPLACE INTO `item_mods` VALUES (26962, 384, 400);  -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (26962, 165, 4);  -- CRITHITRATE: 4
REPLACE INTO `item_mods` VALUES (26962, 68, 55);  -- EVA: 55
REPLACE INTO `item_mods` VALUES (26962, 31, 69);  -- MEVA: 69
REPLACE INTO `item_mods` VALUES (26962, 29, 6);  -- MDEF: 6
REPLACE INTO `item_mods` VALUES (26962, 14, 21);  -- CHR: 21
REPLACE INTO `item_mods` VALUES (26962, 13, 21);  -- MND: 21
REPLACE INTO `item_mods` VALUES (26962, 12, 21);  -- INT: 21
REPLACE INTO `item_mods` VALUES (26962, 11, 28);  -- AGI: 28
REPLACE INTO `item_mods` VALUES (26962, 10, 24);  -- VIT: 24
REPLACE INTO `item_mods` VALUES (26962, 9, 42);  -- DEX: 42
REPLACE INTO `item_mods` VALUES (26962, 8, 25);  -- STR: 25
REPLACE INTO `item_mods` VALUES (26962, 2, 63);  -- HP: 53
REPLACE INTO `item_mods` VALUES (26962, 1, 135);  -- DEF: 135
-- Erilaz Galea +3
REPLACE INTO `item_mods` VALUES (23441,1,135);   -- DEF: 135
REPLACE INTO `item_mods` VALUES (23441,2,111);   -- HP: 111
REPLACE INTO `item_mods` VALUES (23441,5,65);    -- MP: 65
REPLACE INTO `item_mods` VALUES (23441,8,34);    -- STR: 34
REPLACE INTO `item_mods` VALUES (23441,9,30);    -- DEX: 30
REPLACE INTO `item_mods` VALUES (23441,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (23441,11,30);   -- AGI: 30
REPLACE INTO `item_mods` VALUES (23441,12,29);   -- INT: 29
REPLACE INTO `item_mods` VALUES (23441,13,31);   -- MND: 31
REPLACE INTO `item_mods` VALUES (23441,14,27);   -- CHR: 27
REPLACE INTO `item_mods` VALUES (23441,23,61);   -- ATT: 61
REPLACE INTO `item_mods` VALUES (23441,25,61);   -- ACC: 61
REPLACE INTO `item_mods` VALUES (23441,29,9);    -- MDEF: 9
REPLACE INTO `item_mods` VALUES (23441,30,61);   -- MACC: 61
REPLACE INTO `item_mods` VALUES (23441,31,119);  -- MEVA: 119
REPLACE INTO `item_mods` VALUES (23441,68,92);   -- EVA: 92
REPLACE INTO `item_mods` VALUES (23441,168,20);  -- SPELLINTERRUPT: 20%
REPLACE INTO `item_mods` VALUES (23441,384,800); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23441,529,4);   -- ENHANCES_REFRESH: 4
REPLACE INTO `item_mods` VALUES (23441,890,25);  -- ENH_MAGIC_DURATION: 25%
REPLACE INTO `item_mods` VALUES (23441,1013,10); -- AUGMENTS_VIVACIOUS_PULSE
-- Erilaz Gauntlets +3
REPLACE INTO `item_mods` VALUES (23575,1,124);     -- DEF: 124
REPLACE INTO `item_mods` VALUES (23575,2,59);      -- HP: 59
REPLACE INTO `item_mods` VALUES (23575,5,47);      -- MP: 47
REPLACE INTO `item_mods` VALUES (23575,8,26);      -- STR: 26
REPLACE INTO `item_mods` VALUES (23575,9,47);      -- DEX: 47
REPLACE INTO `item_mods` VALUES (23575,10,40);     -- VIT: 40
REPLACE INTO `item_mods` VALUES (23575,11,17);     -- AGI: 17
REPLACE INTO `item_mods` VALUES (23575,12,26);     -- INT: 26
REPLACE INTO `item_mods` VALUES (23575,13,45);     -- MND: 45
REPLACE INTO `item_mods` VALUES (23575,14,29);     -- CHR: 29
REPLACE INTO `item_mods` VALUES (23575,23,62);     -- ATT: 62
REPLACE INTO `item_mods` VALUES (23575,25,62);     -- ACC: 62
REPLACE INTO `item_mods` VALUES (23575,29,6);      -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23575,30,62);     -- MACC: 62
REPLACE INTO `item_mods` VALUES (23575,31,87);     -- MEVA: 87
REPLACE INTO `item_mods` VALUES (23575,68,78);     -- EVA: 78
REPLACE INTO `item_mods` VALUES (23575,83,38);     -- GSWORD: 38
REPLACE INTO `item_mods` VALUES (23575,160,-1100); -- DMG: -11%
REPLACE INTO `item_mods` VALUES (23575,384,500);   -- HASTE_GEAR: 5%
REPLACE INTO `item_mods` VALUES (23575,958,8);     -- STATUSRES: 8
-- Erilaz Leg Guards +3
REPLACE INTO `item_mods` VALUES (23642,1,147);    -- DEF: 147
REPLACE INTO `item_mods` VALUES (23642,2,100);    -- HP: 100
REPLACE INTO `item_mods` VALUES (23642,5,94);     -- MP: 94
REPLACE INTO `item_mods` VALUES (23642,8,47);     -- STR: 47
REPLACE INTO `item_mods` VALUES (23642,10,25);    -- VIT: 25
REPLACE INTO `item_mods` VALUES (23642,11,31);    -- AGI: 31
REPLACE INTO `item_mods` VALUES (23642,12,43);    -- INT: 43
REPLACE INTO `item_mods` VALUES (23642,13,32);    -- MND: 32
REPLACE INTO `item_mods` VALUES (23642,14,22);    -- CHR: 22
REPLACE INTO `item_mods` VALUES (23642,23,63);    -- ATT: 63
REPLACE INTO `item_mods` VALUES (23642,25,63);    -- ACC: 63
REPLACE INTO `item_mods` VALUES (23642,30,63);    -- MACC: 63
REPLACE INTO `item_mods` VALUES (23642,27,13);    -- ENMITY: 13
REPLACE INTO `item_mods` VALUES (23642,29,10);    -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23642,31,157);   -- MEVA: 157
REPLACE INTO `item_mods` VALUES (23642,68,89);    -- EVA: 89
REPLACE INTO `item_mods` VALUES (23642,161,-1300); -- DMGPHYS: -1300
REPLACE INTO `item_mods` VALUES (23642,384,600);  -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (23642,963,4);    -- INQUARTATA: 4
-- Erilaz Surcoat +3
REPLACE INTO `item_mods` VALUES (23508,1,167);   -- DEF: 167
REPLACE INTO `item_mods` VALUES (23508,2,143);   -- HP: 143
REPLACE INTO `item_mods` VALUES (23508,5,91);    -- MP: 91
REPLACE INTO `item_mods` VALUES (23508,8,42);    -- STR: 42
REPLACE INTO `item_mods` VALUES (23508,9,40);    -- DEX: 40
REPLACE INTO `item_mods` VALUES (23508,10,33);   -- VIT: 33
REPLACE INTO `item_mods` VALUES (23508,11,39);   -- AGI: 39
REPLACE INTO `item_mods` VALUES (23508,12,35);   -- INT: 35
REPLACE INTO `item_mods` VALUES (23508,13,39);   -- MND: 39
REPLACE INTO `item_mods` VALUES (23508,14,34);   -- CHR: 34
REPLACE INTO `item_mods` VALUES (23508,23,74);   -- ATT: 74
REPLACE INTO `item_mods` VALUES (23508,25,64);   -- ACC: 64
REPLACE INTO `item_mods` VALUES (23508,29,10);    -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23508,30,64);   -- MACC: 64
REPLACE INTO `item_mods` VALUES (23508,31,130);  -- MEVA: 130
REPLACE INTO `item_mods` VALUES (23508,68,97);   -- EVA: 97
REPLACE INTO `item_mods` VALUES (23508,170,13);  -- FASTCAST: 13%
REPLACE INTO `item_mods` VALUES (23508,384,400); -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23508,426,8);   -- ABSORB_PHYSDMG_TO_MP: 8
REPLACE INTO `item_mods` VALUES (23508,427,14);  -- ENMITY_LOSS_REDUCTION: 14
-- eschite breastplate
REPLACE INTO `item_mods` VALUES (26947, 384, 300); --eschite breastplate -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26947, 68, 41); --eschite breastplate -- EVA
REPLACE INTO `item_mods` VALUES (26947, 31, 48); --eschite breastplate -- MEVA
REPLACE INTO `item_mods` VALUES (26947, 29, 4); --eschite breastplate -- MDEF
REPLACE INTO `item_mods` VALUES (26947, 23, 20); --eschite breastplate -- ATT
REPLACE INTO `item_mods` VALUES (26947, 14, 19); --eschite breastplate -- CHR
REPLACE INTO `item_mods` VALUES (26947, 13, 19); --eschite breastplate -- MND
REPLACE INTO `item_mods` VALUES (26947, 12, 19); --eschite breastplate -- INT
REPLACE INTO `item_mods` VALUES (26947, 11, 19); --eschite breastplate -- AGI
REPLACE INTO `item_mods` VALUES (26947, 10, 34); --eschite breastplate -- VIT
REPLACE INTO `item_mods` VALUES (26947, 9, 19); --eschite breastplate -- DEX
REPLACE INTO `item_mods` VALUES (26947, 8, 34); --eschite breastplate -- STR
REPLACE INTO `item_mods` VALUES (26947, 5, 35); --eschite breastplate -- MP
REPLACE INTO `item_mods` VALUES (26947, 2, 153); --eschite breastplate -- HP
REPLACE INTO `item_mods` VALUES (26947, 1, 148); --eschite breastplate -- DEF
-- eschite cuisses
REPLACE INTO `item_mods` VALUES (27282, 384, 500); --eschite cuisses -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27282, 116, 20); --eschite cuisses -- DARK
REPLACE INTO `item_mods` VALUES (27282, 68, 22); --eschite cuisses -- EVA
REPLACE INTO `item_mods` VALUES (27282, 31, 64); --eschite cuisses -- MEVA
REPLACE INTO `item_mods` VALUES (27282, 30, 23); --eschite cuisses -- MACC
REPLACE INTO `item_mods` VALUES (27282, 29, 3); --eschite cuisses -- MDEF
REPLACE INTO `item_mods` VALUES (27282, 25, 23); --eschite cuisses -- ACC
REPLACE INTO `item_mods` VALUES (27282, 14, 10); --eschite cuisses -- CHR
REPLACE INTO `item_mods` VALUES (27282, 13, 12); --eschite cuisses -- MND
REPLACE INTO `item_mods` VALUES (27282, 12, 25); --eschite cuisses -- INT
REPLACE INTO `item_mods` VALUES (27282, 11, 16); --eschite cuisses -- AGI
REPLACE INTO `item_mods` VALUES (27282, 10, 21); --eschite cuisses -- VIT
REPLACE INTO `item_mods` VALUES (27282, 8, 35); --eschite cuisses -- STR
REPLACE INTO `item_mods` VALUES (27282, 5, 60); --eschite cuisses -- MP
REPLACE INTO `item_mods` VALUES (27282, 2, 52); --eschite cuisses -- HP
REPLACE INTO `item_mods` VALUES (27282, 1, 129); --eschite cuisses -- DEF
-- eschite gauntlets
REPLACE INTO `item_mods` VALUES (27097, 384, 400); --eschite gauntlets -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27097, 111, 20); --eschite gauntlets -- DIVINE
REPLACE INTO `item_mods` VALUES (27097, 73, 3); --eschite gauntlets -- STORETP
REPLACE INTO `item_mods` VALUES (27097, 68, 22); --eschite gauntlets -- EVA
REPLACE INTO `item_mods` VALUES (27097, 31, 26); --eschite gauntlets -- MEVA
REPLACE INTO `item_mods` VALUES (27097, 29, 1); --eschite gauntlets -- MDEF
REPLACE INTO `item_mods` VALUES (27097, 23, 22); --eschite gauntlets -- ATT
REPLACE INTO `item_mods` VALUES (27097, 14, 19); --eschite gauntlets -- CHR
REPLACE INTO `item_mods` VALUES (27097, 13, 25); --eschite gauntlets -- MND
REPLACE INTO `item_mods` VALUES (27097, 12, 8); --eschite gauntlets -- INT
REPLACE INTO `item_mods` VALUES (27097, 10, 33); --eschite gauntlets -- VIT
REPLACE INTO `item_mods` VALUES (27097, 9, 29); --eschite gauntlets -- DEX
REPLACE INTO `item_mods` VALUES (27097, 8, 12); --eschite gauntlets -- STR
REPLACE INTO `item_mods` VALUES (27097, 2, 29); --eschite gauntlets -- HP
REPLACE INTO `item_mods` VALUES (27097, 1, 104); --eschite gauntlets -- DEF
-- eschite greaves
REPLACE INTO `item_mods` VALUES (27457, 167, 300); --eschite greaves -- HASTE_MAGIC
REPLACE INTO `item_mods` VALUES (27457, 163, -300); --eschite greaves -- DMGMAGIC
REPLACE INTO `item_mods` VALUES (27457, 68, 49); --eschite greaves -- EVA
REPLACE INTO `item_mods` VALUES (27457, 31, 64); --eschite greaves -- MEVA
REPLACE INTO `item_mods` VALUES (27457, 29, 2); --eschite greaves -- MDEF
REPLACE INTO `item_mods` VALUES (27457, 27, 8); --eschite greaves -- ENMITY
REPLACE INTO `item_mods` VALUES (27457, 14, 26); --eschite greaves -- CHR
REPLACE INTO `item_mods` VALUES (27457, 13, 10); --eschite greaves -- MND
REPLACE INTO `item_mods` VALUES (27457, 11, 29); --eschite greaves -- AGI
REPLACE INTO `item_mods` VALUES (27457, 10, 22); --eschite greaves -- VIT
REPLACE INTO `item_mods` VALUES (27457, 9, 12); --eschite greaves -- DEX
REPLACE INTO `item_mods` VALUES (27457, 8, 21); --eschite greaves -- STR
REPLACE INTO `item_mods` VALUES (27457, 2, 18); --eschite greaves -- HP
REPLACE INTO `item_mods` VALUES (27457, 1, 91); --eschite greaves -- DEF
-- eschite helm
REPLACE INTO `item_mods` VALUES (26791, 384, 700); --eschite helm -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26791, 85, 15); --eschite helm -- GAXE
REPLACE INTO `item_mods` VALUES (26791, 68, 33); --eschite helm -- EVA
REPLACE INTO `item_mods` VALUES (26791, 31, 32); --eschite helm -- MEVA
REPLACE INTO `item_mods` VALUES (26791, 30, 20); --eschite helm -- MACC
REPLACE INTO `item_mods` VALUES (26791, 29, 2); --eschite helm -- MDEF
REPLACE INTO `item_mods` VALUES (26791, 25, 15); --eschite helm -- ACC
REPLACE INTO `item_mods` VALUES (26791, 23, 15); --eschite helm -- ATT
REPLACE INTO `item_mods` VALUES (26791, 14, 15); --eschite helm -- CHR
REPLACE INTO `item_mods` VALUES (26791, 13, 15); --eschite helm -- MND
REPLACE INTO `item_mods` VALUES (26791, 12, 15); --eschite helm -- INT
REPLACE INTO `item_mods` VALUES (26791, 11, 17); --eschite helm -- AGI
REPLACE INTO `item_mods` VALUES (26791, 10, 25); --eschite helm -- VIT
REPLACE INTO `item_mods` VALUES (26791, 9, 17); --eschite helm -- DEX
REPLACE INTO `item_mods` VALUES (26791, 8, 25); --eschite helm -- STR
REPLACE INTO `item_mods` VALUES (26791, 5, 23); --eschite helm -- MP
REPLACE INTO `item_mods` VALUES (26791, 2, 41); --eschite helm -- HP
REPLACE INTO `item_mods` VALUES (26791, 1, 116); --eschite helm -- DEF
-- Evalach
REPLACE INTO `item_mods` VALUES (27636, 1, 100);  -- DEF
REPLACE INTO `item_mods` VALUES (27636, 2, 22);  -- HP
REPLACE INTO `item_mods` VALUES (27636, 5, 29);  -- MP
REPLACE INTO `item_mods` VALUES (27636, 23, 10);  -- ATT
REPLACE INTO `item_mods` VALUES (27636, 28, 10);  -- MATT
REPLACE INTO `item_mods` VALUES (27636, 109, 107);  -- SHIELD
REPLACE INTO `item_mods` VALUES (27636, 27, 5);  -- ENMITY
REPLACE INTO `item_mods` VALUES (27636, 160, -300);  -- DMG
-- Evalach +1
REPLACE INTO `item_mods` VALUES (27637, 1, 102);  -- DEF
REPLACE INTO `item_mods` VALUES (27637, 2, 22);  -- HP
REPLACE INTO `item_mods` VALUES (27637, 5, 29);  -- MP
REPLACE INTO `item_mods` VALUES (27637, 23, 11);  -- ATT
REPLACE INTO `item_mods` VALUES (27637, 28, 11);  -- MATT
REPLACE INTO `item_mods` VALUES (27637, 109, 107);  -- SHIELD
REPLACE INTO `item_mods` VALUES (27637, 27, 6);  -- ENMITY
REPLACE INTO `item_mods` VALUES (27637, 160, -400);  -- DMG
-- Fallens burgeonet +3
REPLACE INTO `item_mods` VALUES (23405, 1, 134); --fallens burgeonet +3 -- DEF
REPLACE INTO `item_mods` VALUES (23405, 2, 96); --fallens burgeonet +3 -- HP
REPLACE INTO `item_mods` VALUES (23405, 5, 43); --fallens burgeonet +3 -- MP
REPLACE INTO `item_mods` VALUES (23405, 8, 40); --fallens burgeonet +3 -- STR
REPLACE INTO `item_mods` VALUES (23405, 9, 24); --fallens burgeonet +3 -- DEX
REPLACE INTO `item_mods` VALUES (23405, 10, 40); --fallens burgeonet +3 -- VIT
REPLACE INTO `item_mods` VALUES (23405, 11, 24); --fallens burgeonet +3 -- AGI
REPLACE INTO `item_mods` VALUES (23405, 12, 22); --fallens burgeonet +3 -- INT
REPLACE INTO `item_mods` VALUES (23405, 13, 22); --fallens burgeonet +3 -- MND
REPLACE INTO `item_mods` VALUES (23405, 14, 22); --fallens burgeonet +3 -- CHR
REPLACE INTO `item_mods` VALUES (23405, 25, 44); --fallens burgeonet +3 -- ACC
REPLACE INTO `item_mods` VALUES (23405, 23, 77); --fallens burgeonet +3 -- ATT
REPLACE INTO `item_mods` VALUES (23405, 30, 37); --fallens burgeonet +3 -- MACC
REPLACE INTO `item_mods` VALUES (23405, 68, 53); --fallens burgeonet +3 -- EVA
REPLACE INTO `item_mods` VALUES (23405, 31, 52); --fallens burgeonet +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23405, 29, 4); --fallens burgeonet +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23405, 384, 700); --fallens burgeonet +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23405, 1071, -12); --fallens burgeonet +3 -- DARK_MAGIC_CAST
-- Fallens cuirass +3
REPLACE INTO `item_mods` VALUES (23472, 1, 166); --fallens cuirass +3 -- DEF
REPLACE INTO `item_mods` VALUES (23472, 2, 103); --fallens cuirass +3 -- HP
REPLACE INTO `item_mods` VALUES (23472, 5, 75); --fallens cuirass +3 -- MP
REPLACE INTO `item_mods` VALUES (23472, 8, 42); --fallens cuirass +3 -- STR
REPLACE INTO `item_mods` VALUES (23472, 9, 32); --fallens cuirass +3 -- DEX
REPLACE INTO `item_mods` VALUES (23472, 10, 39); --fallens cuirass +3 -- VIT
REPLACE INTO `item_mods` VALUES (23472, 11, 29); --fallens cuirass +3 -- AGI
REPLACE INTO `item_mods` VALUES (23472, 12, 32); --fallens cuirass +3 -- INT
REPLACE INTO `item_mods` VALUES (23472, 13, 32); --fallens cuirass +3 -- MND
REPLACE INTO `item_mods` VALUES (23472, 14, 29); --fallens cuirass +3 -- CHR
REPLACE INTO `item_mods` VALUES (23472, 25, 48); --fallens cuirass +3 -- ACC
REPLACE INTO `item_mods` VALUES (23472, 23, 82); --fallens cuirass +3 -- ATT
REPLACE INTO `item_mods` VALUES (23472, 30, 40); --fallens cuirass +3 -- MACC
REPLACE INTO `item_mods` VALUES (23472, 68, 61); --fallens cuirass +3 -- EVA
REPLACE INTO `item_mods` VALUES (23472, 31, 68); --fallens cuirass +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23472, 28, 60); --fallens cuirass +3 -- MATT
REPLACE INTO `item_mods` VALUES (23472, 29, 6); --fallens cuirass +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23472, 384, 300); --fallens cuirass +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23472, 170, 10); --fallens cuirass +3 -- FASTCAST
REPLACE INTO `item_mods` VALUES (23472, 48, 27); --fallens cuirass +3 -- WSACC
-- Fallens finger gauntlets +3
REPLACE INTO `item_mods` VALUES (23539, 1, 122); --fallens finger gauntlets +3 -- DEF
REPLACE INTO `item_mods` VALUES (23539, 2, 49); --fallens finger gauntlets +3 -- HP
REPLACE INTO `item_mods` VALUES (23539, 8, 26); --fallens finger gauntlets +3 -- STR
REPLACE INTO `item_mods` VALUES (23539, 9, 39); --fallens finger gauntlets +3 -- DEX
REPLACE INTO `item_mods` VALUES (23539, 10, 43); --fallens finger gauntlets +3 -- VIT
REPLACE INTO `item_mods` VALUES (23539, 12, 24); --fallens finger gauntlets +3 -- INT
REPLACE INTO `item_mods` VALUES (23539, 13, 41); --fallens finger gauntlets +3 -- MND
REPLACE INTO `item_mods` VALUES (23539, 14, 29); --fallens finger gauntlets +3 -- CHR
REPLACE INTO `item_mods` VALUES (23539, 25, 38); --fallens finger gauntlets +3 -- ACC
REPLACE INTO `item_mods` VALUES (23539, 23, 77); --fallens finger gauntlets +3 -- ATT
REPLACE INTO `item_mods` VALUES (23539, 30, 38); --fallens finger gauntlets +3 -- MACC
REPLACE INTO `item_mods` VALUES (23539, 68, 42); --fallens finger gauntlets +3 -- EVA
REPLACE INTO `item_mods` VALUES (23539, 31, 46); --fallens finger gauntlets +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23539, 28, 62); --fallens finger gauntlets +3 -- MATT
REPLACE INTO `item_mods` VALUES (23539, 29, 3); --fallens finger gauntlets +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23539, 116, 18); --fallens finger gauntlets +3 -- DARK
REPLACE INTO `item_mods` VALUES (23539, 384, 400); --fallens finger gauntlets +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23539, 315, 16); --fallens finger gauntlets +3 -- ENH_DRAIN_ASPIR
-- Fallens flanchard +3
REPLACE INTO `item_mods` VALUES (23606, 1, 150); --fallens flanchard +3 -- DEF
REPLACE INTO `item_mods` VALUES (23606, 2, 97); --fallens flanchard +3 -- HP
REPLACE INTO `item_mods` VALUES (23606, 5, 45); --fallens flanchard +3 -- MP
REPLACE INTO `item_mods` VALUES (23606, 8, 45); --fallens flanchard +3 -- STR
REPLACE INTO `item_mods` VALUES (23606, 10, 31); --fallens flanchard +3 -- VIT
REPLACE INTO `item_mods` VALUES (23606, 11, 26); --fallens flanchard +3 -- AGI
REPLACE INTO `item_mods` VALUES (23606, 12, 40); --fallens flanchard +3 -- INT
REPLACE INTO `item_mods` VALUES (23606, 13, 27); --fallens flanchard +3 -- MND
REPLACE INTO `item_mods` VALUES (23606, 14, 20); --fallens flanchard +3 -- CHR
REPLACE INTO `item_mods` VALUES (23606, 25, 39); --fallens flanchard +3 -- ACC
REPLACE INTO `item_mods` VALUES (23606, 23, 64); --fallens flanchard +3 -- ATT
REPLACE INTO `item_mods` VALUES (23606, 30, 39); --fallens flanchard +3 -- MACC
REPLACE INTO `item_mods` VALUES (23606, 68, 42); --fallens flanchard +3 -- EVA
REPLACE INTO `item_mods` VALUES (23606, 31, 84); --fallens flanchard +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23606, 29, 10); --fallens flanchard +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23606, 116, 18); --fallens flanchard +3 -- DARK
REPLACE INTO `item_mods` VALUES (23606, 840, 10); --fallens flanchard +3 -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods` VALUES (23606, 384, 500); --fallens flanchard +3 -- HASTE_GEAR
-- Flamma Dirs +2
REPLACE INTO `item_mods` VALUES (25886,1,135);   -- DEF: 135
REPLACE INTO `item_mods` VALUES (25886,2,100);   -- HP: 100
REPLACE INTO `item_mods` VALUES (25886,5,25);    -- MP: 25
REPLACE INTO `item_mods` VALUES (25886,8,53);    -- STR: 53
REPLACE INTO `item_mods` VALUES (25886,9,11);     -- DEX: 11
REPLACE INTO `item_mods` VALUES (25886,10,29);   -- VIT: 29
REPLACE INTO `item_mods` VALUES (25886,11,16);   -- AGI: 16
REPLACE INTO `item_mods` VALUES (25886,12,24);   -- INT: 24
REPLACE INTO `item_mods` VALUES (25886,13,14);   -- MND: 14
REPLACE INTO `item_mods` VALUES (25886,14,11);   -- CHR: 11
REPLACE INTO `item_mods` VALUES (25886,25,45);   -- ACC: 45
REPLACE INTO `item_mods` VALUES (25886,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25886,30,45);   -- MACC: 45
REPLACE INTO `item_mods` VALUES (25886,31,86);   -- MEVA: 86
REPLACE INTO `item_mods` VALUES (25886,68,41);   -- EVA: 41
REPLACE INTO `item_mods` VALUES (25886,73,8);    -- STORETP: 8
REPLACE INTO `item_mods` VALUES (25886,375,9);   -- CURE_POTENCY_RCVD: 9
REPLACE INTO `item_mods` VALUES (25886,384,400); -- HASTE_GEAR: 400
-- Flamma Gambieras +2
REPLACE INTO `item_mods` VALUES (25953,1,93);    -- DEF: 93
REPLACE INTO `item_mods` VALUES (25953,2,40);    -- HP: 40
REPLACE INTO `item_mods` VALUES (25953,5,10);    -- MP: 10
REPLACE INTO `item_mods` VALUES (25953,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (25953,9,34);    -- DEX: 34
REPLACE INTO `item_mods` VALUES (25953,10,20);   -- VIT: 20
REPLACE INTO `item_mods` VALUES (25953,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25953,13,6);    -- MND: 6
REPLACE INTO `item_mods` VALUES (25953,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25953,25,42);   -- ACC: 42
REPLACE INTO `item_mods` VALUES (25953,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25953,30,42);   -- MACC: 42
REPLACE INTO `item_mods` VALUES (25953,31,86);   -- MEVA: 86
REPLACE INTO `item_mods` VALUES (25953,68,74);   -- EVA: 74
REPLACE INTO `item_mods` VALUES (25953,73,6);    -- STORETP: 6
REPLACE INTO `item_mods` VALUES (25953,288,6);   -- DOUBLE_ATTACK: 6
REPLACE INTO `item_mods` VALUES (25953,384,200); -- HASTE_GEAR: 200
-- Flamma Korazin +2	
REPLACE INTO `item_mods` VALUES (25797,1,140);   -- DEF: 140
REPLACE INTO `item_mods` VALUES (25797,2,140);    -- HP: 140
REPLACE INTO `item_mods` VALUES (25797,5,35);    -- MP: 35
REPLACE INTO `item_mods` VALUES (25797,8,43);    -- STR: 43
REPLACE INTO `item_mods` VALUES (25797,9,39);    -- DEX: 39
REPLACE INTO `item_mods` VALUES (25797,10,32);   -- VIT: 32
REPLACE INTO `item_mods` VALUES (25797,11,20);   -- AGI: 20
REPLACE INTO `item_mods` VALUES (25797,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (25797,13,20);   -- MND: 20
REPLACE INTO `item_mods` VALUES (25797,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25797,25,46);   -- ACC: 46
REPLACE INTO `item_mods` VALUES (25797,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25797,30,46);   -- MACC: 46
REPLACE INTO `item_mods` VALUES (25797,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25797,68,55);   -- EVA: 55
REPLACE INTO `item_mods` VALUES (25797,73,9);    -- STORETP: 9
REPLACE INTO `item_mods` VALUES (25797,289,17);   -- Subtle_Blow: 17
REPLACE INTO `item_mods` VALUES (25797,384,200); -- HASTE_GEAR: 200
-- flamma manopolas +2
REPLACE INTO `item_mods` VALUES (25835, 1, 111); --flamma manopolas +2 -- DEF
REPLACE INTO `item_mods` VALUES (25835, 2, 60); --flamma manopolas +2 -- HP
REPLACE INTO `item_mods` VALUES (25835, 5, 15); --flamma manopolas +2 -- MP
REPLACE INTO `item_mods` VALUES (25835, 8, 23); --flamma manopolas +2 -- STR
REPLACE INTO `item_mods` VALUES (25835, 9, 46); --flamma manopolas +2 -- DEX
REPLACE INTO `item_mods` VALUES (25835, 10, 35); --flamma manopolas +2 -- VIT
REPLACE INTO `item_mods` VALUES (25835, 11, 8); --flamma manopolas +2 -- AGI
REPLACE INTO `item_mods` VALUES (25835, 12, 7); --flamma manopolas +2 -- INT
REPLACE INTO `item_mods` VALUES (25835, 13, 24); --flamma manopolas +2 -- MND
REPLACE INTO `item_mods` VALUES (25835, 14, 17); --flamma manopolas +2 -- CHR
REPLACE INTO `item_mods` VALUES (25835, 25, 43); --flamma manopolas +2 -- ACC
REPLACE INTO `item_mods` VALUES (25835, 30, 43); --flamma manopolas +2 -- MACC
REPLACE INTO `item_mods` VALUES (25835, 68, 36); --flamma manopolas +2 -- EVA
REPLACE INTO `item_mods` VALUES (25835, 31, 48); --flamma manopolas +2 -- MEVA
REPLACE INTO `item_mods` VALUES (25835, 29, 2); --flamma manopolas +2 -- MDEF
REPLACE INTO `item_mods` VALUES (25835, 73, 6); --flamma manopolas +2 -- STORETP
REPLACE INTO `item_mods` VALUES (25835, 165, 8); --flamma manopolas +2 -- CRITHITRATE
REPLACE INTO `item_mods` VALUES (25835,384,400); --flamma manopolas +2 -- HASTE_GEAR
-- Forfend  
REPLACE INTO `item_mods` VALUES (26401, 1, 140); --Forfend -- DEF
REPLACE INTO `item_mods` VALUES (26401, 2, 22); --Forfend -- HP
REPLACE INTO `item_mods` VALUES (26401, 5, 29); --Forfend -- MP
REPLACE INTO `item_mods` VALUES (26401, 30, 15); --Forfend -- MACC
REPLACE INTO `item_mods` VALUES (26401, 109, 107); --Forfend -- SHIELD
REPLACE INTO `item_mods` VALUES (26401, 518, 4); --Forfend -- SHIELDBLOCKRATE
REPLACE INTO `item_mods` VALUES (26401, 161, -300); --Forfend -- DMGPHYS
-- Forfend +1
REPLACE INTO `item_mods` VALUES (26402, 1, 142); --Forfend +1 -- DEF
REPLACE INTO `item_mods` VALUES (26402, 2, 22); --Forfend +1 -- HP
REPLACE INTO `item_mods` VALUES (26402, 5, 29); --Forfend +1 -- MP
REPLACE INTO `item_mods` VALUES (26402, 30, 16); --Forfend +1 -- MACC
REPLACE INTO `item_mods` VALUES (26402, 109, 107); --Forfend +1 -- SHIELD
REPLACE INTO `item_mods` VALUES (26402, 518, 5); --Forfend +1 -- SHIELDBLOCKRATE
REPLACE INTO `item_mods` VALUES (26402, 161, -400); --Forfend +1 -- DMGPHYS
-- Futhark bandeau +3
REPLACE INTO `item_mods` VALUES (23419, 1, 124); -- futhark bandeau +3 -- DEF
REPLACE INTO `item_mods` VALUES (23419, 2, 56); -- futhark bandeau +3 -- HP
REPLACE INTO `item_mods` VALUES (23419, 5, 88); -- futhark bandeau +3 -- MP
REPLACE INTO `item_mods` VALUES (23419, 8, 23); -- futhark bandeau +3 -- STR
REPLACE INTO `item_mods` VALUES (23419, 9, 27); -- futhark bandeau +3 -- DEX
REPLACE INTO `item_mods` VALUES (23419, 10, 30); -- futhark bandeau +3 -- VIT
REPLACE INTO `item_mods` VALUES (23419, 11, 34); -- futhark bandeau +3 -- AGI
REPLACE INTO `item_mods` VALUES (23419, 12, 23); -- futhark bandeau +3 -- INT
REPLACE INTO `item_mods` VALUES (23419, 13, 23); -- futhark bandeau +3 -- MND
REPLACE INTO `item_mods` VALUES (23419, 14, 24); -- futhark bandeau +3 -- CHR
REPLACE INTO `item_mods` VALUES (23419, 25, 37); -- futhark bandeau +3 -- ACC
REPLACE INTO `item_mods` VALUES (23419, 23, 62); -- futhark bandeau +3 -- ATT
REPLACE INTO `item_mods` VALUES (23419, 30, 37); -- futhark bandeau +3 -- MACC
REPLACE INTO `item_mods` VALUES (23419, 68, 64); -- futhark bandeau +3 -- EVA
REPLACE INTO `item_mods` VALUES (23419, 31, 73); -- futhark bandeau +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23419, 29, 4); -- futhark bandeau +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23419, 384, 800); -- futhark bandeau +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23419, 301, 7); -- futhark bandeau +3 -- PHALANX
REPLACE INTO `item_mods` VALUES (23419, 161, -600); -- futhark bandeau +3 -- DMGPHYS
-- Futhark coat +3
REPLACE INTO `item_mods` VALUES (23486, 1, 156); -- futhark coat +3 -- DEF
REPLACE INTO `item_mods` VALUES (23486, 2, 119); -- futhark coat +3 -- HP
REPLACE INTO `item_mods` VALUES (23486, 5, 104); -- futhark coat +3 -- MP
REPLACE INTO `item_mods` VALUES (23486, 8, 34); -- futhark coat +3 -- STR
REPLACE INTO `item_mods` VALUES (23486, 9, 39); -- futhark coat +3 -- DEX
REPLACE INTO `item_mods` VALUES (23486, 10, 34); -- futhark coat +3 -- VIT
REPLACE INTO `item_mods` VALUES (23486, 11, 38); -- futhark coat +3 -- AGI
REPLACE INTO `item_mods` VALUES (23486, 12, 33); -- futhark coat +3 -- INT
REPLACE INTO `item_mods` VALUES (23486, 13, 33); -- futhark coat +3 -- MND
REPLACE INTO `item_mods` VALUES (23486, 14, 33); -- futhark coat +3 -- CHR
REPLACE INTO `item_mods` VALUES (23486, 25, 40); -- futhark coat +3 -- ACC
REPLACE INTO `item_mods` VALUES (23486, 23, 65); -- futhark coat +3 -- ATT
REPLACE INTO `item_mods` VALUES (23486, 30, 40); -- futhark coat +3 -- MACC
REPLACE INTO `item_mods` VALUES (23486, 68, 69); -- futhark coat +3 -- EVA
REPLACE INTO `item_mods` VALUES (23486, 31, 84); -- futhark coat +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23486, 29, 8); -- futhark coat +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23486, 384, 400); -- futhark coat +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23486, 370, 5); -- futhark coat +3 -- REGEN
REPLACE INTO `item_mods` VALUES (23486, 1009, 5); -- futhark coat +3 -- LIEMENT
REPLACE INTO `item_mods` VALUES (23486, 160, -900); -- futhark coat +3 -- DMG
-- Futhark mitons +3
REPLACE INTO `item_mods` VALUES (23553, 1, 112); --futhark mitons +3 -- DEF
REPLACE INTO `item_mods` VALUES (23553, 2, 45); --futhark mitons +3 -- HP
REPLACE INTO `item_mods` VALUES (23553, 8, 21); --futhark mitons +3 -- STR
REPLACE INTO `item_mods` VALUES (23553, 9, 45); --futhark mitons +3 -- DEX
REPLACE INTO `item_mods` VALUES (23553, 10, 42); --futhark mitons +3 -- VIT
REPLACE INTO `item_mods` VALUES (23553, 11, 15); --futhark mitons +3 -- AGI
REPLACE INTO `item_mods` VALUES (23553, 12, 22); --futhark mitons +3 -- INT
REPLACE INTO `item_mods` VALUES (23553, 13, 40); --futhark mitons +3 -- MND
REPLACE INTO `item_mods` VALUES (23553, 14, 27); --futhark mitons +3 -- CHR
REPLACE INTO `item_mods` VALUES (23553, 25, 38); --futhark mitons +3 -- ACC
REPLACE INTO `item_mods` VALUES (23553, 23, 81); --futhark mitons +3 -- ATT
REPLACE INTO `item_mods` VALUES (23553, 30, 38); --futhark mitons +3 -- MACC
REPLACE INTO `item_mods` VALUES (23553, 68, 44); --futhark mitons +3 -- EVA
REPLACE INTO `item_mods` VALUES (23553, 31, 57); --futhark mitons +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23553, 29, 8); --futhark mitons +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23553, 384, 500); --futhark mitons +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23553, 27, 6); --futhark mitons +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23553, 1008, 9); -- futhark mitons +3 -- SWORDPLAY
-- Futhark trousers +3 
REPLACE INTO `item_mods` VALUES (23620, 1, 139); -- futhark trousers +3 -- DEF
REPLACE INTO `item_mods` VALUES (23620, 2, 107); -- futhark trousers +3 -- HP
REPLACE INTO `item_mods` VALUES (23620, 8, 39); -- futhark trousers +3 -- STR
REPLACE INTO `item_mods` VALUES (23620, 10, 26); -- futhark trousers +3 -- VIT
REPLACE INTO `item_mods` VALUES (23620, 11, 30); -- futhark trousers +3 -- AGI
REPLACE INTO `item_mods` VALUES (23620, 12, 40); -- futhark trousers +3 -- INT
REPLACE INTO `item_mods` VALUES (23620, 13, 27); -- futhark trousers +3 -- MND
REPLACE INTO `item_mods` VALUES (23620, 14, 21); -- futhark trousers +3 -- CHR
REPLACE INTO `item_mods` VALUES (23620, 25, 39); -- futhark trousers +3 -- ACC
REPLACE INTO `item_mods` VALUES (23620, 23, 64); -- futhark trousers +3 -- ATT
REPLACE INTO `item_mods` VALUES (23620, 30, 39); -- futhark trousers +3 -- MACC
REPLACE INTO `item_mods` VALUES (23620, 68, 58); -- futhark trousers +3 -- EVA
REPLACE INTO `item_mods` VALUES (23620, 31, 89); -- futhark trousers +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23620, 29, 7); -- futhark trousers +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23620, 890, 30); -- futhark trousers +3 -- ENH_MAGIC_DURATION
REPLACE INTO `item_mods` VALUES (23620, 384, 600); -- futhark trousers +3 -- HASTE_GEAR
-- TODO: Enhancing magic casting time: -15%
-- Imperial Wing Hairpin
REPLACE INTO `item_mods` VALUES (26709,68,69); -- EVA: 70
-- Gazu bracelets
REPLACE INTO `item_mods` VALUES (27150, 1, 90); -- gazu bracelets -- Def
REPLACE INTO `item_mods` VALUES (27150, 2, 27); -- gazu bracelets -- hp
REPLACE INTO `item_mods` VALUES (27150, 8, 10); -- gazu bracelets -- str
REPLACE INTO `item_mods` VALUES (27150, 9, 32); -- gazu bracelets -- dex
REPLACE INTO `item_mods` VALUES (27150, 10, 32); -- gazu bracelets -- vit
REPLACE INTO `item_mods` VALUES (27150, 11, 6); -- gazu bracelets -- agi
REPLACE INTO `item_mods` VALUES (27150, 12, 14); -- gazu bracelets -- int
REPLACE INTO `item_mods` VALUES (27150, 13, 29); -- gazu bracelets -- mnd
REPLACE INTO `item_mods` VALUES (27150, 14, 19); -- gazu bracelets -- chr
REPLACE INTO `item_mods` VALUES (27150, 25, 30); -- gazu bracelets -- acc
REPLACE INTO `item_mods` VALUES (27150, 23, -18); -- gazu bracelets -- att
REPLACE INTO `item_mods` VALUES (27150, 68, 22); -- gazu bracelets -- eva
REPLACE INTO `item_mods` VALUES (27150, 31, 43); -- gazu bracelets -- mag eva
REPLACE INTO `item_mods` VALUES (27150, 29, 2); -- gazu bracelets -- mdef
REPLACE INTO `item_mods` VALUES (27150, 384, 500); -- gazu bracelets -- haste
-- Gazu bracelets +1
REPLACE INTO `item_mods` VALUES (27151, 1, 91); -- gazu bracelets +1 -- Def
REPLACE INTO `item_mods` VALUES (27151, 2, 27); -- gazu bracelets +1 -- hp
REPLACE INTO `item_mods` VALUES (27151, 8, 10); -- gazu bracelets +1 -- str
REPLACE INTO `item_mods` VALUES (27151, 9, 32); -- gazu bracelets +1 -- dex
REPLACE INTO `item_mods` VALUES (27151, 10, 32); -- gazu bracelets +1 -- vit
REPLACE INTO `item_mods` VALUES (27151, 11, 6); -- gazu bracelets +1 -- agi
REPLACE INTO `item_mods` VALUES (27151, 12, 14); -- gazu bracelets +1 -- int
REPLACE INTO `item_mods` VALUES (27151, 13, 29); -- gazu bracelets +1 -- mnd
REPLACE INTO `item_mods` VALUES (27151, 14, 19); -- gazu bracelets +1 -- chr
REPLACE INTO `item_mods` VALUES (27151, 25, 31); -- gazu bracelets +1 -- acc
REPLACE INTO `item_mods` VALUES (27151, 23, -17); -- gazu bracelets +1 -- att
REPLACE INTO `item_mods` VALUES (27151, 68, 22); -- gazu bracelets +1 -- eva
REPLACE INTO `item_mods` VALUES (27151, 31, 43); -- gazu bracelets +1 -- mag eva
REPLACE INTO `item_mods` VALUES (27151, 29, 2); -- gazu bracelets +1 -- mdef
REPLACE INTO `item_mods` VALUES (27151, 384, 500); -- gazu bracelets +1 -- haste
-- Gefechtdiechlings
REPLACE INTO `item_mods` VALUES (27224, 1, 125); --gefechtdiechlings -- DEF
REPLACE INTO `item_mods` VALUES (27224, 2, 50); --gefechtdiechlings -- HP
REPLACE INTO `item_mods` VALUES (27224, 5, 30); --gefechtdiechlings -- MP
REPLACE INTO `item_mods` VALUES (27224, 8, 33); --gefechtdiechlings -- STR
REPLACE INTO `item_mods` VALUES (27224, 10, 24); --gefechtdiechlings -- VIT
REPLACE INTO `item_mods` VALUES (27224, 11, 15); --gefechtdiechlings -- AGI
REPLACE INTO `item_mods` VALUES (27224, 12, 26); --gefechtdiechlings -- INT
REPLACE INTO `item_mods` VALUES (27224, 13, 16); --gefechtdiechlings -- MND
REPLACE INTO `item_mods` VALUES (27224, 14, 12); --gefechtdiechlings -- CHR
REPLACE INTO `item_mods` VALUES (27224, 23, 10); --gefechtdiechlings -- ATT
REPLACE INTO `item_mods` VALUES (27224, 68, 22); --gefechtdiechlings -- EVA
REPLACE INTO `item_mods` VALUES (27224, 31, 75); --gefechtdiechlings -- MEVA
REPLACE INTO `item_mods` VALUES (27224, 29, 3); --gefechtdiechlings -- MDEF
REPLACE INTO `item_mods` VALUES (27224, 384, 500); --gefechtdiechlings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27224, 288, 1); --gefechtdiechlings -- DOUBLE_ATTACK
-- Gefechtschaller
REPLACE INTO `item_mods` VALUES (26722, 1, 113); --gefechtschaller -- DEF
REPLACE INTO `item_mods` VALUES (26722, 2, 38); --gefechtschaller -- HP
REPLACE INTO `item_mods` VALUES (26722, 5, 43); --gefechtschaller -- MP
REPLACE INTO `item_mods` VALUES (26722, 8, 26); --gefechtschaller -- STR
REPLACE INTO `item_mods` VALUES (26722, 9, 22); --gefechtschaller -- DEX
REPLACE INTO `item_mods` VALUES (26722, 10, 24); --gefechtschaller -- VIT
REPLACE INTO `item_mods` VALUES (26722, 11, 21); --gefechtschaller -- AGI
REPLACE INTO `item_mods` VALUES (26722, 12, 20); --gefechtschaller -- INT
REPLACE INTO `item_mods` VALUES (26722, 13, 20); --gefechtschaller -- MND
REPLACE INTO `item_mods` VALUES (26722, 14, 20); --gefechtschaller -- CHR
REPLACE INTO `item_mods` VALUES (26722, 25, 10); --gefechtschaller -- ACC
REPLACE INTO `item_mods` VALUES (26722, 68, 33); --gefechtschaller -- EVA
REPLACE INTO `item_mods` VALUES (26722, 31, 43); --gefechtschaller -- MEVA
REPLACE INTO `item_mods` VALUES (26722, 29, 2); --gefechtschaller -- MDEF
REPLACE INTO `item_mods` VALUES (26722, 384, 700); --gefechtschaller -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26722, 73, 4); --gefechtschaller -- STORETP
-- Gleti's Breeches
REPLACE INTO `item_mods` VALUES (23777,1,165);    -- DEF: 165
REPLACE INTO `item_mods` VALUES (23777,2,79);     -- HP: 79
REPLACE INTO `item_mods` VALUES (23777,8,49);     -- STR: 49
REPLACE INTO `item_mods` VALUES (23777,10,37);    -- VIT: 37
REPLACE INTO `item_mods` VALUES (23777,11,23);    -- AGI: 23
REPLACE INTO `item_mods` VALUES (23777,12,30);    -- INT: 30
REPLACE INTO `item_mods` VALUES (23777,13,20);    -- MND: 20
REPLACE INTO `item_mods` VALUES (23777,14,17);    -- CHR: 17
REPLACE INTO `item_mods` VALUES (23777,23,40);    -- ATT: 40
REPLACE INTO `item_mods` VALUES (23777,25,40);    -- ACC: 40
REPLACE INTO `item_mods` VALUES (23777,29,14);    -- MDEF: 14
REPLACE INTO `item_mods` VALUES (23777,30,40);    -- MACC: 40
REPLACE INTO `item_mods` VALUES (23777,31,112);   -- MEVA: 112
REPLACE INTO `item_mods` VALUES (23777,68,77);   -- EVA: 77
REPLACE INTO `item_mods` VALUES (23777,161,-500); -- DMGPHYS: -500
REPLACE INTO `item_mods` VALUES (23777,165,7);    -- CRITHITRATE: 7
REPLACE INTO `item_mods` VALUES (23777,368,3);   -- REGAIN: 3
REPLACE INTO `item_mods` VALUES (23777,384,500);  -- HASTE_GEAR: 500
REPLACE INTO `item_mods` VALUES (23777,1080,8);  -- DAMAGE_LIMIT: 8
-- Gleti's Boots
REPLACE INTO `item_mods` VALUES (23784,1080,5);  -- DAMAGE_LIMIT: 5
REPLACE INTO `item_mods_pet` VALUES (23784, 1040, 1, 1);   -- pet AVATAR_LVL_BONUS
REPLACE INTO `item_mods_pet` VALUES (23784, 1044, 1, 3);   -- pet AUTOMATON_LVL_BONUS
REPLACE INTO `item_mods_pet` VALUES (23784, 1043, 1, 2);   -- pet WYVERN_LVL_BONUS
-- Glyphic bracers +3 
REPLACE INTO `item_mods` VALUES (23546, 1, 101); -- glyphic bracers +3 -- DEF
REPLACE INTO `item_mods` VALUES (23546, 2, 38); -- glyphic bracers +3 -- HP
REPLACE INTO `item_mods` VALUES (23546, 5, 61); -- glyphic bracers +3 -- MP
REPLACE INTO `item_mods` VALUES (23546, 8, 16); -- glyphic bracers +3 -- STR
REPLACE INTO `item_mods` VALUES (23546, 9, 38); -- glyphic bracers +3 -- DEX
REPLACE INTO `item_mods` VALUES (23546, 10, 34); -- glyphic bracers +3 -- VIT
REPLACE INTO `item_mods` VALUES (23546, 11, 15); -- glyphic bracers +3 -- AGI
REPLACE INTO `item_mods` VALUES (23546, 12, 29); -- glyphic bracers +3 -- INT
REPLACE INTO `item_mods` VALUES (23546, 13, 43); -- glyphic bracers +3 -- MND
REPLACE INTO `item_mods` VALUES (23546, 14, 29); -- glyphic bracers +3 -- CHR
REPLACE INTO `item_mods` VALUES (23546, 25, 38); -- glyphic bracers +3 -- ACC
REPLACE INTO `item_mods` VALUES (23546, 23, 63); -- glyphic bracers +3 -- ATT
REPLACE INTO `item_mods` VALUES (23546, 30, 38); -- glyphic bracers +3 -- MACC
REPLACE INTO `item_mods` VALUES (23546, 68, 42); -- glyphic bracers +3 -- EVA
REPLACE INTO `item_mods` VALUES (23546, 31, 57); -- glyphic bracers +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23546, 29, 5); -- glyphic bracers +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23546, 117, 23); -- glyphic bracers +3 -- SUMMONING
REPLACE INTO `item_mods` VALUES (23546, 384, 300); -- glyphic bracers +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23546, 357, 8); -- glyphic bracers +3 -- BP_DELAY
REPLACE INTO `item_mods_pet` VALUES (23546, 384, 900, 1); -- glyphic bracers +3 -- AVATAR_HASTE
-- Glyphic doublet +3
REPLACE INTO `item_mods` VALUES (23479, 1, 143); -- glyphic doublet +3 -- DEF
REPLACE INTO `item_mods` VALUES (23479, 2, 70); -- glyphic doublet +3 -- HP
REPLACE INTO `item_mods` VALUES (23479, 5, 135); -- glyphic doublet +3 -- MP
REPLACE INTO `item_mods` VALUES (23479, 8, 31); -- glyphic doublet +3 -- STR
REPLACE INTO `item_mods` VALUES (23479, 9, 30); -- glyphic doublet +3 -- DEX
REPLACE INTO `item_mods` VALUES (23479, 10, 31); -- glyphic doublet +3 -- VIT
REPLACE INTO `item_mods` VALUES (23479, 11, 31); -- glyphic doublet +3 -- AGI
REPLACE INTO `item_mods` VALUES (23479, 12, 39); -- glyphic doublet +3 -- INT
REPLACE INTO `item_mods` VALUES (23479, 13, 39); -- glyphic doublet +3 -- MND
REPLACE INTO `item_mods` VALUES (23479, 14, 39); -- glyphic doublet +3 -- CHR
REPLACE INTO `item_mods` VALUES (23479, 25, 40); -- glyphic doublet +3 -- ACC
REPLACE INTO `item_mods` VALUES (23479, 23, 65); -- glyphic doublet +3 -- ATT
REPLACE INTO `item_mods` VALUES (23479, 30, 40); -- glyphic doublet +3 -- MACC
REPLACE INTO `item_mods` VALUES (23479, 68, 61); -- glyphic doublet +3 -- EVA
REPLACE INTO `item_mods` VALUES (23479, 31, 100); -- glyphic doublet +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23479, 29, 8); -- glyphic doublet +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23479, 384, 300); -- glyphic doublet +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23479, 371, -6); -- glyphic doublet +3 -- AVATAR_PERPETUATION
REPLACE INTO `item_mods` VALUES (23479, 541, 4); -- glyphic doublet +3 -- BP_DELAY_II
REPLACE INTO `item_mods_pet` VALUES (23479, 288, 15, 1); -- glyphic doublet +3 -- Avatar Double_Attack
REPLACE INTO `item_mods_pet` VALUES (23479, 165, 20, 1); -- glyphic doublet +3 -- Avatar CRITHITRATE
-- Glyphic horn +3
REPLACE INTO `item_mods` VALUES (23412, 1, 113); -- glyphic horn +3 -- DEF
REPLACE INTO `item_mods` VALUES (23412, 2, 51); -- glyphic horn +3 -- HP
REPLACE INTO `item_mods` VALUES (23412, 5, 115); -- glyphic horn +3 -- MP
REPLACE INTO `item_mods` VALUES (23412, 8, 22); -- glyphic horn +3 -- STR
REPLACE INTO `item_mods` VALUES (23412, 9, 24); -- glyphic horn +3 -- DEX
REPLACE INTO `item_mods` VALUES (23412, 10, 24); -- glyphic horn +3 -- VIT
REPLACE INTO `item_mods` VALUES (23412, 11, 24); -- glyphic horn +3 -- AGI
REPLACE INTO `item_mods` VALUES (23412, 12, 29); -- glyphic horn +3 -- INT
REPLACE INTO `item_mods` VALUES (23412, 13, 29); -- glyphic horn +3 -- MND
REPLACE INTO `item_mods` VALUES (23412, 14, 29); -- glyphic horn +3 -- CHR
REPLACE INTO `item_mods` VALUES (23412, 25, 37); -- glyphic horn +3 -- ACC
REPLACE INTO `item_mods` VALUES (23412, 23, 62); -- glyphic horn +3 -- ATT
REPLACE INTO `item_mods` VALUES (23412, 30, 37); -- glyphic horn +3 -- MACC
REPLACE INTO `item_mods` VALUES (23412, 68, 56); -- glyphic horn +3 -- EVA
REPLACE INTO `item_mods` VALUES (23412, 31, 95); -- glyphic horn +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23412, 29, 7); -- glyphic horn +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23412, 384, 600); -- glyphic horn +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23412, 371, -5); -- glyphic horn +3 -- AVATAR_PERPETUATION
REPLACE INTO `item_mods` VALUES (23412, 357, -10); -- glyphic horn +3 -- BP_DELAY
REPLACE INTO `item_mods_pet` VALUES (23412, 23, 62, 1); -- glyphic doublet +3 -- Avatar ATT
REPLACE INTO `item_mods_pet` VALUES (23412, 28, 60, 1); -- glyphic doublet +3 -- Avatar MATT
-- Glyphic spats +3
REPLACE INTO `item_mods` VALUES (23613, 1, 123); -- glyphic spats +3 -- DEF
REPLACE INTO `item_mods` VALUES (23613, 2, 58); -- glyphic spats +3 -- HP
REPLACE INTO `item_mods` VALUES (23613, 5, 105); -- glyphic spats +3 -- MP
REPLACE INTO `item_mods` VALUES (23613, 8, 35); -- glyphic spats +3 -- STR
REPLACE INTO `item_mods` VALUES (23613, 10, 21); -- glyphic spats +3 -- VIT
REPLACE INTO `item_mods` VALUES (23613, 11, 27); -- glyphic spats +3 -- AGI
REPLACE INTO `item_mods` VALUES (23613, 12, 44); -- glyphic spats +3 -- INT
REPLACE INTO `item_mods` VALUES (23613, 13, 34); -- glyphic spats +3 -- MND
REPLACE INTO `item_mods` VALUES (23613, 14, 29); -- glyphic spats +3 -- CHR
REPLACE INTO `item_mods` VALUES (23613, 25, 39); -- glyphic spats +3 -- ACC
REPLACE INTO `item_mods` VALUES (23613, 23, 64); -- glyphic spats +3 -- ATT
REPLACE INTO `item_mods` VALUES (23613, 30, 39); -- glyphic spats +3 -- MACC
REPLACE INTO `item_mods` VALUES (23613, 68, 47); -- glyphic spats +3 -- EVA
REPLACE INTO `item_mods` VALUES (23613, 31, 127); -- glyphic spats +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23613, 29, 8); -- glyphic spats +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23613, 384, 500); -- glyphic spats +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23613, 357, 8); -- glyphic spats +3 -- BP_DELAY
REPLACE INTO `item_mods_pet` VALUES (23613, 28, 51, 1); -- glyphic spats +3 -- AVATAR_MATT
REPLACE INTO `item_mods_pet` VALUES (23613, 30,45,1); -- glyphic spats +3 -- AVATAR_MACC
-- Hashishin bazubands +3
REPLACE INTO `item_mods` VALUES (23569,1,120);    -- DEF: 120
REPLACE INTO `item_mods` VALUES (23569,2,55);     -- HP: 55
REPLACE INTO `item_mods` VALUES (23569,5,47);     -- MP: 47
REPLACE INTO `item_mods` VALUES (23569,8,16);     -- STR: 16
REPLACE INTO `item_mods` VALUES (23569,9,43);     -- DEX: 43
REPLACE INTO `item_mods` VALUES (23569,10,39);    -- VIT: 39
REPLACE INTO `item_mods` VALUES (23569,11,15);    -- AGI: 15
REPLACE INTO `item_mods` VALUES (23569,12,33);    -- INT: 33
REPLACE INTO `item_mods` VALUES (23569,13,50);    -- MND: 50
REPLACE INTO `item_mods` VALUES (23569,14,29);    -- CHR: 29
REPLACE INTO `item_mods` VALUES (23569,23,62);    -- ATT: 62
REPLACE INTO `item_mods` VALUES (23569,25,62);    -- ACC: 62
REPLACE INTO `item_mods` VALUES (23569,27,-5);    -- ENMITY: -5
REPLACE INTO `item_mods` VALUES (23569,28,57);    -- MATT: 57
REPLACE INTO `item_mods` VALUES (23569,29,7);     -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23569,30,62);    -- MACC: 62
REPLACE INTO `item_mods` VALUES (23569,31,87);    -- MEVA: 87
REPLACE INTO `item_mods` VALUES (23569,68,74 );    -- EVA: 74 
REPLACE INTO `item_mods` VALUES (23569,160,-1000); -- DMG: -10%
REPLACE INTO `item_mods` VALUES (23569,384,300);  -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (23569,1147,-16);  -- BLUE_MAGIC_RECAST: -16%
-- Hashishin Kavuk +3
REPLACE INTO `item_mods` VALUES (23435,1,132);   -- DEF: 132
REPLACE INTO `item_mods` VALUES (23435,2,66);    -- HP: 66
REPLACE INTO `item_mods` VALUES (23435,5,65);    -- MP: 65
REPLACE INTO `item_mods` VALUES (23435,8,28);    -- STR: 28
REPLACE INTO `item_mods` VALUES (23435,9,29);    -- DEX: 29
REPLACE INTO `item_mods` VALUES (23435,10,28);   -- VIT: 28
REPLACE INTO `item_mods` VALUES (23435,11,28);   -- AGI: 28
REPLACE INTO `item_mods` VALUES (23435,12,34);   -- INT: 34
REPLACE INTO `item_mods` VALUES (23435,13,35);   -- MND: 35
REPLACE INTO `item_mods` VALUES (23435,14,30);   -- CHR: 30
REPLACE INTO `item_mods` VALUES (23435,23,61);   -- ATT: 61
REPLACE INTO `item_mods` VALUES (23435,25,61);   -- ACC: 61
REPLACE INTO `item_mods` VALUES (23435,28,51);   -- MATT: 51
REPLACE INTO `item_mods` VALUES (23435,29,10);    -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23435,30,61);   -- MACC: 61
REPLACE INTO `item_mods` VALUES (23435,31,125);  -- MEVA: 125
REPLACE INTO `item_mods` VALUES (23435,68,88);   -- EVA: 88
REPLACE INTO `item_mods` VALUES (23435,82,30);   -- SWORD: 30
REPLACE INTO `item_mods` VALUES (23435,384,800); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23435,840,12);   -- ALL_WSDMG_ALL_HITS
-- Hashishin Mintan +3
REPLACE INTO `item_mods` VALUES (23502,1,164);     -- DEF: 164
REPLACE INTO `item_mods` VALUES (23502,2,87);      -- HP: 87
REPLACE INTO `item_mods` VALUES (23502,5,91);      -- MP: 91
REPLACE INTO `item_mods` VALUES (23502,8,34);      -- STR: 34
REPLACE INTO `item_mods` VALUES (23502,9,34);      -- DEX: 34
REPLACE INTO `item_mods` VALUES (23502,10,30);     -- VIT: 30
REPLACE INTO `item_mods` VALUES (23502,11,30);     -- AGI: 30
REPLACE INTO `item_mods` VALUES (23502,12,45);     -- INT: 45
REPLACE INTO `item_mods` VALUES (23502,13,45);     -- MND: 45
REPLACE INTO `item_mods` VALUES (23502,14,35);     -- CHR: 35
REPLACE INTO `item_mods` VALUES (23502,23,64);     -- ATT: 64
REPLACE INTO `item_mods` VALUES (23502,25,64);     -- ACC: 64
REPLACE INTO `item_mods` VALUES (23502,28,54);     -- MATT: 54
REPLACE INTO `item_mods` VALUES (23502,29,11);     -- MDEF: 11
REPLACE INTO `item_mods` VALUES (23502,30,64);     -- MACC: 64
REPLACE INTO `item_mods` VALUES (23502,31,136);    -- MEVA: 136
REPLACE INTO `item_mods` VALUES (23502,68,91);     -- EVA: 91
REPLACE INTO `item_mods` VALUES (23502,160,-1300); -- DMG: -13%
REPLACE INTO `item_mods` VALUES (23502,369,4);     -- REFRESH: 4
REPLACE INTO `item_mods` VALUES (23502,384,400);   -- HASTE_GEAR: 4%
-- TODO: Blue magic spellcasting time -16%
-- Hashishin Tayt +3
REPLACE INTO `item_mods` VALUES (23636,1,143);   -- DEF: 143
REPLACE INTO `item_mods` VALUES (23636,2,75);    -- HP: 75
REPLACE INTO `item_mods` VALUES (23636,5,62);    -- MP: 62
REPLACE INTO `item_mods` VALUES (23636,8,42);    -- STR: 42
REPLACE INTO `item_mods` VALUES (23636,9,20);    -- DEX: 20
REPLACE INTO `item_mods` VALUES (23636,10,20);   -- VIT: 20
REPLACE INTO `item_mods` VALUES (23636,11,30);   -- AGI: 30
REPLACE INTO `item_mods` VALUES (23636,12,48);   -- INT: 48
REPLACE INTO `item_mods` VALUES (23636,13,43);   -- MND: 43
REPLACE INTO `item_mods` VALUES (23636,14,30);   -- CHR: 30
REPLACE INTO `item_mods` VALUES (23636,25,63);   -- ACC: 63
REPLACE INTO `item_mods` VALUES (23636,23,63);   -- ATT: 63
REPLACE INTO `item_mods` VALUES (23636,30,63);   -- MACC: 63
REPLACE INTO `item_mods` VALUES (23636,28,53);   -- MATT: 53
REPLACE INTO `item_mods` VALUES (23636,29,10);   -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23636,31,162);  -- MEVA: 162
REPLACE INTO `item_mods` VALUES (23636,68,77);   -- EVA: 77
REPLACE INTO `item_mods` VALUES (23636,122,33);  -- BLUE: 33
REPLACE INTO `item_mods` VALUES (23636,160,-1200); -- DMG: -12%
REPLACE INTO `item_mods` VALUES (23636,384,500); -- HASTE_GEAR: 500
-- Heidrek Boots   
REPLACE INTO `item_mods` VALUES (23751, 1, 71); --Heidrek Boots    -- DEF
REPLACE INTO `item_mods` VALUES (23751, 2, 22); --Heidrek Boots    -- HP
REPLACE INTO `item_mods` VALUES (23751, 8, 14); --Heidrek Boots    -- STR
REPLACE INTO `item_mods` VALUES (23751, 9, 25); --Heidrek Boots    -- DEX
REPLACE INTO `item_mods` VALUES (23751, 10, 14); --Heidrek Boots    -- VIT
REPLACE INTO `item_mods` VALUES (23751, 11, 38); --Heidrek Boots    -- AGI
REPLACE INTO `item_mods` VALUES (23751, 13, 14); --Heidrek Boots    -- MND
REPLACE INTO `item_mods` VALUES (23751, 14, 32); --Heidrek Boots    -- CHR
REPLACE INTO `item_mods` VALUES (23751, 25, 20); --Heidrek Boots    -- ACC
REPLACE INTO `item_mods` VALUES (23751, 26, 20); --Heidrek Boots    -- RACC
REPLACE INTO `item_mods` VALUES (23751, 30, 20); --Heidrek Boots    -- MACC
REPLACE INTO `item_mods` VALUES (23751, 68, 74); --Heidrek Boots    -- EVA
REPLACE INTO `item_mods` VALUES (23751, 31, 96); --Heidrek Boots    -- MEVA
REPLACE INTO `item_mods` VALUES (23751, 29, 5); --Heidrek Boots    -- MDEF
REPLACE INTO `item_mods` VALUES (23751, 384, 400); --Heidrek Boots    -- HASTE_GEAR
-- Heidrek Brais     
REPLACE INTO `item_mods` VALUES (23748, 1, 113); --Heidrek Brais      -- DEF
REPLACE INTO `item_mods` VALUES (23748, 2, 57); --Heidrek Brais      -- HP
REPLACE INTO `item_mods` VALUES (23748, 8, 30); --Heidrek Brais      -- STR
REPLACE INTO `item_mods` VALUES (23748, 10, 19); --Heidrek Brais      -- VIT
REPLACE INTO `item_mods` VALUES (23748, 11, 21); --Heidrek Brais      -- AGI
REPLACE INTO `item_mods` VALUES (23748, 12, 32); --Heidrek Brais      -- INT
REPLACE INTO `item_mods` VALUES (23748, 13, 19); --Heidrek Brais      -- MND
REPLACE INTO `item_mods` VALUES (23748, 14, 12); --Heidrek Brais      -- CHR
REPLACE INTO `item_mods` VALUES (23748, 25, 20); --Heidrek Brais      -- ACC
REPLACE INTO `item_mods` VALUES (23748, 26, 20); --Heidrek Brais      -- RACC
REPLACE INTO `item_mods` VALUES (23748, 30, 20); --Heidrek Brais      -- MACC
REPLACE INTO `item_mods` VALUES (23748, 68, 52); --Heidrek Brais      -- EVA
REPLACE INTO `item_mods` VALUES (23748, 31, 96); --Heidrek Brais      -- MEVA
REPLACE INTO `item_mods` VALUES (23748, 29, 5); --Heidrek Brais      -- MDEF
REPLACE INTO `item_mods` VALUES (23748, 384, 600); --Heidrek Brais      -- HASTE_GEAR
-- Hes. Crown +2
REPLACE INTO `item_mods` VALUES (23064, 840, 5); --hesychasts crown +2 -- ALL_WSDMG_ALL_HITS
-- Hes. Crown +3
REPLACE INTO `item_mods` VALUES (23399, 840, 10); --hesychasts crown +3 -- ALL_WSDMG_ALL_HITS
-- Hes. Cyclas +3 
REPLACE INTO `item_mods` VALUES (23466, 1, 142); --hesychasts cyclas +3 -- DEF
REPLACE INTO `item_mods` VALUES (23466, 2, 122); --hesychasts cyclas +3 -- HP
REPLACE INTO `item_mods` VALUES (23466, 8, 34); --hesychasts cyclas +3 -- STR
REPLACE INTO `item_mods` VALUES (23466, 9, 35); --hesychasts cyclas +3 -- DEX
REPLACE INTO `item_mods` VALUES (23466, 10, 35); --hesychasts cyclas +3 -- VIT
REPLACE INTO `item_mods` VALUES (23466, 11, 39); --hesychasts cyclas +3 -- AGI
REPLACE INTO `item_mods` VALUES (23466, 12, 34); --hesychasts cyclas +3 -- INT
REPLACE INTO `item_mods` VALUES (23466, 13, 34); --hesychasts cyclas +3 -- MND
REPLACE INTO `item_mods` VALUES (23466, 14, 34); --hesychasts cyclas +3 -- CHR
REPLACE INTO `item_mods` VALUES (23466, 25, 40); --hesychasts cyclas +3 -- ACC
REPLACE INTO `item_mods` VALUES (23466, 23, 65); --hesychasts cyclas +3 -- ATT
REPLACE INTO `item_mods` VALUES (23466, 30, 40); --hesychasts cyclas +3 -- MACC
REPLACE INTO `item_mods` VALUES (23466, 68, 72); --hesychasts cyclas +3 -- EVA
REPLACE INTO `item_mods` VALUES (23466, 31, 73); --hesychasts cyclas +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23466, 29, 6); --hesychasts cyclas +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23466, 384, 400); --hesychasts cyclas +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23466, 291, 5); --hesychasts cyclas +3 -- COUNTER
-- To Do: REPLACE INTO `item_mods` VALUES (23466, , 30); --hesychasts cyclas +3 -- COUNTER_CRIT_RATE 30%
REPLACE INTO `item_mods` VALUES (23466, 370, 5); --hesychasts cyclas +3 -- REGEN
REPLACE INTO `item_mods` VALUES (23466, 160, -500); --hesychasts cyclas +3 -- DMG
-- Hes. Gloves +3
REPLACE INTO `item_mods` VALUES (23533, 1, 96); --hesychasts gloves +3 -- DEF
REPLACE INTO `item_mods` VALUES (23533, 2, 80); --hesychasts gloves +3 -- HP
REPLACE INTO `item_mods` VALUES (23533, 8, 20); --hesychasts gloves +3 -- STR
REPLACE INTO `item_mods` VALUES (23533, 9, 44); --hesychasts gloves +3 -- DEX
REPLACE INTO `item_mods` VALUES (23533, 10, 38); --hesychasts gloves +3 -- VIT
REPLACE INTO `item_mods` VALUES (23533, 11, 16); --hesychasts gloves +3 -- AGI
REPLACE INTO `item_mods` VALUES (23533, 12, 20); --hesychasts gloves +3 -- INT
REPLACE INTO `item_mods` VALUES (23533, 13, 38); --hesychasts gloves +3 -- MND
REPLACE INTO `item_mods` VALUES (23533, 14, 26); --hesychasts gloves +3 -- CHR
REPLACE INTO `item_mods` VALUES (23533, 25, 49); --hesychasts gloves +3 -- ACC
REPLACE INTO `item_mods` VALUES (23533, 23, 86); --hesychasts gloves +3 -- ATT
REPLACE INTO `item_mods` VALUES (23533, 30, 38); --hesychasts gloves +3 -- MACC
REPLACE INTO `item_mods` VALUES (23533, 68, 42); --hesychasts gloves +3 -- EVA
REPLACE INTO `item_mods` VALUES (23533, 31, 46); --hesychasts gloves +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23533, 29, 3); --hesychasts gloves +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23533, 384, 400); --hesychasts gloves +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23533, 73, 8); --hesychasts gloves +3 -- STORETP
REPLACE INTO `item_mods` VALUES (23533, 289, 10); --hesychasts gloves +3 -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (23533, 1026, 51); --hesychasts gloves +3 -- CHAKRA_MULT
-- Hes. Hose +3
REPLACE INTO `item_mods` VALUES (23600, 1, 124); --hesychasts hose +3 -- DEF
REPLACE INTO `item_mods` VALUES (23600, 2, 116); --hesychasts hose +3 -- HP
REPLACE INTO `item_mods` VALUES (23600, 8, 42); --hesychasts hose +3 -- STR
REPLACE INTO `item_mods` VALUES (23600, 9, 21); --hesychasts hose +3 -- DEX
REPLACE INTO `item_mods` VALUES (23600, 10, 24); --hesychasts hose +3 -- VIT
REPLACE INTO `item_mods` VALUES (23600, 11, 31); --hesychasts hose +3 -- AGI
REPLACE INTO `item_mods` VALUES (23600, 12, 42); --hesychasts hose +3 -- INT
REPLACE INTO `item_mods` VALUES (23600, 13, 27); --hesychasts hose +3 -- MND
REPLACE INTO `item_mods` VALUES (23600, 14, 20); --hesychasts hose +3 -- CHR
REPLACE INTO `item_mods` VALUES (23600, 25, 39); --hesychasts hose +3 -- ACC
REPLACE INTO `item_mods` VALUES (23600, 23, 64); --hesychasts hose +3 -- ATT
REPLACE INTO `item_mods` VALUES (23600, 30, 39); --hesychasts hose +3 -- MACC
REPLACE INTO `item_mods` VALUES (23600, 68, 53); --hesychasts hose +3 -- EVA
REPLACE INTO `item_mods` VALUES (23600, 31, 84); --hesychasts hose +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23600, 29, 5); --hesychasts hose +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23600, 384, 600); --hesychasts hose +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23600, 292, 19); --hesychasts hose +3 -- KICK_ATTACK_RATE
REPLACE INTO `item_mods` VALUES (23600, 289, 10); --hesychasts hose +3 -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (23600, 165, 8); --hesychasts hose +3 -- CRITHITRATE
-- Hervor Brayettes    
REPLACE INTO `item_mods` VALUES (23747, 1, 125); --hervor Brayettes     -- DEF
REPLACE INTO `item_mods` VALUES (23747, 2, 66); --hervor Brayettes     -- HP
REPLACE INTO `item_mods` VALUES (23747, 8, 33); --hervor Brayettes     -- STR
REPLACE INTO `item_mods` VALUES (23747, 10, 20); --hervor Brayettes     -- VIT
REPLACE INTO `item_mods` VALUES (23747, 11, 20); --hervor Brayettes     -- AGI
REPLACE INTO `item_mods` VALUES (23747, 12, 32); --hervor Brayettes     -- INT
REPLACE INTO `item_mods` VALUES (23747, 13, 19); --hervor Brayettes     -- MND
REPLACE INTO `item_mods` VALUES (23747, 14, 19); --hervor Brayettes     -- CHR
REPLACE INTO `item_mods` VALUES (23747, 25, 25); --hervor Brayettes     -- ACC
REPLACE INTO `item_mods` VALUES (23747, 30, 15); --hervor Brayettes     -- MACC
REPLACE INTO `item_mods` VALUES (23747, 68, 41); --hervor Brayettes     -- EVA
REPLACE INTO `item_mods` VALUES (23747, 31, 91); --hervor Brayettes     -- MEVA
REPLACE INTO `item_mods` VALUES (23747, 29, 4); --hervor Brayettes     -- MDEF
REPLACE INTO `item_mods` VALUES (23747, 384, 600); --hervor Brayettes     -- HASTE_GEAR
-- Hervor Galea  
REPLACE INTO `item_mods` VALUES (23738, 1, 113); --hervor Galea   -- DEF
REPLACE INTO `item_mods` VALUES (23738, 2, 54); --hervor Galea   -- HP
REPLACE INTO `item_mods` VALUES (23738, 8, 19); --hervor Galea   -- STR
REPLACE INTO `item_mods` VALUES (23738, 9, 19); --hervor Galea   -- DEX
REPLACE INTO `item_mods` VALUES (23738, 10, 19); --hervor Galea   -- VIT
REPLACE INTO `item_mods` VALUES (23738, 11, 19); --hervor Galea   -- AGI
REPLACE INTO `item_mods` VALUES (23738, 12, 19); --hervor Galea   -- INT
REPLACE INTO `item_mods` VALUES (23738, 13, 19); --hervor Galea   -- MND
REPLACE INTO `item_mods` VALUES (23738, 14, 19); --hervor Galea   -- CHR
REPLACE INTO `item_mods` VALUES (23738, 25, 25); --hervor Galea   -- ACC
REPLACE INTO `item_mods` VALUES (23738, 30, 15); --hervor Galea   -- MACC
REPLACE INTO `item_mods` VALUES (23738, 68, 49); --hervor Galea   -- EVA
REPLACE INTO `item_mods` VALUES (23738, 31, 75); --hervor Galea   -- MEVA
REPLACE INTO `item_mods` VALUES (23738, 29, 3); --hervor Galea   -- MDEF
REPLACE INTO `item_mods` VALUES (23738, 384, 800); --hervor Galea   -- HASTE_GEAR
-- Hervor Haubert
REPLACE INTO `item_mods` VALUES (23741, 1, 143); --hervor haubert -- DEF
REPLACE INTO `item_mods` VALUES (23741, 2, 77); --hervor haubert -- HP
REPLACE INTO `item_mods` VALUES (23741, 8, 28); --hervor haubert -- STR
REPLACE INTO `item_mods` VALUES (23741, 9, 26); --hervor haubert -- DEX
REPLACE INTO `item_mods` VALUES (23741, 10, 28); --hervor haubert -- VIT
REPLACE INTO `item_mods` VALUES (23741, 11, 25); --hervor haubert -- AGI
REPLACE INTO `item_mods` VALUES (23741, 12, 25); --hervor haubert -- INT
REPLACE INTO `item_mods` VALUES (23741, 13, 25); --hervor haubert -- MND
REPLACE INTO `item_mods` VALUES (23741, 14, 25); --hervor haubert -- CHR
REPLACE INTO `item_mods` VALUES (23741, 25, 25); --hervor haubert -- ACC
REPLACE INTO `item_mods` VALUES (23741, 30, 15); --hervor haubert -- MACC
REPLACE INTO `item_mods` VALUES (23741, 68, 58); --hervor haubert -- EVA
REPLACE INTO `item_mods` VALUES (23741, 31, 86); --hervor haubert -- MEVA
REPLACE INTO `item_mods` VALUES (23741, 29, 6); --hervor haubert -- MDEF
REPLACE INTO `item_mods` VALUES (23741, 384, 400); --hervor haubert -- HASTE_GEAR
-- Hervor Mouffles  
REPLACE INTO `item_mods` VALUES (23744, 1, 101); --hervor Mouffles   -- DEF
REPLACE INTO `item_mods` VALUES (23744, 2, 43); --hervor Mouffles   -- HP
REPLACE INTO `item_mods` VALUES (23744, 8, 12); --hervor Mouffles   -- STR
REPLACE INTO `item_mods` VALUES (23744, 9, 34); --hervor Mouffles   -- DEX
REPLACE INTO `item_mods` VALUES (23744, 10, 34); --hervor Mouffles   -- VIT
REPLACE INTO `item_mods` VALUES (23744, 11, 8); --hervor Mouffles   -- AGI
REPLACE INTO `item_mods` VALUES (23744, 12, 16); --hervor Mouffles   -- INT
REPLACE INTO `item_mods` VALUES (23744, 13, 32); --hervor Mouffles   -- MND
REPLACE INTO `item_mods` VALUES (23744, 14, 21); --hervor Mouffles   -- CHR
REPLACE INTO `item_mods` VALUES (23744, 25, 25); --hervor Mouffles   -- ACC
REPLACE INTO `item_mods` VALUES (23744, 30, 15); --hervor Mouffles   -- MACC
REPLACE INTO `item_mods` VALUES (23744, 68, 63); --hervor Mouffles   -- EVA
REPLACE INTO `item_mods` VALUES (23744, 31, 59); --hervor Mouffles   -- MEVA
REPLACE INTO `item_mods` VALUES (23744, 29, 3); --hervor Mouffles   -- MDEF
REPLACE INTO `item_mods` VALUES (23744, 384, 500); --hervor Mouffles   -- HASTE_GEAR
-- Hervor Sollerets    
REPLACE INTO `item_mods` VALUES (23750, 1, 83); --hervor Galea   -- DEF
REPLACE INTO `item_mods` VALUES (23750, 2, 31); --hervor Galea   -- HP
REPLACE INTO `item_mods` VALUES (23750, 8, 16); --hervor Galea   -- STR
REPLACE INTO `item_mods` VALUES (23750, 9, 19); --hervor Galea   -- DEX
REPLACE INTO `item_mods` VALUES (23750, 10, 17); --hervor Galea   -- VIT
REPLACE INTO `item_mods` VALUES (23750, 11, 35); --hervor Galea   -- AGI
REPLACE INTO `item_mods` VALUES (23750, 13, 14); --hervor Galea   -- MND
REPLACE INTO `item_mods` VALUES (23750, 14, 30); --hervor Galea   -- CHR
REPLACE INTO `item_mods` VALUES (23750, 25, 25); --hervor Galea   -- ACC
REPLACE INTO `item_mods` VALUES (23750, 30, 15); --hervor Galea   -- MACC
REPLACE INTO `item_mods` VALUES (23750, 68, 63); --hervor Galea   -- EVA
REPLACE INTO `item_mods` VALUES (23750, 31, 91); --hervor Galea   -- MEVA
REPLACE INTO `item_mods` VALUES (23750, 29, 4); --hervor Galea   -- MDEF
REPLACE INTO `item_mods` VALUES (23750, 384, 400); --hervor Galea   -- HASTE_GEAR
-- Heyoka Harness
REPLACE INTO `item_mods` VALUES (26539, 1, 139); --heyoka harness -- DEF
REPLACE INTO `item_mods` VALUES (26539, 2, 91); --heyoka harness -- HP
REPLACE INTO `item_mods` VALUES (26539, 8, 34); --heyoka harness -- STR
REPLACE INTO `item_mods` VALUES (26539, 9, 46); --heyoka harness -- DEX
REPLACE INTO `item_mods` VALUES (26539, 10, 24); --heyoka harness -- VIT
REPLACE INTO `item_mods` VALUES (26539, 11, 32); --heyoka harness -- AGI
REPLACE INTO `item_mods` VALUES (26539, 12, 21); --heyoka harness -- INT
REPLACE INTO `item_mods` VALUES (26539, 13, 20); --heyoka harness -- MND
REPLACE INTO `item_mods` VALUES (26539, 14, 33); --heyoka harness -- CHR
REPLACE INTO `item_mods` VALUES (26539, 25, 42); --heyoka harness -- ACC
REPLACE INTO `item_mods` VALUES (26539, 68, 60); --heyoka harness -- EVA
REPLACE INTO `item_mods` VALUES (26539, 31, 107); --heyoka harness -- MEVA
REPLACE INTO `item_mods` VALUES (26539, 29, 8); --heyoka harness -- MDEF
REPLACE INTO `item_mods` VALUES (26539, 384, 400); --heyoka harness -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26539, 165, 9); --heyoka harness -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (26539, 25, 42, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (26539, 26, 42, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (26539, 27, 10, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (26539, 384, 400, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Harness +1
REPLACE INTO `item_mods` VALUES (26540, 1, 149); --heyoka harness +1 -- DEF
REPLACE INTO `item_mods` VALUES (26540, 2, 111); --heyoka harness +1 -- HP
REPLACE INTO `item_mods` VALUES (26540, 8, 39); --heyoka harness +1 -- STR
REPLACE INTO `item_mods` VALUES (26540, 9, 51); --heyoka harness +1 -- DEX
REPLACE INTO `item_mods` VALUES (26540, 10, 24); --heyoka harness +1 -- VIT
REPLACE INTO `item_mods` VALUES (26540, 11, 32); --heyoka harness +1 -- AGI
REPLACE INTO `item_mods` VALUES (26540, 12, 21); --heyoka harness +1 -- INT
REPLACE INTO `item_mods` VALUES (26540, 13, 20); --heyoka harness +1 -- MND
REPLACE INTO `item_mods` VALUES (26540, 14, 33); --heyoka harness +1 -- CHR
REPLACE INTO `item_mods` VALUES (26540, 25, 52); --heyoka harness +1 -- ACC
REPLACE INTO `item_mods` VALUES (26540, 68, 70); --heyoka harness +1 -- EVA
REPLACE INTO `item_mods` VALUES (26540, 31, 117); --heyoka harness +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26540, 29, 9); --heyoka harness +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26540, 384, 400); --heyoka harness +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26540, 165, 11); --heyoka harness +1 -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (26540, 25, 52, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (26540, 26, 52, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (26540, 27, 12, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (26540, 384, 400, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Leggings
REPLACE INTO `item_mods` VALUES (25970, 1, 79); --heyoka leggings -- DEF
REPLACE INTO `item_mods` VALUES (25970, 2, 38); --heyoka leggings -- HP
REPLACE INTO `item_mods` VALUES (25970, 8, 16); --heyoka leggings -- STR
REPLACE INTO `item_mods` VALUES (25970, 9, 38); --heyoka leggings -- DEX
REPLACE INTO `item_mods` VALUES (25970, 10, 14); --heyoka leggings -- VIT
REPLACE INTO `item_mods` VALUES (25970, 11, 40); --heyoka leggings -- AGI
REPLACE INTO `item_mods` VALUES (25970, 13, 14); --heyoka leggings -- MND
REPLACE INTO `item_mods` VALUES (25970, 14, 35); --heyoka leggings -- CHR
REPLACE INTO `item_mods` VALUES (25970, 25, 38); --heyoka leggings -- ACC
REPLACE INTO `item_mods` VALUES (25970, 68, 70); --heyoka leggings -- EVA
REPLACE INTO `item_mods` VALUES (25970, 31, 129); --heyoka leggings -- MEVA
REPLACE INTO `item_mods` VALUES (25970, 29, 5); --heyoka leggings -- MDEF
REPLACE INTO `item_mods` VALUES (25970, 384, 300); --heyoka leggings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25970, 165, 5); --heyoka leggings -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25970, 25, 38, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25970, 26, 38, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25970, 27, 6, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25970, 384, 300, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Leggings +1
REPLACE INTO `item_mods` VALUES (25971, 1, 89); --heyoka leggings +1 -- DEF
REPLACE INTO `item_mods` VALUES (25971, 2, 58); --heyoka leggings +1 -- HP
REPLACE INTO `item_mods` VALUES (25971, 8, 21); --heyoka leggings +1 -- STR
REPLACE INTO `item_mods` VALUES (25971, 9, 43); --heyoka leggings +1 -- DEX
REPLACE INTO `item_mods` VALUES (25971, 10, 14); --heyoka leggings +1 -- VIT
REPLACE INTO `item_mods` VALUES (25971, 11, 40); --heyoka leggings +1 -- AGI
REPLACE INTO `item_mods` VALUES (25971, 13, 14); --heyoka leggings +1 -- MND
REPLACE INTO `item_mods` VALUES (25971, 14, 35); --heyoka leggings +1 -- CHR
REPLACE INTO `item_mods` VALUES (25971, 25, 48); --heyoka leggings +1 -- ACC
REPLACE INTO `item_mods` VALUES (25971, 68, 80); --heyoka leggings +1 -- EVA
REPLACE INTO `item_mods` VALUES (25971, 31, 139); --heyoka leggings +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25971, 29, 6); --heyoka leggings +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25971, 384, 300); --heyoka leggings +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25971, 165, 7); --heyoka leggings +1 -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25971, 25, 48, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25971, 26, 48, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25971, 27, 8, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25971, 384, 300, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Mittens
REPLACE INTO `item_mods` VALUES (25990, 1, 97); --heyoka mittens -- DEF
REPLACE INTO `item_mods` VALUES (25990, 2, 29); --heyoka mittens -- HP
REPLACE INTO `item_mods` VALUES (25990, 8, 15); --heyoka mittens -- STR
REPLACE INTO `item_mods` VALUES (25990, 9, 51); --heyoka mittens -- DEX
REPLACE INTO `item_mods` VALUES (25990, 10, 32); --heyoka mittens -- VIT
REPLACE INTO `item_mods` VALUES (25990, 12, 11); --heyoka mittens -- INT
REPLACE INTO `item_mods` VALUES (25990, 13, 30); --heyoka mittens -- MND
REPLACE INTO `item_mods` VALUES (25990, 14, 25); --heyoka mittens -- CHR
REPLACE INTO `item_mods` VALUES (25990, 25, 39); --heyoka mittens -- ACC
REPLACE INTO `item_mods` VALUES (25990, 68, 41); --heyoka mittens -- EVA
REPLACE INTO `item_mods` VALUES (25990, 31, 80); --heyoka mittens -- MEVA
REPLACE INTO `item_mods` VALUES (25990, 29, 4); --heyoka mittens -- MDEF
REPLACE INTO `item_mods` VALUES (25990, 384, 400); --heyoka mittens -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25990, 165, 5); --heyoka mittens -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25990, 25, 39, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25990, 26, 39, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25990, 27, 7, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25990, 384, 400, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Mittens +1
REPLACE INTO `item_mods` VALUES (25991, 1, 107); --heyoka mittens +1 -- DEF
REPLACE INTO `item_mods` VALUES (25991, 2, 49); --heyoka mittens +1 -- HP
REPLACE INTO `item_mods` VALUES (25991, 8, 20); --heyoka mittens +1 -- STR
REPLACE INTO `item_mods` VALUES (25991, 9, 56); --heyoka mittens +1 -- DEX
REPLACE INTO `item_mods` VALUES (25991, 10, 32); --heyoka mittens +1 -- VIT
REPLACE INTO `item_mods` VALUES (25991, 12, 11); --heyoka mittens +1 -- INT
REPLACE INTO `item_mods` VALUES (25991, 13, 30); --heyoka mittens +1 -- MND
REPLACE INTO `item_mods` VALUES (25991, 14, 25); --heyoka mittens +1 -- CHR
REPLACE INTO `item_mods` VALUES (25991, 25, 49); --heyoka mittens +1 -- ACC
REPLACE INTO `item_mods` VALUES (25991, 68, 51); --heyoka mittens +1 -- EVA
REPLACE INTO `item_mods` VALUES (25991, 31, 90); --heyoka mittens +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25991, 29, 5); --heyoka mittens +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25991, 384, 400); --heyoka mittens +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25991, 165, 7); --heyoka mittens +1 -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25991, 25, 49, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25991, 26, 49, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25991, 27, 9, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25991, 384, 400, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Subligar
REPLACE INTO `item_mods` VALUES (25903, 1, 121); --heyoka subligar -- DEF
REPLACE INTO `item_mods` VALUES (25903, 2, 84); --heyoka subligar -- HP
REPLACE INTO `item_mods` VALUES (25903, 8, 34); --heyoka subligar -- STR
REPLACE INTO `item_mods` VALUES (25903, 10, 17); --heyoka subligar -- VIT
REPLACE INTO `item_mods` VALUES (25903, 11, 24); --heyoka subligar -- AGI
REPLACE INTO `item_mods` VALUES (25903, 12, 29); --heyoka subligar -- INT
REPLACE INTO `item_mods` VALUES (25903, 13, 16); --heyoka subligar -- MND
REPLACE INTO `item_mods` VALUES (25903, 14, 16); --heyoka subligar -- CHR
REPLACE INTO `item_mods` VALUES (25903, 25, 41); --heyoka subligar -- ACC
REPLACE INTO `item_mods` VALUES (25903, 68, 49); --heyoka subligar -- EVA
REPLACE INTO `item_mods` VALUES (25903, 31, 129); --heyoka subligar -- MEVA
REPLACE INTO `item_mods` VALUES (25903, 29, 7); --heyoka subligar -- MDEF
REPLACE INTO `item_mods` VALUES (25903, 384, 900); --heyoka subligar -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25903, 165, 7); --heyoka subligar -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25903, 25, 41, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25903, 26, 41, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25903, 27, 9, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25903, 384, 900, 0); --heyoka harness -- HASTE_GEAR
-- Heyoka Subligar +1
REPLACE INTO `item_mods` VALUES (25904, 1, 131); --heyoka subligar +1 -- DEF
REPLACE INTO `item_mods` VALUES (25904, 2, 104); --heyoka subligar +1 -- HP
REPLACE INTO `item_mods` VALUES (25904, 8, 39); --heyoka subligar +1 -- STR
REPLACE INTO `item_mods` VALUES (25904, 9, 5); --heyoka subligar +1 -- DEX
REPLACE INTO `item_mods` VALUES (25904, 10, 17); --heyoka subligar +1 -- VIT
REPLACE INTO `item_mods` VALUES (25904, 11, 24); --heyoka subligar +1 -- AGI
REPLACE INTO `item_mods` VALUES (25904, 12, 29); --heyoka subligar +1 -- INT
REPLACE INTO `item_mods` VALUES (25904, 13, 16); --heyoka subligar +1 -- MND
REPLACE INTO `item_mods` VALUES (25904, 14, 16); --heyoka subligar +1 -- CHR
REPLACE INTO `item_mods` VALUES (25904, 25, 51); --heyoka subligar +1 -- ACC
REPLACE INTO `item_mods` VALUES (25904, 68, 59); --heyoka subligar +1 -- EVA
REPLACE INTO `item_mods` VALUES (25904, 31, 139); --heyoka subligar +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25904, 29, 8); --heyoka subligar +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25904, 384, 900); --heyoka subligar +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25904, 165, 9); --heyoka subligar +1 -- CRITHITRATE
REPLACE INTO `item_mods_pet` VALUES (25904, 25, 51, 0); --heyoka harness -- ACC
REPLACE INTO `item_mods_pet` VALUES (25904, 26, 51, 0); --heyoka harness -- RACC
REPLACE INTO `item_mods_pet` VALUES (25904, 27, 11, 0); --heyoka harness -- ENMITY
REPLACE INTO `item_mods_pet` VALUES (25904, 384, 900, 0); --heyoka harness -- HASTE_GEAR
-- Hike Khat
REPLACE INTO `item_mods` VALUES (26784,1,95);     -- DEF: 95
REPLACE INTO `item_mods` VALUES (26784,2,36);     -- HP: 36
REPLACE INTO `item_mods` VALUES (26784,5,32);     -- MP: 32
REPLACE INTO `item_mods` VALUES (26784,8,14);     -- STR: 14
REPLACE INTO `item_mods` VALUES (26784,9,14);     -- DEX: 14
REPLACE INTO `item_mods` VALUES (26784,10,14);    -- VIT: 14
REPLACE INTO `item_mods` VALUES (26784,11,14);    -- AGI: 14
REPLACE INTO `item_mods` VALUES (26784,12,19);    -- INT: 19
REPLACE INTO `item_mods` VALUES (26784,13,19);    -- MND: 19
REPLACE INTO `item_mods` VALUES (26784,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (26784,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (26784,31,75);    -- MEVA: 75
REPLACE INTO `item_mods` VALUES (26784,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (26784,384,600);  -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (26784,961,5);  -- GEOMANCY_SKILL: 5
REPLACE INTO `item_mods` VALUES (26784,161,-200); -- DMGPHYS: -200
-- Hike Khat
REPLACE INTO `item_mods` VALUES (26785,1,96);     -- DEF: 96
REPLACE INTO `item_mods` VALUES (26785,2,36);     -- HP: 36
REPLACE INTO `item_mods` VALUES (26785,5,32);     -- MP: 32
REPLACE INTO `item_mods` VALUES (26785,8,14);     -- STR: 14
REPLACE INTO `item_mods` VALUES (26785,9,14);     -- DEX: 14
REPLACE INTO `item_mods` VALUES (26785,10,14);    -- VIT: 14
REPLACE INTO `item_mods` VALUES (26785,11,14);    -- AGI: 14
REPLACE INTO `item_mods` VALUES (26785,12,19);    -- INT: 19
REPLACE INTO `item_mods` VALUES (26785,13,19);    -- MND: 19
REPLACE INTO `item_mods` VALUES (26785,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (26785,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (26785,31,75);    -- MEVA: 75
REPLACE INTO `item_mods` VALUES (26785,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (26785,384,600);  -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (26785,961,6);  -- GEOMANCY_SKILL: 6
REPLACE INTO `item_mods` VALUES (26785,161,-300); -- DMGPHYS: -300
-- Hime Domaru +1
REPLACE INTO `item_mods` VALUES (26872,1,140);   -- DEF: 140
REPLACE INTO `item_mods` VALUES (26872,2,63);    -- HP: 63
REPLACE INTO `item_mods` VALUES (26872,5,35);    -- MP: 35
REPLACE INTO `item_mods` VALUES (26872,8,29);    -- STR: 29
REPLACE INTO `item_mods` VALUES (26872,9,19);    -- DEX: 19
REPLACE INTO `item_mods` VALUES (26872,10,34);   -- VIT: 34
REPLACE INTO `item_mods` VALUES (26872,11,19);   -- AGI: 19
REPLACE INTO `item_mods` VALUES (26872,12,19);   -- INT: 19
REPLACE INTO `item_mods` VALUES (26872,13,19);   -- MND: 19
REPLACE INTO `item_mods` VALUES (26872,14,19);   -- CHR: 19
REPLACE INTO `item_mods` VALUES (26872,16,10);   -- ICE_MEVA: 10
REPLACE INTO `item_mods` VALUES (26872,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (26872,31,48);   -- MEVA: 48
REPLACE INTO `item_mods` VALUES (26872,68,41);   -- EVA: 41
REPLACE INTO `item_mods` VALUES (26872,73,9);   -- STORETP: 9
REPLACE INTO `item_mods` VALUES (26872,384,300); -- HASTE_GEAR: 300
-- Hippomenes Socks
REPLACE INTO `item_mods` VALUES (27409,1,65);    -- DEF: 65
REPLACE INTO `item_mods` VALUES (27409,2,13);    -- HP: 13
REPLACE INTO `item_mods` VALUES (27409,5,14);    -- MP: 14
REPLACE INTO `item_mods` VALUES (27409,8,10);    -- STR: 10
REPLACE INTO `item_mods` VALUES (27409,9,11);    -- DEX: 11
REPLACE INTO `item_mods` VALUES (27409,10,10);   -- VIT: 10
REPLACE INTO `item_mods` VALUES (27409,11,33);   -- AGI: 33
REPLACE INTO `item_mods` VALUES (27409,12,17);   -- INT: 17
REPLACE INTO `item_mods` VALUES (27409,13,19);   -- MND: 19
REPLACE INTO `item_mods` VALUES (27409,14,34);   -- CHR: 34
REPLACE INTO `item_mods` VALUES (27409,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (27409,31,107);  -- MEVA: 107
REPLACE INTO `item_mods` VALUES (27409,68,70);   -- EVA: 70
REPLACE INTO `item_mods` VALUES (27409,384,400); -- HASTE_GEAR: 400
-- Hizamaru Haramaki
REPLACE INTO `item_mods` VALUES (25749,1,131);   -- DEF: 131
REPLACE INTO `item_mods` VALUES (25749,2,100);   -- HP: 100
REPLACE INTO `item_mods` VALUES (25749,8,32);    -- STR: 32
REPLACE INTO `item_mods` VALUES (25749,9,28);    -- DEX: 28
REPLACE INTO `item_mods` VALUES (25749,10,26);   -- VIT: 26
REPLACE INTO `item_mods` VALUES (25749,11,20);   -- AGI: 20
REPLACE INTO `item_mods` VALUES (25749,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (25749,13,17);   -- MND: 17
REPLACE INTO `item_mods` VALUES (25749,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25749,23,28);   -- ATT: 28
REPLACE INTO `item_mods` VALUES (25749,25,28);   -- ACC: 28
REPLACE INTO `item_mods` VALUES (25749,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25749,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25749,68,77);   -- EVA: 77
REPLACE INTO `item_mods` VALUES (25749,370,7);  -- REGEN: 7
REPLACE INTO `item_mods` VALUES (25749,384,400); -- HASTE_GEAR: 400
-- Hizamaru Haramaki +1
REPLACE INTO `item_mods` VALUES (25750,1,136);   -- DEF: 136
REPLACE INTO `item_mods` VALUES (25750,2,100);   -- HP: 100
REPLACE INTO `item_mods` VALUES (25750,8,37);    -- STR: 37
REPLACE INTO `item_mods` VALUES (25750,9,33);    -- DEX: 33
REPLACE INTO `item_mods` VALUES (25750,10,31);   -- VIT: 31
REPLACE INTO `item_mods` VALUES (25750,11,25);   -- AGI: 25
REPLACE INTO `item_mods` VALUES (25750,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (25750,13,17);   -- MND: 17
REPLACE INTO `item_mods` VALUES (25750,14,25);   -- CHR: 25
REPLACE INTO `item_mods` VALUES (25750,23,28);   -- ATT: 28
REPLACE INTO `item_mods` VALUES (25750,25,40);   -- ACC: 40
REPLACE INTO `item_mods` VALUES (25750,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25750,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25750,68,89);   -- EVA: 89
REPLACE INTO `item_mods` VALUES (25750,370,10);  -- REGEN: 10
REPLACE INTO `item_mods` VALUES (25750,384,400); -- HASTE_GEAR: 400
-- Hizamaru Haramaki +2	
REPLACE INTO `item_mods` VALUES (25792,1,141);   -- DEF: 141
REPLACE INTO `item_mods` VALUES (25792,2,100);   -- HP: 100
REPLACE INTO `item_mods` VALUES (25792,8,40);    -- STR: 40
REPLACE INTO `item_mods` VALUES (25792,9,36);    -- DEX: 36
REPLACE INTO `item_mods` VALUES (25792,10,34);   -- VIT: 34
REPLACE INTO `item_mods` VALUES (25792,11,28);   -- AGI: 28
REPLACE INTO `item_mods` VALUES (25792,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (25792,13,17);   -- MND: 17
REPLACE INTO `item_mods` VALUES (25792,14,28);   -- CHR: 28
REPLACE INTO `item_mods` VALUES (25792,23,28);   -- ATT: 28
REPLACE INTO `item_mods` VALUES (25792,25,46);   -- ACC: 46
REPLACE INTO `item_mods` VALUES (25792,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25792,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25792,68,95);   -- EVA: 95
REPLACE INTO `item_mods` VALUES (25792,370,12);  -- REGEN: 12
REPLACE INTO `item_mods` VALUES (25792,384,400); -- HASTE_GEAR: 400
-- Hizamaru Hizayoroi
REPLACE INTO `item_mods` VALUES (25862,1,113);    -- DEF: 113
REPLACE INTO `item_mods` VALUES (25862,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25862,8,42);    -- STR: 42
REPLACE INTO `item_mods` VALUES (25862,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (25862,11,16);   -- AGI: 16
REPLACE INTO `item_mods` VALUES (25862,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25862,13,11);    -- MND: 11
REPLACE INTO `item_mods` VALUES (25862,14,11);   -- CHR: 11
REPLACE INTO `item_mods` VALUES (25862,23,27);   -- ATT: 27
REPLACE INTO `item_mods` VALUES (25862,25,27);   -- ACC: 27
REPLACE INTO `item_mods` VALUES (25862,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25862,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25862,68,63);  -- EVA: 63
REPLACE INTO `item_mods` VALUES (25862,840,3);   -- ALL_WSDMG_ALL_HITS: 3
REPLACE INTO `item_mods` VALUES (25862,384,900); -- HASTE_GEAR: 900
-- Hizamaru Hizayoroi +1
REPLACE INTO `item_mods` VALUES (25863,1,118);    -- DEF: 118
REPLACE INTO `item_mods` VALUES (25863,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25863,8,47);    -- STR: 47
REPLACE INTO `item_mods` VALUES (25863,10,29);   -- VIT: 29
REPLACE INTO `item_mods` VALUES (25863,11,24);   -- AGI: 24
REPLACE INTO `item_mods` VALUES (25863,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25863,13,11);    -- MND: 11
REPLACE INTO `item_mods` VALUES (25863,14,16);   -- CHR: 16
REPLACE INTO `item_mods` VALUES (25863,23,27);   -- ATT: 27
REPLACE INTO `item_mods` VALUES (25863,25,39);   -- ACC: 39
REPLACE INTO `item_mods` VALUES (25863,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25863,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25863,68,75);  -- EVA: 75
REPLACE INTO `item_mods` VALUES (25863,840,5);   -- ALL_WSDMG_ALL_HITS: 5
REPLACE INTO `item_mods` VALUES (25863,384,900); -- HASTE_GEAR: 900
-- Hizamaru Hizayoroi +2
REPLACE INTO `item_mods` VALUES (25881,1,123);    -- DEF: 123
REPLACE INTO `item_mods` VALUES (25881,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25881,8,50);    -- STR: 50
REPLACE INTO `item_mods` VALUES (25881,10,32);   -- VIT: 32
REPLACE INTO `item_mods` VALUES (25881,11,24);   -- AGI: 24
REPLACE INTO `item_mods` VALUES (25881,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25881,13,11);    -- MND: 11
REPLACE INTO `item_mods` VALUES (25881,14,19);   -- CHR: 19
REPLACE INTO `item_mods` VALUES (25881,23,27);   -- ATT: 27
REPLACE INTO `item_mods` VALUES (25881,25,45);   -- ACC: 45
REPLACE INTO `item_mods` VALUES (25881,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25881,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25881,68,81);  -- EVA: 81
REPLACE INTO `item_mods` VALUES (25881,840,7);   -- ALL_WSDMG_ALL_HITS: 7
REPLACE INTO `item_mods` VALUES (25881,384,900); -- HASTE_GEAR: 900
-- Hizamaru Kote
REPLACE INTO `item_mods` VALUES (25804,1,96);   -- DEF: 96
REPLACE INTO `item_mods` VALUES (25804,2,40);    -- HP: 40
REPLACE INTO `item_mods` VALUES (25804,8,12);    -- STR: 12
REPLACE INTO `item_mods` VALUES (25804,9,35);    -- DEX: 35
REPLACE INTO `item_mods` VALUES (25804,10,30);   -- VIT: 30
REPLACE INTO `item_mods` VALUES (25804,11,8);   -- AGI: 8
REPLACE INTO `item_mods` VALUES (25804,12,7);   -- INT: 7
REPLACE INTO `item_mods` VALUES (25804,13,21);   -- MND: 21
REPLACE INTO `item_mods` VALUES (25804,14,17);   -- CHR: 17
REPLACE INTO `item_mods` VALUES (25804,23,25);   -- ATT: 25
REPLACE INTO `item_mods` VALUES (25804,25,25);   -- ACC: 25
REPLACE INTO `item_mods` VALUES (25804,29,2);    -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25804,31,43);   -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25804,68,58);   -- EVA: 58
REPLACE INTO `item_mods` VALUES (25804,486,15);  -- TACTICAL_PARRY: 15
REPLACE INTO `item_mods` VALUES (25804,384,400); -- HASTE_GEAR: 400
-- Hizamaru Kote +1
REPLACE INTO `item_mods` VALUES (25805,1,101);   -- DEF: 101
REPLACE INTO `item_mods` VALUES (25805,2,40);    -- HP: 40
REPLACE INTO `item_mods` VALUES (25805,8,17);    -- STR: 17
REPLACE INTO `item_mods` VALUES (25805,9,40);    -- DEX: 40
REPLACE INTO `item_mods` VALUES (25805,10,35);   -- VIT: 35
REPLACE INTO `item_mods` VALUES (25805,11,13);   -- AGI: 13
REPLACE INTO `item_mods` VALUES (25805,12,7);   -- INT: 7
REPLACE INTO `item_mods` VALUES (25805,13,21);   -- MND: 21
REPLACE INTO `item_mods` VALUES (25805,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (25805,23,25);   -- ATT: 25
REPLACE INTO `item_mods` VALUES (25805,25,37);   -- ACC: 37
REPLACE INTO `item_mods` VALUES (25805,29,2);    -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25805,31,43);   -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25805,68,70);   -- EVA: 70
REPLACE INTO `item_mods` VALUES (25805,486,20);  -- TACTICAL_PARRY: 20
REPLACE INTO `item_mods` VALUES (25805,384,400); -- HASTE_GEAR: 400
-- Hizamaru Kote +2	
REPLACE INTO `item_mods` VALUES (25830,1,106);   -- DEF: 106
REPLACE INTO `item_mods` VALUES (25830,2,40);    -- HP: 40
REPLACE INTO `item_mods` VALUES (25830,8,20);    -- STR: 20
REPLACE INTO `item_mods` VALUES (25830,9,43);    -- DEX: 43
REPLACE INTO `item_mods` VALUES (25830,10,38);   -- VIT: 38
REPLACE INTO `item_mods` VALUES (25830,11,16);   -- AGI: 15
REPLACE INTO `item_mods` VALUES (25830,12,7);   -- INT: 7
REPLACE INTO `item_mods` VALUES (25830,13,21);   -- MND: 21
REPLACE INTO `item_mods` VALUES (25830,14,25);   -- CHR: 25
REPLACE INTO `item_mods` VALUES (25830,23,25);   -- ATT: 25
REPLACE INTO `item_mods` VALUES (25830,25,43);   -- ACC: 43
REPLACE INTO `item_mods` VALUES (25830,29,2);    -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25830,31,43);   -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25830,68,76);   -- EVA: 76
REPLACE INTO `item_mods` VALUES (25830,486,25);  -- TACTICAL_PARRY: 25
REPLACE INTO `item_mods` VALUES (25830,384,400); -- HASTE_GEAR: 400
-- Hizamaru Somen
REPLACE INTO `item_mods` VALUES (25663,1,105);   -- DEF: 105
REPLACE INTO `item_mods` VALUES (25663,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25663,8,25);    -- STR: 25
REPLACE INTO `item_mods` VALUES (25663,9,21);    -- DEX: 21
REPLACE INTO `item_mods` VALUES (25663,10,19);   -- VIT: 19
REPLACE INTO `item_mods` VALUES (25663,11,16);   -- AGI: 16
REPLACE INTO `item_mods` VALUES (25663,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (25663,13,10);   -- MND: 10
REPLACE INTO `item_mods` VALUES (25663,14,12);   -- CHR: 12
REPLACE INTO `item_mods` VALUES (25663,23,26);   -- ATT: 26
REPLACE INTO `item_mods` VALUES (25663,25,26);   -- ACC: 26
REPLACE INTO `item_mods` VALUES (25663,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25663,31,59);   -- MEVA: 59
REPLACE INTO `item_mods` VALUES (25663,68,72);   -- EVA: 72
REPLACE INTO `item_mods` VALUES (25663,173,7);  -- MARTIAL_ARTS: 7
REPLACE INTO `item_mods` VALUES (25663,384,600); -- HASTE_GEAR: 600
-- Hizamaru Somen +1
REPLACE INTO `item_mods` VALUES (25664,1,110);   -- DEF: 110
REPLACE INTO `item_mods` VALUES (25664,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25664,8,30);    -- STR: 30
REPLACE INTO `item_mods` VALUES (25664,9,26);    -- DEX: 26
REPLACE INTO `item_mods` VALUES (25664,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (25664,11,21);   -- AGI: 21
REPLACE INTO `item_mods` VALUES (25664,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (25664,13,10);   -- MND: 10
REPLACE INTO `item_mods` VALUES (25664,14,17);   -- CHR: 17
REPLACE INTO `item_mods` VALUES (25664,23,26);   -- ATT: 26
REPLACE INTO `item_mods` VALUES (25664,25,38);   -- ACC: 38
REPLACE INTO `item_mods` VALUES (25664,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25664,31,59);   -- MEVA: 59
REPLACE INTO `item_mods` VALUES (25664,68,84);   -- EVA: 84
REPLACE INTO `item_mods` VALUES (25664,173,10);  -- MARTIAL_ARTS: 10
REPLACE INTO `item_mods` VALUES (25664,384,600); -- HASTE_GEAR: 600
-- Hizamaru Sune-Ate
REPLACE INTO `item_mods` VALUES (25929,1,75);    -- DEF: 75
REPLACE INTO `item_mods` VALUES (25929,2,30);    -- HP: 30
REPLACE INTO `item_mods` VALUES (25929,8,20);    -- STR: 20
REPLACE INTO `item_mods` VALUES (25929,9,23);    -- DEX: 23
REPLACE INTO `item_mods` VALUES (25929,10,15);   -- VIT: 15
REPLACE INTO `item_mods` VALUES (25929,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25929,13,3);    -- MND: 3
REPLACE INTO `item_mods` VALUES (25929,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25929,23,24);   -- ATT: 24
REPLACE INTO `item_mods` VALUES (25929,25,24);   -- ACC: 24
REPLACE INTO `item_mods` VALUES (25929,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25929,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25929,68,96);  -- EVA: 96
REPLACE INTO `item_mods` VALUES (25929,259,5);   -- DUAL_WIELD: 5
REPLACE INTO `item_mods` VALUES (25929,384,300); -- HASTE_GEAR: 300
-- Hizamaru Sune-Ate +1
REPLACE INTO `item_mods` VALUES (25930,1,80);    -- DEF: 80
REPLACE INTO `item_mods` VALUES (25930,2,30);    -- HP: 30
REPLACE INTO `item_mods` VALUES (25930,8,25);    -- STR: 25
REPLACE INTO `item_mods` VALUES (25930,9,28);    -- DEX: 28
REPLACE INTO `item_mods` VALUES (25930,10,20);   -- VIT: 20
REPLACE INTO `item_mods` VALUES (25930,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (25930,13,3);    -- MND: 3
REPLACE INTO `item_mods` VALUES (25930,14,25);   -- CHR: 25
REPLACE INTO `item_mods` VALUES (25930,23,24);   -- ATT: 24
REPLACE INTO `item_mods` VALUES (25930,25,36);   -- ACC: 36
REPLACE INTO `item_mods` VALUES (25930,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25930,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25930,68,108);  -- EVA: 108
REPLACE INTO `item_mods` VALUES (25930,259,7);   -- DUAL_WIELD: 7
REPLACE INTO `item_mods` VALUES (25930,384,300); -- HASTE_GEAR: 300
-- Hjarrandi Breast
REPLACE INTO `item_mods` VALUES (25766, 1, 155); --hjarrandi breast -- DEF
REPLACE INTO `item_mods` VALUES (25766, 2, 228); --hjarrandi breast -- HP
REPLACE INTO `item_mods` VALUES (25766, 8, 38); --hjarrandi breast -- STR
REPLACE INTO `item_mods` VALUES (25766, 9, 24); --hjarrandi breast -- DEX
REPLACE INTO `item_mods` VALUES (25766, 10, 51); --hjarrandi breast -- VIT
REPLACE INTO `item_mods` VALUES (25766, 11, 19); --hjarrandi breast -- AGI
REPLACE INTO `item_mods` VALUES (25766, 12, 24); --hjarrandi breast -- INT
REPLACE INTO `item_mods` VALUES (25766, 13, 29); --hjarrandi breast -- MND
REPLACE INTO `item_mods` VALUES (25766, 14, 35); --hjarrandi breast -- CHR
REPLACE INTO `item_mods` VALUES (25766, 25, 47); --hjarrandi breast -- ACC
REPLACE INTO `item_mods` VALUES (25766, 23, 53); --hjarrandi breast -- ATT
REPLACE INTO `item_mods` VALUES (25766, 30, 29); --hjarrandi breast -- MACC
REPLACE INTO `item_mods` VALUES (25766, 68, 47); --hjarrandi breast -- EVA
REPLACE INTO `item_mods` VALUES (25766, 31, 69); --hjarrandi breast -- MEVA
REPLACE INTO `item_mods` VALUES (25766, 29, 10); --hjarrandi breast -- MDEF
REPLACE INTO `item_mods` VALUES (25766, 73, 10); --hjarrandi breast -- STORETP
REPLACE INTO `item_mods` VALUES (25766, 165, 13); --hjarrandi breast -- CRITHITRATE
REPLACE INTO `item_mods` VALUES (25766, 160, -1200); --hjarrandi breast -- DMG
-- Hjarrandi Helm
REPLACE INTO `item_mods` VALUES (25592, 1, 125); --hjarrandi helm -- DEF
REPLACE INTO `item_mods` VALUES (25592, 2, 114); --hjarrandi helm -- HP
REPLACE INTO `item_mods` VALUES (25592, 8, 32); --hjarrandi helm -- STR
REPLACE INTO `item_mods` VALUES (25592, 9, 21); --hjarrandi helm -- DEX
REPLACE INTO `item_mods` VALUES (25592, 10, 44); --hjarrandi helm -- VIT
REPLACE INTO `item_mods` VALUES (25592, 11, 16); --hjarrandi helm -- AGI
REPLACE INTO `item_mods` VALUES (25592, 12, 26); --hjarrandi helm -- INT
REPLACE INTO `item_mods` VALUES (25592, 13, 29); --hjarrandi helm -- MND
REPLACE INTO `item_mods` VALUES (25592, 14, 38); --hjarrandi helm -- CHR
REPLACE INTO `item_mods` VALUES (25592, 25, 41); --hjarrandi helm -- ACC
REPLACE INTO `item_mods` VALUES (25592, 23, 45); --hjarrandi helm -- ATT
REPLACE INTO `item_mods` VALUES (25592, 30, 43); --hjarrandi helm -- MACC
REPLACE INTO `item_mods` VALUES (25592, 68, 38); --hjarrandi helm -- EVA
REPLACE INTO `item_mods` VALUES (25592, 31, 53); --hjarrandi helm -- MEVA
REPLACE INTO `item_mods` VALUES (25592, 288, 6); --hjarrandi helm -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (25592, 160, -1000); --hjarrandi helm -- DMG
REPLACE INTO `item_mods` VALUES (25592, 73, 7); --hjarrandi helm -- STORETP
REPLACE INTO `item_mods` VALUES (25592, 29, 8); --hjarrandi helm -- MDEF
-- Horos bangles +3
REPLACE INTO `item_mods` VALUES (23550, 1, 111); -- horos bangles +3 -- DEF
REPLACE INTO `item_mods` VALUES (23550, 2, 85); -- horos bangles +3 -- HP
REPLACE INTO `item_mods` VALUES (23550, 8, 21); -- horos bangles +3 -- STR
REPLACE INTO `item_mods` VALUES (23550, 9, 45); -- horos bangles +3 -- DEX
REPLACE INTO `item_mods` VALUES (23550, 10, 42); -- horos bangles +3 -- VIT
REPLACE INTO `item_mods` VALUES (23550, 11, 24); -- horos bangles +3 -- AGI
REPLACE INTO `item_mods` VALUES (23550, 12, 22); -- horos bangles +3 -- INT
REPLACE INTO `item_mods` VALUES (23550, 13, 40); -- horos bangles +3 -- MND
REPLACE INTO `item_mods` VALUES (23550, 14, 36); -- horos bangles +3 -- CHR
REPLACE INTO `item_mods` VALUES (23550, 25, 43); -- horos bangles +3 -- ACC
REPLACE INTO `item_mods` VALUES (23550, 23, 74); -- horos bangles +3 -- ATT
REPLACE INTO `item_mods` VALUES (23550, 30, 38); -- horos bangles +3 -- MACC
REPLACE INTO `item_mods` VALUES (23550, 68, 55); -- horos bangles +3 -- EVA
REPLACE INTO `item_mods` VALUES (23550, 31, 57); -- horos bangles +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23550, 29, 4); -- horos bangles +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23550, 384, 500); -- horos bangles +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23550, 27, 9); -- horos bangles +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23550, 291, 6); -- horos bangles +3 -- COUNTER
-- Horos casaque +3
REPLACE INTO `item_mods` VALUES (23483, 1, 153); -- horos casaque +3 -- DEF
REPLACE INTO `item_mods` VALUES (23483, 2, 79); -- horos casaque +3 -- HP
REPLACE INTO `item_mods` VALUES (23483, 5, 64); -- horos casaque +3 -- MP
REPLACE INTO `item_mods` VALUES (23483, 8, 34); -- horos casaque +3 -- STR
REPLACE INTO `item_mods` VALUES (23483, 9, 39); -- horos casaque +3 -- DEX
REPLACE INTO `item_mods` VALUES (23483, 10, 34); -- horos casaque +3 -- VIT
REPLACE INTO `item_mods` VALUES (23483, 11, 38); -- horos casaque +3 -- AGI
REPLACE INTO `item_mods` VALUES (23483, 12, 33); -- horos casaque +3 -- INT
REPLACE INTO `item_mods` VALUES (23483, 13, 33); -- horos casaque +3 -- MND
REPLACE INTO `item_mods` VALUES (23483, 14, 33); -- horos casaque +3 -- CHR
REPLACE INTO `item_mods` VALUES (23483, 25, 50); -- horos casaque +3 -- ACC
REPLACE INTO `item_mods` VALUES (23483, 23, 86); -- horos casaque +3 -- ATT
REPLACE INTO `item_mods` VALUES (23483, 30, 40); -- horos casaque +3 -- MACC
REPLACE INTO `item_mods` VALUES (23483, 68, 69); -- horos casaque +3 -- EVA
REPLACE INTO `item_mods` VALUES (23483, 31, 84); -- horos casaque +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23483, 29, 8); -- horos casaque +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23483, 384, 400); -- horos casaque +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23483, 302, 4); -- horos casaque +3 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (23483, 493, 41); -- horos casaque +3 -- VFLOURISH_MACC
REPLACE INTO `item_mods` VALUES (23483, 253, 35); -- horos casaque +3 -- AMNESIARES
REPLACE INTO `item_mods` VALUES (23483, 161, -600); -- horos casaque +3 -- DMGPHYS
-- Horos tiara +3
REPLACE INTO `item_mods` VALUES (23416, 1, 123); -- horos tiara +3 -- DEF
REPLACE INTO `item_mods` VALUES (23416, 2, 86); -- horos tiara +3 -- HP
REPLACE INTO `item_mods` VALUES (23416, 5, 43); -- horos tiara +3 -- MP
REPLACE INTO `item_mods` VALUES (23416, 8, 33); -- horos tiara +3 -- STR
REPLACE INTO `item_mods` VALUES (23416, 9, 37); -- horos tiara +3 -- DEX
REPLACE INTO `item_mods` VALUES (23416, 10, 25); -- horos tiara +3 -- VIT
REPLACE INTO `item_mods` VALUES (23416, 11, 29); -- horos tiara +3 -- AGI
REPLACE INTO `item_mods` VALUES (23416, 12, 25); -- horos tiara +3 -- INT
REPLACE INTO `item_mods` VALUES (23416, 13, 25); -- horos tiara +3 -- MND
REPLACE INTO `item_mods` VALUES (23416, 14, 26); -- horos tiara +3 -- CHR
REPLACE INTO `item_mods` VALUES (23416, 25, 44); -- horos tiara +3 -- ACC
REPLACE INTO `item_mods` VALUES (23416, 23, 77); -- horos tiara +3 -- ATT
REPLACE INTO `item_mods` VALUES (23416, 30, 37); -- horos tiara +3 -- MACC
REPLACE INTO `item_mods` VALUES (23416, 68, 64); -- horos tiara +3 -- EVA
REPLACE INTO `item_mods` VALUES (23416, 31, 73); -- horos tiara +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23416, 29, 4); -- horos tiara +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23416, 384, 800); -- horos tiara +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23416, 491, 15); -- horos tiara +3 -- WALTZ_POTENCY
-- Horos tights +3
REPLACE INTO `item_mods` VALUES (23617, 1, 133); -- horos tights +3 -- DEF
REPLACE INTO `item_mods` VALUES (23617, 2, 67); -- horos tights +3 -- HP
REPLACE INTO `item_mods` VALUES (23617, 8, 42); -- horos tights +3 -- STR
REPLACE INTO `item_mods` VALUES (23617, 10, 26); -- horos tights +3 -- VIT
REPLACE INTO `item_mods` VALUES (23617, 11, 30); -- horos tights +3 -- AGI
REPLACE INTO `item_mods` VALUES (23617, 12, 40); -- horos tights +3 -- INT
REPLACE INTO `item_mods` VALUES (23617, 13, 27); -- horos tights +3 -- MND
REPLACE INTO `item_mods` VALUES (23617, 14, 24); -- horos tights +3 -- CHR
REPLACE INTO `item_mods` VALUES (23617, 25, 45); -- horos tights +3 -- ACC
REPLACE INTO `item_mods` VALUES (23617, 23, 64); -- horos tights +3 -- ATT
REPLACE INTO `item_mods` VALUES (23617, 30, 45); -- horos tights +3 -- MACC
REPLACE INTO `item_mods` VALUES (23617, 68, 58); -- horos tights +3 -- EVA
REPLACE INTO `item_mods` VALUES (23617, 31, 89); -- horos tights +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23617, 29, 10); -- horos tights +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23617, 384, 600); -- horos tights +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23617, 492, 50); -- horos tights +3 -- JIG_DURATION
REPLACE INTO `item_mods` VALUES (23617, 840, 10); -- horos tights +3 -- ALL_WSDMG_ALL_HITS
-- Imperial Wing Hairpin
REPLACE INTO `item_mods` VALUES (26709,9,26);  -- DEX: 26
REPLACE INTO `item_mods` VALUES (26709,11,26); -- AGI: 26
REPLACE INTO `item_mods` VALUES (26709,68,69); -- EVA: 69
-- Inspirited Boots
REPLACE INTO `item_mods` VALUES (27464, 311, 10);  -- MAGIC_DAMAGE: 10
REPLACE INTO `item_mods` VALUES (27464, 167, 300);  -- HASTE_MAGIC: 3%
REPLACE INTO `item_mods` VALUES (27464, 68, 60);  -- EVA: 60
REPLACE INTO `item_mods` VALUES (27464, 31, 118);  -- MEVA: 118
REPLACE INTO `item_mods` VALUES (27464, 29, 6);  -- MDEF: 6
REPLACE INTO `item_mods` VALUES (27464, 28, 20);  -- MATT: 20
REPLACE INTO `item_mods` VALUES (27464, 14, 32);  -- CHR: 32
REPLACE INTO `item_mods` VALUES (27464, 13, 17);  -- MND: 17
REPLACE INTO `item_mods` VALUES (27464, 12, 25);  -- INT: 25
REPLACE INTO `item_mods` VALUES (27464, 11, 29);  -- AGI: 29
REPLACE INTO `item_mods` VALUES (27464, 10, 8);  -- VIT: 8
REPLACE INTO `item_mods` VALUES (27464, 9, 8);  -- DEX: 8
REPLACE INTO `item_mods` VALUES (27464, 8, 8);  -- STR: 8
REPLACE INTO `item_mods` VALUES (27464, 5, 20);  -- MP: 20
REPLACE INTO `item_mods` VALUES (27464, 2, 9);  -- HP: 9
REPLACE INTO `item_mods` VALUES (27464, 1, 70);  -- DEF: 70
REPLACE INTO `item_mods` VALUES (25806,121,15); -- WIND: 15
-- Inyanga Dastanas +2	
REPLACE INTO `item_mods` VALUES (25831,1,88);    -- DEF: 88
REPLACE INTO `item_mods` VALUES (25831,2,35);     -- HP: 35
REPLACE INTO `item_mods` VALUES (25831,5,40);     -- MP: 40
REPLACE INTO `item_mods` VALUES (25831,8,3);     -- STR: 3
REPLACE INTO `item_mods` VALUES (25831,9,23);     -- DEX: 23
REPLACE INTO `item_mods` VALUES (25831,10,28);    -- VIT: 28
REPLACE INTO `item_mods` VALUES (25831,11,9);    -- AGI: 9
REPLACE INTO `item_mods` VALUES (25831,12,34);    -- INT: 34
REPLACE INTO `item_mods` VALUES (25831,13,47);    -- MND: 47
REPLACE INTO `item_mods` VALUES (25831,14,32);    -- CHR: 32
REPLACE INTO `item_mods` VALUES (25831,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25831,30,43);    -- MACC: 43
REPLACE INTO `item_mods` VALUES (25831,31,77);   -- MEVA: 77
REPLACE INTO `item_mods` VALUES (25831,68,19);    -- EVA: 19
REPLACE INTO `item_mods` VALUES (25831,163,-400); -- DMGMAGIC: -400
REPLACE INTO `item_mods` VALUES (25831,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25831,111,20); -- DIVINE: 20
REPLACE INTO `item_mods` VALUES (25831,112,20); -- HEALING: 20
REPLACE INTO `item_mods` VALUES (25831,113,20); -- ENHANCE: 20
REPLACE INTO `item_mods` VALUES (25831,114,20); -- ENFEEBLE: 20
REPLACE INTO `item_mods` VALUES (25831,115,20); -- ELEM: 20
REPLACE INTO `item_mods` VALUES (25831,116,20); -- DARK: 20
REPLACE INTO `item_mods` VALUES (25831,117,20); -- SUMMONING: 20
REPLACE INTO `item_mods` VALUES (25831,119,20); -- SINGING: 20
REPLACE INTO `item_mods` VALUES (25831,120,20); -- STRING: 20
REPLACE INTO `item_mods` VALUES (25831,121,20); -- WIND: 20
-- Inyanga Crackows
REPLACE INTO `item_mods_pet` VALUES (25931,126,5, 1);    -- Avatar BP_DAMAGE: 5
-- Inyanga Crackows +1
REPLACE INTO `item_mods_pet` VALUES (25932,126,7, 1);    -- Avatar BP_DAMAGE: 7
-- Inyanga Crackows +2
REPLACE INTO `item_mods` VALUES (25949,1,70);     -- DEF: 70
REPLACE INTO `item_mods` VALUES (25949,2,25);     -- HP: 25
REPLACE INTO `item_mods` VALUES (25949,5,30);     -- MP: 30
REPLACE INTO `item_mods` VALUES (25949,8,6);      -- STR: 6
REPLACE INTO `item_mods` VALUES (25949,9,6);      -- DEX: 6
REPLACE INTO `item_mods` VALUES (25949,10,14);     -- VIT: 14
REPLACE INTO `item_mods` VALUES (25949,11,33);    -- AGI: 33
REPLACE INTO `item_mods` VALUES (25949,12,32);    -- INT: 32
REPLACE INTO `item_mods` VALUES (25949,13,33);     -- MND: 33
REPLACE INTO `item_mods` VALUES (25949,14,46);    -- CHR: 46
REPLACE INTO `item_mods` VALUES (25949,29,8);     -- MDEF: 8
REPLACE INTO `item_mods` VALUES (25949,30,42);    -- MACC: 42
REPLACE INTO `item_mods` VALUES (25949,31,147);   -- MEVA: 147
REPLACE INTO `item_mods` VALUES (25949,68,60);    -- EVA: 60
REPLACE INTO `item_mods` VALUES (25949,163,-300); -- DMGMAGIC: -300
REPLACE INTO `item_mods` VALUES (25949,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods_pet` VALUES (25949,126,9, 1);    -- Avatar BP_DAMAGE: 9
-- Inyanga Jubbah
REPLACE INTO `item_mods` VALUES (25751,30,28);    -- MACC: 28
REPLACE INTO `item_mods` VALUES (25751,68,38);    -- EVA: 38
-- Inyanga Jubbah +1
REPLACE INTO `item_mods` VALUES (25752,30,40);    -- MACC: 40
REPLACE INTO `item_mods` VALUES (25752,68,38);    -- EVA: 38
-- Inyanga Jubbah +2	
REPLACE INTO `item_mods` VALUES (25793,1,129);    -- DEF: 129
REPLACE INTO `item_mods` VALUES (25793,2,85);     -- HP: 85
REPLACE INTO `item_mods` VALUES (25793,5,90);     -- MP: 90
REPLACE INTO `item_mods` VALUES (25793,8,16);     -- STR: 16
REPLACE INTO `item_mods` VALUES (25793,9,19);     -- DEX: 19
REPLACE INTO `item_mods` VALUES (25793,10,24);    -- VIT: 24
REPLACE INTO `item_mods` VALUES (25793,11,23);    -- AGI: 23
REPLACE INTO `item_mods` VALUES (25793,12,48);    -- INT: 48
REPLACE INTO `item_mods` VALUES (25793,13,43);    -- MND: 43
REPLACE INTO `item_mods` VALUES (25793,14,42);    -- CHR: 42
REPLACE INTO `item_mods` VALUES (25793,29,11);     -- MDEF: 11
REPLACE INTO `item_mods` VALUES (25793,30,46);    -- MACC: 46
REPLACE INTO `item_mods` VALUES (25793,31,120);   -- MEVA: 120
REPLACE INTO `item_mods` VALUES (25793,68,38);    -- EVA: 38
REPLACE INTO `item_mods` VALUES (25793,163,-800); -- DMGMAGIC: -800
REPLACE INTO `item_mods` VALUES (25793,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25793,170,14);   -- FASTCAST: 14
-- Inyanga Shalwar +2
REPLACE INTO `item_mods` VALUES (25882,1,110);    -- DEF: 110
REPLACE INTO `item_mods` VALUES (25882,2,55);     -- HP: 55
REPLACE INTO `item_mods` VALUES (25882,5,60);     -- MP: 60
REPLACE INTO `item_mods` VALUES (25882,8,19);     -- STR: 19
REPLACE INTO `item_mods` VALUES (25882,10,14);    -- VIT: 14
REPLACE INTO `item_mods` VALUES (25882,11,20);    -- AGI: 20
REPLACE INTO `item_mods` VALUES (25882,12,51);    -- INT: 51
REPLACE INTO `item_mods` VALUES (25882,13,38);    -- MND: 38
REPLACE INTO `item_mods` VALUES (25882,14,32);    -- CHR: 32
REPLACE INTO `item_mods` VALUES (25882,29,9);     -- MDEF: 9
REPLACE INTO `item_mods` VALUES (25882,30,45);    -- MACC: 45
REPLACE INTO `item_mods` VALUES (25882,31,147);   -- MEVA: 147
REPLACE INTO `item_mods` VALUES (25882,68,24);    -- EVA: 24
REPLACE INTO `item_mods` VALUES (25882,163,-600); -- DMGMAGIC: -600
REPLACE INTO `item_mods` VALUES (25882,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25882,454,17);   -- SONG_DURATION_BONUS: 17
-- Jhakri Cuffs +2	
REPLACE INTO `item_mods` VALUES (25832,1,79);    -- DEF: 79
REPLACE INTO `item_mods` VALUES (25832,8,18);    -- STR: 18
REPLACE INTO `item_mods` VALUES (25832,9,41);    -- DEX: 41
REPLACE INTO `item_mods` VALUES (25832,10,17);    -- VIT: 17
REPLACE INTO `item_mods` VALUES (25832,11,2);    -- AGI: 2
REPLACE INTO `item_mods` VALUES (25832,12,36);   -- INT: 36
REPLACE INTO `item_mods` VALUES (25832,13,35);   -- MND: 35
REPLACE INTO `item_mods` VALUES (25832,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25832,23,43);   -- ATT: 43
REPLACE INTO `item_mods` VALUES (25832,25,43);   -- ACC: 43
REPLACE INTO `item_mods` VALUES (25832,28,40);   -- MATT: 40
REPLACE INTO `item_mods` VALUES (25832,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25832,30,43);   -- MACC: 43
REPLACE INTO `item_mods` VALUES (25832,31,32);   -- MEVA: 32
REPLACE INTO `item_mods` VALUES (25832,68,13);   -- EVA: 13
REPLACE INTO `item_mods` VALUES (25832,840,7); -- ALL_WSDMG_ALL_HITS: 7
-- Jhakri Pigaches +2
REPLACE INTO `item_mods` VALUES (25950,1,62);  -- DEF: 62
REPLACE INTO `item_mods` VALUES (25950,8,25);  -- STR: 25
REPLACE INTO `item_mods` VALUES (25950,9,28);  -- DEX: 28
REPLACE INTO `item_mods` VALUES (25950,10,3);  -- VIT: 3
REPLACE INTO `item_mods` VALUES (25950,11,26); -- AGI: 26
REPLACE INTO `item_mods` VALUES (25950,12,33); -- INT: 33
REPLACE INTO `item_mods` VALUES (25950,13,21); -- MND: 21
REPLACE INTO `item_mods` VALUES (25950,14,34); -- CHR: 34
REPLACE INTO `item_mods` VALUES (25950,23,42); -- ATT: 42
REPLACE INTO `item_mods` VALUES (25950,25,42); -- ACC: 42
REPLACE INTO `item_mods` VALUES (25950,28,39); -- MATT: 39
REPLACE INTO `item_mods` VALUES (25950,29,4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (25950,30,42); -- MACC: 42
REPLACE INTO `item_mods` VALUES (25950,31,69); -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25950,68,41); -- EVA: 41
REPLACE INTO `item_mods` VALUES (25950,487,7); -- MAG_BURST_BONUS: 7
-- Jhakri Slops +2
REPLACE INTO `item_mods` VALUES (25883,1,101);    -- DEF: 101
REPLACE INTO `item_mods` VALUES (25883,8,47);    -- STR: 47
REPLACE INTO `item_mods` VALUES (25883,10,3);    -- VIT: 3
REPLACE INTO `item_mods` VALUES (25883,11,14);   -- AGI: 14
REPLACE INTO `item_mods` VALUES (25883,12,52);   -- INT: 52
REPLACE INTO `item_mods` VALUES (25883,13,26);   -- MND: 26
REPLACE INTO `item_mods` VALUES (25883,14,20);   -- CHR: 20
REPLACE INTO `item_mods` VALUES (25883,23,45);   -- ATT: 45
REPLACE INTO `item_mods` VALUES (25883,25,45);   -- ACC: 45
REPLACE INTO `item_mods` VALUES (25883,28,42);   -- MATT: 42
REPLACE INTO `item_mods` VALUES (25883,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (25883,30,45);   -- MACC: 45
REPLACE INTO `item_mods` VALUES (25883,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25883,68,13);   -- EVA: 13
REPLACE INTO `item_mods` VALUES (25883,73,9);    -- STORETP: 9
REPLACE INTO `item_mods` VALUES (25883,384,200); -- HASTE_GEAR: 200
-- Kachimusha Kote
REPLACE INTO `item_mods` VALUES (27050,1,84);    -- DEF: 
REPLACE INTO `item_mods` VALUES (27050,2,85);    -- HP: 
REPLACE INTO `item_mods` VALUES (27050,8,10);    -- STR: 
REPLACE INTO `item_mods` VALUES (27050,9,34);    -- DEX: 
REPLACE INTO `item_mods` VALUES (27050,10,28);    -- VIT
REPLACE INTO `item_mods` VALUES (27050,11,6);   -- AGI: 
REPLACE INTO `item_mods` VALUES (27050,12,10);   -- INT: 
REPLACE INTO `item_mods` VALUES (27050,13,28);   -- MND: 
REPLACE INTO `item_mods` VALUES (27050,14,16);   -- CHR:
REPLACE INTO `item_mods` VALUES (27050,16,15);   -- ICE_MEVA:
REPLACE INTO `item_mods` VALUES (27050,18,15);   -- EARTH_MEVA:
REPLACE INTO `item_mods` VALUES (27050,20,15);   -- WATER_MEVA:
REPLACE INTO `item_mods` VALUES (27050,22,15);   -- DARK_MEVA:
REPLACE INTO `item_mods` VALUES (27050,23,20);   -- ATT: 
REPLACE INTO `item_mods` VALUES (27050,29,1);    -- MDEF: 
REPLACE INTO `item_mods` VALUES (27050,31,26);   -- MEVA: 
REPLACE INTO `item_mods` VALUES (27050,68,22);   -- EVA: 
REPLACE INTO `item_mods` VALUES (27050,384,500); -- HASTE_GEAR: 
-- Kachimusha Kote +1
REPLACE INTO `item_mods` VALUES (27051,1,85);    -- DEF: 85
REPLACE INTO `item_mods` VALUES (27051,2,90);    -- HP: 90
REPLACE INTO `item_mods` VALUES (27051,8,10);    -- STR: 10
REPLACE INTO `item_mods` VALUES (27051,9,34);    -- DEX: 34
REPLACE INTO `item_mods` VALUES (27051,10,28);   -- VIT: 28
REPLACE INTO `item_mods` VALUES (27051,11,6);    -- AGI: 6
REPLACE INTO `item_mods` VALUES (27051,12,10);   -- INT: 10
REPLACE INTO `item_mods` VALUES (27051,13,28);   -- MND: 28
REPLACE INTO `item_mods` VALUES (27051,14,16);   -- CHR: 16
REPLACE INTO `item_mods` VALUES (27051,16,20);   -- ICE_RES: 20
REPLACE INTO `item_mods` VALUES (27051,18,20);   -- EARTH_RES: 20
REPLACE INTO `item_mods` VALUES (27051,20,20);   -- WATER_RES: 20
REPLACE INTO `item_mods` VALUES (27051,22,20);   -- DARK_RES: 20
REPLACE INTO `item_mods` VALUES (27051,23,21);   -- ATT: 21
REPLACE INTO `item_mods` VALUES (27051,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (27051,31,26);   -- MEVA: 26
REPLACE INTO `item_mods` VALUES (27051,68,22);   -- EVA: 22
REPLACE INTO `item_mods` VALUES (27051,384,500); -- HASTE_GEAR: 500
-- Karagoz cappello +3
REPLACE INTO `item_mods` VALUES (23437,1,131);   -- DEF: 131
REPLACE INTO `item_mods` VALUES (23437,2,66);    -- HP: 66
REPLACE INTO `item_mods` VALUES (23437,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23437,9,30);    -- DEX: 30
REPLACE INTO `item_mods` VALUES (23437,10,34);   -- VIT: 34
REPLACE INTO `item_mods` VALUES (23437,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (23437,12,25);   -- INT: 25
REPLACE INTO `item_mods` VALUES (23437,13,30);   -- MND: 30
REPLACE INTO `item_mods` VALUES (23437,14,25);   -- CHR: 25
REPLACE INTO `item_mods` VALUES (23437,23,61);   -- ATK: 61
REPLACE INTO `item_mods` VALUES (23437,25,61);   -- ACC: 61
REPLACE INTO `item_mods` VALUES (23437,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23437,30,61);   -- MACC: 61
REPLACE INTO `item_mods` VALUES (23437,31,98);   -- MEVA: 98
REPLACE INTO `item_mods` VALUES (23437,68,91);   -- EVA: 91
REPLACE INTO `item_mods` VALUES (23437,80,19);   -- HTH: 19
REPLACE INTO `item_mods` VALUES (23437,288,5);   -- DOUBLE_ATTACK: 5%
REPLACE INTO `item_mods` VALUES (23437,384,800); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23437,1080,10); -- DAMAGE_LIMIT: 10%
REPLACE INTO `item_mods_pet` VALUES (23437,25,61, 3); -- ACC
REPLACE INTO `item_mods_pet` VALUES (23437,26,61, 3); -- RACC
REPLACE INTO `item_mods_pet` VALUES (23437,30,61, 3); -- MACC
REPLACE INTO `item_mods_pet` VALUES (23437,345,600, 3); -- TP_BONUS: 600
-- Karagoz Farsetto +3
REPLACE INTO `item_mods` VALUES (23504,1,164);     -- DEF: 164
REPLACE INTO `item_mods` VALUES (23504,2,89);      -- HP: 89
REPLACE INTO `item_mods` VALUES (23504,8,40);      -- STR: 40
REPLACE INTO `item_mods` VALUES (23504,9,41);      -- DEX: 41
REPLACE INTO `item_mods` VALUES (23504,10,39);     -- VIT: 39
REPLACE INTO `item_mods` VALUES (23504,11,40);     -- AGI: 40
REPLACE INTO `item_mods` VALUES (23504,12,31);     -- INT: 31
REPLACE INTO `item_mods` VALUES (23504,13,38);     -- MND: 38
REPLACE INTO `item_mods` VALUES (23504,14,33);     -- CHR: 33
REPLACE INTO `item_mods` VALUES (23504,23,74);     -- ATT: 74
REPLACE INTO `item_mods` VALUES (23504,25,64);     -- ACC: 64
REPLACE INTO `item_mods` VALUES (23504,29,8);      -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23504,30,64);     -- MACC: 64
REPLACE INTO `item_mods` VALUES (23504,31,109);     -- MEVA: 109
REPLACE INTO `item_mods` VALUES (23504,68,105);     -- EVA: 105
REPLACE INTO `item_mods` VALUES (23504,160,-1300); -- DMG: -13%
REPLACE INTO `item_mods` VALUES (23504,384,400);   -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23504,505,40);    -- OVERLOAD_THRESH: 40
REPLACE INTO `item_mods_pet` VALUES (23504,25,64, 3); -- ACC
REPLACE INTO `item_mods_pet` VALUES (23504,26,64, 3); -- RACC
REPLACE INTO `item_mods_pet` VALUES (23504,30,64, 3); -- MACC
-- Karagoz Guanti +3
REPLACE INTO `item_mods` VALUES (23571,1,119);    -- DEF: 119
REPLACE INTO `item_mods` VALUES (23571,2,55);     -- HP: 55
REPLACE INTO `item_mods` VALUES (23571,8,26);     -- STR: 26
REPLACE INTO `item_mods` VALUES (23571,9,49);     -- DEX: 49
REPLACE INTO `item_mods` VALUES (23571,10,45);    -- VIT: 45
REPLACE INTO `item_mods` VALUES (23571,11,21);    -- AGI: 21
REPLACE INTO `item_mods` VALUES (23571,12,20);    -- INT: 20
REPLACE INTO `item_mods` VALUES (23571,13,42);    -- MND: 42
REPLACE INTO `item_mods` VALUES (23571,14,25);    -- CHR: 25
REPLACE INTO `item_mods` VALUES (23571,23,62);    -- ATT: 62
REPLACE INTO `item_mods` VALUES (23571,25,62);    -- ACC: 62
REPLACE INTO `item_mods` VALUES (23571,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (23571,30,62);    -- MACC: 62
REPLACE INTO `item_mods` VALUES (23571,31,82);    -- MEVA: 82
REPLACE INTO `item_mods` VALUES (23571,68,74);    -- EVA: 74
REPLACE INTO `item_mods` VALUES (23571,73,11);    -- STORETP: 11
REPLACE INTO `item_mods` VALUES (23571,160,-1000); -- DMG: -10%
REPLACE INTO `item_mods` VALUES (23571,384,500);  -- HASTE_GEAR: 5%
REPLACE INTO `item_mods_pet` VALUES (23571,8,26, 3); -- STR
REPLACE INTO `item_mods_pet` VALUES (23571,9,26, 3); -- DEX
REPLACE INTO `item_mods_pet` VALUES (23571,11,26, 3); -- AGI
REPLACE INTO `item_mods_pet` VALUES (23571,25,62, 3); -- ACC
REPLACE INTO `item_mods_pet` VALUES (23571,26,62, 3); -- RACC
REPLACE INTO `item_mods_pet` VALUES (23571,30,62, 3); -- MACC
-- Karagoz Pantaloni +3
REPLACE INTO `item_mods` VALUES (23638,1,145);   -- DEF: 145
REPLACE INTO `item_mods` VALUES (23638,2,77);    -- HP: 77
REPLACE INTO `item_mods` VALUES (23638,8,49);    -- STR: 49
REPLACE INTO `item_mods` VALUES (23638,10,28);   -- VIT: 28
REPLACE INTO `item_mods` VALUES (23638,11,35);   -- AGI: 35
REPLACE INTO `item_mods` VALUES (23638,12,37);   -- INT: 37
REPLACE INTO `item_mods` VALUES (23638,13,34);   -- MND: 34
REPLACE INTO `item_mods` VALUES (23638,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (23638,23,73);   -- ATT: 73
REPLACE INTO `item_mods` VALUES (23638,25,63);   -- ACC: 63
REPLACE INTO `item_mods` VALUES (23638,30,63);   -- MACC: 63
REPLACE INTO `item_mods` VALUES (23638,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23638,31,119);   -- MEVA: 119
REPLACE INTO `item_mods` VALUES (23638,68,86);   -- EVA: 86
REPLACE INTO `item_mods` VALUES (23638,173,11);  -- MARTIAL_ARTS: 11
REPLACE INTO `item_mods` VALUES (23638,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (23638,160,-1200); -- DMG: -12%
REPLACE INTO `item_mods_pet` VALUES (23638,25,63, 3); -- ACC
REPLACE INTO `item_mods_pet` VALUES (23638,26,63, 3); -- RACC
REPLACE INTO `item_mods_pet` VALUES (23638,30,63, 3); -- MACC
REPLACE INTO `item_mods_pet` VALUES (23638,101,33, 3); -- AUTO_MELEE_SKILL
REPLACE INTO `item_mods_pet` VALUES (23638,102,33, 3); -- AUTO_RANGED_SKILL
REPLACE INTO `item_mods_pet` VALUES (23638,103,33, 3); -- AUTO_MAGIC_SKILL
-- Karagoz Scarpe +2
REPLACE INTO `item_mods` VALUES (23370,840,8);   -- ALL_WSDMG_ALL_HITS: 8
-- Kendatsuba hakama
REPLACE INTO `item_mods` VALUES (25891, 1, 122); --kendatsuba hakama -- DEF
REPLACE INTO `item_mods` VALUES (25891, 2, 95); --kendatsuba hakama -- HP
REPLACE INTO `item_mods` VALUES (25891, 8, 37); --kendatsuba hakama -- STR
REPLACE INTO `item_mods` VALUES (25891, 10, 25); --kendatsuba hakama -- VIT
REPLACE INTO `item_mods` VALUES (25891, 11, 28); --kendatsuba hakama -- AGI
REPLACE INTO `item_mods` VALUES (25891, 12, 32); --kendatsuba hakama -- INT
REPLACE INTO `item_mods` VALUES (25891, 13, 16); --kendatsuba hakama -- MND
REPLACE INTO `item_mods` VALUES (25891, 14, 12); --kendatsuba hakama -- CHR
REPLACE INTO `item_mods` VALUES (25891, 25, 41); --kendatsuba hakama -- ACC
REPLACE INTO `item_mods` VALUES (25891, 26, 36); --kendatsuba hakama -- RACC
REPLACE INTO `item_mods` VALUES (25891, 68, 49); --kendatsuba hakama -- EVA
REPLACE INTO `item_mods` VALUES (25891, 31, 129); --kendatsuba hakama -- MEVA
REPLACE INTO `item_mods` VALUES (25891, 29, 7); --kendatsuba hakama -- MDEF
REPLACE INTO `item_mods` VALUES (25891, 384, 900); --kendatsuba hakama -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25891, 302, 4); --kendatsuba hakama -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (25891, 289, 7); --kendatsuba hakama -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25891, 165, 5); --kendatsuba hakama -- CRITHITRATE
-- Kendatsuba hakama +1
REPLACE INTO `item_mods` VALUES (25892, 1, 132); --kendatsuba hakama +1 -- DEF
REPLACE INTO `item_mods` VALUES (25892, 2, 115); --kendatsuba hakama +1 -- HP
REPLACE INTO `item_mods` VALUES (25892, 8, 37); --kendatsuba hakama +1 -- STR
REPLACE INTO `item_mods` VALUES (25892, 9, 5); --kendatsuba hakama +1 -- DEX
REPLACE INTO `item_mods` VALUES (25892, 10, 25); --kendatsuba hakama +1 -- VIT
REPLACE INTO `item_mods` VALUES (25892, 11, 33); --kendatsuba hakama +1 -- AGI
REPLACE INTO `item_mods` VALUES (25892, 12, 32); --kendatsuba hakama +1 -- INT
REPLACE INTO `item_mods` VALUES (25892, 13, 16); --kendatsuba hakama +1 -- MND
REPLACE INTO `item_mods` VALUES (25892, 14, 12); --kendatsuba hakama +1 -- CHR
REPLACE INTO `item_mods` VALUES (25892, 25, 51); --kendatsuba hakama +1 -- ACC
REPLACE INTO `item_mods` VALUES (25892, 26, 46); --kendatsuba hakama +1 -- RACC
REPLACE INTO `item_mods` VALUES (25892, 68, 59); --kendatsuba hakama +1 -- EVA
REPLACE INTO `item_mods` VALUES (25892, 31, 139); --kendatsuba hakama +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25892, 29, 8); --kendatsuba hakama +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25892, 384, 900); --kendatsuba hakama +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25892, 302, 5); --kendatsuba hakama +1 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (25892, 289, 10); --kendatsuba hakama +1 -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25892, 165, 7); --kendatsuba hakama +1 -- CRITHITRATE
-- Kendatsuba samue
REPLACE INTO `item_mods` VALUES (26527, 1, 140); --kendatsuba samue -- DEF
REPLACE INTO `item_mods` VALUES (26527, 2, 102); --kendatsuba samue -- HP
REPLACE INTO `item_mods` VALUES (26527, 8, 33); --kendatsuba samue -- STR
REPLACE INTO `item_mods` VALUES (26527, 9, 34); --kendatsuba samue -- DEX
REPLACE INTO `item_mods` VALUES (26527, 10, 21); --kendatsuba samue -- VIT
REPLACE INTO `item_mods` VALUES (26527, 11, 32); --kendatsuba samue -- AGI
REPLACE INTO `item_mods` VALUES (26527, 12, 24); --kendatsuba samue -- INT
REPLACE INTO `item_mods` VALUES (26527, 13, 23); --kendatsuba samue -- MND
REPLACE INTO `item_mods` VALUES (26527, 14, 21); --kendatsuba samue -- CHR
REPLACE INTO `item_mods` VALUES (26527, 25, 42); --kendatsuba samue -- ACC
REPLACE INTO `item_mods` VALUES (26527, 26, 37); --kendatsuba samue -- RACC
REPLACE INTO `item_mods` VALUES (26527, 68, 60); --kendatsuba samue -- EVA
REPLACE INTO `item_mods` VALUES (26527, 31, 107); --kendatsuba samue -- MEVA
REPLACE INTO `item_mods` VALUES (26527, 29, 8); --kendatsuba samue -- MDEF
REPLACE INTO `item_mods` VALUES (26527, 384, 400); --kendatsuba samue -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26527, 302, 5); --kendatsuba samue -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (26527, 289, 9); --kendatsuba samue -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (26527, 165, 7); --kendatsuba samue -- CRITHITRATE
-- Kendatsuba sune-ate
REPLACE INTO `item_mods` VALUES (25958, 1, 80); --kendatsuba sune-ate -- DEF
REPLACE INTO `item_mods` VALUES (25958, 2, 50); --kendatsuba sune-ate -- HP
REPLACE INTO `item_mods` VALUES (25958, 8, 20); --kendatsuba sune-ate -- STR
REPLACE INTO `item_mods` VALUES (25958, 9, 39); --kendatsuba sune-ate -- DEX
REPLACE INTO `item_mods` VALUES (25958, 10, 21); --kendatsuba sune-ate -- VIT
REPLACE INTO `item_mods` VALUES (25958, 11, 39); --kendatsuba sune-ate -- AGI
REPLACE INTO `item_mods` VALUES (25958, 13, 14); --kendatsuba sune-ate -- MND
REPLACE INTO `item_mods` VALUES (25958, 14, 26); --kendatsuba sune-ate -- CHR
REPLACE INTO `item_mods` VALUES (25958, 25, 38); --kendatsuba sune-ate -- ACC
REPLACE INTO `item_mods` VALUES (25958, 26, 33); --kendatsuba sune-ate -- RACC
REPLACE INTO `item_mods` VALUES (25958, 68, 70); --kendatsuba sune-ate -- EVA
REPLACE INTO `item_mods` VALUES (25958, 31, 129); --kendatsuba sune-ate -- MEVA
REPLACE INTO `item_mods` VALUES (25958, 29, 5); --kendatsuba sune-ate -- MDEF
REPLACE INTO `item_mods` VALUES (25958, 384, 300); --kendatsuba sune-ate -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25958, 302, 3); --kendatsuba sune-ate -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (25958, 289, 5); --kendatsuba sune-ate -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25958, 165, 3); --kendatsuba sune-ate -- CRITHITRATE
-- Kendatsuba tekko
REPLACE INTO `item_mods` VALUES (25978, 1, 98); --kendatsuba tekko -- DEF
REPLACE INTO `item_mods` VALUES (25978, 2, 41); --kendatsuba tekko -- HP
REPLACE INTO `item_mods` VALUES (25978, 8, 14); --kendatsuba tekko -- STR
REPLACE INTO `item_mods` VALUES (25978, 9, 57); --kendatsuba tekko -- DEX
REPLACE INTO `item_mods` VALUES (25978, 10, 37); --kendatsuba tekko -- VIT
REPLACE INTO `item_mods` VALUES (25978, 12, 14); --kendatsuba tekko -- INT
REPLACE INTO `item_mods` VALUES (25978, 13, 28); --kendatsuba tekko -- MND
REPLACE INTO `item_mods` VALUES (25978, 14, 21); --kendatsuba tekko -- CHR
REPLACE INTO `item_mods` VALUES (25978, 25, 39); --kendatsuba tekko -- ACC
REPLACE INTO `item_mods` VALUES (25978, 26, 34); --kendatsuba tekko -- RACC
REPLACE INTO `item_mods` VALUES (25978, 68, 41); --kendatsuba tekko -- EVA
REPLACE INTO `item_mods` VALUES (25978, 31, 80); --kendatsuba tekko -- MEVA
REPLACE INTO `item_mods` VALUES (25978, 29, 4); --kendatsuba tekko -- MDEF
REPLACE INTO `item_mods` VALUES (25978, 384, 400); --kendatsuba tekko -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25978, 302, 3); --kendatsuba tekko -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (25978, 289, 5); --kendatsuba tekko -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25978, 165, 3); --kendatsuba tekko -- CRITHITRATE
-- Kendatsuba tekko +1
REPLACE INTO `item_mods` VALUES (25979, 1, 108); --kendatsuba tekko +1 -- DEF
REPLACE INTO `item_mods` VALUES (25979, 2, 61); --kendatsuba tekko +1 -- HP
REPLACE INTO `item_mods` VALUES (25979, 8, 14); --kendatsuba tekko +1 -- STR
REPLACE INTO `item_mods` VALUES (25979, 9, 62); --kendatsuba tekko +1 -- DEX
REPLACE INTO `item_mods` VALUES (25979, 10, 37); --kendatsuba tekko +1 -- VIT
REPLACE INTO `item_mods` VALUES (25979, 11, 5); --kendatsuba tekko +1 -- AGI
REPLACE INTO `item_mods` VALUES (25979, 12, 14); --kendatsuba tekko +1 -- INT
REPLACE INTO `item_mods` VALUES (25979, 13, 28); --kendatsuba tekko +1 -- MND
REPLACE INTO `item_mods` VALUES (25979, 14, 21); --kendatsuba tekko +1 -- CHR
REPLACE INTO `item_mods` VALUES (25979, 25, 49); --kendatsuba tekko +1 -- ACC
REPLACE INTO `item_mods` VALUES (25979, 26, 44); --kendatsuba tekko +1 -- RACC
REPLACE INTO `item_mods` VALUES (25979, 68, 51); --kendatsuba tekko +1 -- EVA
REPLACE INTO `item_mods` VALUES (25979, 31, 90); --kendatsuba tekko +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25979, 29, 5); --kendatsuba tekko +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25979, 384, 400); --kendatsuba tekko +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25979, 302, 4); --kendatsuba tekko +1 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (25979, 289, 8); --kendatsuba tekko +1 -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25979, 165, 5); --kendatsuba tekko +1 -- CRITHITRATE
-- Kubira Meikogai
REPLACE INTO `item_mods` VALUES (26959, 384, 300);  -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (26959, 161, -1000);  -- DMGPHYS: -10%
REPLACE INTO `item_mods` VALUES (26959, 68, 36);  -- EVA: 36
REPLACE INTO `item_mods` VALUES (26959, 31, 69);  -- MEVA: 69
REPLACE INTO `item_mods` VALUES (26959, 29, 4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (26959, 25, 25);  -- ACC: 25
REPLACE INTO `item_mods` VALUES (26959, 23, 25);  -- ATT: 25
REPLACE INTO `item_mods` VALUES (26959, 14, 16);  -- CHR: 16
REPLACE INTO `item_mods` VALUES (26959, 13, 16);  -- MND: 16
REPLACE INTO `item_mods` VALUES (26959, 12, 16);  -- INT: 16
REPLACE INTO `item_mods` VALUES (26959, 11, 17);  -- AGI: 17
REPLACE INTO `item_mods` VALUES (26959, 10, 32);  -- VIT: 32
REPLACE INTO `item_mods` VALUES (26959, 9, 17);  -- DEX: 17
REPLACE INTO `item_mods` VALUES (26959, 8, 29);  -- STR: 29
REPLACE INTO `item_mods` VALUES (26959, 5, 59);  -- MP: 59
REPLACE INTO `item_mods` VALUES (26959, 2, 166);  -- HP: 166
REPLACE INTO `item_mods` VALUES (26959, 1, 153);  -- DEF: 153
-- Lanun Frac +3
REPLACE INTO `item_mods` VALUES (23481, 1, 151); --lanun frac +3 -- DEF
REPLACE INTO `item_mods` VALUES (23481, 2, 79); --lanun frac +3 -- HP
REPLACE INTO `item_mods` VALUES (23481, 5, 64); --lanun frac +3 -- MP
REPLACE INTO `item_mods` VALUES (23481, 8, 37); --lanun frac +3 -- STR
REPLACE INTO `item_mods` VALUES (23481, 9, 39); --lanun frac +3 -- DEX
REPLACE INTO `item_mods` VALUES (23481, 10, 31); --lanun frac +3 -- VIT
REPLACE INTO `item_mods` VALUES (23481, 11, 43); --lanun frac +3 -- AGI
REPLACE INTO `item_mods` VALUES (23481, 12, 36); --lanun frac +3 -- INT
REPLACE INTO `item_mods` VALUES (23481, 13, 33); --lanun frac +3 -- MND
REPLACE INTO `item_mods` VALUES (23481, 14, 33); --lanun frac +3 -- CHR
REPLACE INTO `item_mods` VALUES (23481, 25, 49); --lanun frac +3 -- ACC
REPLACE INTO `item_mods` VALUES (23481, 24, 83); --lanun frac +3 -- RATT
REPLACE INTO `item_mods` VALUES (23481, 30, 40); --lanun frac +3 -- MACC
REPLACE INTO `item_mods` VALUES (23481, 68, 69); --lanun frac +3 -- EVA
REPLACE INTO `item_mods` VALUES (23481, 31, 84); --lanun frac +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23481, 28, 61); --lanun frac +3 -- MATT
REPLACE INTO `item_mods` VALUES (23481, 29, 8); --lanun frac +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23481, 220, 50); --lanun frac +3 -- RANDOM_DEAL_BONUS
REPLACE INTO `item_mods` VALUES (23481, 161, -600); --lanun frac +3 -- DMGPHYS
REPLACE INTO `item_mods` VALUES (23481, 384, 400); --lanun frac +3 -- HASTE_GEAR
-- Lanun Gants +3
REPLACE INTO `item_mods` VALUES (23548, 1, 109); --lanun gants +3 -- DEF
REPLACE INTO `item_mods` VALUES (23548, 2, 65); --lanun gants +3 -- HP
REPLACE INTO `item_mods` VALUES (23548, 8, 26); --lanun gants +3 -- STR
REPLACE INTO `item_mods` VALUES (23548, 9, 45); --lanun gants +3 -- DEX
REPLACE INTO `item_mods` VALUES (23548, 10, 39); --lanun gants +3 -- VIT
REPLACE INTO `item_mods` VALUES (23548, 11, 22); --lanun gants +3 -- AGI
REPLACE INTO `item_mods` VALUES (23548, 12, 22); --lanun gants +3 -- INT
REPLACE INTO `item_mods` VALUES (23548, 13, 40); --lanun gants +3 -- MND
REPLACE INTO `item_mods` VALUES (23548, 14, 27); --lanun gants +3 -- CHR
REPLACE INTO `item_mods` VALUES (23548, 26, 44); --lanun gants +3 -- RACC
REPLACE INTO `item_mods` VALUES (23548, 24, 76); --lanun gants +3 -- RATT
REPLACE INTO `item_mods` VALUES (23548, 30, 38); --lanun gants +3 -- MACC
REPLACE INTO `item_mods` VALUES (23548, 68, 44); --lanun gants +3 -- EVA
REPLACE INTO `item_mods` VALUES (23548, 31, 57); --lanun gants +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23548, 29, 4); --lanun gants +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23548, 384, 500); --lanun gants +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23548, 365, 13); --lanun gants +3 -- SNAP_SHOT
-- To Do: Triple Shot: Occasionally becomes Quad Shot
-- Lanun Trews +3 
REPLACE INTO `item_mods` VALUES (23615, 1, 132); --lanun trews +3 -- DEF
REPLACE INTO `item_mods` VALUES (23615, 2, 90); --lanun trews +3 -- HP
REPLACE INTO `item_mods` VALUES (23615, 5, 43); --lanun trews +3 -- MP
REPLACE INTO `item_mods` VALUES (23615, 8, 42); --lanun trews +3 -- STR
REPLACE INTO `item_mods` VALUES (23615, 10, 24); --lanun trews +3 -- VIT
REPLACE INTO `item_mods` VALUES (23615, 11, 36); --lanun trews +3 -- AGI
REPLACE INTO `item_mods` VALUES (23615, 12, 40); --lanun trews +3 -- INT
REPLACE INTO `item_mods` VALUES (23615, 13, 27); --lanun trews +3 -- MND
REPLACE INTO `item_mods` VALUES (23615, 14, 21); --lanun trews +3 -- CHR
REPLACE INTO `item_mods` VALUES (23615, 23, 78); --lanun trews +3 -- ATT
REPLACE INTO `item_mods` VALUES (23615, 26, 46); --lanun trews +3 -- RACC
REPLACE INTO `item_mods` VALUES (23615, 24, 78); --lanun trews +3 -- RATT
REPLACE INTO `item_mods` VALUES (23615, 30, 39); --lanun trews +3 -- MACC
REPLACE INTO `item_mods` VALUES (23615, 68, 72); --lanun trews +3 -- EVA
REPLACE INTO `item_mods` VALUES (23615, 31, 89); --lanun trews +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23615, 29, 7); --lanun trews +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23615, 384, 600); --lanun trews +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23615, 365, 10); --lanun trews +3 -- SNAP_SHOT
-- Lanun Tricorne +3 
REPLACE INTO `item_mods` VALUES (23414, 1, 120); --lanun tricorne +3 -- DEF
REPLACE INTO `item_mods` VALUES (23414, 2, 80); --lanun tricorne +3 -- HP
REPLACE INTO `item_mods` VALUES (23414, 8, 35); --lanun tricorne +3 -- STR
REPLACE INTO `item_mods` VALUES (23414, 10, 22); --lanun tricorne +3 -- VIT
REPLACE INTO `item_mods` VALUES (23414, 11, 41); --lanun tricorne +3 -- AGI
REPLACE INTO `item_mods` VALUES (23414, 12, 25); --lanun tricorne +3 -- INT
REPLACE INTO `item_mods` VALUES (23414, 13, 25); --lanun tricorne +3 -- MND
REPLACE INTO `item_mods` VALUES (23414, 14, 26); --lanun tricorne +3 -- CHR
REPLACE INTO `item_mods` VALUES (23414, 26, 37); --lanun tricorne +3 -- RACC
REPLACE INTO `item_mods` VALUES (23414, 24, 87); --lanun tricorne +3 -- RATT
REPLACE INTO `item_mods` VALUES (23414, 30, 37); --lanun tricorne +3 -- MACC
REPLACE INTO `item_mods` VALUES (23414, 68, 64); --lanun tricorne +3 -- EVA
REPLACE INTO `item_mods` VALUES (23414, 31, 73); --lanun tricorne +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23414, 29, 4); --lanun tricorne +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23414, 384, 800); --lanun tricorne +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23414, 881, 50); --lanun tricorne +3 -- PHANTOM_ROLL  
-- Lapidary Tunic
REPLACE INTO `item_mods` VALUES (26970,1,135);    -- DEF: 135
REPLACE INTO `item_mods` VALUES (26970,2,63);    -- HP: 63
REPLACE INTO `item_mods` VALUES (26970,5,61);    -- MP: 61
REPLACE INTO `item_mods` VALUES (26970,8,26);    -- STR: 26
REPLACE INTO `item_mods` VALUES (26970,9,32);    -- DEX: 32
REPLACE INTO `item_mods` VALUES (26970,10,23);   -- VIT: 23
REPLACE INTO `item_mods` VALUES (26970,11,32);   -- AGI: 32
REPLACE INTO `item_mods` VALUES (26970,12,23);   -- INT: 23
REPLACE INTO `item_mods` VALUES (26970,13,19);   -- MND: 19
REPLACE INTO `item_mods` VALUES (26970,14,19);   -- CHR: 19
REPLACE INTO `item_mods` VALUES (26970,23,25);   -- ATT: 25
REPLACE INTO `item_mods` VALUES (26970,24,25);   -- RATT: 25
REPLACE INTO `item_mods` VALUES (26970,68,52);   -- EVA: 52
REPLACE INTO `item_mods` VALUES (26970,31,80);   -- MEVA: 80
REPLACE INTO `item_mods` VALUES (26970,28,20);   -- MATT: 20
REPLACE INTO `item_mods` VALUES (26970,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (26970,30,20);   -- MACC: 20
REPLACE INTO `item_mods` VALUES (26970,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (26970,289,13); -- SUBTLE_BLOW: 13

-- Loess Barbuta
REPLACE INTO `item_mods` VALUES (25635, 1, 120);  -- DEF
REPLACE INTO `item_mods` VALUES (25635, 2, 100);  -- HP
REPLACE INTO `item_mods` VALUES (25635, 5, 100);  -- MP
REPLACE INTO `item_mods` VALUES (25635, 8, 20);  -- STR
REPLACE INTO `item_mods` VALUES (25635, 9, 20);  -- DEX
REPLACE INTO `item_mods` VALUES (25635, 10, 20);  -- VIT
REPLACE INTO `item_mods` VALUES (25635, 11, 20);  -- AGI
REPLACE INTO `item_mods` VALUES (25635, 12, 20);  -- INT
REPLACE INTO `item_mods` VALUES (25635, 13, -10);  -- MND
REPLACE INTO `item_mods` VALUES (25635, 14, -10);  -- CHR
REPLACE INTO `item_mods` VALUES (25635, 160, -900);  -- DMG
-- Loess Barbuta +1
REPLACE INTO `item_mods` VALUES (25636, 1, 121);  -- DEF
REPLACE INTO `item_mods` VALUES (25636, 2, 105);  -- HP
REPLACE INTO `item_mods` VALUES (25636, 5, 105);  -- MP
REPLACE INTO `item_mods` VALUES (25636, 8, 21);  -- STR
REPLACE INTO `item_mods` VALUES (25636, 9, 21);  -- DEX
REPLACE INTO `item_mods` VALUES (25636, 10, 21);  -- VIT
REPLACE INTO `item_mods` VALUES (25636, 11, 21);  -- AGI
REPLACE INTO `item_mods` VALUES (25636, 12, 21);  -- INT
REPLACE INTO `item_mods` VALUES (25636, 13, -11);  -- MND
REPLACE INTO `item_mods` VALUES (25636, 14, -11);  -- CHR
REPLACE INTO `item_mods` VALUES (25636, 160, -1000);  -- DMG
-- Luhlaza bazubands +3
REPLACE INTO `item_mods` VALUES (23547, 1, 109); -- luhlaza bazubands +3 -- DEF
REPLACE INTO `item_mods` VALUES (23547, 2, 70); -- luhlaza bazubands +3 -- HP
REPLACE INTO `item_mods` VALUES (23547, 5, 45); -- luhlaza bazubands +3 -- MP
REPLACE INTO `item_mods` VALUES (23547, 8, 21); -- luhlaza bazubands +3 -- STR
REPLACE INTO `item_mods` VALUES (23547, 9, 49); -- luhlaza bazubands +3 -- DEX
REPLACE INTO `item_mods` VALUES (23547, 10, 42); -- luhlaza bazubands +3 -- VIT
REPLACE INTO `item_mods` VALUES (23547, 11, 15); -- luhlaza bazubands +3 -- AGI
REPLACE INTO `item_mods` VALUES (23547, 12, 22); -- luhlaza bazubands +3 -- INT
REPLACE INTO `item_mods` VALUES (23547, 13, 44); -- luhlaza bazubands +3 -- MND
REPLACE INTO `item_mods` VALUES (23547, 14, 27); -- luhlaza bazubands +3 -- CHR
REPLACE INTO `item_mods` VALUES (23547, 25, 44); -- luhlaza bazubands +3 -- ACC
REPLACE INTO `item_mods` VALUES (23547, 23, 63); -- luhlaza bazubands +3 -- ATT
REPLACE INTO `item_mods` VALUES (23547, 30, 38); -- luhlaza bazubands +3 -- MACC
REPLACE INTO `item_mods` VALUES (23547, 68, 57); -- luhlaza bazubands +3 -- EVA
REPLACE INTO `item_mods` VALUES (23547, 31, 57); -- luhlaza bazubands +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23547, 29, 4); -- luhlaza bazubands +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23547, 384, 500); -- luhlaza bazubands +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23547, 289, 11); -- luhlaza bazubands +3 -- SUBTLE_BLOW
-- Luhlaza jubbah +3
REPLACE INTO `item_mods` VALUES (23480, 1, 155); --luhlaza jubbah +3 -- DEF
REPLACE INTO `item_mods` VALUES (23480, 2, 79); --luhlaza jubbah +3 -- HP
REPLACE INTO `item_mods` VALUES (23480, 5, 64); --luhlaza jubbah +3 -- MP
REPLACE INTO `item_mods` VALUES (23480, 8, 37); --luhlaza jubbah +3 -- STR
REPLACE INTO `item_mods` VALUES (23480, 9, 42); -- luhlaza jubbah +3 -- DEX
REPLACE INTO `item_mods` VALUES (23480, 10, 34); -- luhlaza jubbah +3 -- VIT
REPLACE INTO `item_mods` VALUES (23480, 11, 38); -- luhlaza jubbah +3 -- AGI
REPLACE INTO `item_mods` VALUES (23480, 12, 33); -- luhlaza jubbah +3 -- INT
REPLACE INTO `item_mods` VALUES (23480, 13, 33); -- luhlaza jubbah +3 -- MND
REPLACE INTO `item_mods` VALUES (23480, 14, 33); -- luhlaza jubbah +3 -- CHR
REPLACE INTO `item_mods` VALUES (23480, 25, 50); -- luhlaza jubbah +3 -- ACC
REPLACE INTO `item_mods` VALUES (23480, 23, 86); -- luhlaza jubbah +3 -- ATT
REPLACE INTO `item_mods` VALUES (23480, 30, 40); -- luhlaza jubbah +3 -- MACC
REPLACE INTO `item_mods` VALUES (23480, 68, 69); -- luhlaza jubbah +3 -- EVA
REPLACE INTO `item_mods` VALUES (23480, 31, 84); -- luhlaza jubbah +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23480, 29, 8); -- luhlaza jubbah +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23480, 384, 400); -- luhlaza jubbah +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23480, 170, 9); -- luhlaza jubbah +3 -- FASTCAST
REPLACE INTO `item_mods` VALUES (23480, 369, 3); -- luhlaza jubbah +3 -- REFRESH
-- luhlaza keffiyeh +3
REPLACE INTO `item_mods` VALUES (23413, 1, 121); -- luhlaza keffiyeh +3 -- DEF
REPLACE INTO `item_mods` VALUES (23413, 2, 91); -- luhlaza keffiyeh +3 -- HP
REPLACE INTO `item_mods` VALUES (23413, 5, 78); -- luhlaza keffiyeh +3 -- MP
REPLACE INTO `item_mods` VALUES (23413, 8, 30); -- luhlaza keffiyeh +3 -- STR
REPLACE INTO `item_mods` VALUES (23413, 9, 29); -- luhlaza keffiyeh +3 -- DEX
REPLACE INTO `item_mods` VALUES (23413, 10, 30); -- luhlaza keffiyeh +3 -- VIT
REPLACE INTO `item_mods` VALUES (23413, 11, 29); -- luhlaza keffiyeh +3 -- AGI
REPLACE INTO `item_mods` VALUES (23413, 12, 30); -- luhlaza keffiyeh +3 -- INT
REPLACE INTO `item_mods` VALUES (23413, 13, 30); -- luhlaza keffiyeh +3 -- MND
REPLACE INTO `item_mods` VALUES (23413, 14, 26); -- luhlaza keffiyeh +3 -- CHR
REPLACE INTO `item_mods` VALUES (23413, 25, 37); -- luhlaza keffiyeh +3 -- ACC
REPLACE INTO `item_mods` VALUES (23413, 23, 62); -- luhlaza keffiyeh +3 -- ATT
REPLACE INTO `item_mods` VALUES (23413, 30, 37); -- luhlaza keffiyeh +3 -- MACC
REPLACE INTO `item_mods` VALUES (23413, 68, 64); -- luhlaza keffiyeh +3 -- EVA
REPLACE INTO `item_mods` VALUES (23413, 31, 73); -- luhlaza keffiyeh +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23413, 29, 4); -- luhlaza keffiyeh +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23413, 122, 17); -- luhlaza keffiyeh +3 -- BLUE
REPLACE INTO `item_mods` VALUES (23413, 384, 800); -- luhlaza keffiyeh +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23413, 1075, 24); -- luhlaza keffiyeh +3 -- BREATH_DMG_DEALT
-- luhlaza shalwar +3
REPLACE INTO `item_mods` VALUES (23614, 1, 133); -- luhlaza shalwar +3 -- DEF
REPLACE INTO `item_mods` VALUES (23614, 2, 87); -- luhlaza shalwar +3 -- HP
REPLACE INTO `item_mods` VALUES (23614, 5, 40); -- luhlaza shalwar +3 -- MP
REPLACE INTO `item_mods` VALUES (23614, 8, 41); -- luhlaza shalwar +3 -- STR
REPLACE INTO `item_mods` VALUES (23614, 10, 26); -- luhlaza shalwar +3 -- VIT
REPLACE INTO `item_mods` VALUES (23614, 11, 32); -- luhlaza shalwar +3 -- AGI
REPLACE INTO `item_mods` VALUES (23614, 12, 40); -- luhlaza shalwar +3 -- INT
REPLACE INTO `item_mods` VALUES (23614, 13, 27); -- luhlaza shalwar +3 -- MND
REPLACE INTO `item_mods` VALUES (23614, 14, 21); -- luhlaza shalwar +3 -- CHR
REPLACE INTO `item_mods` VALUES (23614, 25, 45); -- luhlaza shalwar +3 -- ACC
REPLACE INTO `item_mods` VALUES (23614, 30, 45); -- luhlaza shalwar +3 -- MACC
REPLACE INTO `item_mods` VALUES (23614, 68, 58); -- luhlaza shalwar +3 -- EVA
REPLACE INTO `item_mods` VALUES (23614, 31, 89); -- luhlaza shalwar +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23614, 28, 57); -- luhlaza shalwar +3 -- MATT
REPLACE INTO `item_mods` VALUES (23614, 29, 7); -- luhlaza shalwar +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23614, 840, 10); -- luhlaza shalwar +3 -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods` VALUES (23614, 384, 600); -- luhlaza shalwar +3 -- HASTE_GEAR
-- Lustratio Harness
REPLACE INTO `item_mods` VALUES (26844,1,140);     -- DEF: 140
REPLACE INTO `item_mods` VALUES (26844,2,34);      -- HP: 34
REPLACE INTO `item_mods` VALUES (26844,8,38);      -- STR: 38
REPLACE INTO `item_mods` VALUES (26844,25,37);     -- ACC: 37
REPLACE INTO `item_mods` VALUES (26844,384,-1400); -- HASTE_GEAR: -1400
-- Macabre Gaunt.
REPLACE INTO `item_mods` VALUES (27993,1,101);    -- DEF: 102
REPLACE INTO `item_mods` VALUES (27993,2,29);     -- HP: 29
REPLACE INTO `item_mods` VALUES (27993,8,10);     -- STR: 10
REPLACE INTO `item_mods` VALUES (27993,9,29);     -- DEX: 29
REPLACE INTO `item_mods` VALUES (27993,10,33);    -- VIT: 33
REPLACE INTO `item_mods` VALUES (27993,12,8);     -- INT: 8
REPLACE INTO `item_mods` VALUES (27993,13,25);    -- MND: 25
REPLACE INTO `item_mods` VALUES (27993,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (27993,27,6);     -- ENMITY: 7
REPLACE INTO `item_mods` VALUES (27993,29,1);     -- MDEF: 6
REPLACE INTO `item_mods` VALUES (27993,31,26);    -- MEVA: 26
REPLACE INTO `item_mods` VALUES (27993,68,22);    -- EVA: 22
REPLACE INTO `item_mods` VALUES (27993,161,-300); -- DMGPHYS
REPLACE INTO `item_mods` VALUES (27993,374,10);   -- CURE_POTENCY: 11
REPLACE INTO `item_mods` VALUES (27993,384,400);  -- HASTE_GEAR: 400
-- Macabre Gauntlets +1
REPLACE INTO `item_mods` VALUES (27994,1,102);    -- DEF: 102
REPLACE INTO `item_mods` VALUES (27994,2,29);     -- HP: 29
REPLACE INTO `item_mods` VALUES (27994,8,10);     -- STR: 10
REPLACE INTO `item_mods` VALUES (27994,9,29);     -- DEX: 29
REPLACE INTO `item_mods` VALUES (27994,10,33);    -- VIT: 33
REPLACE INTO `item_mods` VALUES (27994,12,8);     -- INT: 8
REPLACE INTO `item_mods` VALUES (27994,13,25);    -- MND: 25
REPLACE INTO `item_mods` VALUES (27994,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (27994,27,7);     -- ENMITY: 7
REPLACE INTO `item_mods` VALUES (27994,31,26);    -- MEVA: 26
REPLACE INTO `item_mods` VALUES (27994,68,22);    -- EVA: 22
REPLACE INTO `item_mods` VALUES (27994,374,11);   -- CURE_POTENCY: 11
REPLACE INTO `item_mods` VALUES (27994,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (27994,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (27994,161,-400); -- DMGPHYS: -400
-- Maculele bangles +3
REPLACE INTO `item_mods` VALUES (23572,1,121);     -- DEF: 121
REPLACE INTO `item_mods` VALUES (23572,2,57);      -- HP: 57
REPLACE INTO `item_mods` VALUES (23572,8,27);      -- STR: 27
REPLACE INTO `item_mods` VALUES (23572,9,53);      -- DEX: 53
REPLACE INTO `item_mods` VALUES (23572,10,40);     -- VIT: 40
REPLACE INTO `item_mods` VALUES (23572,11,27);     -- AGI: 27
REPLACE INTO `item_mods` VALUES (23572,12,23);     -- INT: 23
REPLACE INTO `item_mods` VALUES (23572,13,41);     -- MND: 41
REPLACE INTO `item_mods` VALUES (23572,14,28);     -- CHR: 28
REPLACE INTO `item_mods` VALUES (23572,23,62);     -- ATT: 62
REPLACE INTO `item_mods` VALUES (23572,25,62);     -- ACC: 62
REPLACE INTO `item_mods` VALUES (23572,29,5);      -- MDEF: 5
REPLACE INTO `item_mods` VALUES (23572,30,62);     -- MACC: 62
REPLACE INTO `item_mods` VALUES (23572,31,83);     -- MEVA: 83
REPLACE INTO `item_mods` VALUES (23572,68,96);     -- EVA: 96
REPLACE INTO `item_mods` VALUES (23572,160,-1100); -- DMG: -11%
REPLACE INTO `item_mods` VALUES (23572,175,13);    -- SKILLCHAINDMG: 13
REPLACE INTO `item_mods` VALUES (23572,384,500);   -- HASTE_GEAR: 5%
REPLACE INTO `item_mods` VALUES (23572,836,14);    -- REVERSE_FLOURISH_EFFECT: 14
-- Maculele Casaque +3
REPLACE INTO `item_mods` VALUES (23505,1,164);     -- DEF: 164
REPLACE INTO `item_mods` VALUES (23505,2,93);      -- HP: 93
REPLACE INTO `item_mods` VALUES (23505,8,40);      -- STR: 40
REPLACE INTO `item_mods` VALUES (23505,9,48);      -- DEX: 48
REPLACE INTO `item_mods` VALUES (23505,10,34);     -- VIT: 34
REPLACE INTO `item_mods` VALUES (23505,11,48);     -- AGI: 48
REPLACE INTO `item_mods` VALUES (23505,12,31);     -- INT: 31
REPLACE INTO `item_mods` VALUES (23505,13,31);     -- MND: 31
REPLACE INTO `item_mods` VALUES (23505,14,32);     -- CHR: 32
REPLACE INTO `item_mods` VALUES (23505,23,64);     -- ATT: 64
REPLACE INTO `item_mods` VALUES (23505,25,64);     -- ACC: 64
REPLACE INTO `item_mods` VALUES (23505,29,10);      -- MDEF: 10
REPLACE INTO `item_mods` VALUES (23505,30,64);     -- MACC: 64
REPLACE INTO `item_mods` VALUES (23505,31,109);     -- MEVA: 109
REPLACE INTO `item_mods` VALUES (23505,68,115);    -- EVA: 115
REPLACE INTO `item_mods` VALUES (23505,160,-1400); -- DMG: -14%
REPLACE INTO `item_mods` VALUES (23505,259,11);    -- DUAL_WIELD: 11
REPLACE INTO `item_mods` VALUES (23505,289,14);    -- SUBTLE_BLOW: 14
REPLACE INTO `item_mods` VALUES (23505,384,400);   -- HASTE_GEAR: 4%
-- TODO: Striking Flourish: "Double Attack" critical hit rate +65%
-- Maculele Tiara +3
REPLACE INTO `item_mods` VALUES (23438,1,131);   -- DEF: 131
REPLACE INTO `item_mods` VALUES (23438,2,71);    -- HP: 71
REPLACE INTO `item_mods` VALUES (23438,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23438,9,38);    -- DEX: 38
REPLACE INTO `item_mods` VALUES (23438,10,27);   -- VIT: 27
REPLACE INTO `item_mods` VALUES (23438,11,39);   -- AGI: 39
REPLACE INTO `item_mods` VALUES (23438,12,21);   -- INT: 21
REPLACE INTO `item_mods` VALUES (23438,13,21);   -- MND: 21
REPLACE INTO `item_mods` VALUES (23438,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (23438,23,71);   -- ATT: 71
REPLACE INTO `item_mods` VALUES (23438,25,61);   -- ACC: 61
REPLACE INTO `item_mods` VALUES (23438,29,7);    -- MDEF: 7
REPLACE INTO `item_mods` VALUES (23438,30,61);   -- MACC: 61
REPLACE INTO `item_mods` VALUES (23438,31,99);   -- MEVA: 99
REPLACE INTO `item_mods` VALUES (23438,68,109);   -- EVA: 109
REPLACE INTO `item_mods` VALUES (23438,73,10);    -- STORETP: 10
REPLACE INTO `item_mods` VALUES (23438,384,800); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23438,840,12);   -- ALL_WSDMG_ALL_HITS: 12
-- Maculele Tights +2
REPLACE INTO `item_mods` VALUES (23304,1080,7);  -- DMGPHYS: 7%
-- To Do: Critical Parry +23
-- Maculele Tights +3
REPLACE INTO `item_mods` VALUES (23639,1,144);   -- DEF: 144
REPLACE INTO `item_mods` VALUES (23639,2,80);    -- HP: 80
REPLACE INTO `item_mods` VALUES (23639,8,44);    -- STR: 44
REPLACE INTO `item_mods` VALUES (23639,10,26);   -- VIT: 26
REPLACE INTO `item_mods` VALUES (23639,11,40);   -- AGI: 40
REPLACE INTO `item_mods` VALUES (23639,12,40);   -- INT: 40
REPLACE INTO `item_mods` VALUES (23639,13,27);   -- MND: 27
REPLACE INTO `item_mods` VALUES (23639,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (23639,23,63);   -- ATT: 63
REPLACE INTO `item_mods` VALUES (23639,25,63);   -- ACC: 63
REPLACE INTO `item_mods` VALUES (23639,30,63);   -- MACC: 63
REPLACE INTO `item_mods` VALUES (23639,29,9);    -- MDEF: 9
REPLACE INTO `item_mods` VALUES (23639,31,115);  -- MEVA: 115
REPLACE INTO `item_mods` VALUES (23639,68,107);  -- EVA: 107
REPLACE INTO `item_mods` VALUES (23639,81,38);   -- DAGGER: 38
REPLACE INTO `item_mods` VALUES (23639,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods` VALUES (23639,1080,10);  -- DMGPHYS: 10%
-- To Do: Critical Parry +26
-- Makora Meikogai
REPLACE INTO `item_mods` VALUES (26961, 384, 300);  -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (26961, 68, 44);  -- EVA: 44
REPLACE INTO `item_mods` VALUES (26961, 31, 59);  -- MEVA: 59
REPLACE INTO `item_mods` VALUES (26961, 29, 4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (26961, 28, 10);  -- MATT: 10
REPLACE INTO `item_mods` VALUES (26961, 25, 15);  -- ACC: 15
REPLACE INTO `item_mods` VALUES (26961, 23, 15);  -- ATT: 15
REPLACE INTO `item_mods` VALUES (26961, 14, 19);  -- CHR: 19
REPLACE INTO `item_mods` VALUES (26961, 13, 19);  -- MND: 19
REPLACE INTO `item_mods` VALUES (26961, 12, 19);  -- INT: 19
REPLACE INTO `item_mods` VALUES (26961, 11, 19);  -- AGI: 19
REPLACE INTO `item_mods` VALUES (26961, 10, 36);  -- VIT: 19
REPLACE INTO `item_mods` VALUES (26961, 9, 32);  -- DEX: 32
REPLACE INTO `item_mods` VALUES (26961, 8, 36);  -- STR: 36
REPLACE INTO `item_mods` VALUES (26961, 2, 66);  -- HP: 66
REPLACE INTO `item_mods` VALUES (26961, 1, 144);  -- DEF: 144
-- Mallquis Clogs +2 
REPLACE INTO `item_mods` VALUES (25955,1,70);    -- DEF: 70
REPLACE INTO `item_mods` VALUES (25955,2,20);    -- HP: 20
REPLACE INTO `item_mods` VALUES (25955,5,20);    -- MP: 20
REPLACE INTO `item_mods` VALUES (25955,8,6);     -- STR: 6
REPLACE INTO `item_mods` VALUES (25955,9,6);     -- DEX: 6
REPLACE INTO `item_mods` VALUES (25955,10,19);   -- VIT: 19
REPLACE INTO `item_mods` VALUES (25955,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25955,12,37);   -- INT: 37
REPLACE INTO `item_mods` VALUES (25955,13,23);   -- MND: 23
REPLACE INTO `item_mods` VALUES (25955,14,35);   -- CHR: 35
REPLACE INTO `item_mods` VALUES (25955,28,15);   -- MATT: 15
REPLACE INTO `item_mods` VALUES (25955,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25955,30,42);   -- MACC: 42
REPLACE INTO `item_mods` VALUES (25955,31,86);   -- MEVA: 86
REPLACE INTO `item_mods` VALUES (25955,68,60);   -- EVA: 60
REPLACE INTO `item_mods` VALUES (25955,311,46);  -- MAGIC_DAMAGE: 46
REPLACE INTO `item_mods` VALUES (25955,384,200); -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25955,516,11);  -- ABSORB_DMG_TO_MP: 11
-- Mallquis Cuffs +2	
REPLACE INTO `item_mods` VALUES (25837,1,88);   -- DEF: 88
REPLACE INTO `item_mods` VALUES (25837,2,27);    -- HP: 27
REPLACE INTO `item_mods` VALUES (25837,5,26);    -- MP: 26
REPLACE INTO `item_mods` VALUES (25837,8,3);    -- STR: 3
REPLACE INTO `item_mods` VALUES (25837,9,23);    -- DEX: 23
REPLACE INTO `item_mods` VALUES (25837,10,34);   -- VIT: 34
REPLACE INTO `item_mods` VALUES (25837,11,2);    -- AGI: 2
REPLACE INTO `item_mods` VALUES (25837,12,40);   -- INT: 40
REPLACE INTO `item_mods` VALUES (25837,13,37);   -- MND: 37
REPLACE INTO `item_mods` VALUES (25837,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (25837,28,15);   -- MATT: 15
REPLACE INTO `item_mods` VALUES (25837,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25837,30,43);   -- MACC: 43
REPLACE INTO `item_mods` VALUES (25837,31,48);   -- MEVA: 48
REPLACE INTO `item_mods` VALUES (25837,68,19);   -- EVA: 19
REPLACE INTO `item_mods` VALUES (25837,311,49);  -- MAGIC_DAMAGE: 49
REPLACE INTO `item_mods` VALUES (25837,384,400); -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25837,27,-9);  -- ENMITY: -9
-- Mallquis Saio +2	
REPLACE INTO `item_mods` VALUES (25799,1,129);   -- DEF: 129
REPLACE INTO `item_mods` VALUES (25799,2,68);    -- HP: 68
REPLACE INTO `item_mods` VALUES (25799,5,53);    -- MP: 53
REPLACE INTO `item_mods` VALUES (25799,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (25799,9,19);    -- DEX: 19
REPLACE INTO `item_mods` VALUES (25799,10,30);   -- VIT: 30
REPLACE INTO `item_mods` VALUES (25799,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (25799,12,54);   -- INT: 54
REPLACE INTO `item_mods` VALUES (25799,13,33);   -- MND: 33
REPLACE INTO `item_mods` VALUES (25799,14,32);   -- CHR: 32
REPLACE INTO `item_mods` VALUES (25799,28,15);   -- MATT: 15
REPLACE INTO `item_mods` VALUES (25799,29,7);    -- MDEF: 7
REPLACE INTO `item_mods` VALUES (25799,30,46);   -- MACC: 46
REPLACE INTO `item_mods` VALUES (25799,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25799,68,38);   -- EVA: 38
REPLACE INTO `item_mods` VALUES (25799,311,58);  -- MAGIC_DAMAGE: 58
REPLACE INTO `item_mods` VALUES (25799,384,200); -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25799,395,9);  -- BLACK_MAGIC_CAST: 9
REPLACE INTO `item_mods` VALUES (25799,160,-800); -- DMG: -800
-- Mallquis Trews +2
REPLACE INTO `item_mods` VALUES (25888,1,110);   -- DEF: 110
REPLACE INTO `item_mods` VALUES (25888,2,45);    -- HP: 45
REPLACE INTO `item_mods` VALUES (25888,5,38);    -- MP: 38
REPLACE INTO `item_mods` VALUES (25888,8,19);    -- STR: 19
REPLACE INTO `item_mods` VALUES (25888,10,19);   -- VIT: 19
REPLACE INTO `item_mods` VALUES (25888,11,14);   -- AGI: 14
REPLACE INTO `item_mods` VALUES (25888,12,57);   -- INT: 57
REPLACE INTO `item_mods` VALUES (25888,13,28);   -- MND: 28
REPLACE INTO `item_mods` VALUES (25888,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (25888,28,15);   -- MATT: 15
REPLACE INTO `item_mods` VALUES (25888,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25888,30,45);   -- MACC: 45
REPLACE INTO `item_mods` VALUES (25888,31,86);   -- MEVA: 86
REPLACE INTO `item_mods` VALUES (25888,68,24);   -- EVA: 24
REPLACE INTO `item_mods` VALUES (25888,311,55);  -- MAGIC_DAMAGE: 55
REPLACE INTO `item_mods` VALUES (25888,384,400); -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25888,487,6);   -- MAG_BURST_BONUS: 6
REPLACE INTO `item_mods` VALUES (25888,395,7);  -- BLACK_MAGIC_CAST: 7
-- Meghanada Cuirie
REPLACE INTO `item_mods` VALUES (25747,1,123);    -- DEF: 123
REPLACE INTO `item_mods` VALUES (25747,2,40);     -- HP: 40
REPLACE INTO `item_mods` VALUES (25747,8,26);     -- STR: 26
REPLACE INTO `item_mods` VALUES (25747,9,37);     -- DEX: 37
REPLACE INTO `item_mods` VALUES (25747,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (25747,11,33);    -- AGI: 33
REPLACE INTO `item_mods` VALUES (25747,12,19);    -- INT: 19
REPLACE INTO `item_mods` VALUES (25747,13,20);    -- MND: 20
REPLACE INTO `item_mods` VALUES (25747,14,21);    -- CHR: 21
REPLACE INTO `item_mods` VALUES (25747,23,28);    -- ATT: 28
REPLACE INTO `item_mods` VALUES (25747,24,28);    -- RATT: 28
REPLACE INTO `item_mods` VALUES (25747,25,32);    -- ACC: 32
REPLACE INTO `item_mods` VALUES (25747,26,32);    -- RACC: 32
REPLACE INTO `item_mods` VALUES (25747,29,6);     -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25747,31,64);    -- MEVA: 64
REPLACE INTO `item_mods` VALUES (25747,68,55);    -- EVA: 55
REPLACE INTO `item_mods` VALUES (25747,161,-600); -- DMGPHYS: -600
REPLACE INTO `item_mods` VALUES (25747,164,-600); -- DMGRANGE: -600
REPLACE INTO `item_mods` VALUES (25791,421,6);    -- CRIT_DMG_INCREASE: 3
REPLACE INTO `item_mods` VALUES (25747,384,200);  -- HASTE_GEAR: 200
-- Meghanada Cuirie +1
REPLACE INTO `item_mods` VALUES (25748,1,128);    -- DEF: 128
REPLACE INTO `item_mods` VALUES (25748,2,40);     -- HP: 40
REPLACE INTO `item_mods` VALUES (25748,8,31);     -- STR: 31
REPLACE INTO `item_mods` VALUES (25748,9,42);     -- DEX: 42
REPLACE INTO `item_mods` VALUES (25748,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (25748,11,38);    -- AGI: 38
REPLACE INTO `item_mods` VALUES (25748,12,19);    -- INT: 19
REPLACE INTO `item_mods` VALUES (25748,13,25);    -- MND: 25
REPLACE INTO `item_mods` VALUES (25748,14,26);    -- CHR: 26
REPLACE INTO `item_mods` VALUES (25748,23,40);    -- ATT: 40
REPLACE INTO `item_mods` VALUES (25748,24,40);    -- RATT: 40
REPLACE INTO `item_mods` VALUES (25748,25,44);    -- ACC: 44
REPLACE INTO `item_mods` VALUES (25748,26,44);    -- RACC: 44
REPLACE INTO `item_mods` VALUES (25748,29,6);     -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25748,31,64);    -- MEVA: 64
REPLACE INTO `item_mods` VALUES (25748,68,55);    -- EVA: 55
REPLACE INTO `item_mods` VALUES (25748,161,-700); -- DMGPHYS: -700
REPLACE INTO `item_mods` VALUES (25748,164,-700); -- DMGRANGE: -700
REPLACE INTO `item_mods` VALUES (25791,421,6);    -- CRIT_DMG_INCREASE: 5
REPLACE INTO `item_mods` VALUES (25748,384,200);  -- HASTE_GEAR: 200
-- Meghanada Cuirie +2	
REPLACE INTO `item_mods` VALUES (25791,1,133);    -- DEF: 133
REPLACE INTO `item_mods` VALUES (25791,2,40);     -- HP: 40
REPLACE INTO `item_mods` VALUES (25791,8,34);     -- STR: 34
REPLACE INTO `item_mods` VALUES (25791,9,45);     -- DEX: 45
REPLACE INTO `item_mods` VALUES (25791,10,23);    -- VIT: 23
REPLACE INTO `item_mods` VALUES (25791,11,41);    -- AGI: 41
REPLACE INTO `item_mods` VALUES (25791,12,19);    -- INT: 19
REPLACE INTO `item_mods` VALUES (25791,13,28);    -- MND: 28
REPLACE INTO `item_mods` VALUES (25791,14,29);    -- CHR: 29
REPLACE INTO `item_mods` VALUES (25791,23,46);    -- ATT: 46
REPLACE INTO `item_mods` VALUES (25791,24,46);    -- RATT: 46
REPLACE INTO `item_mods` VALUES (25791,25,50);    -- ACC: 50
REPLACE INTO `item_mods` VALUES (25791,26,50);    -- RACC: 50
REPLACE INTO `item_mods` VALUES (25791,29,6);     -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25791,31,64);    -- MEVA: 64
REPLACE INTO `item_mods` VALUES (25791,68,55);    -- EVA: 55
REPLACE INTO `item_mods` VALUES (25791,161,-800); -- DMGPHYS: -800
REPLACE INTO `item_mods` VALUES (25791,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25791,421,6);    -- CRIT_DMG_INCREASE: 6
-- Meghanada Gloves +2	
REPLACE INTO `item_mods` VALUES (25829,1,98);    -- DEF: 98
REPLACE INTO `item_mods` VALUES (25829,2,30);     -- HP: 30
REPLACE INTO `item_mods` VALUES (25829,8,23);     -- STR: 23
REPLACE INTO `item_mods` VALUES (25829,9,50);     -- DEX: 50
REPLACE INTO `item_mods` VALUES (25829,10,29);    -- VIT: 29
REPLACE INTO `item_mods` VALUES (25829,11,19);    -- AGI: 19
REPLACE INTO `item_mods` VALUES (25829,12,11);    -- INT: 11
REPLACE INTO `item_mods` VALUES (25829,13,34);    -- MND: 34
REPLACE INTO `item_mods` VALUES (25829,14,27);    -- CHR: 27
REPLACE INTO `item_mods` VALUES (25829,23,43);    -- ATT: 43
REPLACE INTO `item_mods` VALUES (25829,24,43);    -- RATT: 43
REPLACE INTO `item_mods` VALUES (25829,25,47);    -- ACC: 47
REPLACE INTO `item_mods` VALUES (25829,26,47);    -- RACC: 47
REPLACE INTO `item_mods` VALUES (25829,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25829,31,37);    -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25829,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (25829,161,-400); -- DMGPHYS: -400
REPLACE INTO `item_mods` VALUES (25829,384,400);  -- HASTE_GEAR: 400
REPLACE INTO `item_mods` VALUES (25829,840,7); -- ALL_WSDMG_ALL_HITS: 7
-- Meghanada Jambeaux +2
REPLACE INTO `item_mods` VALUES (25947,1,78);     -- DEF: 78
REPLACE INTO `item_mods` VALUES (25947,2,20);     -- HP: 20
REPLACE INTO `item_mods` VALUES (25947,8,23);     -- STR: 23
REPLACE INTO `item_mods` VALUES (25947,9,34);     -- DEX: 34
REPLACE INTO `item_mods` VALUES (25947,10,8);     -- VIT: 8
REPLACE INTO `item_mods` VALUES (25947,11,54);    -- AGI: 54
REPLACE INTO `item_mods` VALUES (25947,13,19);    -- MND: 19
REPLACE INTO `item_mods` VALUES (25947,14,34);    -- CHR: 34
REPLACE INTO `item_mods` VALUES (25947,23,42);    -- ATT: 42
REPLACE INTO `item_mods` VALUES (25947,24,42);    -- RATT: 42
REPLACE INTO `item_mods` VALUES (25947,25,46);    -- ACC: 46
REPLACE INTO `item_mods` VALUES (25947,26,46);    -- RACC: 46
REPLACE INTO `item_mods` VALUES (25947,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25947,31,69);    -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25947,68,74);    -- EVA: 74
REPLACE INTO `item_mods` VALUES (25947,161,-300); -- DMGPHYS: -300
REPLACE INTO `item_mods` VALUES (25947,365,10);    -- SNAP_SHOT: 10
REPLACE INTO `item_mods` VALUES (25947,384,200);  -- HASTE_GEAR: 200
-- Meghanada Visor
REPLACE INTO `item_mods` VALUES (25661,1054,700);  -- DEAD_AIM_EFFECT%: 700
-- Meghanada Visor +1
REPLACE INTO `item_mods` VALUES (25662,1054,1200);  -- DEAD_AIM_EFFECT%: 1000
-- Meghanada Visor +2
REPLACE INTO `item_mods` VALUES (25575,1054,1200);  -- DEAD_AIM_EFFECT%: 1200
-- Mochizuki chainmail +3
REPLACE INTO `item_mods` VALUES (23477,1,154);   -- DEF: 154
REPLACE INTO `item_mods` VALUES (23477,2,79);    -- HP: 79
REPLACE INTO `item_mods` VALUES (23477,8,34);    -- STR: 34
REPLACE INTO `item_mods` VALUES (23477,9,35);    -- DEX: 35
REPLACE INTO `item_mods` VALUES (23477,10,31);   -- VIT: 31
REPLACE INTO `item_mods` VALUES (23477,11,35);   -- AGI: 35
REPLACE INTO `item_mods` VALUES (23477,12,34);   -- INT: 34
REPLACE INTO `item_mods` VALUES (23477,13,34);   -- MND: 34
REPLACE INTO `item_mods` VALUES (23477,14,34);   -- CHR: 34
REPLACE INTO `item_mods` VALUES (23477,23,87);   -- ATT: 87
REPLACE INTO `item_mods` VALUES (23477,24,79);   -- RATT: 79
REPLACE INTO `item_mods` VALUES (23477,25,51);   -- ACC: 51
REPLACE INTO `item_mods` VALUES (23477,26,47);   -- RACC: 47
REPLACE INTO `item_mods` VALUES (23477,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23477,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23477,31,73);   -- MEVA: 73
REPLACE INTO `item_mods` VALUES (23477,68,72);   -- EVA: 72
REPLACE INTO `item_mods` VALUES (23477,259,9);   -- DUAL_WIELD: 9
REPLACE INTO `item_mods` VALUES (23477,384,400); -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23477,911,10);   -- DAKEN: 10
-- TODO: "Utsusemi" spellcasting time -14%
-- Mochizuki Hakama +3
REPLACE INTO `item_mods` VALUES (23611,480,10);  -- ALL_WSDMG_ALL_HITS: 10
-- Mochizuki hatsuburi +3
REPLACE INTO `item_mods` VALUES (23410,1,120);   -- DEF: 120
REPLACE INTO `item_mods` VALUES (23410,2,56);    -- HP: 56
REPLACE INTO `item_mods` VALUES (23410,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23410,9,31);    -- DEX: 31
REPLACE INTO `item_mods` VALUES (23410,10,33);   -- VIT: 33
REPLACE INTO `item_mods` VALUES (23410,11,33);   -- AGI: 33
REPLACE INTO `item_mods` VALUES (23410,12,32);   -- INT: 32
REPLACE INTO `item_mods` VALUES (23410,13,32);   -- MND: 32
REPLACE INTO `item_mods` VALUES (23410,14,32);   -- CHR: 32
REPLACE INTO `item_mods` VALUES (23410,23,62);   -- ATT: 62
REPLACE INTO `item_mods` VALUES (23410,25,44);   -- ACC: 44
REPLACE INTO `item_mods` VALUES (23410,28,61);   -- MATT: 61
REPLACE INTO `item_mods` VALUES (23410,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23410,30,37);   -- MACC: 37
REPLACE INTO `item_mods` VALUES (23410,31,63);   -- MEVA: 63
REPLACE INTO `item_mods` VALUES (23410,68,73);   -- EVA: 73
REPLACE INTO `item_mods` VALUES (23410,110,20);  -- PARRY: 20
REPLACE INTO `item_mods` VALUES (23410,384,800); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (23410,522,21);  -- NIN_NUKE_BONUS: 21
-- Mochizuki Tekko +3
REPLACE INTO `item_mods` VALUES (23544,1,109);    -- DEF: 109
REPLACE INTO `item_mods` VALUES (23544,2,45);    -- HP: 45
REPLACE INTO `item_mods` VALUES (23544,8,30);    -- STR: 30
REPLACE INTO `item_mods` VALUES (23544,9,44);    -- DEX: 44
REPLACE INTO `item_mods` VALUES (23544,10,37);   -- VIT: 37
REPLACE INTO `item_mods` VALUES (23544,11,16);   -- AGI: 16
REPLACE INTO `item_mods` VALUES (23544,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (23544,13,38);   -- MND: 38
REPLACE INTO `item_mods` VALUES (23544,14,26);   -- CHR: 26
REPLACE INTO `item_mods` VALUES (23544,23,79);   -- ATT: 79
REPLACE INTO `item_mods` VALUES (23544,25,38);   -- ACC: 38
REPLACE INTO `item_mods` VALUES (23544,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (23544,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23544,31,46);   -- MEVA: 46
REPLACE INTO `item_mods` VALUES (23544,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23544,289,9);   -- SUBTLE_BLOW: 9
REPLACE INTO `item_mods` VALUES (23544,308,38);  -- NINJA_TOOL: 38
REPLACE INTO `item_mods` VALUES (23544,384,500); -- HASTE_GEAR: 5%
-- Mousai Crackows
REPLACE INTO `item_mods` VALUES (25968, 1, 78); --mousai crackows -- DEF
REPLACE INTO `item_mods` VALUES (25968, 2, 79); --mousai crackows -- HP
REPLACE INTO `item_mods` VALUES (25968, 8, 10); --mousai crackows -- STR
REPLACE INTO `item_mods` VALUES (25968, 9, 16); --mousai crackows -- DEX
REPLACE INTO `item_mods` VALUES (25968, 10, 23); --mousai crackows -- VIT
REPLACE INTO `item_mods` VALUES (25968, 11, 38); --mousai crackows -- AGI
REPLACE INTO `item_mods` VALUES (25968, 13, 16); --mousai crackows -- MND
REPLACE INTO `item_mods` VALUES (25968, 14, 40); --mousai crackows -- CHR
REPLACE INTO `item_mods` VALUES (25968, 68, 63); --mousai crackows -- EVA
REPLACE INTO `item_mods` VALUES (25968, 31, 137); --mousai crackows -- MEVA
REPLACE INTO `item_mods` VALUES (25968, 29, 6); --mousai crackows -- MDEF
REPLACE INTO `item_mods` VALUES (25968, 384, 300); --mousai crackows -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25968, 439, 1); --mousai crackows -- MAMBO_EFFECT
-- Mousai Crackows +1
REPLACE INTO `item_mods` VALUES (25969, 1, 85); --mousai crackows +1 -- DEF
REPLACE INTO `item_mods` VALUES (25969, 2, 99); --mousai crackows +1 -- HP
REPLACE INTO `item_mods` VALUES (25969, 8, 10); --mousai crackows +1 -- STR
REPLACE INTO `item_mods` VALUES (25969, 9, 16); --mousai crackows +1 -- DEX
REPLACE INTO `item_mods` VALUES (25969, 10, 28); --mousai crackows +1 -- VIT
REPLACE INTO `item_mods` VALUES (25969, 11, 38); --mousai crackows +1 -- AGI
REPLACE INTO `item_mods` VALUES (25969, 13, 16); --mousai crackows +1 -- MND
REPLACE INTO `item_mods` VALUES (25969, 14, 45); --mousai crackows +1 -- CHR
REPLACE INTO `item_mods` VALUES (25969, 68, 73); --mousai crackows +1 -- EVA
REPLACE INTO `item_mods` VALUES (25969, 31, 147); --mousai crackows +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25969, 29, 7); --mousai crackows +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25969, 384, 300); --mousai crackows +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25969, 439, 2); --mousai crackows +1 -- MAMBO_EFFECT
-- Mousai Gages
REPLACE INTO `item_mods` VALUES (25988, 1, 93); --mousai gages -- DEF
REPLACE INTO `item_mods` VALUES (25988, 2, 68); --mousai gages -- HP
REPLACE INTO `item_mods` VALUES (25988, 8, 8); --mousai gages -- STR
REPLACE INTO `item_mods` VALUES (25988, 9, 33); --mousai gages -- DEX
REPLACE INTO `item_mods` VALUES (25988, 10, 40); --mousai gages -- VIT
REPLACE INTO `item_mods` VALUES (25988, 12, 20); --mousai gages -- INT
REPLACE INTO `item_mods` VALUES (25988, 13, 32); --mousai gages -- MND
REPLACE INTO `item_mods` VALUES (25988, 14, 33); --mousai gages -- CHR
REPLACE INTO `item_mods` VALUES (25988, 68, 37); --mousai gages -- EVA
REPLACE INTO `item_mods` VALUES (25988, 31, 91); --mousai gages -- MEVA
REPLACE INTO `item_mods` VALUES (25988, 29, 4); --mousai gages -- MDEF
REPLACE INTO `item_mods` VALUES (25988, 384, 300); --mousai gages -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25988, 445, 1); --mousai gages -- CAROL_EFFECT
-- Mousai Gages +1
REPLACE INTO `item_mods` VALUES (25989, 1, 103); --mousai gages +1 -- DEF
REPLACE INTO `item_mods` VALUES (25989, 2, 88); --mousai gages +1 -- HP
REPLACE INTO `item_mods` VALUES (25989, 8, 8); --mousai gages +1 -- STR
REPLACE INTO `item_mods` VALUES (25989, 9, 33); --mousai gages +1 -- DEX
REPLACE INTO `item_mods` VALUES (25989, 10, 45); --mousai gages +1 -- VIT
REPLACE INTO `item_mods` VALUES (25989, 12, 20); --mousai gages +1 -- INT
REPLACE INTO `item_mods` VALUES (25989, 13, 32); --mousai gages +1 -- MND
REPLACE INTO `item_mods` VALUES (25989, 14, 38); --mousai gages +1 -- CHR
REPLACE INTO `item_mods` VALUES (25989, 68, 47); --mousai gages +1 -- EVA
REPLACE INTO `item_mods` VALUES (25989, 31, 101); --mousai gages +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25989, 29, 5); --mousai gages +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25989, 384, 300); --mousai gages +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25989, 445, 2); --mousai gages +1 -- CAROL_EFFECT
-- Mousai Manteel
REPLACE INTO `item_mods` VALUES (26537, 1, 135); --mousai manteel -- DEF
REPLACE INTO `item_mods` VALUES (26537, 2, 171); --mousai manteel -- HP
REPLACE INTO `item_mods` VALUES (26537, 8, 21); --mousai manteel -- STR
REPLACE INTO `item_mods` VALUES (26537, 9, 28); --mousai manteel -- DEX
REPLACE INTO `item_mods` VALUES (26537, 10, 34); --mousai manteel -- VIT
REPLACE INTO `item_mods` VALUES (26537, 11, 24); --mousai manteel -- AGI
REPLACE INTO `item_mods` VALUES (26537, 12, 30); --mousai manteel -- INT
REPLACE INTO `item_mods` VALUES (26537, 13, 28); --mousai manteel -- MND
REPLACE INTO `item_mods` VALUES (26537, 14, 37); --mousai manteel -- CHR
REPLACE INTO `item_mods` VALUES (26537, 30, 42); --mousai manteel -- MACC
REPLACE INTO `item_mods` VALUES (26537, 68, 55); --mousai manteel -- EVA
REPLACE INTO `item_mods` VALUES (26537, 31, 118); --mousai manteel -- MEVA
REPLACE INTO `item_mods` VALUES (26537, 29, 8); --mousai manteel -- MDEF
REPLACE INTO `item_mods` VALUES (26537, 384, 300); --mousai manteel -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26537, 437, 1); --mousai manteel -- THRENODY_EFFECT
-- Mousai Manteel +1
REPLACE INTO `item_mods` VALUES (26538, 1, 145); --mousai manteel +1 -- DEF
REPLACE INTO `item_mods` VALUES (26538, 2, 191); --mousai manteel +1 -- HP
REPLACE INTO `item_mods` VALUES (26538, 8, 21); --mousai manteel +1 -- STR
REPLACE INTO `item_mods` VALUES (26538, 9, 28); --mousai manteel +1 -- DEX
REPLACE INTO `item_mods` VALUES (26538, 10, 39); --mousai manteel +1 -- VIT
REPLACE INTO `item_mods` VALUES (26538, 11, 24); --mousai manteel +1 -- AGI
REPLACE INTO `item_mods` VALUES (26538, 12, 30); --mousai manteel +1 -- INT
REPLACE INTO `item_mods` VALUES (26538, 13, 28); --mousai manteel +1 -- MND
REPLACE INTO `item_mods` VALUES (26538, 14, 42); --mousai manteel +1 -- CHR
REPLACE INTO `item_mods` VALUES (26538, 30, 52); --mousai manteel +1 -- MACC
REPLACE INTO `item_mods` VALUES (26538, 68, 65); --mousai manteel +1 -- EVA
REPLACE INTO `item_mods` VALUES (26538, 31, 128); --mousai manteel +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26538, 29, 9); --mousai manteel +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26538, 384, 300); --mousai manteel +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26538, 437, 2); --mousai manteel +1 -- THRENODY_EFFECT
-- Mousai Seraweels
REPLACE INTO `item_mods` VALUES (25901, 1, 117); --mousai seraweels -- DEF
REPLACE INTO `item_mods` VALUES (25901, 2, 136); --mousai seraweels -- HP
REPLACE INTO `item_mods` VALUES (25901, 8, 25); --mousai seraweels -- STR
REPLACE INTO `item_mods` VALUES (25901, 10, 25); --mousai seraweels -- VIT
REPLACE INTO `item_mods` VALUES (25901, 11, 20); --mousai seraweels -- AGI
REPLACE INTO `item_mods` VALUES (25901, 12, 35); --mousai seraweels -- INT
REPLACE INTO `item_mods` VALUES (25901, 13, 23); --mousai seraweels -- MND
REPLACE INTO `item_mods` VALUES (25901, 14, 28); --mousai seraweels -- CHR
REPLACE INTO `item_mods` VALUES (25901, 68, 44); --mousai seraweels -- EVA
REPLACE INTO `item_mods` VALUES (25901, 31, 137); --mousai seraweels -- MEVA
REPLACE INTO `item_mods` VALUES (25901, 29, 8); --mousai seraweels -- MDEF
REPLACE INTO `item_mods` VALUES (25901, 384, 500); --mousai seraweels -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25901, 433, 1); --mousai seraweels -- MINNE_EFFECT
-- Mousai Seraweels +1
REPLACE INTO `item_mods` VALUES (25902, 1, 127); --mousai seraweels +1 -- DEF
REPLACE INTO `item_mods` VALUES (25902, 2, 156); --mousai seraweels +1 -- HP
REPLACE INTO `item_mods` VALUES (25902, 8, 25); --mousai seraweels +1 -- STR
REPLACE INTO `item_mods` VALUES (25902, 10, 30); --mousai seraweels +1 -- VIT
REPLACE INTO `item_mods` VALUES (25902, 11, 20); --mousai seraweels +1 -- AGI
REPLACE INTO `item_mods` VALUES (25902, 12, 35); --mousai seraweels +1 -- INT
REPLACE INTO `item_mods` VALUES (25902, 13, 23); --mousai seraweels +1 -- MND
REPLACE INTO `item_mods` VALUES (25902, 14, 33); --mousai seraweels +1 -- CHR
REPLACE INTO `item_mods` VALUES (25902, 68, 54); --mousai seraweels +1 -- EVA
REPLACE INTO `item_mods` VALUES (25902, 31, 147); --mousai seraweels +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25902, 29, 9); --mousai seraweels +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25902, 384, 500); --mousai seraweels +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25902, 433, 2); --mousai seraweels +1 -- MINNE_EFFECT
-- Mrigavyadha Gloves
REPLACE INTO `item_mods` VALUES (25760, 1, 99); --mrigavyadha gloves -- DEF
REPLACE INTO `item_mods` VALUES (25760, 2, 22); --mrigavyadha gloves -- HP
REPLACE INTO `item_mods` VALUES (25760, 8, 16); --mrigavyadha gloves -- STR
REPLACE INTO `item_mods` VALUES (25760, 9, 34); --mrigavyadha gloves -- DEX
REPLACE INTO `item_mods` VALUES (25760, 10, 28); --mrigavyadha gloves -- VIT
REPLACE INTO `item_mods` VALUES (25760, 11, 15); --mrigavyadha gloves -- AGI
REPLACE INTO `item_mods` VALUES (25760, 12, 8); --mrigavyadha gloves -- INT
REPLACE INTO `item_mods` VALUES (25760, 13, 29); --mrigavyadha gloves -- MND
REPLACE INTO `item_mods` VALUES (25760, 14, 16); --mrigavyadha gloves -- CHR
REPLACE INTO `item_mods` VALUES (25760, 68, 27); --mrigavyadha gloves -- EVA
REPLACE INTO `item_mods` VALUES (25760, 31, 43); --mrigavyadha gloves -- MEVA
REPLACE INTO `item_mods` VALUES (25760, 29, 2); --mrigavyadha gloves -- MDEF
REPLACE INTO `item_mods` VALUES (25760, 384, 500); --mrigavyadha gloves -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25760, 359, 15); --mrigavyadha gloves -- RAPID_SHOT
REPLACE INTO `item_mods` VALUES (25760, 73, 8); --mrigavyadha gloves -- STORETP
REPLACE INTO `item_mods` VALUES (25760, 225, 10); --mrigavyadha gloves -- BIRD_KILLER
-- Mummu Gamashes +2
REPLACE INTO `item_mods` VALUES (25954,1,85);    -- DEF: 85
REPLACE INTO `item_mods` VALUES (25954,2,30);    -- HP: 30
REPLACE INTO `item_mods` VALUES (25954,5,10);    -- MP: 10
REPLACE INTO `item_mods` VALUES (25954,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (25954,9,37);    -- DEX: 37
REPLACE INTO `item_mods` VALUES (25954,10,10);   -- VIT: 10
REPLACE INTO `item_mods` VALUES (25954,11,57);   -- AGI: 57
REPLACE INTO `item_mods` VALUES (25954,13,11);   -- MND: 11
REPLACE INTO `item_mods` VALUES (25954,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (25954,25,42);   -- ACC: 42
REPLACE INTO `item_mods` VALUES (25954,26,42);   -- RACC: 42
REPLACE INTO `item_mods` VALUES (25954,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25954,30,42);   -- MACC: 42
REPLACE INTO `item_mods` VALUES (25954,31,107);  -- MEVA: 107
REPLACE INTO `item_mods` VALUES (25954,68,88);   -- EVA: 88
REPLACE INTO `item_mods` VALUES (25954,165,5);   -- CRITHITRATE: 5
REPLACE INTO `item_mods` VALUES (25954,289,9);   -- SUBTLE_BLOW: 9
REPLACE INTO `item_mods` VALUES (25954,384,400); -- HASTE_GEAR: 400
-- Mummu Jacket +2	
REPLACE INTO `item_mods` VALUES (25798,1,141);   -- DEF: 141
REPLACE INTO `item_mods` VALUES (25798,2,60);    -- HP: 60
REPLACE INTO `item_mods` VALUES (25798,5,35);    -- MP: 35
REPLACE INTO `item_mods` VALUES (25798,8,28);    -- STR: 28
REPLACE INTO `item_mods` VALUES (25798,9,48);    -- DEX: 48
REPLACE INTO `item_mods` VALUES (25798,10,24);   -- VIT: 24
REPLACE INTO `item_mods` VALUES (25798,11,44);   -- AGI: 44
REPLACE INTO `item_mods` VALUES (25798,12,21);   -- INT: 21
REPLACE INTO `item_mods` VALUES (25798,13,20);   -- MND: 20
REPLACE INTO `item_mods` VALUES (25798,14,24);   -- CHR: 24
REPLACE INTO `item_mods` VALUES (25798,25,46);   -- ACC: 46
REPLACE INTO `item_mods` VALUES (25798,26,46);   -- RACC: 46
REPLACE INTO `item_mods` VALUES (25798,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25798,30,46);   -- MACC: 46
REPLACE INTO `item_mods` VALUES (25798,31,80);   -- MEVA: 80
REPLACE INTO `item_mods` VALUES (25798,68,69);   -- EVA: 69
REPLACE INTO `item_mods` VALUES (25798,165,9);   -- CRITHITRATE: 9
REPLACE INTO `item_mods` VALUES (25798,73,6);    -- STORETP: 6
REPLACE INTO `item_mods` VALUES (25798,384,400); -- HASTE_GEAR: 400
-- Mummu Kecks +2
REPLACE INTO `item_mods` VALUES (25887,1,123);    -- DEF: 123
REPLACE INTO `item_mods` VALUES (25887,2,52);     -- HP: 52
REPLACE INTO `item_mods` VALUES (25887,5,25);     -- MP: 25
REPLACE INTO `item_mods` VALUES (25887,8,33);     -- STR: 33
REPLACE INTO `item_mods` VALUES (25887,9,11);      -- DEX: 11
REPLACE INTO `item_mods` VALUES (25887,10,16);    -- VIT: 16
REPLACE INTO `item_mods` VALUES (25887,11,45);    -- AGI: 45
REPLACE INTO `item_mods` VALUES (25887,12,29);    -- INT: 29
REPLACE INTO `item_mods` VALUES (25887,13,15);    -- MND: 15
REPLACE INTO `item_mods` VALUES (25887,14,12);    -- CHR: 12
REPLACE INTO `item_mods` VALUES (25887,25,45);    -- ACC: 45
REPLACE INTO `item_mods` VALUES (25887,26,45);    -- RACC: 45
REPLACE INTO `item_mods` VALUES (25887,29,5);     -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25887,30,45);    -- MACC: 45
REPLACE INTO `item_mods` VALUES (25887,31,107);   -- MEVA: 107
REPLACE INTO `item_mods` VALUES (25887,68,55);    -- EVA: 55
REPLACE INTO `item_mods` VALUES (25887,160,-500); -- DMG: -500
REPLACE INTO `item_mods` VALUES (25887,165,7);    -- CRITHITRATE: 7
REPLACE INTO `item_mods` VALUES (25887,384,600);  -- HASTE_GEAR: 600
-- Mummu Wrists +2	
REPLACE INTO `item_mods` VALUES (25836,1,106);   -- DEF: 106
REPLACE INTO `item_mods` VALUES (25836,2,45);    -- HP: 45
REPLACE INTO `item_mods` VALUES (25836,5,15);    -- MP: 15
REPLACE INTO `item_mods` VALUES (25836,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (25836,9,53);    -- DEX: 53
REPLACE INTO `item_mods` VALUES (25836,10,30);   -- VIT: 30
REPLACE INTO `item_mods` VALUES (25836,11,22);   -- AGI: 22
REPLACE INTO `item_mods` VALUES (25836,12,14);   -- INT: 14
REPLACE INTO `item_mods` VALUES (25836,13,26);   -- MND: 26
REPLACE INTO `item_mods` VALUES (25836,14,21);   -- CHR: 21
REPLACE INTO `item_mods` VALUES (25836,25,43);   -- ACC: 43
REPLACE INTO `item_mods` VALUES (25836,26,43);   -- RACC: 43
REPLACE INTO `item_mods` VALUES (25836,29,2);    -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25836,30,43);   -- MACC: 43
REPLACE INTO `item_mods` VALUES (25836,31,43);   -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25836,68,49);   -- EVA: 49
REPLACE INTO `item_mods` VALUES (25836,165,6);   -- CRITHITRATE: 6
REPLACE INTO `item_mods` VALUES (25836,384,500); -- HASTE_GEAR: 500
REPLACE INTO `item_mods` VALUES (25936,288,6);   -- DOUBLE_ATTACK: 6
-- Naga hakama
REPLACE INTO `item_mods` VALUES (27284, 384, 600); --naga hakama -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27284, 259, 4); --naga hakama -- DUAL_WIELD
REPLACE INTO `item_mods` VALUES (27284, 68, 33); --naga hakama -- EVA
REPLACE INTO `item_mods` VALUES (27284, 31, 64); --naga hakama -- MEVA
REPLACE INTO `item_mods` VALUES (27284, 29, 3); --naga hakama -- MDEF
REPLACE INTO `item_mods` VALUES (27284, 14, 10); --naga hakama -- CHR
REPLACE INTO `item_mods` VALUES (27284, 13, 17); --naga hakama -- MND
REPLACE INTO `item_mods` VALUES (27284, 12, 32); --naga hakama -- INT
REPLACE INTO `item_mods` VALUES (27284, 11, 21); --naga hakama -- AGI
REPLACE INTO `item_mods` VALUES (27284, 10, 19); --naga hakama -- VIT
REPLACE INTO `item_mods` VALUES (27284, 8, 37); --naga hakama -- STR
REPLACE INTO `item_mods` VALUES (27284, 2, 97); --naga hakama -- HP
REPLACE INTO `item_mods` VALUES (27284, 1, 110); --naga hakama -- DEF
REPLACE INTO `item_mods_pet` VALUES (27284,25,20,0); -- All Pets - ACC: 20
REPLACE INTO `item_mods_pet` VALUES (27284,26,20,0); -- All Pets - RACC: 20
-- Naga kyahan
REPLACE INTO `item_mods` VALUES (27459, 384, 400); --naga kyahan -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27459, 288, 3); --naga kyahan -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (27459, 68, 69); --naga kyahan -- EVA
REPLACE INTO `item_mods` VALUES (27459, 31, 64); --naga kyahan -- MEVA
REPLACE INTO `item_mods` VALUES (27459, 29, 3); --naga kyahan -- MDEF
REPLACE INTO `item_mods` VALUES (27459, 25, 18); --naga kyahan -- ACC
REPLACE INTO `item_mods` VALUES (27459, 23, 18); --naga kyahan -- ATT
REPLACE INTO `item_mods` VALUES (27459, 14, 29); --naga kyahan -- CHR
REPLACE INTO `item_mods` VALUES (27459, 13, 12); --naga kyahan -- MND
REPLACE INTO `item_mods` VALUES (27459, 11, 34); --naga kyahan -- AGI
REPLACE INTO `item_mods` VALUES (27459, 10, 11); --naga kyahan -- VIT
REPLACE INTO `item_mods` VALUES (27459, 9, 15); --naga kyahan -- DEX
REPLACE INTO `item_mods` VALUES (27459, 8, 14); --naga kyahan -- STR
REPLACE INTO `item_mods` VALUES (27459, 2, 63); --naga kyahan -- HP
REPLACE INTO `item_mods` VALUES (27459, 1, 67); --naga kyahan -- DEF
REPLACE INTO `item_mods_pet` VALUES (27459,101,10,3); -- Automaton - AUTO_MELEE_SKILL: 10
REPLACE INTO `item_mods_pet` VALUES (27459,103,10,3); -- Automaton - AUTO_MAGIC_SKILL: 10
REPLACE INTO `item_mods_pet` VALUES (27459,102,10,3); -- Automaton - AUTO_RANGED_SKILL: 10
-- Naga samue
REPLACE INTO `item_mods` VALUES (26949, 384, 400); --naga samue -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26949, 73, 5); --naga samue -- STORETP
REPLACE INTO `item_mods` VALUES (26949, 68, 52); --naga samue -- EVA
REPLACE INTO `item_mods` VALUES (26949, 31, 53); --naga samue -- MEVA
REPLACE INTO `item_mods` VALUES (26949, 29, 4); --naga samue -- MDEF
REPLACE INTO `item_mods` VALUES (26949, 23, 15); --naga samue -- ATT
REPLACE INTO `item_mods` VALUES (26949, 14, 26); --naga samue -- CHR
REPLACE INTO `item_mods` VALUES (26949, 13, 26); --naga samue -- MND
REPLACE INTO `item_mods` VALUES (26949, 12, 26); --naga samue -- INT
REPLACE INTO `item_mods` VALUES (26949, 11, 27); --naga samue -- AGI
REPLACE INTO `item_mods` VALUES (26949, 10, 23); --naga samue -- VIT
REPLACE INTO `item_mods` VALUES (26949, 9, 30); --naga samue -- DEX
REPLACE INTO `item_mods` VALUES (26949, 8, 29); --naga samue -- STR
REPLACE INTO `item_mods` VALUES (26949, 2, 119); --naga samue -- HP
REPLACE INTO `item_mods` VALUES (26949, 1, 124); --naga samue -- DEF
-- Naga somen
REPLACE INTO `item_mods` VALUES (26793, 384, 800); --naga somen -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26793, 163, -300); --naga somen -- DMGMAGIC
REPLACE INTO `item_mods` VALUES (26793, 68, 38); --naga somen -- EVA
REPLACE INTO `item_mods` VALUES (26793, 31, 43); --naga somen -- MEVA
REPLACE INTO `item_mods` VALUES (26793, 29, 4); --naga somen -- MDEF
REPLACE INTO `item_mods` VALUES (26793, 25, 18); --naga somen -- ACC
REPLACE INTO `item_mods` VALUES (26793, 14, 18); --naga somen -- CHR
REPLACE INTO `item_mods` VALUES (26793, 13, 18); --naga somen -- MND
REPLACE INTO `item_mods` VALUES (26793, 12, 18); --naga somen -- INT
REPLACE INTO `item_mods` VALUES (26793, 11, 19); --naga somen -- AGI
REPLACE INTO `item_mods` VALUES (26793, 10, 19); --naga somen -- VIT
REPLACE INTO `item_mods` VALUES (26793, 9, 24); --naga somen -- DEX
REPLACE INTO `item_mods` VALUES (26793, 8, 17); --naga somen -- STR
REPLACE INTO `item_mods` VALUES (26793, 2, 86); --naga somen -- HP
REPLACE INTO `item_mods` VALUES (26793, 1, 98); --naga somen -- DEF
-- Naga tekko
REPLACE INTO `item_mods` VALUES (27099, 384, 500); --naga tekko -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27099, 160, -200); --naga tekko -- DMG
REPLACE INTO `item_mods` VALUES (27099, 68, 22); --naga tekko -- EVA
REPLACE INTO `item_mods` VALUES (27099, 31, 26); --naga tekko -- MEVA
REPLACE INTO `item_mods` VALUES (27099, 29, 1); --naga tekko -- MDEF
REPLACE INTO `item_mods` VALUES (27099, 14, 18); --naga tekko -- CHR
REPLACE INTO `item_mods` VALUES (27099, 13, 30); --naga tekko -- MND
REPLACE INTO `item_mods` VALUES (27099, 12, 12); --naga tekko -- INT
REPLACE INTO `item_mods` VALUES (27099, 11, 8); --naga tekko -- AGI
REPLACE INTO `item_mods` VALUES (27099, 10, 34); --naga tekko -- VIT
REPLACE INTO `item_mods` VALUES (27099, 9, 36); --naga tekko -- DEX
REPLACE INTO `item_mods` VALUES (27099, 8, 16); --naga tekko -- STR
REPLACE INTO `item_mods` VALUES (27099, 2, 65); --naga tekko -- HP
REPLACE INTO `item_mods` VALUES (27099, 1, 83); --naga tekko -- DEF
REPLACE INTO `item_mods_pet` VALUES (27099,23,20,0); -- All Pets - ATT: 20
REPLACE INTO `item_mods_pet` VALUES (27099,24,20,0); -- All Pets - RATT: 20
-- Navon Crackows
REPLACE INTO `item_mods` VALUES (25922, 1, 69); --navon crackows -- DEF
REPLACE INTO `item_mods` VALUES (25922, 2, 9); --navon crackows -- HP
REPLACE INTO `item_mods` VALUES (25922, 5, 20); --navon crackows -- MP
REPLACE INTO `item_mods` VALUES (25922, 8, 8); --navon crackows -- STR
REPLACE INTO `item_mods` VALUES (25922, 9, 8); --navon crackows -- DEX
REPLACE INTO `item_mods` VALUES (25922, 10, 8); --navon crackows -- VIT
REPLACE INTO `item_mods` VALUES (25922, 11, 29); --navon crackows -- AGI
REPLACE INTO `item_mods` VALUES (25922, 12, 19); --navon crackows -- INT
REPLACE INTO `item_mods` VALUES (25922, 13, 17); --navon crackows -- MND
REPLACE INTO `item_mods` VALUES (25922, 14, 32); --navon crackows -- CHR
REPLACE INTO `item_mods` VALUES (25922, 28, 35); --navon crackows -- MATT
REPLACE INTO `item_mods` VALUES (25922, 29, 6); --navon crackows -- MDEF
REPLACE INTO `item_mods` VALUES (25922, 31, 118); --navon crackows -- MEVA
REPLACE INTO `item_mods` VALUES (25922, 68, 60); --navon crackows -- EVA
REPLACE INTO `item_mods` VALUES (25922, 115, 15); --navon crackows -- ELEM
REPLACE INTO `item_mods` VALUES (25922, 170, 5); --navon crackows -- FASTCAST
REPLACE INTO `item_mods` VALUES (25922, 311, 10); --navon crackows -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (25922, 384, 300); --navon crackows -- HASTE_GEAR
-- Nibiru shield
REPLACE INTO `item_mods` VALUES (27642, 1, 130);  -- DEF: 130
REPLACE INTO `item_mods` VALUES (27642, 8, 5);  -- STR: 5
REPLACE INTO `item_mods` VALUES (27642, 10, 5);  -- VIT: 5
REPLACE INTO `item_mods` VALUES (27642, 25, 7);  -- ACC: 7
REPLACE INTO `item_mods` VALUES (27642, 109, 112);  -- SHIELD: 112
REPLACE INTO `item_mods` VALUES (27642, 160, -600);  -- DMG: -6%
-- Null Masque
REPLACE INTO `item_mods` VALUES (24270, 1, 138);  -- DEF
REPLACE INTO `item_mods` VALUES (24270, 2, 100);  -- HP
REPLACE INTO `item_mods` VALUES (24270, 5, 70);  -- MP
REPLACE INTO `item_mods` VALUES (24270, 8, 28);  -- STR
REPLACE INTO `item_mods` VALUES (24270, 9, 28);  -- DEX
REPLACE INTO `item_mods` VALUES (24270, 10, 50);  -- VIT
REPLACE INTO `item_mods` VALUES (24270, 11, 28);  -- AGI
REPLACE INTO `item_mods` VALUES (24270, 12, 28);  -- INT
REPLACE INTO `item_mods` VALUES (24270, 13, 50);  -- MND
REPLACE INTO `item_mods` VALUES (24270, 14, 28);  -- CHR
REPLACE INTO `item_mods` VALUES (24270, 25, 50);  -- ACC
REPLACE INTO `item_mods` VALUES (24270, 30, 50);  -- MACC
REPLACE INTO `item_mods` VALUES (24270, 68, 100);  -- EVA
REPLACE INTO `item_mods` VALUES (24270, 31, 100);  -- MEVA
REPLACE INTO `item_mods` VALUES (24270, 29, 8);  -- MDEF
REPLACE INTO `item_mods` VALUES (24270, 384, 1000);  -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (24270, 370, 3);  -- REGEN
REPLACE INTO `item_mods` VALUES (24270, 369, 1);  -- REFRESH
REPLACE INTO `item_mods` VALUES (24270, 368, 2);  -- REGAIN
REPLACE INTO `item_mods` VALUES (24270, 160, -1000);  -- DMG
-- Oshosi Gloves
REPLACE INTO `item_mods` VALUES (25976, 1, 97); --oshosi gloves -- DEF
REPLACE INTO `item_mods` VALUES (25976, 2, 29); --oshosi gloves -- HP
REPLACE INTO `item_mods` VALUES (25976, 8, 20); --oshosi gloves -- STR
REPLACE INTO `item_mods` VALUES (25976, 9, 35); --oshosi gloves -- DEX
REPLACE INTO `item_mods` VALUES (25976, 10, 34); --oshosi gloves -- VIT
REPLACE INTO `item_mods` VALUES (25976, 12, 11); --oshosi gloves -- INT
REPLACE INTO `item_mods` VALUES (25976, 13, 29); --oshosi gloves -- MND
REPLACE INTO `item_mods` VALUES (25976, 14, 20); --oshosi gloves -- CHR
REPLACE INTO `item_mods` VALUES (25976, 26, 34); --oshosi gloves -- RACC
REPLACE INTO `item_mods` VALUES (25976, 30, 39); --oshosi gloves -- MACC
REPLACE INTO `item_mods` VALUES (25976, 68, 37); --oshosi gloves -- EVA
REPLACE INTO `item_mods` VALUES (25976, 31, 69); --oshosi gloves -- MEVA
REPLACE INTO `item_mods` VALUES (25976, 29, 4); --oshosi gloves -- MDEF
REPLACE INTO `item_mods` VALUES (25976, 289, 10); --oshosi gloves -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25976, 365, 8); --oshosi gloves -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (25976, 422, 4); --oshosi gloves -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25976, 999, 3); --oshosi gloves -- TRIPLE_SHOT_RATE
-- Oshosi Gloves +1
REPLACE INTO `item_mods` VALUES (25977, 1, 107); --oshosi gloves +1 -- DEF
REPLACE INTO `item_mods` VALUES (25977, 2, 49); --oshosi gloves +1 -- HP
REPLACE INTO `item_mods` VALUES (25977, 8, 25); --oshosi gloves +1 -- STR
REPLACE INTO `item_mods` VALUES (25977, 9, 35); --oshosi gloves +1 -- DEX
REPLACE INTO `item_mods` VALUES (25977, 10, 34); --oshosi gloves +1 -- VIT
REPLACE INTO `item_mods` VALUES (25977, 11, 5); --oshosi gloves +1 -- AGI
REPLACE INTO `item_mods` VALUES (25977, 12, 11); --oshosi gloves +1 -- INT
REPLACE INTO `item_mods` VALUES (25977, 13, 29); --oshosi gloves +1 -- MND
REPLACE INTO `item_mods` VALUES (25977, 14, 20); --oshosi gloves +1 -- CHR
REPLACE INTO `item_mods` VALUES (25977, 26, 44); --oshosi gloves +1 -- RACC
REPLACE INTO `item_mods` VALUES (25977, 30, 49); --oshosi gloves +1 -- MACC
REPLACE INTO `item_mods` VALUES (25977, 68, 47); --oshosi gloves +1 -- EVA
REPLACE INTO `item_mods` VALUES (25977, 31, 79); --oshosi gloves +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25977, 29, 5); --oshosi gloves +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25977, 289, 15); --oshosi gloves +1 -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25977, 365, 10); --oshosi gloves +1 -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (25977, 422, 5); --oshosi gloves +1 -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25977, 999, 4); --oshosi gloves +1 -- TRIPLE_SHOT_RATE
-- Oshosi leggings
REPLACE INTO `item_mods` VALUES (25956, 1, 79); --oshosi leggings -- DEF
REPLACE INTO `item_mods` VALUES (25956, 2, 38); --oshosi leggings -- HP
REPLACE INTO `item_mods` VALUES (25956, 8, 21); --oshosi leggings -- STR
REPLACE INTO `item_mods` VALUES (25956, 9, 24); --oshosi leggings -- DEX
REPLACE INTO `item_mods` VALUES (25956, 10, 15); --oshosi leggings -- VIT
REPLACE INTO `item_mods` VALUES (25956, 11, 51); --oshosi leggings -- AGI
REPLACE INTO `item_mods` VALUES (25956, 13, 11); --oshosi leggings -- MND
REPLACE INTO `item_mods` VALUES (25956, 14, 34); --oshosi leggings -- CHR
REPLACE INTO `item_mods` VALUES (25956, 26, 33); --oshosi leggings -- RACC
REPLACE INTO `item_mods` VALUES (25956, 30, 38); --oshosi leggings -- MACC
REPLACE INTO `item_mods` VALUES (25956, 68, 63); --oshosi leggings -- EVA
REPLACE INTO `item_mods` VALUES (25956, 31, 121); --oshosi leggings -- MEVA
REPLACE INTO `item_mods` VALUES (25956, 29, 6); --oshosi leggings -- MDEF
REPLACE INTO `item_mods` VALUES (25956, 27, -10); --oshosi leggings -- ENMITY
REPLACE INTO `item_mods` VALUES (25956, 422, 3); --oshosi leggings -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25956, 999, 2); --oshosi leggings -- TRIPLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25956, 165, 8); --oshosi leggings -- CRITHITRATE
-- Oshosi leggings +1
REPLACE INTO `item_mods` VALUES (25957, 1, 89); --oshosi leggings +1 -- DEF
REPLACE INTO `item_mods` VALUES (25957, 2, 58); --oshosi leggings +1 -- HP
REPLACE INTO `item_mods` VALUES (25957, 8, 26); --oshosi leggings +1 -- STR
REPLACE INTO `item_mods` VALUES (25957, 9, 24); --oshosi leggings +1 -- DEX
REPLACE INTO `item_mods` VALUES (25957, 10, 15); --oshosi leggings +1 -- VIT
REPLACE INTO `item_mods` VALUES (25957, 11, 56); --oshosi leggings +1 -- AGI
REPLACE INTO `item_mods` VALUES (25957, 13, 11); --oshosi leggings +1 -- MND
REPLACE INTO `item_mods` VALUES (25957, 14, 34); --oshosi leggings +1 -- CHR
REPLACE INTO `item_mods` VALUES (25957, 26, 43); --oshosi leggings +1 -- RACC
REPLACE INTO `item_mods` VALUES (25957, 30, 48); --oshosi leggings +1 -- MACC
REPLACE INTO `item_mods` VALUES (25957, 68, 73); --oshosi leggings +1 -- EVA
REPLACE INTO `item_mods` VALUES (25957, 31, 131); --oshosi leggings +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25957, 29, 7); --oshosi leggings +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25957, 27, -15); --oshosi leggings +1 -- ENMITY
REPLACE INTO `item_mods` VALUES (25957, 422, 4); --oshosi leggings +1 -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25957, 999, 3); --oshosi leggings +1 -- TRIPLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25957, 165, 10); --oshosi leggings +1 -- CRITHITRATE
-- Oshosi trousers
REPLACE INTO `item_mods` VALUES (25889, 1, 121); --oshosi trousers -- DEF
REPLACE INTO `item_mods` VALUES (25889, 2, 84); --oshosi trousers -- HP
REPLACE INTO `item_mods` VALUES (25889, 8, 38); --oshosi trousers -- STR
REPLACE INTO `item_mods` VALUES (25889, 10, 19); --oshosi trousers -- VIT
REPLACE INTO `item_mods` VALUES (25889, 11, 38); --oshosi trousers -- AGI
REPLACE INTO `item_mods` VALUES (25889, 12, 29); --oshosi trousers -- INT
REPLACE INTO `item_mods` VALUES (25889, 13, 20); --oshosi trousers -- MND
REPLACE INTO `item_mods` VALUES (25889, 14, 15); --oshosi trousers -- CHR
REPLACE INTO `item_mods` VALUES (25889, 26, 36); --oshosi trousers -- RACC
REPLACE INTO `item_mods` VALUES (25889, 29, 8); --oshosi trousers -- MDEF
REPLACE INTO `item_mods` VALUES (25889, 30, 41); --oshosi trousers -- MACC
REPLACE INTO `item_mods` VALUES (25889, 31, 121); --oshosi trousers -- MEVA
REPLACE INTO `item_mods` VALUES (25889, 68, 44); --oshosi trousers -- EVA
REPLACE INTO `item_mods` VALUES (25889, 365, 10); --oshosi trousers -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (25889, 422, 6); --oshosi trousers -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25889, 999, 5); --oshosi trousers -- TRIPLE_SHOT_RATE
-- Oshosi trousers +1
REPLACE INTO `item_mods` VALUES (25890, 1, 131); --oshosi trousers +1 -- DEF
REPLACE INTO `item_mods` VALUES (25890, 2, 104); --oshosi trousers +1 -- HP
REPLACE INTO `item_mods` VALUES (25890, 8, 43); --oshosi trousers +1 -- STR
REPLACE INTO `item_mods` VALUES (25890, 10, 19); --oshosi trousers +1 -- VIT
REPLACE INTO `item_mods` VALUES (25890, 11, 43); --oshosi trousers +1 -- AGI
REPLACE INTO `item_mods` VALUES (25890, 12, 29); --oshosi trousers +1 -- INT
REPLACE INTO `item_mods` VALUES (25890, 13, 20); --oshosi trousers +1 -- MND
REPLACE INTO `item_mods` VALUES (25890, 14, 15); --oshosi trousers +1 -- CHR
REPLACE INTO `item_mods` VALUES (25890, 26, 46); --oshosi trousers +1 -- RACC
REPLACE INTO `item_mods` VALUES (25890, 30, 51); --oshosi trousers +1 -- MACC
REPLACE INTO `item_mods` VALUES (25890, 68, 54); --oshosi trousers +1 -- EVA
REPLACE INTO `item_mods` VALUES (25890, 31, 131); --oshosi trousers +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25890, 29, 9); --oshosi trousers +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25890, 365, 12); --oshosi trousers +1 -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (25890, 1053, 5); --oshosi trousers +1 -- TRUE_SHOT_EFFECT
REPLACE INTO `item_mods` VALUES (25890, 422, 7); --oshosi trousers +1 -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (25890, 999, 6); --oshosi trousers +1 -- TRIPLE_SHOT_RATE
-- Oshosi Vest
REPLACE INTO `item_mods` VALUES (26525, 1, 139); --oshosi vest -- DEF
REPLACE INTO `item_mods` VALUES (26525, 2, 91); --oshosi vest -- HP
REPLACE INTO `item_mods` VALUES (26525, 8, 33); --oshosi vest -- STR
REPLACE INTO `item_mods` VALUES (26525, 9, 30); --oshosi vest -- DEX
REPLACE INTO `item_mods` VALUES (26525, 10, 26); --oshosi vest -- VIT
REPLACE INTO `item_mods` VALUES (26525, 11, 44); --oshosi vest -- AGI
REPLACE INTO `item_mods` VALUES (26525, 12, 21); --oshosi vest -- INT
REPLACE INTO `item_mods` VALUES (26525, 13, 21); --oshosi vest -- MND
REPLACE INTO `item_mods` VALUES (26525, 14, 26); --oshosi vest -- CHR
REPLACE INTO `item_mods` VALUES (26525, 26, 37); --oshosi vest -- RACC
REPLACE INTO `item_mods` VALUES (26525, 30, 42); --oshosi vest -- MACC
REPLACE INTO `item_mods` VALUES (26525, 68, 55); --oshosi vest -- EVA
REPLACE INTO `item_mods` VALUES (26525, 31, 96); --oshosi vest -- MEVA
REPLACE INTO `item_mods` VALUES (26525, 29, 8); --oshosi vest -- MDEF
REPLACE INTO `item_mods` VALUES (26525, 73, 7); --oshosi vest -- STORETP
REPLACE INTO `item_mods` VALUES (26525, 365, 12); --oshosi vest -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (26525, 422, 7); --oshosi vest -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (26525, 999, 6); --oshosi vest -- TRIPLE_SHOT_RATE
-- Oshosi Vest +1
REPLACE INTO `item_mods` VALUES (26526, 1, 149); --oshosi vest +1 -- DEF
REPLACE INTO `item_mods` VALUES (26526, 2, 111); --oshosi vest +1 -- HP
REPLACE INTO `item_mods` VALUES (26526, 8, 38); --oshosi vest +1 -- STR
REPLACE INTO `item_mods` VALUES (26526, 9, 30); --oshosi vest +1 -- DEX
REPLACE INTO `item_mods` VALUES (26526, 10, 26); --oshosi vest +1 -- VIT
REPLACE INTO `item_mods` VALUES (26526, 11, 49); --oshosi vest +1 -- AGI
REPLACE INTO `item_mods` VALUES (26526, 12, 21); --oshosi vest +1 -- INT
REPLACE INTO `item_mods` VALUES (26526, 13, 21); --oshosi vest +1 -- MND
REPLACE INTO `item_mods` VALUES (26526, 14, 26); --oshosi vest +1 -- CHR
REPLACE INTO `item_mods` VALUES (26526, 26, 47); --oshosi vest +1 -- RACC
REPLACE INTO `item_mods` VALUES (26526, 30, 52); --oshosi vest +1 -- MACC
REPLACE INTO `item_mods` VALUES (26526, 68, 65); --oshosi vest +1 -- EVA
REPLACE INTO `item_mods` VALUES (26526, 31, 106); --oshosi vest +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26526, 29, 9); --oshosi vest +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26526, 73, 10); --oshosi vest +1 -- STORETP
REPLACE INTO `item_mods` VALUES (26526, 365, 14); --oshosi vest +1 -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (26526, 422, 8); --oshosi vest +1 -- DOUBLE_SHOT_RATE
REPLACE INTO `item_mods` VALUES (26526, 999, 7); --oshosi vest +1 -- TRIPLE_SHOT_RATE
-- Obviation Cuirass
REPLACE INTO `item_mods` VALUES (25709,1,165);   -- DEF: 
REPLACE INTO `item_mods` VALUES (25709,2,66);    -- HP: 
REPLACE INTO `item_mods` VALUES (25709,5,59);    -- MP: 
REPLACE INTO `item_mods` VALUES (25709,8,29);    -- STR: 
REPLACE INTO `item_mods` VALUES (25709,9,17);    -- DEX: 
REPLACE INTO `item_mods` VALUES (25709,10,32);   -- VIT: 
REPLACE INTO `item_mods` VALUES (25709,11,17);   -- AGI: 
REPLACE INTO `item_mods` VALUES (25709,12,16);   -- INT: 
REPLACE INTO `item_mods` VALUES (25709,13,16);   -- MND
REPLACE INTO `item_mods` VALUES (25709,14,16);   -- CHR: 
REPLACE INTO `item_mods` VALUES (25709,29,4);    -- MDEF
REPLACE INTO `item_mods` VALUES (25709,31,69);   -- MEVA: 
REPLACE INTO `item_mods` VALUES (25709,68,36);   -- EVA: 
REPLACE INTO `item_mods` VALUES (25709,384,300); -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (25709,291,5);   -- COUNTER: 
REPLACE INTO `item_mods` VALUES (25709,370,3);   -- REGEN: 
REPLACE INTO `item_mods` VALUES (25709,161,-700);   -- DMGPHYS: 
-- Obviation Cuirass +1
REPLACE INTO `item_mods` VALUES (25710,1,166);   -- DEF: 
REPLACE INTO `item_mods` VALUES (25710,2,66);    -- HP: 
REPLACE INTO `item_mods` VALUES (25710,5,59);    -- MP: 
REPLACE INTO `item_mods` VALUES (25710,8,29);    -- STR: 
REPLACE INTO `item_mods` VALUES (25710,9,17);    -- DEX: 
REPLACE INTO `item_mods` VALUES (25710,10,32);   -- VIT: 
REPLACE INTO `item_mods` VALUES (25710,11,17);   -- AGI: 
REPLACE INTO `item_mods` VALUES (25710,12,16);   -- INT: 
REPLACE INTO `item_mods` VALUES (25710,13,16);   -- MND
REPLACE INTO `item_mods` VALUES (25710,14,16);   -- CHR: 
REPLACE INTO `item_mods` VALUES (25710,29,4);    -- MDEF
REPLACE INTO `item_mods` VALUES (25710,31,69);   -- MEVA: 
REPLACE INTO `item_mods` VALUES (25710,68,36);   -- EVA: 
REPLACE INTO `item_mods` VALUES (25710,384,300); -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (25710,291,6);   -- COUNTER: 
REPLACE INTO `item_mods` VALUES (25710,370,4);   -- REGEN: 
REPLACE INTO `item_mods` VALUES (25710,161,-800);   -- DMGPHYS: 
-- Pedagogy bracers +3
REPLACE INTO `item_mods` VALUES (23551, 1, 100); -- pedagogy bracers +3 -- DEF
REPLACE INTO `item_mods` VALUES (23551, 2, 42); -- pedagogy bracers +3 -- HP
REPLACE INTO `item_mods` VALUES (23551, 5, 75); -- pedagogy bracers +3 -- MP
REPLACE INTO `item_mods` VALUES (23551, 8, 16); -- pedagogy bracers +3 -- STR
REPLACE INTO `item_mods` VALUES (23551, 9, 38); -- pedagogy bracers +3 -- DEX
REPLACE INTO `item_mods` VALUES (23551, 10, 35); -- pedagogy bracers +3 -- VIT
REPLACE INTO `item_mods` VALUES (23551, 11, 15); -- pedagogy bracers +3 -- AGI
REPLACE INTO `item_mods` VALUES (23551, 12, 32); -- pedagogy bracers +3 -- INT
REPLACE INTO `item_mods` VALUES (23551, 13, 46); -- pedagogy bracers +3 -- MND
REPLACE INTO `item_mods` VALUES (23551, 14, 29); -- pedagogy bracers +3 -- CHR
REPLACE INTO `item_mods` VALUES (23551, 25, 38); -- pedagogy bracers +3 -- ACC
REPLACE INTO `item_mods` VALUES (23551, 30, 38); -- pedagogy bracers +3 -- MACC
REPLACE INTO `item_mods` VALUES (23551, 68, 42); -- pedagogy bracers +3 -- EVA
REPLACE INTO `item_mods` VALUES (23551, 31, 57); -- pedagogy bracers +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23551, 28, 50); -- pedagogy bracers +3 -- MATT
REPLACE INTO `item_mods` VALUES (23551, 29, 5); -- pedagogy bracers +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23551, 112, 19); -- pedagogy bracers +3 -- HEALING
REPLACE INTO `item_mods` VALUES (23551, 114, 19); -- pedagogy bracers +3 -- ENFEEBLE
REPLACE INTO `item_mods` VALUES (23551, 384, 300); -- pedagogy bracers +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23551, 27, -7); -- pedagogy bracers +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23551, 260, 3); -- pedagogy bracers +3 -- CURE_POTENCY_II
-- Pedagogy gown +3
REPLACE INTO `item_mods` VALUES (23484, 1, 144); -- pedagogy gown +3 -- DEF
REPLACE INTO `item_mods` VALUES (23484, 2, 99); -- pedagogy gown +3 -- HP
REPLACE INTO `item_mods` VALUES (23484, 5, 104); -- pedagogy gown +3 -- MP
REPLACE INTO `item_mods` VALUES (23484, 8, 31); -- pedagogy gown +3 -- STR
REPLACE INTO `item_mods` VALUES (23484, 9, 31); -- pedagogy gown +3 -- DEX
REPLACE INTO `item_mods` VALUES (23484, 10, 31); -- pedagogy gown +3 -- VIT
REPLACE INTO `item_mods` VALUES (23484, 11, 31); -- pedagogy gown +3 -- AGI
REPLACE INTO `item_mods` VALUES (23484, 12, 39); -- pedagogy gown +3 -- INT
REPLACE INTO `item_mods` VALUES (23484, 13, 39); -- pedagogy gown +3 -- MND
REPLACE INTO `item_mods` VALUES (23484, 14, 39); -- pedagogy gown +3 -- CHR
REPLACE INTO `item_mods` VALUES (23484, 25, 40); -- pedagogy gown +3 -- ACC
REPLACE INTO `item_mods` VALUES (23484, 30, 40); -- pedagogy gown +3 -- MACC
REPLACE INTO `item_mods` VALUES (23484, 68, 61); -- pedagogy gown +3 -- EVA
REPLACE INTO `item_mods` VALUES (23484, 31, 100); -- pedagogy gown +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23484, 28, 52); -- pedagogy gown +3 -- MATT
REPLACE INTO `item_mods` VALUES (23484, 29, 10); -- pedagogy gown +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23484, 112, 19); -- pedagogy gown +3 -- HEALING
REPLACE INTO `item_mods` VALUES (23484, 113, 19); -- pedagogy gown +3 -- ENHANCE
REPLACE INTO `item_mods` VALUES (23484, 384, 300); -- pedagogy gown +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23484, 401, 5); -- pedagogy gown +3 -- SUBLIMATION_BONUS
REPLACE INTO `item_mods` VALUES (23484, 890, 12); -- pedagogy gown +3 -- ENH_MAGIC_DURATION
-- Pedagogy mortarboard +3
REPLACE INTO `item_mods` VALUES (23417, 1, 112); -- pedagogy mortarboard +3 -- DEF
REPLACE INTO `item_mods` VALUES (23417, 2, 86); -- pedagogy mortarboard +3 -- HP
REPLACE INTO `item_mods` VALUES (23417, 5, 82); -- pedagogy mortarboard +3 -- MP
REPLACE INTO `item_mods` VALUES (23417, 8, 24); -- pedagogy mortarboard +3 -- STR
REPLACE INTO `item_mods` VALUES (23417, 9, 24); -- pedagogy mortarboard +3 -- DEX
REPLACE INTO `item_mods` VALUES (23417, 10, 24); -- pedagogy mortarboard +3 -- VIT
REPLACE INTO `item_mods` VALUES (23417, 11, 24); -- pedagogy mortarboard +3 -- AGI
REPLACE INTO `item_mods` VALUES (23417, 12, 39); -- pedagogy mortarboard +3 -- INT
REPLACE INTO `item_mods` VALUES (23417, 13, 39); -- pedagogy mortarboard +3 -- MND
REPLACE INTO `item_mods` VALUES (23417, 14, 29); -- pedagogy mortarboard +3 -- CHR
REPLACE INTO `item_mods` VALUES (23417, 25, 37); -- pedagogy mortarboard +3 -- ACC
REPLACE INTO `item_mods` VALUES (23417, 30, 47); -- pedagogy mortarboard +3 -- MACC -- Remove 10 when MBA is modded
REPLACE INTO `item_mods` VALUES (23417, 68, 56); -- pedagogy mortarboard +3 -- EVA
REPLACE INTO `item_mods` VALUES (23417, 31, 95); -- pedagogy mortarboard +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23417, 28, 49); -- pedagogy mortarboard +3 -- MATT
REPLACE INTO `item_mods` VALUES (23417, 29, 7); -- pedagogy mortarboard +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23417,115,19);  -- pedagogy mortarboard +3 -- ELEM
REPLACE INTO `item_mods` VALUES (23417, 384, 600); -- pedagogy mortarboard +3 -- HASTE_GEAR
-- TODO: REPLACE INTO `item_mods` VALUES (23417, , 10); -- pedagogy mortarboard +3 -- Magic burst ACC
REPLACE INTO `item_mods` VALUES (23417,274,4); -- pedagogy mortarboard +3 -- MAGIC_BURST_BONUS_UNCAPPED
REPLACE INTO `item_mods` VALUES (23417, 489, -13); -- pedagogy mortarboard +3 -- GRIMOIRE_SPELLCASTING
-- Pedagogy pants +3
REPLACE INTO `item_mods` VALUES (23618, 1, 126); -- pedagogy pants +3 -- DEF
REPLACE INTO `item_mods` VALUES (23618, 2, 83); -- pedagogy pants +3 -- HP
REPLACE INTO `item_mods` VALUES (23618, 5, 69); -- pedagogy pants +3 -- MP
REPLACE INTO `item_mods` VALUES (23618, 8, 35); -- pedagogy pants +3 -- STR
REPLACE INTO `item_mods` VALUES (23618, 10, 22); -- pedagogy pants +3 -- VIT
REPLACE INTO `item_mods` VALUES (23618, 11, 27); -- pedagogy pants +3 -- AGI
REPLACE INTO `item_mods` VALUES (23618, 12, 47); -- pedagogy pants +3 -- INT
REPLACE INTO `item_mods` VALUES (23618, 13, 34); -- pedagogy pants +3 -- MND
REPLACE INTO `item_mods` VALUES (23618, 14, 29); -- pedagogy pants +3 -- CHR
REPLACE INTO `item_mods` VALUES (23618, 25, 39); -- pedagogy pants +3 -- ACC
REPLACE INTO `item_mods` VALUES (23618, 30, 39); -- pedagogy pants +3 -- MACC
REPLACE INTO `item_mods` VALUES (23618, 68, 47); -- pedagogy pants +3 -- EVA
REPLACE INTO `item_mods` VALUES (23618, 31, 127); -- pedagogy pants +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23618, 28, 51); -- pedagogy pants +3 -- MATT
REPLACE INTO `item_mods` VALUES (23618, 29, 8); -- pedagogy pants +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23618, 384, 500); -- pedagogy pants +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23618, 27, -7); -- pedagogy pants +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23618, 315, 15); -- pedagogy pants +3 -- ENH_DRAIN_ASPIR
-- Perle Hauberk +1
REPLACE INTO `item_mods` VALUES (27851,1,69);  -- DEF: 
REPLACE INTO `item_mods` VALUES (27851,8,9);   -- STR: 
REPLACE INTO `item_mods` VALUES (27851,9,9);   -- DEX
REPLACE INTO `item_mods` VALUES (27851,23,15);  -- ATT
REPLACE INTO `item_mods` VALUES (27851,25,15);  -- ACC: 
REPLACE INTO `item_mods` VALUES (27851,288,2);  -- DOUBLE_ATTACK
REPLACE INTO `item_mods` VALUES (27851,165,3); -- CRITHITRATE: 
-- Perle Moufles +1
REPLACE INTO `item_mods` VALUES (27997,1,33);    -- DEF: 
REPLACE INTO `item_mods` VALUES (27997,8,10);     -- STR
REPLACE INTO `item_mods` VALUES (27997,9,5);     -- DEX: 
REPLACE INTO `item_mods` VALUES (27997,23,13);   -- ATT: 
REPLACE INTO `item_mods` VALUES (27997,384,200); -- HASTE_GEAR: 
-- Perle Salade +1
REPLACE INTO `item_mods` VALUES (26711,1,39);    -- DEF: 
REPLACE INTO `item_mods` VALUES (26711,8,9);     -- STR
REPLACE INTO `item_mods` VALUES (26711,10,9);    -- VIT: 
REPLACE INTO `item_mods` VALUES (26711,23,15);    -- ATT: 
REPLACE INTO `item_mods` VALUES (26711,25,10);    -- ACC: 
REPLACE INTO `item_mods` VALUES (26711,384,300); -- HASTE_GEAR: 
-- Piety Bliaut +3
REPLACE INTO `item_mods` VALUES (23467, 1, 144); -- piety briault +3 -- DEF
REPLACE INTO `item_mods` VALUES (23467, 2, 74); -- piety briault +3 -- HP
REPLACE INTO `item_mods` VALUES (23467, 5, 105); -- piety briault +3 -- MP
REPLACE INTO `item_mods` VALUES (23467, 8, 31); -- piety briault +3 -- STR
REPLACE INTO `item_mods` VALUES (23467, 9, 31); -- piety briault +3 -- DEX
REPLACE INTO `item_mods` VALUES (23467, 10, 31); -- piety briault +3 -- VIT
REPLACE INTO `item_mods` VALUES (23467, 11, 31); -- piety briault +3 -- AGI
REPLACE INTO `item_mods` VALUES (23467, 12, 39); -- piety briault +3 -- INT
REPLACE INTO `item_mods` VALUES (23467, 13, 39); -- piety briault +3 -- MND
REPLACE INTO `item_mods` VALUES (23467, 14, 39); -- piety briault +3 -- CHR
REPLACE INTO `item_mods` VALUES (23467, 25, 40); -- piety briault +3 -- ACC
REPLACE INTO `item_mods` VALUES (23467, 23, 65); -- piety briault +3 -- ATT
REPLACE INTO `item_mods` VALUES (23467, 30, 40); -- piety briault +3 -- MACC
REPLACE INTO `item_mods` VALUES (23467, 68, 61); -- piety briault +3 -- EVA
REPLACE INTO `item_mods` VALUES (23467, 31, 100); -- piety briault +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23467, 29, 8); -- piety briault +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23467, 384, 300); -- piety briault +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23467, 27, -8); -- piety briault +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23467, 838, 52); -- piety briault +3 -- REGEN_MULTIPLIER
REPLACE INTO `item_mods` VALUES (23467, 369, 3); -- piety briault +3 -- REFRESH
-- Piety Mitts +3 
REPLACE INTO `item_mods` VALUES (23534, 1, 105); -- piety mitts +3 -- DEF
REPLACE INTO `item_mods` VALUES (23534, 2, 72); -- piety mitts +3 -- HP
REPLACE INTO `item_mods` VALUES (23534, 5, 64); -- piety mitts +3 -- MP
REPLACE INTO `item_mods` VALUES (23534, 8, 16); -- piety mitts +3 -- STR
REPLACE INTO `item_mods` VALUES (23534, 9, 38); -- piety mitts +3 -- DEX
REPLACE INTO `item_mods` VALUES (23534, 10, 35); -- piety mitts +3 -- VIT
REPLACE INTO `item_mods` VALUES (23534, 11, 15); -- piety mitts +3 -- AGI
REPLACE INTO `item_mods` VALUES (23534, 12, 29); -- piety mitts +3 -- INT
REPLACE INTO `item_mods` VALUES (23534, 13, 43); -- piety mitts +3 -- MND
REPLACE INTO `item_mods` VALUES (23534, 14, 29); -- piety mitts +3 -- CHR
REPLACE INTO `item_mods` VALUES (23534, 25, 38); -- piety mitts +3 -- ACC
REPLACE INTO `item_mods` VALUES (23534, 23, 63); -- piety mitts +3 -- ATT
REPLACE INTO `item_mods` VALUES (23534, 30, 38); -- piety mitts +3 -- MACC
REPLACE INTO `item_mods` VALUES (23534, 68, 42); -- piety mitts +3 -- EVA
REPLACE INTO `item_mods` VALUES (23534, 31, 57); -- piety mitts +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23534, 29, 5); -- piety mitts +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23534, 111, 26); -- piety mitts +3 -- DIVINE
REPLACE INTO `item_mods` VALUES (23534, 114, 26); -- piety mitts +3 -- ENFEEBLE
REPLACE INTO `item_mods` VALUES (23534, 384, 300); -- piety mitts +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23534, 27, -9); -- piety mitts +3 -- ENMITY
-- To Do: REPLACE INTO `item_mods` VALUES (23534, , 30); -- piety mitts +3 -- Potency of "Banish" vs. undead +30
-- Piety Pantaln. +3 
REPLACE INTO `item_mods` VALUES (23601, 1, 127); -- piety pantaloons +3 -- DEF
REPLACE INTO `item_mods` VALUES (23601, 2, 93); -- piety pantaloons +3 -- HP
REPLACE INTO `item_mods` VALUES (23601, 5, 79); -- piety pantaloons +3 -- MP
REPLACE INTO `item_mods` VALUES (23601, 8, 35); -- piety pantaloons +3 -- STR
REPLACE INTO `item_mods` VALUES (23601, 10, 22); -- piety pantaloons +3 -- VIT
REPLACE INTO `item_mods` VALUES (23601, 11, 27); -- piety pantaloons +3 -- AGI
REPLACE INTO `item_mods` VALUES (23601, 12, 44); -- piety pantaloons +3 -- INT
REPLACE INTO `item_mods` VALUES (23601, 13, 34); -- piety pantaloons +3 -- MND
REPLACE INTO `item_mods` VALUES (23601, 14, 29); -- piety pantaloons +3 -- CHR
REPLACE INTO `item_mods` VALUES (23601, 25, 39); -- piety pantaloons +3 -- ACC
REPLACE INTO `item_mods` VALUES (23601, 23, 64); -- piety pantaloons +3 -- ATT
REPLACE INTO `item_mods` VALUES (23601, 30, 39); -- piety pantaloons +3 -- MACC
REPLACE INTO `item_mods` VALUES (23601, 68, 47); -- piety pantaloons +3 -- EVA
REPLACE INTO `item_mods` VALUES (23601, 31, 127); -- piety pantaloons +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23601, 29, 8); -- piety pantaloons +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23601, 112, 26); -- piety pantaloons +3 -- HEALING
REPLACE INTO `item_mods` VALUES (23601, 113, 26); -- piety pantaloons +3 -- ENHANCE
REPLACE INTO `item_mods` VALUES (23601, 384, 500); -- piety pantaloons +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23601, 27, -8); -- piety pantaloons +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23601, 567, 36); -- piety pantaloons +3 -- BARSPELL_AMOUNT
-- Pinga Mittens
REPLACE INTO `item_mods` VALUES (25986, 1, 93); --pinga mittens -- DEF
REPLACE INTO `item_mods` VALUES (25986, 2, 33); --pinga mittens -- HP
REPLACE INTO `item_mods` VALUES (25986, 5, 73); --pinga mittens -- MP
REPLACE INTO `item_mods` VALUES (25986, 8, 7); --pinga mittens -- STR
REPLACE INTO `item_mods` VALUES (25986, 9, 29); --pinga mittens -- DEX
REPLACE INTO `item_mods` VALUES (25986, 10, 30); --pinga mittens -- VIT
REPLACE INTO `item_mods` VALUES (25986, 12, 24); --pinga mittens -- INT
REPLACE INTO `item_mods` VALUES (25986, 13, 44); --pinga mittens -- MND
REPLACE INTO `item_mods` VALUES (25986, 14, 23); --pinga mittens -- CHR
REPLACE INTO `item_mods` VALUES (25986, 68, 27); --pinga mittens -- EVA
REPLACE INTO `item_mods` VALUES (25986, 31, 91); --pinga mittens -- MEVA
REPLACE INTO `item_mods` VALUES (25986, 29, 4); --pinga mittens -- MDEF
REPLACE INTO `item_mods` VALUES (25986, 27, -5); --pinga mittens -- ENMITY
REPLACE INTO `item_mods` VALUES (25986, 170, 5); --pinga mittens -- FASTCAST
REPLACE INTO `item_mods` VALUES (25986, 374, 5); --pinga mittens -- CURE_POTENCY
-- Pinga Mittens +1
REPLACE INTO `item_mods` VALUES (25987, 1, 103); --pinga mittens +1 -- DEF
REPLACE INTO `item_mods` VALUES (25987, 2, 53); --pinga mittens +1 -- HP
REPLACE INTO `item_mods` VALUES (25987, 5, 88); --pinga mittens +1 -- MP
REPLACE INTO `item_mods` VALUES (25987, 8, 7); --pinga mittens +1 -- STR
REPLACE INTO `item_mods` VALUES (25987, 9, 29); --pinga mittens +1 -- DEX
REPLACE INTO `item_mods` VALUES (25987, 10, 30); --pinga mittens +1 -- VIT
REPLACE INTO `item_mods` VALUES (25987, 12, 29); --pinga mittens +1 -- INT
REPLACE INTO `item_mods` VALUES (25987, 13, 49); --pinga mittens +1 -- MND
REPLACE INTO `item_mods` VALUES (25987, 14, 23); --pinga mittens +1 -- CHR
REPLACE INTO `item_mods` VALUES (25987, 68, 37); --pinga mittens +1 -- EVA
REPLACE INTO `item_mods` VALUES (25987, 31, 101); --pinga mittens +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25987, 29, 5); --pinga mittens +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25987, 27, -6); --pinga mittens +1 -- ENMITY
REPLACE INTO `item_mods` VALUES (25987, 170, 7); --pinga mittens +1 -- FASTCAST
REPLACE INTO `item_mods` VALUES (25987, 374, 7); --pinga mittens +1 -- CURE_POTENCY
-- Pinga Pants
REPLACE INTO `item_mods` VALUES (25899, 1, 117); --pinga pants -- DEF
REPLACE INTO `item_mods` VALUES (25899, 2, 64); --pinga pants -- HP
REPLACE INTO `item_mods` VALUES (25899, 5, 43); --pinga pants -- MP
REPLACE INTO `item_mods` VALUES (25899, 8, 26); --pinga pants -- STR
REPLACE INTO `item_mods` VALUES (25899, 10, 17); --pinga pants -- VIT
REPLACE INTO `item_mods` VALUES (25899, 11, 24); --pinga pants -- AGI
REPLACE INTO `item_mods` VALUES (25899, 12, 39); --pinga pants -- INT
REPLACE INTO `item_mods` VALUES (25899, 13, 30); --pinga pants -- MND
REPLACE INTO `item_mods` VALUES (25899, 14, 23); --pinga pants -- CHR
REPLACE INTO `item_mods` VALUES (25899, 68, 37); --pinga pants -- EVA
REPLACE INTO `item_mods` VALUES (25899, 31, 137); --pinga pants -- MEVA
REPLACE INTO `item_mods` VALUES (25899, 29, 7); --pinga pants -- MDEF
REPLACE INTO `item_mods` VALUES (25899, 27, -7); --pinga pants -- ENMITY
REPLACE INTO `item_mods` VALUES (25899, 170, 11); --pinga pants -- FASTCAST
REPLACE INTO `item_mods` VALUES (25899, 374, 11); --pinga pants -- CURE_POTENCY
-- Pinga Pants +1
REPLACE INTO `item_mods` VALUES (25900, 1, 127); --pinga pants +1 -- DEF
REPLACE INTO `item_mods` VALUES (25900, 2, 84); --pinga pants +1 -- HP
REPLACE INTO `item_mods` VALUES (25900, 5, 58); --pinga pants +1 -- MP
REPLACE INTO `item_mods` VALUES (25900, 8, 26); --pinga pants +1 -- STR
REPLACE INTO `item_mods` VALUES (25900, 10, 17); --pinga pants +1 -- VIT
REPLACE INTO `item_mods` VALUES (25900, 11, 24); --pinga pants +1 -- AGI
REPLACE INTO `item_mods` VALUES (25900, 12, 44); --pinga pants +1 -- INT
REPLACE INTO `item_mods` VALUES (25900, 13, 35); --pinga pants +1 -- MND
REPLACE INTO `item_mods` VALUES (25900, 14, 23); --pinga pants +1 -- CHR
REPLACE INTO `item_mods` VALUES (25900, 68, 47); --pinga pants +1 -- EVA
REPLACE INTO `item_mods` VALUES (25900, 31, 147); --pinga pants +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25900, 29, 8); --pinga pants +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25900, 27, -8); --pinga pants +1 -- ENMITY
REPLACE INTO `item_mods` VALUES (25900, 170, 13); --pinga pants +1 -- FASTCAST
REPLACE INTO `item_mods` VALUES (25900, 374, 13); --pinga pants +1 -- CURE_POTENCY
-- Pinga Pumps
REPLACE INTO `item_mods` VALUES (25966, 1, 78); --pinga pumps -- DEF
REPLACE INTO `item_mods` VALUES (25966, 2, 64); --pinga pumps -- HP
REPLACE INTO `item_mods` VALUES (25966, 5, 66); --pinga pumps -- MP
REPLACE INTO `item_mods` VALUES (25966, 8, 11); --pinga pumps -- STR
REPLACE INTO `item_mods` VALUES (25966, 9, 14); --pinga pumps -- DEX
REPLACE INTO `item_mods` VALUES (25966, 10, 15); --pinga pumps -- VIT
REPLACE INTO `item_mods` VALUES (25966, 11, 38); --pinga pumps -- AGI
REPLACE INTO `item_mods` VALUES (25966, 13, 30); --pinga pumps -- MND
REPLACE INTO `item_mods` VALUES (25966, 14, 39); --pinga pumps -- CHR
REPLACE INTO `item_mods` VALUES (25966, 68, 56); --pinga pumps -- EVA
REPLACE INTO `item_mods` VALUES (25966, 31, 137); --pinga pumps -- MEVA
REPLACE INTO `item_mods` VALUES (25966, 29, 5); --pinga pumps -- MDEF
REPLACE INTO `item_mods` VALUES (25966, 27, -4); --pinga pumps -- ENMITY
REPLACE INTO `item_mods` VALUES (25966, 170, 3); --pinga pumps -- FASTCAST
REPLACE INTO `item_mods` VALUES (25966, 374, 3); --pinga pumps -- CURE_POTENCY
-- Pinga Pumps +1
REPLACE INTO `item_mods` VALUES (25967, 1, 85); --pinga pumps +1 -- DEF
REPLACE INTO `item_mods` VALUES (25967, 2, 84); --pinga pumps +1 -- HP
REPLACE INTO `item_mods` VALUES (25967, 5, 81); --pinga pumps +1 -- MP
REPLACE INTO `item_mods` VALUES (25967, 8, 11); --pinga pumps +1 -- STR
REPLACE INTO `item_mods` VALUES (25967, 9, 14); --pinga pumps +1 -- DEX
REPLACE INTO `item_mods` VALUES (25967, 10, 15); --pinga pumps +1 -- VIT
REPLACE INTO `item_mods` VALUES (25967, 11, 38); --pinga pumps +1 -- AGI
REPLACE INTO `item_mods` VALUES (25967, 12, 5); --pinga pumps +1 -- INT
REPLACE INTO `item_mods` VALUES (25967, 13, 35); --pinga pumps +1 -- MND
REPLACE INTO `item_mods` VALUES (25967, 14, 39); --pinga pumps +1 -- CHR
REPLACE INTO `item_mods` VALUES (25967, 68, 66); --pinga pumps +1 -- EVA
REPLACE INTO `item_mods` VALUES (25967, 31, 147); --pinga pumps +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25967, 29, 6); --pinga pumps +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25967, 27, -5); --pinga pumps +1 -- ENMITY
REPLACE INTO `item_mods` VALUES (25967, 170, 5); --pinga pumps +1 -- FASTCAST
REPLACE INTO `item_mods` VALUES (25967, 374, 5); --pinga pumps +1 -- CURE_POTENCY
-- Pinga Tunic
REPLACE INTO `item_mods` VALUES (26535, 1, 135); --pinga tunic -- DEF
REPLACE INTO `item_mods` VALUES (26535, 2, 81); --pinga tunic -- HP
REPLACE INTO `item_mods` VALUES (26535, 5, 88); --pinga tunic -- MP
REPLACE INTO `item_mods` VALUES (26535, 8, 23); --pinga tunic -- STR
REPLACE INTO `item_mods` VALUES (26535, 9, 24); --pinga tunic -- DEX
REPLACE INTO `item_mods` VALUES (26535, 10, 26); --pinga tunic -- VIT
REPLACE INTO `item_mods` VALUES (26535, 11, 26); --pinga tunic -- AGI
REPLACE INTO `item_mods` VALUES (26535, 12, 34); --pinga tunic -- INT
REPLACE INTO `item_mods` VALUES (26535, 13, 35); --pinga tunic -- MND
REPLACE INTO `item_mods` VALUES (26535, 14, 34); --pinga tunic -- CHR
REPLACE INTO `item_mods` VALUES (26535, 68, 45); --pinga tunic -- EVA
REPLACE INTO `item_mods` VALUES (26535, 31, 118); --pinga tunic -- MEVA
REPLACE INTO `item_mods` VALUES (26535, 29, 8); --pinga tunic -- MDEF
REPLACE INTO `item_mods` VALUES (26535, 27, -8); --pinga tunic -- ENMITY
REPLACE INTO `item_mods` VALUES (26535, 170, 13); --pinga tunic -- FASTCAST
REPLACE INTO `item_mods` VALUES (26535, 374, 13); --pinga tunic -- CURE_POTENCY
-- Pinga Tunic +1
REPLACE INTO `item_mods` VALUES (26536, 1, 145); --pinga tunic +1 -- DEF
REPLACE INTO `item_mods` VALUES (26536, 2, 101); --pinga tunic +1 -- HP
REPLACE INTO `item_mods` VALUES (26536, 5, 103); --pinga tunic +1 -- MP
REPLACE INTO `item_mods` VALUES (26536, 8, 23); --pinga tunic +1 -- STR
REPLACE INTO `item_mods` VALUES (26536, 9, 24); --pinga tunic +1 -- DEX
REPLACE INTO `item_mods` VALUES (26536, 10, 26); --pinga tunic +1 -- VIT
REPLACE INTO `item_mods` VALUES (26536, 11, 26); --pinga tunic +1 -- AGI
REPLACE INTO `item_mods` VALUES (26536, 12, 39); --pinga tunic +1 -- INT
REPLACE INTO `item_mods` VALUES (26536, 13, 40); --pinga tunic +1 -- MND
REPLACE INTO `item_mods` VALUES (26536, 14, 34); --pinga tunic +1 -- CHR
REPLACE INTO `item_mods` VALUES (26536, 68, 55); --pinga tunic +1 -- EVA
REPLACE INTO `item_mods` VALUES (26536, 31, 128); --pinga tunic +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26536, 29, 9); --pinga tunic +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26536, 27, -9); --pinga tunic +1 -- ENMITY
REPLACE INTO `item_mods` VALUES (26536, 170, 15); --pinga tunic +1 -- FASTCAST
REPLACE INTO `item_mods` VALUES (26536, 374, 15); --pinga tunic +1 -- CURE_POTENCY
-- Pitre Churidars +3
REPLACE INTO `item_mods` VALUES (23616, 1, 133); -- pitre churidars +3 -- DEF
REPLACE INTO `item_mods` VALUES (23616, 2, 67); -- pitre churidars +3 -- HP
REPLACE INTO `item_mods` VALUES (23616, 8, 45); -- pitre churidars +3 -- STR
REPLACE INTO `item_mods` VALUES (23616, 10, 27); -- pitre churidars +3 -- VIT
REPLACE INTO `item_mods` VALUES (23616, 11, 31); -- pitre churidars +3 -- AGI
REPLACE INTO `item_mods` VALUES (23616, 12, 42); -- pitre churidars +3 -- INT
REPLACE INTO `item_mods` VALUES (23616, 13, 27); -- pitre churidars +3 -- MND
REPLACE INTO `item_mods` VALUES (23616, 14, 20); -- pitre churidars +3 -- CHR
REPLACE INTO `item_mods` VALUES (23616, 25, 46); -- pitre churidars +3 -- ACC
REPLACE INTO `item_mods` VALUES (23616, 23, 64); -- pitre churidars +3 -- ATT
REPLACE INTO `item_mods` VALUES (23616, 30, 39); -- pitre churidars +3 -- MACC
REPLACE INTO `item_mods` VALUES (23616, 68, 53); -- pitre churidars +3 -- EVA
REPLACE INTO `item_mods` VALUES (23616, 31, 84); -- pitre churidars +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23616, 29, 5); -- pitre churidars +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23616, 384, 600); -- pitre churidars +3 -- HASTE_GEAR
REPLACE INTO `item_mods_pet` VALUES (23616, 30, 48, 3); -- pitre churidars +3 -- auto: MACC
REPLACE INTO `item_mods_pet` VALUES (23616, 28, 51, 3); -- pitre churidars +3 -- auto: MATT
REPLACE INTO `item_mods_pet` VALUES (23616, 170, 10, 3); -- pitre churidars +3 -- auto: FASTCAST
-- Pitre Dastanas +3
REPLACE INTO `item_mods` VALUES (23549, 1, 110); -- pitre dastanas +3 -- DEF
REPLACE INTO `item_mods` VALUES (23549, 2, 45); -- pitre dastanas +3 -- HP
REPLACE INTO `item_mods` VALUES (23549, 8, 20); -- pitre dastanas +3 -- STR
REPLACE INTO `item_mods` VALUES (23549, 9, 47); -- pitre dastanas +3 -- DEX
REPLACE INTO `item_mods` VALUES (23549, 10, 38); -- pitre dastanas +3 -- VIT
REPLACE INTO `item_mods` VALUES (23549, 11, 16); -- pitre dastanas +3 -- AGI
REPLACE INTO `item_mods` VALUES (23549, 12, 20); -- pitre dastanas +3 -- INT
REPLACE INTO `item_mods` VALUES (23549, 13, 38); -- pitre dastanas +3 -- MND
REPLACE INTO `item_mods` VALUES (23549, 14, 29); -- pitre dastanas +3 -- CHR
REPLACE INTO `item_mods` VALUES (23549, 25, 38); -- pitre dastanas +3 -- ACC
REPLACE INTO `item_mods` VALUES (23549, 23, 63); -- pitre dastanas +3 -- ATT
REPLACE INTO `item_mods` VALUES (23549, 30, 38); -- pitre dastanas +3 -- MACC
REPLACE INTO `item_mods` VALUES (23549, 68, 55); -- pitre dastanas +3 -- EVA
REPLACE INTO `item_mods` VALUES (23549, 31, 46); -- pitre dastanas +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23549, 29, 3); -- pitre dastanas +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23549, 384, 500); -- pitre dastanas +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23549, 840, 10); -- pitre dastanas +3 -- ALL_WSDMG_ALL_HITS
REPLACE INTO `item_mods_pet` VALUES (23549, 384, 700, 3); -- pitre dastanas +3 -- Automaton: HASTE_GEAR
REPLACE INTO `item_mods_pet` VALUES (23549, 289, 11, 3); -- pitre dastanas +3 -- SUBTLE_BLOW
-- Pitre Taj +3
REPLACE INTO `item_mods` VALUES (23415, 1, 123); -- pitre taj +3 -- DEF
REPLACE INTO `item_mods` VALUES (23415, 2, 56); -- pitre taj +3 -- HP
REPLACE INTO `item_mods` VALUES (23415, 8, 31); -- pitre taj +3 -- STR
REPLACE INTO `item_mods` VALUES (23415, 9, 31); -- pitre taj +3 -- DEX
REPLACE INTO `item_mods` VALUES (23415, 10, 27); -- pitre taj +3 -- VIT
REPLACE INTO `item_mods` VALUES (23415, 11, 33); -- pitre taj +3 -- AGI
REPLACE INTO `item_mods` VALUES (23415, 12, 26); -- pitre taj +3 -- INT
REPLACE INTO `item_mods` VALUES (23415, 13, 26); -- pitre taj +3 -- MND
REPLACE INTO `item_mods` VALUES (23415, 14, 26); -- pitre taj +3 -- CHR
REPLACE INTO `item_mods` VALUES (23415, 25, 37); -- pitre taj +3 -- ACC
REPLACE INTO `item_mods` VALUES (23415, 23, 62); -- pitre taj +3 -- ATT
REPLACE INTO `item_mods` VALUES (23415, 30, 37); -- pitre taj +3 -- MACC
REPLACE INTO `item_mods` VALUES (23415, 68, 58); -- pitre taj +3 -- EVA
REPLACE INTO `item_mods` VALUES (23415, 31, 63); -- pitre taj +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23415, 29, 6); -- pitre taj +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23415, 384, 800); -- pitre taj +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23415, 370, 5); -- pitre taj +3 -- REGEN
REPLACE INTO `item_mods_pet` VALUES (23415, 25, 37, 3); -- pitre taj +3 -- Automaton: ACC
REPLACE INTO `item_mods_pet` VALUES (23415, 23, 57, 3); -- pitre taj +3 -- Automaton: ATT
REPLACE INTO `item_mods_pet` VALUES (23415, 26, 37, 3); -- pitre taj +3 -- Automaton: RACC
REPLACE INTO `item_mods_pet` VALUES (23415, 24, 57, 3); -- pitre taj +3 -- Automaton: RATT
REPLACE INTO `item_mods_pet` VALUES (23415, 370, 5, 3); -- pitre taj +3 -- REGEN
REPLACE INTO `item_mods_pet` VALUES (23415, 369, 5, 3); -- pitre taj +3 -- REFRESH
-- Pitre Tobe +3
REPLACE INTO `item_mods` VALUES (23482, 1, 153); -- pitre tobe +3 -- DEF
REPLACE INTO `item_mods` VALUES (23482, 2, 100); -- pitre tobe +3 -- HP
REPLACE INTO `item_mods` VALUES (23482, 8, 34); -- pitre tobe +3 -- STR
REPLACE INTO `item_mods` VALUES (23482, 9, 35); -- pitre tobe +3 -- DEX
REPLACE INTO `item_mods` VALUES (23482, 10, 31); -- pitre tobe +3 -- VIT
REPLACE INTO `item_mods` VALUES (23482, 11, 35); -- pitre tobe +3 -- AGI
REPLACE INTO `item_mods` VALUES (23482, 12, 34); -- pitre tobe +3 -- INT
REPLACE INTO `item_mods` VALUES (23482, 13, 34); -- pitre tobe +3 -- MND
REPLACE INTO `item_mods` VALUES (23482, 14, 34); -- pitre tobe +3 -- CHR
REPLACE INTO `item_mods` VALUES (23482, 25, 50); -- pitre tobe +3 -- ACC
REPLACE INTO `item_mods` VALUES (23482, 23, 86); -- pitre tobe +3 -- ATT
REPLACE INTO `item_mods` VALUES (23482, 30, 40); -- pitre tobe +3 -- MACC
REPLACE INTO `item_mods` VALUES (23482, 68, 72); -- pitre tobe +3 -- EVA
REPLACE INTO `item_mods` VALUES (23482, 31, 73); -- pitre tobe +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23482, 29, 6); -- pitre tobe +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23482, 384, 400); -- pitre tobe +3 -- HASTE_GEAR
REPLACE INTO `item_mods_pet` VALUES (23482, 25, 50, 3); -- pitre taj +3 -- Automaton: ACC
REPLACE INTO `item_mods_pet` VALUES (23482, 23, 60, 3); -- pitre taj +3 -- Automaton: ATT
REPLACE INTO `item_mods_pet` VALUES (23482, 26, 50, 3); -- pitre taj +3 -- Automaton: RACC
REPLACE INTO `item_mods_pet` VALUES (23482, 24, 60, 3); -- pitre taj +3 -- Automaton: RATT
REPLACE INTO `item_mods_pet` VALUES (23482, 73, 15, 3); -- pitre taj +3 -- Automaton: STORETP
-- Plun. Bonnet +3
REPLACE INTO `item_mods` VALUES (23403, 1, 122); -- plunderers bonnet +3 -- DEF
REPLACE INTO `item_mods` VALUES (23403, 2, 56); -- plunderers bonnet +3 -- HP
REPLACE INTO `item_mods` VALUES (23403, 5, 43); -- plunderers bonnet +3 -- MP
REPLACE INTO `item_mods` VALUES (23403, 8, 31); -- plunderers bonnet +3 -- STR
REPLACE INTO `item_mods` VALUES (23403, 9, 41); -- plunderers bonnet +3 -- DEX
REPLACE INTO `item_mods` VALUES (23403, 10, 31); -- plunderers bonnet +3 -- VIT
REPLACE INTO `item_mods` VALUES (23403, 11, 35); -- plunderers bonnet +3 -- AGI
REPLACE INTO `item_mods` VALUES (23403, 12, 31); -- plunderers bonnet +3 -- INT
REPLACE INTO `item_mods` VALUES (23403, 13, 31); -- plunderers bonnet +3 -- MND
REPLACE INTO `item_mods` VALUES (23403, 14, 32); -- plunderers bonnet +3 -- CHR
REPLACE INTO `item_mods` VALUES (23403, 25, 44); -- plunderers bonnet +3 -- ACC
REPLACE INTO `item_mods` VALUES (23403, 23, 62); -- plunderers bonnet +3 -- ATT
REPLACE INTO `item_mods` VALUES (23403, 30, 37); -- plunderers bonnet +3 -- MACC
REPLACE INTO `item_mods` VALUES (23403, 68, 64); -- plunderers bonnet +3 -- EVA
REPLACE INTO `item_mods` VALUES (23403, 31, 73); -- plunderers bonnet +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23403, 29, 4); -- plunderers bonnet +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23403, 384, 800); -- plunderers bonnet +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23403, 302, 4); -- plunderers bonnet +3 -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (23403, 835, 5); -- plunderers bonnet +3 -- MUG_EFFECT
-- Plun. Culottes +3
REPLACE INTO `item_mods` VALUES (23604, 1, 130); --plunderers culottes +3 -- DEF
REPLACE INTO `item_mods` VALUES (23604, 2, 67); --plunderers culottes +3 -- HP
REPLACE INTO `item_mods` VALUES (23604, 8, 42); --plunderers culottes +3 -- STR
REPLACE INTO `item_mods` VALUES (23604, 9, 21); --plunderers culottes +3 -- DEX
REPLACE INTO `item_mods` VALUES (23604, 10, 29); --plunderers culottes +3 -- VIT
REPLACE INTO `item_mods` VALUES (23604, 11, 33); --plunderers culottes +3 -- AGI
REPLACE INTO `item_mods` VALUES (23604, 12, 43); --plunderers culottes +3 -- INT
REPLACE INTO `item_mods` VALUES (23604, 13, 30); --plunderers culottes +3 -- MND
REPLACE INTO `item_mods` VALUES (23604, 14, 24); --plunderers culottes +3 -- CHR
REPLACE INTO `item_mods` VALUES (23604, 25, 46); --plunderers culottes +3 -- ACC
REPLACE INTO `item_mods` VALUES (23604, 23, 64); --plunderers culottes +3 -- ATT
REPLACE INTO `item_mods` VALUES (23604, 30, 39); --plunderers culottes +3 -- MACC
REPLACE INTO `item_mods` VALUES (23604, 68, 58); --plunderers culottes +3 -- EVA
REPLACE INTO `item_mods` VALUES (23604, 31, 89); --plunderers culottes +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23604, 29, 7); --plunderers culottes +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23604, 384, 600); --plunderers culottes +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23604, 897, 4); --plunderers culottes +3 -- GILFINDER
REPLACE INTO `item_mods` VALUES (23604, 840, 6); --plunderers culottes +3 -- ALL_WSDMG_ALL_HITS
-- Plunderer's Vest +3
REPLACE INTO `item_mods` VALUES (23470, 1, 152); --plunderers vest +3 -- DEF
REPLACE INTO `item_mods` VALUES (23470, 2, 79); --plunderers vest +3 -- HP
REPLACE INTO `item_mods` VALUES (23470, 5, 64); --plunderers vest +3 -- MP
REPLACE INTO `item_mods` VALUES (23470, 8, 41); --plunderers vest +3 -- STR
REPLACE INTO `item_mods` VALUES (23470, 9, 46); --plunderers vest +3 -- DEX
REPLACE INTO `item_mods` VALUES (23470, 10, 34); --plunderers vest +3 -- VIT
REPLACE INTO `item_mods` VALUES (23470, 11, 45); --plunderers vest +3 -- AGI
REPLACE INTO `item_mods` VALUES (23470, 12, 33); --plunderers vest +3 -- INT
REPLACE INTO `item_mods` VALUES (23470, 13, 33); --plunderers vest +3 -- MND
REPLACE INTO `item_mods` VALUES (23470, 14, 33); --plunderers vest +3 -- CHR
REPLACE INTO `item_mods` VALUES (23470, 25, 40); --plunderers vest +3 -- ACC
REPLACE INTO `item_mods` VALUES (23470, 23, 65); --plunderers vest +3 -- ATT
REPLACE INTO `item_mods` VALUES (23470, 30, 40); --plunderers vest +3 -- MACC
REPLACE INTO `item_mods` VALUES (23470, 68, 69); --plunderers vest +3 -- EVA
REPLACE INTO `item_mods` VALUES (23470, 31, 84); --plunderers vest +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23470, 29, 8); --plunderers vest +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23470, 384, 400); --plunderers vest +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23470, 27, 30); --plunderers vest +3 -- ENMITY
REPLACE INTO `item_mods` VALUES (23470, 520, 10); --plunderers vest +3 -- TRICK_ATK_AGI
REPLACE INTO `item_mods` VALUES (23470, 165, 6); --plunderers vest +3 -- CRITHITRATE
REPLACE INTO `item_mods` VALUES (23470, 421, 5); --plunderers vest +3 -- CRIT_DMG_INCREASE
-- Psycloth Boots
REPLACE INTO `item_mods` VALUES (27462, 384, 300); --psycloth boots -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27462, 68, 55); --psycloth boots -- EVA
REPLACE INTO `item_mods` VALUES (27462, 31, 107); --psycloth boots -- MEVA
REPLACE INTO `item_mods` VALUES (27462, 29, 5); --psycloth boots -- MDEF
REPLACE INTO `item_mods` VALUES (27462, 14, 34); --psycloth boots -- CHR
REPLACE INTO `item_mods` VALUES (27462, 13, 19); --psycloth boots -- MND
REPLACE INTO `item_mods` VALUES (27462, 12, 17); --psycloth boots -- INT
REPLACE INTO `item_mods` VALUES (27462, 11, 33); --psycloth boots -- AGI
REPLACE INTO `item_mods` VALUES (27462, 10, 10); --psycloth boots -- VIT
REPLACE INTO `item_mods` VALUES (27462, 9, 11); --psycloth boots -- DEX
REPLACE INTO `item_mods` VALUES (27462, 8, 10); --psycloth boots -- STR
REPLACE INTO `item_mods` VALUES (27462, 5, 74); --psycloth boots -- MP
REPLACE INTO `item_mods` VALUES (27462, 2, 13); --psycloth boots -- HP
REPLACE INTO `item_mods` VALUES (27462, 1, 66); --psycloth boots -- DEF
REPLACE INTO `item_mods_pet` VALUES (27462, 25, 20, 1); -- ACC
REPLACE INTO `item_mods_pet` VALUES (27462, 23, 20, 1); -- ATT
REPLACE INTO `item_mods_pet` VALUES (27462, 288, 3, 1); -- DOUBLE_ATTACK
-- Psycloth Lappas
REPLACE INTO `item_mods` VALUES (27287, 384, 500); --psycloth lappas -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27287, 114, 18); --psycloth lappas -- ENFEEBLE
REPLACE INTO `item_mods` VALUES (27287, 68, 27); --psycloth lappas -- EVA
REPLACE INTO `item_mods` VALUES (27287, 31, 107); --psycloth lappas -- MEVA
REPLACE INTO `item_mods` VALUES (27287, 30, 20); --psycloth lappas -- MACC
REPLACE INTO `item_mods` VALUES (27287, 29, 6); --psycloth lappas -- MDEF
REPLACE INTO `item_mods` VALUES (27287, 14, 19); --psycloth lappas -- CHR
REPLACE INTO `item_mods` VALUES (27287, 13, 30); --psycloth lappas -- MND
REPLACE INTO `item_mods` VALUES (27287, 12, 40); --psycloth lappas -- INT
REPLACE INTO `item_mods` VALUES (27287, 11, 17); --psycloth lappas -- AGI
REPLACE INTO `item_mods` VALUES (27287, 10, 12); --psycloth lappas -- VIT
REPLACE INTO `item_mods` VALUES (27287, 8, 25); --psycloth lappas -- STR
REPLACE INTO `item_mods` VALUES (27287, 5, 29); --psycloth lappas -- MP
REPLACE INTO `item_mods` VALUES (27287, 2, 43); --psycloth lappas -- HP
REPLACE INTO `item_mods` VALUES (27287, 1, 101); --psycloth lappas -- DEF
REPLACE INTO `item_mods_pet` VALUES (27287, 160, -400, 0); -- DMG
-- Psycloth Manillas
REPLACE INTO `item_mods` VALUES (27102, 384, 300); --psycloth manillas -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27102, 115, 20); --psycloth manillas -- ELEM
REPLACE INTO `item_mods` VALUES (27102, 68, 22); --psycloth manillas -- EVA
REPLACE INTO `item_mods` VALUES (27102, 31, 37); --psycloth manillas -- MEVA
REPLACE INTO `item_mods` VALUES (27102, 30, 17); --psycloth manillas -- MACC
REPLACE INTO `item_mods` VALUES (27102, 29, 3); --psycloth manillas -- MDEF
REPLACE INTO `item_mods` VALUES (27102, 28, 17); --psycloth manillas -- MATT
REPLACE INTO `item_mods` VALUES (27102, 14, 19); --psycloth manillas -- CHR
REPLACE INTO `item_mods` VALUES (27102, 13, 33); --psycloth manillas -- MND
REPLACE INTO `item_mods` VALUES (27102, 12, 25); --psycloth manillas -- INT
REPLACE INTO `item_mods` VALUES (27102, 11, 5); --psycloth manillas -- AGI
REPLACE INTO `item_mods` VALUES (27102, 10, 25); --psycloth manillas -- VIT
REPLACE INTO `item_mods` VALUES (27102, 9, 28); --psycloth manillas -- DEX
REPLACE INTO `item_mods` VALUES (27102, 8, 6); --psycloth manillas -- STR
REPLACE INTO `item_mods` VALUES (27102, 5, 14); --psycloth manillas -- MP
REPLACE INTO `item_mods` VALUES (27102, 2, 22); --psycloth manillas -- HP
REPLACE INTO `item_mods` VALUES (27102, 1, 81); --psycloth manillas -- DEF
REPLACE INTO `item_mods_pet` VALUES (27462, 30, 20, 1); -- MACC
-- Psycloth Vest  
REPLACE INTO `item_mods` VALUES (26952, 384, 300); --psycloth vest -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26952, 116, 21); --psycloth vest -- DARK
REPLACE INTO `item_mods` VALUES (26952, 68, 41); --psycloth vest -- EVA
REPLACE INTO `item_mods` VALUES (26952, 31, 80); --psycloth vest -- MEVA
REPLACE INTO `item_mods` VALUES (26952, 29, 6); --psycloth vest -- MDEF
REPLACE INTO `item_mods` VALUES (26952, 28, 25); --psycloth vest -- MATT
REPLACE INTO `item_mods` VALUES (26952, 27, -7); --psycloth vest -- ENMITY
REPLACE INTO `item_mods` VALUES (26952, 14, 29); --psycloth vest -- CHR
REPLACE INTO `item_mods` VALUES (26952, 13, 29); --psycloth vest -- MND
REPLACE INTO `item_mods` VALUES (26952, 12, 32); --psycloth vest -- INT
REPLACE INTO `item_mods` VALUES (26952, 11, 21); --psycloth vest -- AGI
REPLACE INTO `item_mods` VALUES (26952, 10, 21); --psycloth vest -- VIT
REPLACE INTO `item_mods` VALUES (26952, 9, 21); --psycloth vest -- DEX
REPLACE INTO `item_mods` VALUES (26952, 8, 21); --psycloth vest -- STR
REPLACE INTO `item_mods` VALUES (26952, 5, 59); --psycloth vest -- MP
REPLACE INTO `item_mods` VALUES (26952, 2, 54); --psycloth vest -- HP
REPLACE INTO `item_mods` VALUES (26952, 1, 123); --psycloth vest -- DEF
-- Psycloth Tiara  
REPLACE INTO `item_mods` VALUES (26796, 384, 600); --psycloth tiara -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26796, 117, 15); --psycloth tiara -- SUMMONING
REPLACE INTO `item_mods` VALUES (26796, 68, 36); --psycloth tiara -- EVA
REPLACE INTO `item_mods` VALUES (26796, 31, 75); --psycloth tiara -- MEVA
REPLACE INTO `item_mods` VALUES (26796, 29, 5); --psycloth tiara -- MDEF
REPLACE INTO `item_mods` VALUES (26796, 27, -6); --psycloth tiara -- ENMITY
REPLACE INTO `item_mods` VALUES (26796, 14, 23); --psycloth tiara -- CHR
REPLACE INTO `item_mods` VALUES (26796, 13, 26); --psycloth tiara -- MND
REPLACE INTO `item_mods` VALUES (26796, 12, 26); --psycloth tiara -- INT
REPLACE INTO `item_mods` VALUES (26796, 11, 18); --psycloth tiara -- AGI
REPLACE INTO `item_mods` VALUES (26796, 10, 18); --psycloth tiara -- VIT
REPLACE INTO `item_mods` VALUES (26796, 9, 18); --psycloth tiara -- DEX
REPLACE INTO `item_mods` VALUES (26796, 8, 18); --psycloth tiara -- STR
REPLACE INTO `item_mods` VALUES (26796, 5, 32); --psycloth tiara -- MP
REPLACE INTO `item_mods` VALUES (26796, 2, 36); --psycloth tiara -- HP
REPLACE INTO `item_mods` VALUES (26796, 1, 94); --psycloth tiara -- DEF
REPLACE INTO `item_mods_pet` VALUES (27462, 28, 20, 1); -- MATT
-- Pteroslaver brais +3
REPLACE INTO `item_mods` VALUES (23612,1,140);   -- DEF: 140
REPLACE INTO `item_mods` VALUES (23612,2,85);    -- HP: 85
REPLACE INTO `item_mods` VALUES (23612,8,43);    -- STR: 43
REPLACE INTO `item_mods` VALUES (23612,9,22);    -- DEX: 22
REPLACE INTO `item_mods` VALUES (23612,10,41);   -- VIT: 41
REPLACE INTO `item_mods` VALUES (23612,11,25);   -- AGI: 25
REPLACE INTO `item_mods` VALUES (23612,12,36);   -- INT: 36
REPLACE INTO `item_mods` VALUES (23612,13,26);   -- MND: 26
REPLACE INTO `item_mods` VALUES (23612,14,22);   -- CHR: 22
REPLACE INTO `item_mods` VALUES (23612,23,64);   -- ATT: 64
REPLACE INTO `item_mods` VALUES (23612,25,39);   -- ACC: 39
REPLACE INTO `item_mods` VALUES (23612,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (23612,30,29);   -- MACC: 29
REPLACE INTO `item_mods` VALUES (23612,31,95);   -- MEVA: 95
REPLACE INTO `item_mods` VALUES (23612,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23612,73,10);    -- STORETP: 10
REPLACE INTO `item_mods` VALUES (23612,363,29);  -- HIGH_JUMP_ENMITY_REDUCTION: 29
REPLACE INTO `item_mods` VALUES (23612,384,500); -- HASTE_GEAR: 5%
REPLACE INTO `item_mods_pet` VALUES (23612, 160, -1100, 2); -- Wyvern: DMG
-- Pteroslaver finger gauntlets +3
REPLACE INTO `item_mods` VALUES (23545,1,116);   -- DEF: 116
REPLACE INTO `item_mods` VALUES (23545,2,77);    -- HP: 77
REPLACE INTO `item_mods` VALUES (23545,5,50);    -- MP: 50
REPLACE INTO `item_mods` VALUES (23545,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (23545,9,43);    -- DEX: 43
REPLACE INTO `item_mods` VALUES (23545,10,40);   -- VIT: 40
REPLACE INTO `item_mods` VALUES (23545,11,20);   -- AGI: 20
REPLACE INTO `item_mods` VALUES (23545,12,20);   -- INT: 20
REPLACE INTO `item_mods` VALUES (23545,13,36);   -- MND: 36
REPLACE INTO `item_mods` VALUES (23545,14,30);   -- CHR: 30
REPLACE INTO `item_mods` VALUES (23545,23,63);   -- ATT: 63
REPLACE INTO `item_mods` VALUES (23545,25,46);   -- ACC: 46
REPLACE INTO `item_mods` VALUES (23545,29,3);    -- MDEF: 3
REPLACE INTO `item_mods` VALUES (23545,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23545,31,46);   -- MEVA: 46
REPLACE INTO `item_mods` VALUES (23545,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23545,384,400); -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (23545,840,10);   -- ALL_WSDMG_ALL_HITS: 10
REPLACE INTO `item_mods_pet` VALUES (23545, 163, -1100, 2); -- Wyvern: DMGMAGIC
-- Pteroslaver mail +3
REPLACE INTO `item_mods` VALUES (23478,1,161);   -- DEF: 161
REPLACE INTO `item_mods` VALUES (23478,2,102);    -- HP: 102
REPLACE INTO `item_mods` VALUES (23478,5,64);    -- MP: 64
REPLACE INTO `item_mods` VALUES (23478,8,44);    -- STR: 44
REPLACE INTO `item_mods` VALUES (23478,9,39);    -- DEX: 39
REPLACE INTO `item_mods` VALUES (23478,10,36);   -- VIT: 36
REPLACE INTO `item_mods` VALUES (23478,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (23478,12,31);   -- INT: 31
REPLACE INTO `item_mods` VALUES (23478,13,31);   -- MND: 31
REPLACE INTO `item_mods` VALUES (23478,14,31);   -- CHR: 31
REPLACE INTO `item_mods` VALUES (23478,25,40);   -- ACC: 40
REPLACE INTO `item_mods` VALUES (23478,23,80);   -- ATT: 80
REPLACE INTO `item_mods` VALUES (23478,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23478,68,76);   -- EVA: 76
REPLACE INTO `item_mods` VALUES (23478,31,73);   -- MEVA: 73
REPLACE INTO `item_mods` VALUES (23478,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (23478,384,300); -- HASTE_GEAR: 3%
REPLACE INTO `item_mods_pet` VALUES (23478,974,1, 2);   -- WYVERN_SUBJOB_TRAITS: 1
-- TODO: All Jumps: Adds 100% of wyvern's max HP as additional damage
-- Pursuers beret
REPLACE INTO `item_mods` VALUES (26795, 384, 800); --pursuers beret -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26795, 105, 15); --pursuers beret -- MARKSMAN
REPLACE INTO `item_mods` VALUES (26795, 73, 5); --pursuers beret -- STORETP
REPLACE INTO `item_mods` VALUES (26795, 68, 44); --pursuers beret -- EVA
REPLACE INTO `item_mods` VALUES (26795, 31, 53); --pursuers beret -- MEVA
REPLACE INTO `item_mods` VALUES (26795, 29, 2); --pursuers beret -- MDEF
REPLACE INTO `item_mods` VALUES (26795, 24, 23); --pursuers beret -- RATT
REPLACE INTO `item_mods` VALUES (26795, 14, 20); --pursuers beret -- CHR
REPLACE INTO `item_mods` VALUES (26795, 13, 19); --pursuers beret -- MND
REPLACE INTO `item_mods` VALUES (26795, 12, 19); --pursuers beret -- INT
REPLACE INTO `item_mods` VALUES (26795, 11, 28); --pursuers beret -- AGI
REPLACE INTO `item_mods` VALUES (26795, 10, 16); --pursuers beret -- VIT
REPLACE INTO `item_mods` VALUES (26795, 9, 23); --pursuers beret -- DEX
REPLACE INTO `item_mods` VALUES (26795, 8, 22); --pursuers beret -- STR
REPLACE INTO `item_mods` VALUES (26795, 2, 36); --pursuers beret -- HP
REPLACE INTO `item_mods` VALUES (26795, 1, 97); --pursuers beret -- DEF
-- Pursuers cuffs
REPLACE INTO `item_mods` VALUES (27101, 384, 500); --pursuers cuffs -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27101, 68, 24); --pursuers cuffs -- EVA
REPLACE INTO `item_mods` VALUES (27101, 31, 37); --pursuers cuffs -- MEVA
REPLACE INTO `item_mods` VALUES (27101, 29, 2); --pursuers cuffs -- MDEF
REPLACE INTO `item_mods` VALUES (27101, 28, 20); --pursuers cuffs -- MATT
REPLACE INTO `item_mods` VALUES (27101, 27, -7); --pursuers cuffs -- ENMITY
REPLACE INTO `item_mods` VALUES (27101, 24, 20); --pursuers cuffs -- RATT
REPLACE INTO `item_mods` VALUES (27101, 14, 17); --pursuers cuffs -- CHR
REPLACE INTO `item_mods` VALUES (27101, 13, 30); --pursuers cuffs -- MND
REPLACE INTO `item_mods` VALUES (27101, 12, 12); --pursuers cuffs -- INT
REPLACE INTO `item_mods` VALUES (27101, 11, 17); --pursuers cuffs -- AGI
REPLACE INTO `item_mods` VALUES (27101, 10, 29); --pursuers cuffs -- VIT
REPLACE INTO `item_mods` VALUES (27101, 9, 35); --pursuers cuffs -- DEX
REPLACE INTO `item_mods` VALUES (27101, 8, 11); --pursuers cuffs -- STR
REPLACE INTO `item_mods` VALUES (27101, 2, 25); --pursuers cuffs -- HP
REPLACE INTO `item_mods` VALUES (27101, 1, 88); --pursuers cuffs -- DEF
-- Pursuers doublet
REPLACE INTO `item_mods` VALUES (26951, 384, 400); --pursuers doublet -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26951, 73, 6); --pursuers doublet -- STORETP
REPLACE INTO `item_mods` VALUES (26951, 68, 49); --pursuers doublet -- EVA
REPLACE INTO `item_mods` VALUES (26951, 31, 64); --pursuers doublet -- MEVA
REPLACE INTO `item_mods` VALUES (26951, 29, 6); --pursuers doublet -- MDEF
REPLACE INTO `item_mods` VALUES (26951, 26, 25); --pursuers doublet -- RACC
REPLACE INTO `item_mods` VALUES (26951, 24, 25); --pursuers doublet -- RATT
REPLACE INTO `item_mods` VALUES (26951, 14, 23); --pursuers doublet -- CHR
REPLACE INTO `item_mods` VALUES (26951, 13, 23); --pursuers doublet -- MND
REPLACE INTO `item_mods` VALUES (26951, 12, 23); --pursuers doublet -- INT
REPLACE INTO `item_mods` VALUES (26951, 11, 30); --pursuers doublet -- AGI
REPLACE INTO `item_mods` VALUES (26951, 10, 21); --pursuers doublet -- VIT
REPLACE INTO `item_mods` VALUES (26951, 9, 29); --pursuers doublet -- DEX
REPLACE INTO `item_mods` VALUES (26951, 8, 24); --pursuers doublet -- STR
REPLACE INTO `item_mods` VALUES (26951, 5, 44); --pursuers doublet -- MP
REPLACE INTO `item_mods` VALUES (26951, 2, 109); --pursuers doublet -- HP
REPLACE INTO `item_mods` VALUES (26951, 1, 128); --pursuers doublet -- DEF
-- Pursuers gaiters
REPLACE INTO `item_mods` VALUES (27461, 384, 400); --pursuers gaiters -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27461, 68, 72); --pursuers gaiters -- EVA
REPLACE INTO `item_mods` VALUES (27461, 31, 69); --pursuers gaiters -- MEVA
REPLACE INTO `item_mods` VALUES (27461, 30, 15); --pursuers gaiters -- MACC
REPLACE INTO `item_mods` VALUES (27461, 29, 5); --pursuers gaiters -- MDEF
REPLACE INTO `item_mods` VALUES (27461, 27, -7); --pursuers gaiters -- ENMITY
REPLACE INTO `item_mods` VALUES (27461, 26, 20); --pursuers gaiters -- RACC
REPLACE INTO `item_mods` VALUES (27461, 14, 30); --pursuers gaiters -- CHR
REPLACE INTO `item_mods` VALUES (27461, 13, 12); --pursuers gaiters -- MND
REPLACE INTO `item_mods` VALUES (27461, 11, 44); --pursuers gaiters -- AGI
REPLACE INTO `item_mods` VALUES (27461, 10, 10); --pursuers gaiters -- VIT
REPLACE INTO `item_mods` VALUES (27461, 9, 29); --pursuers gaiters -- DEX
REPLACE INTO `item_mods` VALUES (27461, 8, 12); --pursuers gaiters -- STR
REPLACE INTO `item_mods` VALUES (27461, 2, 13); --pursuers gaiters -- HP
REPLACE INTO `item_mods` VALUES (27461, 1, 69); --pursuers gaiters -- DEF
-- Pursuers pants
REPLACE INTO `item_mods` VALUES (27286, 384, 600); --pursuers pants -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27286, 359, 9); --pursuers pants -- RAPID_SHOT
REPLACE INTO `item_mods` VALUES (27286, 68, 38); --pursuers pants -- EVA
REPLACE INTO `item_mods` VALUES (27286, 31, 69); --pursuers pants -- MEVA
REPLACE INTO `item_mods` VALUES (27286, 29, 5); --pursuers pants -- MDEF
REPLACE INTO `item_mods` VALUES (27286, 26, 23); --pursuers pants -- RACC
REPLACE INTO `item_mods` VALUES (27286, 24, 23); --pursuers pants -- RATT
REPLACE INTO `item_mods` VALUES (27286, 14, 14); --pursuers pants -- CHR
REPLACE INTO `item_mods` VALUES (27286, 13, 20); --pursuers pants -- MND
REPLACE INTO `item_mods` VALUES (27286, 12, 33); --pursuers pants -- INT
REPLACE INTO `item_mods` VALUES (27286, 11, 29); --pursuers pants -- AGI
REPLACE INTO `item_mods` VALUES (27286, 10, 17); --pursuers pants -- VIT
REPLACE INTO `item_mods` VALUES (27286, 9, 3); --pursuers pants -- DEX
REPLACE INTO `item_mods` VALUES (27286, 8, 35); --pursuers pants -- STR
REPLACE INTO `item_mods` VALUES (27286, 5, 23); --pursuers pants -- MP
REPLACE INTO `item_mods` VALUES (27286, 2, 47); --pursuers pants -- HP
REPLACE INTO `item_mods` VALUES (27286, 1, 113); --pursuers pants -- DEF
-- Ratri Gadlings
REPLACE INTO `item_mods` VALUES (25982, 1, 114); --ratri gadlings -- DEF
REPLACE INTO `item_mods` VALUES (25982, 2, 399); --ratri gadlings -- HP
REPLACE INTO `item_mods` VALUES (25982, 8, 23); --ratri gadlings -- STR
REPLACE INTO `item_mods` VALUES (25982, 9, 43); --ratri gadlings -- DEX
REPLACE INTO `item_mods` VALUES (25982, 10, 34); --ratri gadlings -- VIT
REPLACE INTO `item_mods` VALUES (25982, 12, 14); --ratri gadlings -- INT
REPLACE INTO `item_mods` VALUES (25982, 13, 32); --ratri gadlings -- MND
REPLACE INTO `item_mods` VALUES (25982, 14, 24); --ratri gadlings -- CHR
REPLACE INTO `item_mods` VALUES (25982, 30, 34); --ratri gadlings -- MACC
REPLACE INTO `item_mods` VALUES (25982, 68, 41); --ratri gadlings -- EVA
REPLACE INTO `item_mods` VALUES (25982, 31, 80); --ratri gadlings -- MEVA
REPLACE INTO `item_mods` VALUES (25982, 86, 43); --ratri gadlings -- SCYTHE
REPLACE INTO `item_mods` VALUES (25982, 384, 400); --ratri gadlings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25982, 27, -7); --ratri gadlings -- ENMITY
REPLACE INTO `item_mods` VALUES (25982, 570, 6); --ratri gadlings -- WEAPONSKILL_DAMAGE_BASE
REPLACE INTO `item_mods` VALUES (25982, 160, 900); --ratri gadlings -- DMG
-- rawhide boots
REPLACE INTO `item_mods` VALUES (27460, 491, 8); --rawhide boots -- WALTZ_POTENCY
REPLACE INTO `item_mods` VALUES (27460, 384, 400); --rawhide boots -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27460, 259, 3); --rawhide boots -- DUAL_WIELD
REPLACE INTO `item_mods` VALUES (27460, 68, 72); --rawhide boots -- EVA
REPLACE INTO `item_mods` VALUES (27460, 31, 69); --rawhide boots -- MEVA
REPLACE INTO `item_mods` VALUES (27460, 29, 5); --rawhide boots -- MDEF
REPLACE INTO `item_mods` VALUES (27460, 25, 23); --rawhide boots -- ACC
REPLACE INTO `item_mods` VALUES (27460, 14, 30); --rawhide boots -- CHR
REPLACE INTO `item_mods` VALUES (27460, 13, 18); --rawhide boots -- MND
REPLACE INTO `item_mods` VALUES (27460, 11, 37); --rawhide boots -- AGI
REPLACE INTO `item_mods` VALUES (27460, 10, 12); --rawhide boots -- VIT
REPLACE INTO `item_mods` VALUES (27460, 9, 24); --rawhide boots -- DEX
REPLACE INTO `item_mods` VALUES (27460, 8, 18); --rawhide boots -- STR
REPLACE INTO `item_mods` VALUES (27460, 2, 13); --rawhide boots -- HP
REPLACE INTO `item_mods` VALUES (27460, 1, 73); --rawhide boots -- DEF
-- rawhide gloves
REPLACE INTO `item_mods` VALUES (27100, 384, 500); --rawhide gloves -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27100, 168, 15); --rawhide gloves -- SPELLINTERRUPT
REPLACE INTO `item_mods` VALUES (27100, 122, 10); --rawhide gloves -- BLUE
REPLACE INTO `item_mods` VALUES (27100, 68, 24); --rawhide gloves -- EVA
REPLACE INTO `item_mods` VALUES (27100, 31, 37); --rawhide gloves -- MEVA
REPLACE INTO `item_mods` VALUES (27100, 30, 20); --rawhide gloves -- MACC
REPLACE INTO `item_mods` VALUES (27100, 29, 2); --rawhide gloves -- MDEF
REPLACE INTO `item_mods` VALUES (27100, 25, 20); --rawhide gloves -- ACC
REPLACE INTO `item_mods` VALUES (27100, 14, 19); --rawhide gloves -- CHR
REPLACE INTO `item_mods` VALUES (27100, 13, 32); --rawhide gloves -- MND
REPLACE INTO `item_mods` VALUES (27100, 12, 14); --rawhide gloves -- INT
REPLACE INTO `item_mods` VALUES (27100, 11, 7); --rawhide gloves -- AGI
REPLACE INTO `item_mods` VALUES (27100, 10, 34); --rawhide gloves -- VIT
REPLACE INTO `item_mods` VALUES (27100, 9, 41); --rawhide gloves -- DEX
REPLACE INTO `item_mods` VALUES (27100, 8, 13); --rawhide gloves -- STR
REPLACE INTO `item_mods` VALUES (27100, 2, 25); --rawhide gloves -- HP
REPLACE INTO `item_mods` VALUES (27100, 1, 90); --rawhide gloves -- DEF
-- rawhide mask
REPLACE INTO `item_mods` VALUES (26794, 384, 800); --rawhide mask -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26794, 369, 1); --rawhide mask -- REFRESH
REPLACE INTO `item_mods` VALUES (26794, 68, 44); --rawhide mask -- EVA
REPLACE INTO `item_mods` VALUES (26794, 31, 53); --rawhide mask -- MEVA
REPLACE INTO `item_mods` VALUES (26794, 29, 2); --rawhide mask -- MDEF
REPLACE INTO `item_mods` VALUES (26794, 23, 18); --rawhide mask -- ATT
REPLACE INTO `item_mods` VALUES (26794, 14, 19); --rawhide mask -- CHR
REPLACE INTO `item_mods` VALUES (26794, 13, 18); --rawhide mask -- MND
REPLACE INTO `item_mods` VALUES (26794, 12, 18); --rawhide mask -- INT
REPLACE INTO `item_mods` VALUES (26794, 11, 26); --rawhide mask -- AGI
REPLACE INTO `item_mods` VALUES (26794, 10, 18); --rawhide mask -- VIT
REPLACE INTO `item_mods` VALUES (26794, 9, 26); --rawhide mask -- DEX
REPLACE INTO `item_mods` VALUES (26794, 8, 18); --rawhide mask -- STR
REPLACE INTO `item_mods` VALUES (26794, 5, 23); --rawhide mask -- MP
REPLACE INTO `item_mods` VALUES (26794, 2, 36); --rawhide mask -- HP
REPLACE INTO `item_mods` VALUES (26794, 1, 100); --rawhide mask -- DEF
-- rawhide trousers
REPLACE INTO `item_mods` VALUES (27285, 486, 15); --rawhide trousers -- TACTICAL_PARRY
REPLACE INTO `item_mods` VALUES (27285, 384, 600); --rawhide trousers -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27285, 113, 10); --rawhide trousers -- ENHANCE
REPLACE INTO `item_mods` VALUES (27285, 68, 38); --rawhide trousers -- EVA
REPLACE INTO `item_mods` VALUES (27285, 31, 69); --rawhide trousers -- MEVA
REPLACE INTO `item_mods` VALUES (27285, 30, 20); --rawhide trousers -- MACC
REPLACE INTO `item_mods` VALUES (27285, 29, 5); --rawhide trousers -- MDEF
REPLACE INTO `item_mods` VALUES (27285, 14, 11); --rawhide trousers -- CHR
REPLACE INTO `item_mods` VALUES (27285, 13, 17); --rawhide trousers -- MND
REPLACE INTO `item_mods` VALUES (27285, 12, 30); --rawhide trousers -- INT
REPLACE INTO `item_mods` VALUES (27285, 11, 24); --rawhide trousers -- AGI
REPLACE INTO `item_mods` VALUES (27285, 10, 16); --rawhide trousers -- VIT
REPLACE INTO `item_mods` VALUES (27285, 8, 33); --rawhide trousers -- STR
REPLACE INTO `item_mods` VALUES (27285, 2, 47); --rawhide trousers -- HP
REPLACE INTO `item_mods` VALUES (27285, 1, 112); --rawhide trousers -- DEF
-- rawhide vest
REPLACE INTO `item_mods` VALUES (26950, 384, 400); --rawhide vest -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26950, 302, 2); --rawhide vest -- TRIPLE_ATTACK
REPLACE INTO `item_mods` VALUES (26950, 68, 49); --rawhide vest -- EVA
REPLACE INTO `item_mods` VALUES (26950, 31, 64); --rawhide vest -- MEVA
REPLACE INTO `item_mods` VALUES (26950, 29, 6); --rawhide vest -- MDEF
REPLACE INTO `item_mods` VALUES (26950, 28, 25); --rawhide vest -- MATT
REPLACE INTO `item_mods` VALUES (26950, 25, 15); --rawhide vest -- ACC
REPLACE INTO `item_mods` VALUES (26950, 23, 15); --rawhide vest -- ATT
REPLACE INTO `item_mods` VALUES (26950, 14, 25); --rawhide vest -- CHR
REPLACE INTO `item_mods` VALUES (26950, 13, 25); --rawhide vest -- MND
REPLACE INTO `item_mods` VALUES (26950, 12, 25); --rawhide vest -- INT
REPLACE INTO `item_mods` VALUES (26950, 11, 30); --rawhide vest -- AGI
REPLACE INTO `item_mods` VALUES (26950, 10, 26); --rawhide vest -- VIT
REPLACE INTO `item_mods` VALUES (26950, 9, 35); --rawhide vest -- DEX
REPLACE INTO `item_mods` VALUES (26950, 8, 30); --rawhide vest -- STR
REPLACE INTO `item_mods` VALUES (26950, 5, 44); --rawhide vest -- MP
REPLACE INTO `item_mods` VALUES (26950, 2, 59); --rawhide vest -- HP
REPLACE INTO `item_mods` VALUES (26950, 1, 130); --rawhide vest -- DEF
-- ravenous breastplate
REPLACE INTO `item_mods` VALUES (26875, 1, 145); --ravenous breastplate -- DEF
REPLACE INTO `item_mods` VALUES (26875, 2, 63); --ravenous breastplate -- HP
REPLACE INTO `item_mods` VALUES (26875, 5, 35); --ravenous breastplate -- MP
REPLACE INTO `item_mods` VALUES (26875, 8, 37); --ravenous breastplate -- STR
REPLACE INTO `item_mods` VALUES (26875, 9, 24); --ravenous breastplate -- DEX
REPLACE INTO `item_mods` VALUES (26875, 10, 35); --ravenous breastplate -- VIT
REPLACE INTO `item_mods` VALUES (26875, 11, 24); --ravenous breastplate -- AGI
REPLACE INTO `item_mods` VALUES (26875, 12, 24); --ravenous breastplate -- INT
REPLACE INTO `item_mods` VALUES (26875, 13, 24); --ravenous breastplate -- MND
REPLACE INTO `item_mods` VALUES (26875, 14, 24); --ravenous breastplate -- CHR
REPLACE INTO `item_mods` VALUES (26875, 25, 35); --ravenous breastplate -- ACC
REPLACE INTO `item_mods` VALUES (26875, 68, 41); --ravenous breastplate -- EVA
REPLACE INTO `item_mods` VALUES (26875, 31, 48); --ravenous breastplate -- MEVA
REPLACE INTO `item_mods` VALUES (26875, 29, 4); --ravenous breastplate -- MDEF
REPLACE INTO `item_mods` VALUES (26875, 384, 300); --ravenous breastplate -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26875, 288, 4); --ravenous breastplate -- DOUBLE_ATTACK
-- ravenous breastplate +1
REPLACE INTO `item_mods` VALUES (26876, 1, 146); --ravenous breastplate +1 -- DEF
REPLACE INTO `item_mods` VALUES (26876, 2, 63); --ravenous breastplate +1 -- HP
REPLACE INTO `item_mods` VALUES (26876, 5, 35); --ravenous breastplate +1 -- MP
REPLACE INTO `item_mods` VALUES (26876, 8, 38); --ravenous breastplate +1 -- STR
REPLACE INTO `item_mods` VALUES (26876, 9, 25); --ravenous breastplate +1 -- DEX
REPLACE INTO `item_mods` VALUES (26876, 10, 36); --ravenous breastplate +1 -- VIT
REPLACE INTO `item_mods` VALUES (26876, 11, 25); --ravenous breastplate +1 -- AGI
REPLACE INTO `item_mods` VALUES (26876, 12, 25); --ravenous breastplate +1 -- INT
REPLACE INTO `item_mods` VALUES (26876, 13, 25); --ravenous breastplate +1 -- MND
REPLACE INTO `item_mods` VALUES (26876, 14, 25); --ravenous breastplate +1 -- CHR
REPLACE INTO `item_mods` VALUES (26876, 25, 36); --ravenous breastplate +1 -- ACC
REPLACE INTO `item_mods` VALUES (26876, 68, 41); --ravenous breastplate +1 -- EVA
REPLACE INTO `item_mods` VALUES (26876, 31, 48); --ravenous breastplate +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26876, 29, 4); --ravenous breastplate +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26876, 384, 300); --ravenous breastplate +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26876, 288, 5); --ravenous breastplate -- DOUBLE_ATTACK
-- Regal captains gloves
REPLACE INTO `item_mods` VALUES (25825, 1, 116); --regal captains gloves -- DEF
REPLACE INTO `item_mods` VALUES (25825, 2, 182); --regal captains gloves -- HP
REPLACE INTO `item_mods` VALUES (25825, 5, 29); --regal captains gloves -- MP
REPLACE INTO `item_mods` VALUES (25825, 8, 40); --regal captains gloves -- STR
REPLACE INTO `item_mods` VALUES (25825, 9, 40); --regal captains gloves -- DEX
REPLACE INTO `item_mods` VALUES (25825, 10, 30); --regal captains gloves -- VIT
REPLACE INTO `item_mods` VALUES (25825, 11, 20); --regal captains gloves -- AGI
REPLACE INTO `item_mods` VALUES (25825, 12, 30); --regal captains gloves -- INT
REPLACE INTO `item_mods` VALUES (25825, 13, 30); --regal captains gloves -- MND
REPLACE INTO `item_mods` VALUES (25825, 14, 30); --regal captains gloves -- CHR
REPLACE INTO `item_mods` VALUES (25825, 25, 45); --regal captains gloves -- ACC
REPLACE INTO `item_mods` VALUES (25825, 68, 41); --regal captains gloves -- EVA
REPLACE INTO `item_mods` VALUES (25825, 31, 48); --regal captains gloves -- MEVA
REPLACE INTO `item_mods` VALUES (25825, 28, 2); --regal captains gloves -- MATT
REPLACE INTO `item_mods` VALUES (25825, 384, 400); --regal captains gloves -- HASTE_GEAR
-- TODO REPLACE INTO `item_mods` VALUES (25825, , ); --regal captains gloves -- Increases the number of attacks when accuracy is lower
-- revealers crown
REPLACE INTO `item_mods` VALUES (26726, 1, 95); --revealers crown -- DEF
REPLACE INTO `item_mods` VALUES (26726, 2, 36); --revealers crown -- HP
REPLACE INTO `item_mods` VALUES (26726, 5, 62); --revealers crown -- MP
REPLACE INTO `item_mods` VALUES (26726, 8, 20); --revealers crown -- STR
REPLACE INTO `item_mods` VALUES (26726, 9, 20); --revealers crown -- DEX
REPLACE INTO `item_mods` VALUES (26726, 10, 20); --revealers crown -- VIT
REPLACE INTO `item_mods` VALUES (26726, 11, 20); --revealers crown -- AGI
REPLACE INTO `item_mods` VALUES (26726, 12, 26); --revealers crown -- INT
REPLACE INTO `item_mods` VALUES (26726, 13, 26); --revealers crown -- MND
REPLACE INTO `item_mods` VALUES (26726, 14, 25); --revealers crown -- CHR
REPLACE INTO `item_mods` VALUES (26726, 30, 10); --revealers crown -- MACC
REPLACE INTO `item_mods` VALUES (26726, 68, 36); --revealers crown -- EVA
REPLACE INTO `item_mods` VALUES (26726, 31, 75); --revealers crown -- MEVA
REPLACE INTO `item_mods` VALUES (26726, 29, 5); --revealers crown -- MDEF
REPLACE INTO `item_mods` VALUES (26726, 170, 5); --revealers crown -- FASTCAST
REPLACE INTO `item_mods` VALUES (26726, 384, 600); --revealers crown -- HASTE_GEAR
-- revealers crown +1
REPLACE INTO `item_mods` VALUES (26727, 1, 96); --revealers crown +1 -- DEF
REPLACE INTO `item_mods` VALUES (26727, 2, 36); --revealers crown +1 -- HP
REPLACE INTO `item_mods` VALUES (26727, 5, 72); --revealers crown +1 -- MP
REPLACE INTO `item_mods` VALUES (26727, 8, 21); --revealers crown +1 -- STR
REPLACE INTO `item_mods` VALUES (26727, 9, 21); --revealers crown +1 -- DEX
REPLACE INTO `item_mods` VALUES (26727, 10, 21); --revealers crown +1 -- VIT
REPLACE INTO `item_mods` VALUES (26727, 11, 21); --revealers crown +1 -- AGI
REPLACE INTO `item_mods` VALUES (26727, 12, 27); --revealers crown +1 -- INT
REPLACE INTO `item_mods` VALUES (26727, 13, 27); --revealers crown +1 -- MND
REPLACE INTO `item_mods` VALUES (26727, 14, 26); --revealers crown +1 -- CHR
REPLACE INTO `item_mods` VALUES (26727, 30, 11); --revealers crown +1 -- MACC
REPLACE INTO `item_mods` VALUES (26727, 68, 36); --revealers crown +1 -- EVA
REPLACE INTO `item_mods` VALUES (26727, 31, 75); --revealers crown +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26727, 29, 5); --revealers crown +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26727, 170, 6); --revealers crown +1 -- FASTCAST
REPLACE INTO `item_mods` VALUES (26727, 384, 600); --revealers crown +1 -- HASTE_GEAR
-- Runeists Bandeau
REPLACE INTO `item_mods` VALUES (27787,1,82);   -- DEF: 
REPLACE INTO `item_mods` VALUES (27787,2,47);    -- HP: 
REPLACE INTO `item_mods` VALUES (27787,5,49);    -- MP: 
REPLACE INTO `item_mods` VALUES (27787,8,15);    -- STR: 
REPLACE INTO `item_mods` VALUES (27787,9,18);    -- DEX: 
REPLACE INTO `item_mods` VALUES (27787,10,15);   -- VIT: 
REPLACE INTO `item_mods` VALUES (27787,11,18);   -- AGI: 
REPLACE INTO `item_mods` VALUES (27787,12,15);   -- INT: 
REPLACE INTO `item_mods` VALUES (27787,13,15);   -- MND: 
REPLACE INTO `item_mods` VALUES (27787,14,16);   -- CHR: 
REPLACE INTO `item_mods` VALUES (27787,29,1);    -- MDEF: 
REPLACE INTO `item_mods` VALUES (27787,31,36);   -- MEVA: 
REPLACE INTO `item_mods` VALUES (27787,68,20);   -- EVA: 
REPLACE INTO `item_mods` VALUES (27787,170,10);  -- FASTCAST: 
REPLACE INTO `item_mods` VALUES (27787,339,20);  -- REGEN_DURATION: 
REPLACE INTO `item_mods` VALUES (27787,384,700); -- HASTE_GEAR: 
-- Runeists Bandeau +1
REPLACE INTO `item_mods` VALUES (27706,1,105);   -- DEF: 
REPLACE INTO `item_mods` VALUES (27706,2,66);    -- HP: 
REPLACE INTO `item_mods` VALUES (27706,5,53);    -- MP: 
REPLACE INTO `item_mods` VALUES (27706,8,21);    -- STR: 
REPLACE INTO `item_mods` VALUES (27706,9,25);    -- DEX: 
REPLACE INTO `item_mods` VALUES (27706,10,21);   -- VIT: 
REPLACE INTO `item_mods` VALUES (27706,11,25);   -- AGI: 
REPLACE INTO `item_mods` VALUES (27706,12,21);   -- INT: 
REPLACE INTO `item_mods` VALUES (27706,13,21);   -- MND: 
REPLACE INTO `item_mods` VALUES (27706,14,22);   -- CHR: 
REPLACE INTO `item_mods` VALUES (27706,29,2);    -- MDEF: 
REPLACE INTO `item_mods` VALUES (27706,31,53);   -- MEVA: 
REPLACE INTO `item_mods` VALUES (27706,68,44);   -- EVA: 
REPLACE INTO `item_mods` VALUES (27706,170,10);  -- FASTCAST: 
REPLACE INTO `item_mods` VALUES (27706,339,21);  -- REGEN_DURATION: 
REPLACE INTO `item_mods` VALUES (27706,384,800); -- HASTE_GEAR: 
-- Runeists Mitons
REPLACE INTO `item_mods` VALUES (28067,1,73);    -- DEF: 
REPLACE INTO `item_mods` VALUES (28067,2,36);     -- HP: 
REPLACE INTO `item_mods` VALUES (28067,5,25);     -- MP: 
REPLACE INTO `item_mods` VALUES (28067,8,7);     -- STR: 
REPLACE INTO `item_mods` VALUES (28067,9,22);     -- DEX: 
REPLACE INTO `item_mods` VALUES (28067,10,20);    -- VIT: 
REPLACE INTO `item_mods` VALUES (28067,11,3);    -- AGI: 
REPLACE INTO `item_mods` VALUES (28067,12,8);    -- INT: 
REPLACE INTO `item_mods` VALUES (28067,13,19);    -- MND: 
REPLACE INTO `item_mods` VALUES (28067,14,11);    -- CHR: 
REPLACE INTO `item_mods` VALUES (28067,29,1);     -- MDEF: 
REPLACE INTO `item_mods` VALUES (28067,31,25);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (28067,68,11);    -- EVA: 
REPLACE INTO `item_mods` VALUES (28067,113,15);   -- ENHANCE: 
REPLACE INTO `item_mods` VALUES (28067,161,-200); -- DMGPHYS: 
REPLACE INTO `item_mods` VALUES (28067,1018,10); -- GAMBIT_DURATION: 
REPLACE INTO `item_mods` VALUES (28067,384,400);  -- HASTE_GEAR: 
-- Runeists Mitons +1
REPLACE INTO `item_mods` VALUES (27986,1,93);    -- DEF: 
REPLACE INTO `item_mods` VALUES (27986,2,50);     -- HP: 
REPLACE INTO `item_mods` VALUES (27986,5,25);     -- MP: 
REPLACE INTO `item_mods` VALUES (27986,8,11);     -- STR: 
REPLACE INTO `item_mods` VALUES (27986,9,35);     -- DEX: 
REPLACE INTO `item_mods` VALUES (27986,10,32);    -- VIT: 
REPLACE INTO `item_mods` VALUES (27986,11,5);    -- AGI: 
REPLACE INTO `item_mods` VALUES (27986,12,12);    -- INT: 
REPLACE INTO `item_mods` VALUES (27986,13,30);    -- MND: 
REPLACE INTO `item_mods` VALUES (27986,14,17);    -- CHR: 
REPLACE INTO `item_mods` VALUES (27986,29,2);     -- MDEF: 
REPLACE INTO `item_mods` VALUES (27986,31,37);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (27986,68,24);    -- EVA: 
REPLACE INTO `item_mods` VALUES (27986,113,15);   -- ENHANCE: 
REPLACE INTO `item_mods` VALUES (27986,161,-200); -- DMGPHYS: 
REPLACE INTO `item_mods` VALUES (27986,1018,12); -- GAMBIT_DURATION: 
REPLACE INTO `item_mods` VALUES (27986,384,500);  -- HASTE_GEAR: 
-- Runeist Trousers +1
REPLACE INTO `item_mods` VALUES (28133,1,117);     -- DEF: 
REPLACE INTO `item_mods` VALUES (28133,2,47);     -- HP: 
REPLACE INTO `item_mods` VALUES (28133,5,35);     -- MP: 
REPLACE INTO `item_mods` VALUES (28133,8,29);     -- STR: 
REPLACE INTO `item_mods` VALUES (28133,10,16);    -- VIT: 
REPLACE INTO `item_mods` VALUES (28133,11,20);    -- AGI: 
REPLACE INTO `item_mods` VALUES (28133,12,30);    -- INT: 
REPLACE INTO `item_mods` VALUES (28133,13,17);    -- MND: 
REPLACE INTO `item_mods` VALUES (28133,14,11);     -- CHR
REPLACE INTO `item_mods` VALUES (28133,29,5);     -- MDEF
REPLACE INTO `item_mods` VALUES (28133,31,69);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (28133,68,38);    -- EVA: 
REPLACE INTO `item_mods` VALUES (28133,111,15);   -- DIVINE: 
REPLACE INTO `item_mods` VALUES (28133,161,-300); -- DMGPHYS: 
REPLACE INTO `item_mods` VALUES (28133,384,600);  -- HASTE_GEAR: 
REPLACE INTO `item_mods` VALUES (28133,958,6);    -- STATUSRES
-- Sacro Breastplate
REPLACE INTO `item_mods` VALUES (25767,1,170);     -- DEF: 
REPLACE INTO `item_mods` VALUES (25767,2,182);     -- HP: 
REPLACE INTO `item_mods` VALUES (25767,5,73);     -- MP: 
REPLACE INTO `item_mods` VALUES (25767,8,40);     -- STR: 
REPLACE INTO `item_mods` VALUES (25767,9,21);     -- DEX: 
REPLACE INTO `item_mods` VALUES (25767,10,25);    -- VIT: 
REPLACE INTO `item_mods` VALUES (25767,11,33);    -- AGI: 
REPLACE INTO `item_mods` VALUES (25767,12,37);    -- INT: 
REPLACE INTO `item_mods` VALUES (25767,13,25);    -- MND: 
REPLACE INTO `item_mods` VALUES (25767,14,38);     -- CHR
REPLACE INTO `item_mods` VALUES (25767,25,25);     -- ACC
REPLACE INTO `item_mods` VALUES (25767,23,60);     -- ATT
REPLACE INTO `item_mods` VALUES (25767,30,25);     -- MACC
REPLACE INTO `item_mods` VALUES (25767,28,40);     -- MATT
REPLACE INTO `item_mods` VALUES (25767,29,12);     -- MDEF
REPLACE INTO `item_mods` VALUES (25767,311,60);     -- MAGIC_DAMAGE
REPLACE INTO `item_mods` VALUES (25767,68,96);    -- EVA: 
REPLACE INTO `item_mods` VALUES (25767,31,129);    -- MEVA: 
REPLACE INTO `item_mods` VALUES (25767,384,500);     -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25767,291,15);     -- COUNTER
REPLACE INTO `item_mods` VALUES (25767,170,10);     -- FASTCAST
REPLACE INTO `item_mods` VALUES (25767,289,15);     -- SUBTLE_BLOW
REPLACE INTO `item_mods` VALUES (25767,370,13);     -- REGEN
-- Sacro Bulwark
REPLACE INTO `item_mods` VALUES (26487,518,15);     -- SHIELDBLOCKRATE: 15
-- Sakonji domaru +3
REPLACE INTO `item_mods` VALUES (23476, 1, 165); -- sakonji domaru +3 -- DEF
REPLACE INTO `item_mods` VALUES (23476, 2, 101); -- sakonji domaru +3 -- HP
REPLACE INTO `item_mods` VALUES (23476, 5, 64); -- sakonji domaru +3 -- MP
REPLACE INTO `item_mods` VALUES (23476, 8, 42); -- sakonji domaru +3 -- STR
REPLACE INTO `item_mods` VALUES (23476, 9, 37); -- sakonji domaru +3 -- DEX
REPLACE INTO `item_mods` VALUES (23476, 10, 36); -- sakonji domaru +3 -- VIT
REPLACE INTO `item_mods` VALUES (23476, 11, 31); -- sakonji domaru +3 -- AGI
REPLACE INTO `item_mods` VALUES (23476, 12, 31); -- sakonji domaru +3 -- INT
REPLACE INTO `item_mods` VALUES (23476, 13, 31); -- sakonji domaru +3 -- MND
REPLACE INTO `item_mods` VALUES (23476, 14, 31); -- sakonji domaru +3 -- CHR
REPLACE INTO `item_mods` VALUES (23476, 25, 47); -- sakonji domaru +3 -- ACC
REPLACE INTO `item_mods` VALUES (23476, 23, 80); -- sakonji domaru +3 -- ATT
REPLACE INTO `item_mods` VALUES (23476, 30, 40); -- sakonji domaru +3 -- MACC
REPLACE INTO `item_mods` VALUES (23476, 68, 61); -- sakonji domaru +3 -- EVA
REPLACE INTO `item_mods` VALUES (23476, 31, 73); -- sakonji domaru +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23476, 29, 6); -- sakonji domaru +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23476, 384, 300); -- sakonji domaru +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23476, 73, 10); -- sakonji domaru +3 -- STORETP
REPLACE INTO `item_mods` VALUES (23476, 840, 10); -- sakonji domaru +3 -- ALL_WSDMG_ALL_HITS
-- sakonji haidate +3
REPLACE INTO `item_mods` VALUES (23610, 1, 145); --sakonji haidate +3 -- DEF
REPLACE INTO `item_mods` VALUES (23610, 2, 70); --sakonji haidate +3 -- HP
REPLACE INTO `item_mods` VALUES (23610, 8, 43); --sakonji haidate +3 -- STR
REPLACE INTO `item_mods` VALUES (23610, 10, 29); --sakonji haidate +3 -- VIT
REPLACE INTO `item_mods` VALUES (23610, 11, 25); --sakonji haidate +3 -- AGI
REPLACE INTO `item_mods` VALUES (23610, 12, 36); --sakonji haidate +3 -- INT
REPLACE INTO `item_mods` VALUES (23610, 13, 26); --sakonji haidate +3 -- MND
REPLACE INTO `item_mods` VALUES (23610, 14, 22); --sakonji haidate +3 -- CHR
REPLACE INTO `item_mods` VALUES (23610, 25, 39); --sakonji haidate +3 -- ACC
REPLACE INTO `item_mods` VALUES (23610, 23, 82); --sakonji haidate +3 -- ATT
REPLACE INTO `item_mods` VALUES (23610, 30, 39); --sakonji haidate +3 -- MACC
REPLACE INTO `item_mods` VALUES (23610, 68, 60); --sakonji haidate +3 -- EVA
REPLACE INTO `item_mods` VALUES (23610, 31, 95); --sakonji haidate +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23610, 29, 5); --sakonji haidate +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23610, 384, 500); --sakonji haidate +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23610, 508, 35); --sakonji haidate +3 -- THIRD_EYE_COUNTER_RATE
REPLACE INTO `item_mods` VALUES (23610, 1047, 25); -- sakonji haidate +3 -- COUNTER_DAMAGE
REPLACE INTO `item_mods` VALUES (23610, 163, -700); --sakonji haidate +3 -- DMGMAGIC
-- Sakonji kabuto +3
REPLACE INTO `item_mods` VALUES (23409, 1, 135); --sakonji kabuto +3 -- DEF
REPLACE INTO `item_mods` VALUES (23409, 2, 78); --sakonji kabuto +3 -- HP
REPLACE INTO `item_mods` VALUES (23409, 5, 43); --sakonji kabuto +3 -- MP
REPLACE INTO `item_mods` VALUES (23409, 8, 34); --sakonji kabuto +3 -- STR
REPLACE INTO `item_mods` VALUES (23409, 9, 30); --sakonji kabuto +3 -- DEX
REPLACE INTO `item_mods` VALUES (23409, 10, 32); --sakonji kabuto +3 -- VIT
REPLACE INTO `item_mods` VALUES (23409, 11, 30); --sakonji kabuto +3 -- AGI
REPLACE INTO `item_mods` VALUES (23409, 12, 29); --sakonji kabuto +3 -- INT
REPLACE INTO `item_mods` VALUES (23409, 13, 29); --sakonji kabuto +3 -- MND
REPLACE INTO `item_mods` VALUES (23409, 14, 29); --sakonji kabuto +3 -- CHR
REPLACE INTO `item_mods` VALUES (23409, 25, 45); --sakonji kabuto +3 -- ACC
REPLACE INTO `item_mods` VALUES (23409, 23, 79); --sakonji kabuto +3 -- ATT
REPLACE INTO `item_mods` VALUES (23409, 26, 45); --sakonji kabuto +3 -- RACC
REPLACE INTO `item_mods` VALUES (23409, 24, 79); -- sakonji kabuto +3 -- RATT
REPLACE INTO `item_mods` VALUES (23409, 30, 37); -- sakonji kabuto +3 -- MACC
REPLACE INTO `item_mods` VALUES (23409, 68, 53); -- sakonji kabuto +3 -- EVA
REPLACE INTO `item_mods` VALUES (23409, 31, 63); -- sakonji kabuto +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23409, 29, 4); -- sakonji kabuto +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23409, 384, 700); -- sakonji kabuto +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23409, 365, 5); -- sakonji kabuto +3 -- SNAP_SHOT
REPLACE INTO `item_mods` VALUES (23409, 73, 8); -- sakonji kabuto +3 -- STORETP
-- Sakonji kote +3
REPLACE INTO `item_mods` VALUES (23543, 1, 125); -- sakonji kote +3 -- DEF
REPLACE INTO `item_mods` VALUES (23543, 2, 47); -- sakonji kote +3 -- HP
REPLACE INTO `item_mods` VALUES (23543, 8, 16); -- sakonji kote +3 -- STR
REPLACE INTO `item_mods` VALUES (23543, 9, 40); -- sakonji kote +3 -- DEX
REPLACE INTO `item_mods` VALUES (23543, 10, 40); -- sakonji kote +3 -- VIT
REPLACE INTO `item_mods` VALUES (23543, 11, 17); -- sakonji kote +3 -- AGI
REPLACE INTO `item_mods` VALUES (23543, 12, 20); -- sakonji kote +3 -- INT
REPLACE INTO `item_mods` VALUES (23543, 13, 36); -- sakonji kote +3 -- MND
REPLACE INTO `item_mods` VALUES (23543, 14, 30); -- sakonji kote +3 -- CHR
REPLACE INTO `item_mods` VALUES (23543, 25, 47); -- sakonji kote +3 -- ACC
REPLACE INTO `item_mods` VALUES (23543, 23, 81); -- sakonji kote +3 -- ATT
REPLACE INTO `item_mods` VALUES (23543, 30, 38); --sakonji kote +3 -- MACC
REPLACE INTO `item_mods` VALUES (23543, 68, 42); --sakonji kote +3 -- EVA
REPLACE INTO `item_mods` VALUES (23543, 31, 46); --sakonji kote +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23543, 29, 3); --sakonji kote +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23543, 384, 400); --sakonji kote +3 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (23543, 94, 12); --sakonji kote +3 -- MEDITATE_DURATION
REPLACE INTO `item_mods` VALUES (23543, 161, -600); --sakonji kote +3 -- DMGPHYS
-- Sakpata's Cuisses
REPLACE INTO `item_mods` VALUES (23778, 387, 700); --sakpatas cuisses -- UDMGPHYS
REPLACE INTO `item_mods` VALUES (23778, 301, 5); --sakpatas cuisses -- PHALANX
-- Sakpata's Gauntlets
REPLACE INTO `item_mods` VALUES (23771, 387, 600); --sakpatas gauntlets -- UDMGPHYS
-- Sakpata's Helm
REPLACE INTO `item_mods` VALUES (23757, 387, 500); --sakpatas helm -- UDMGPHYS
-- Sakpata's Leggings
REPLACE INTO `item_mods` VALUES (23785, 387, 400); --sakpatas leggings -- UDMGPHYS
-- Sakpata's Plate
REPLACE INTO `item_mods` VALUES (23764, 387, 800); --sakpatas plate -- UDMGPHYS
-- Savas Jawshan
REPLACE INTO `item_mods` VALUES (27862,1,138);   -- DEF: 138
REPLACE INTO `item_mods` VALUES (27862,2,120);   -- HP: 120
REPLACE INTO `item_mods` VALUES (27862,5,44);    -- MP: 44
REPLACE INTO `item_mods` VALUES (27862,8,28);    -- STR: 28
REPLACE INTO `item_mods` VALUES (27862,9,21);    -- DEX: 21
REPLACE INTO `item_mods` VALUES (27862,10,28);   -- VIT: 28
REPLACE INTO `item_mods` VALUES (27862,11,21);   -- AGI: 21
REPLACE INTO `item_mods` VALUES (27862,12,23);   -- INT: 23
REPLACE INTO `item_mods` VALUES (27862,13,21);   -- MND: 21
REPLACE INTO `item_mods` VALUES (27862,14,23);   -- CHR: 23
REPLACE INTO `item_mods` VALUES (27862,68,41);   -- EVA: 41
REPLACE INTO `item_mods` VALUES (27862,31,53);   -- MEVA: 53
REPLACE INTO `item_mods` VALUES (27862,29,4);    -- MDEF: 4
REPLACE INTO `item_mods` VALUES (27862,384,300); -- HASTE_GEAR: 300
REPLACE INTO `item_mods` VALUES (27862,375,7);   -- CURE_POTENCY_RCVD: 7
REPLACE INTO `item_mods` VALUES (27862,163,-500);  -- DMGMAGIC: -5
-- Sayadio's Kaftan
REPLACE INTO `item_mods` VALUES (25731, 1, 135); --sayadios kaftan -- DEF
REPLACE INTO `item_mods` VALUES (25731, 2, 57); --sayadios kaftan -- HP
REPLACE INTO `item_mods` VALUES (25731, 5, 59); --sayadios kaftan -- MP
REPLACE INTO `item_mods` VALUES (25731, 8, 25); --sayadios kaftan -- STR
REPLACE INTO `item_mods` VALUES (25731, 9, 33); --sayadios kaftan -- DEX
REPLACE INTO `item_mods` VALUES (25731, 10, 23); --sayadios kaftan -- VIT
REPLACE INTO `item_mods` VALUES (25731, 11, 39); --sayadios kaftan -- AGI
REPLACE INTO `item_mods` VALUES (25731, 12, 19); --sayadios kaftan -- INT
REPLACE INTO `item_mods` VALUES (25731, 13, 19); --sayadios kaftan -- MND
REPLACE INTO `item_mods` VALUES (25731, 14, 19); --sayadios kaftan -- CHR
REPLACE INTO `item_mods` VALUES (25731, 25, 45); --sayadios kaftan -- ACC
REPLACE INTO `item_mods` VALUES (25731, 26, 35); --sayadios kaftan -- RACC
REPLACE INTO `item_mods` VALUES (25731, 24, 35); --sayadios kaftan -- RATT
REPLACE INTO `item_mods` VALUES (25731, 68, 52); --sayadios kaftan -- EVA
REPLACE INTO `item_mods` VALUES (25731, 31, 69); --sayadios kaftan -- MEVA
REPLACE INTO `item_mods` VALUES (25731, 29, 6); --sayadios kaftan -- MDEF
REPLACE INTO `item_mods` VALUES (25731, 384, 400); --sayadios kaftan -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25731, 165, 5); --sayadios kaftan -- CRITHITRATE
-- Shigure Tekko
REPLACE INTO `item_mods` VALUES (27995,1,88);    -- DEF: 89
REPLACE INTO `item_mods` VALUES (27995,2,25);    -- HP: 25
REPLACE INTO `item_mods` VALUES (27995,8,10);    -- STR: 10
REPLACE INTO `item_mods` VALUES (27995,9,34);    -- DEX: 34
REPLACE INTO `item_mods` VALUES (27995,10,28);   -- VIT: 28
REPLACE INTO `item_mods` VALUES (27995,11,6);    -- AGI: 6
REPLACE INTO `item_mods` VALUES (27995,12,10);   -- INT: 10
REPLACE INTO `item_mods` VALUES (27995,13,28);   -- MND: 28
REPLACE INTO `item_mods` VALUES (27995,14,16);   -- CHR: 16
REPLACE INTO `item_mods` VALUES (27995,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (27995,31,26);   -- MEVA: 26
REPLACE INTO `item_mods` VALUES (27995,68,22);   -- EVA: 22
REPLACE INTO `item_mods` VALUES (27995,384,500); -- HASTE_GEAR: 500
-- Skaoi Boots
REPLACE INTO `item_mods` VALUES (25921, 1, 71); --skaoi boots -- DEF
REPLACE INTO `item_mods` VALUES (25921, 2, 65); --skaoi boots -- HP
REPLACE INTO `item_mods` VALUES (25921, 5, 67); --skaoi boots -- MP
REPLACE INTO `item_mods` VALUES (25921, 8, 12); --skaoi boots -- STR
REPLACE INTO `item_mods` VALUES (25921, 9, 16); --skaoi boots -- DEX
REPLACE INTO `item_mods` VALUES (25921, 10, 12); --skaoi boots -- VIT
REPLACE INTO `item_mods` VALUES (25921, 11, 33); --skaoi boots -- AGI
REPLACE INTO `item_mods` VALUES (25921, 12, 16); --skaoi boots -- INT
REPLACE INTO `item_mods` VALUES (25921, 13, 17); --skaoi boots -- MND
REPLACE INTO `item_mods` VALUES (25921, 14, 33); --skaoi boots -- CHR
REPLACE INTO `item_mods` VALUES (25921, 29, 6); --skaoi boots -- MDEF
REPLACE INTO `item_mods` VALUES (25921, 30, 37); --skaoi boots -- MACC
REPLACE INTO `item_mods` VALUES (25921, 31, 107); --skaoi boots -- MEVA
REPLACE INTO `item_mods` VALUES (25921, 68, 60); --skaoi boots -- EVA
REPLACE INTO `item_mods` VALUES (25921, 114, 17); --skaoi boots -- ENFEEBLE
REPLACE INTO `item_mods` VALUES (25921, 374, 7); --skaoi boots -- CURE_POTENCY
REPLACE INTO `item_mods` VALUES (25921, 384, 300); --skaoi boots -- HASTE_GEAR
-- Shomonjijoe
REPLACE INTO `item_mods` VALUES (26887,1,126);   -- DEF: 126
REPLACE INTO `item_mods` VALUES (26887,2,50);    -- HP: 50
REPLACE INTO `item_mods` VALUES (26887,5,85);    -- MP: 85
REPLACE INTO `item_mods` VALUES (26887,8,21);    -- STR: 21
REPLACE INTO `item_mods` VALUES (26887,9,20);    -- DEX: 20
REPLACE INTO `item_mods` VALUES (26887,10,21);   -- VIT: 21
REPLACE INTO `item_mods` VALUES (26887,11,21);   -- AGI: 21
REPLACE INTO `item_mods` VALUES (26887,12,29);   -- INT: 29
REPLACE INTO `item_mods` VALUES (26887,13,29);   -- MND: 29
REPLACE INTO `item_mods` VALUES (26887,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (26887,29,6);    -- MDEF: 6
REPLACE INTO `item_mods` VALUES (26887,31,80);   -- MEVA: 80
REPLACE INTO `item_mods` VALUES (26887,68,41);   -- EVA: 41
REPLACE INTO `item_mods` VALUES (26887,357,7);   -- BP_DELAY: 7
REPLACE INTO `item_mods` VALUES (26887,369,2);   -- REFRESH: 2
REPLACE INTO `item_mods` VALUES (26887,384,300); -- HASTE_GEAR: 300
REPLACE INTO `item_mods_pet` VALUES (26887,27,13,1); -- Avatar - ENMITY: 13
-- Shrieker's cuffs
REPLACE INTO `item_mods` VALUES (27104, 384, 300);  -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (27104, 296, 7);  -- CONSERVE_MP: 7
REPLACE INTO `item_mods` VALUES (27104, 244, 25);  -- SILENCERES: 25
REPLACE INTO `item_mods` VALUES (27104, 68, 22);  -- EVA: 22
REPLACE INTO `item_mods` VALUES (27104, 31, 57);  -- MEVA: 57
REPLACE INTO `item_mods` VALUES (27104, 29, 3);  -- MDEF: 3
REPLACE INTO `item_mods` VALUES (27104, 14, 19);  -- CHR: 19
REPLACE INTO `item_mods` VALUES (27104, 13, 33);  -- MND: 33
REPLACE INTO `item_mods` VALUES (27104, 12, 19);  -- INT: 19
REPLACE INTO `item_mods` VALUES (27104, 11, 5);  -- AGI: 5
REPLACE INTO `item_mods` VALUES (27104, 10, 25);  -- VIT: 25
REPLACE INTO `item_mods` VALUES (27104, 9, 28);  -- DEX: 28
REPLACE INTO `item_mods` VALUES (27104, 8, 6);  -- STR: 6
REPLACE INTO `item_mods` VALUES (27104, 5, 59);  -- MP: 59
REPLACE INTO `item_mods` VALUES (27104, 2, 22);  -- HP: 22
REPLACE INTO `item_mods` VALUES (27104, 1, 89);  -- DEF: 89
-- Skormoth Mask
REPLACE INTO `item_mods` VALUES (27783,1,100);    -- DEF: 100
REPLACE INTO `item_mods` VALUES (27783,2,36);     -- HP: 36
REPLACE INTO `item_mods` VALUES (27783,8,20);     -- STR: 20
REPLACE INTO `item_mods` VALUES (27783,9,22);     -- DEX: 22
REPLACE INTO `item_mods` VALUES (27783,10,22);    -- VIT: 22
REPLACE INTO `item_mods` VALUES (27783,11,22);    -- AGI: 22
REPLACE INTO `item_mods` VALUES (27783,12,21);    -- INT: 21
REPLACE INTO `item_mods` VALUES (27783,13,21);    -- MND: 21
REPLACE INTO `item_mods` VALUES (27783,14,21);    -- CHR: 21
REPLACE INTO `item_mods` VALUES (27783,25,26);    -- ACC: 26
REPLACE INTO `item_mods` VALUES (27783,29,4);     -- MDEF: 4
REPLACE INTO `item_mods` VALUES (27783,31,43);    -- MEVA: 43
REPLACE INTO `item_mods` VALUES (27783,68,38);    -- EVA: 38
REPLACE INTO `item_mods` VALUES (27783,163,-300); -- DMGMAGIC: -300
REPLACE INTO `item_mods` VALUES (27783,302,4);  -- TRIPLE_ATTACK: 4
REPLACE INTO `item_mods` VALUES (27783,384,800);  -- HASTE_GEAR: 800
-- Sombra Tiara
REPLACE INTO `item_mods` VALUES (26724, 1, 101); --sombra tiara -- DEF
REPLACE INTO `item_mods` VALUES (26724, 2, 56); --sombra tiara -- HP
REPLACE INTO `item_mods` VALUES (26724, 5, 17); --sombra tiara -- MP
REPLACE INTO `item_mods` VALUES (26724, 8, 22); --sombra tiara -- STR
REPLACE INTO `item_mods` VALUES (26724, 9, 24); --sombra tiara -- DEX
REPLACE INTO `item_mods` VALUES (26724, 10, 21); --sombra tiara -- VIT
REPLACE INTO `item_mods` VALUES (26724, 11, 24); --sombra tiara -- AGI
REPLACE INTO `item_mods` VALUES (26724, 12, 21); --sombra tiara -- INT
REPLACE INTO `item_mods` VALUES (26724, 13, 21); --sombra tiara -- MND
REPLACE INTO `item_mods` VALUES (26724, 14, 21); --sombra tiara -- CHR
REPLACE INTO `item_mods` VALUES (26724, 25, 10); --sombra tiara -- ACC
REPLACE INTO `item_mods` VALUES (26724, 26, 10); --sombra tiara -- RACC
REPLACE INTO `item_mods` VALUES (26724, 68, 41); --sombra tiara -- EVA
REPLACE INTO `item_mods` VALUES (26724, 31, 43); --sombra tiara -- MEVA
REPLACE INTO `item_mods` VALUES (26724, 29, 4); --sombra tiara -- MDEF
REPLACE INTO `item_mods` VALUES (26724, 384, 700); --sombra tiara -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26724, 289, 4); --sombra tiara -- SUBTLE_BLOW
-- Sombra Tights
REPLACE INTO `item_mods` VALUES (27226, 1, 113); --sombra tights -- DEF
REPLACE INTO `item_mods` VALUES (27226, 2, 77); --sombra tights -- HP
REPLACE INTO `item_mods` VALUES (27226, 5, 14); --sombra tights -- MP
REPLACE INTO `item_mods` VALUES (27226, 8, 28); --sombra tights -- STR
REPLACE INTO `item_mods` VALUES (27226, 9, 5); --sombra tights -- DEX
REPLACE INTO `item_mods` VALUES (27226, 10, 15); --sombra tights -- VIT
REPLACE INTO `item_mods` VALUES (27226, 11, 28); --sombra tights -- AGI
REPLACE INTO `item_mods` VALUES (27226, 12, 30); --sombra tights -- INT
REPLACE INTO `item_mods` VALUES (27226, 13, 17); --sombra tights -- MND
REPLACE INTO `item_mods` VALUES (27226, 14, 11); --sombra tights -- CHR
REPLACE INTO `item_mods` VALUES (27226, 25, 10); --sombra tights -- ACC
REPLACE INTO `item_mods` VALUES (27226, 26, 10); --sombra tights -- RACC
REPLACE INTO `item_mods` VALUES (27226, 68, 44); --sombra tights -- EVA
REPLACE INTO `item_mods` VALUES (27226, 31, 96); --sombra tights -- MEVA
REPLACE INTO `item_mods` VALUES (27226, 29, 5); --sombra tights -- MDEF
REPLACE INTO `item_mods` VALUES (27226, 259, 3); --sombra tights -- DUAL_WIELD
REPLACE INTO `item_mods` VALUES (27226, 384, 500); --sombra tights -- HASTE_GEAR
--  Sombra Mittens
REPLACE INTO `item_mods` VALUES (27989, 1, 89); --sombra mittens -- DEF
REPLACE INTO `item_mods` VALUES (27989, 2, 25); --sombra mittens -- HP
REPLACE INTO `item_mods` VALUES (27989, 5, 28); --sombra mittens -- MP
REPLACE INTO `item_mods` VALUES (27989, 8, 7); --sombra mittens -- STR
REPLACE INTO `item_mods` VALUES (27989, 9, 35); --sombra mittens -- DEX
REPLACE INTO `item_mods` VALUES (27989, 10, 26); --sombra mittens -- VIT
REPLACE INTO `item_mods` VALUES (27989, 11, 12); --sombra mittens -- AGI
REPLACE INTO `item_mods` VALUES (27989, 12, 16); --sombra mittens -- INT
REPLACE INTO `item_mods` VALUES (27989, 13, 30); --sombra mittens -- MND
REPLACE INTO `item_mods` VALUES (27989, 14, 17); --sombra mittens -- CHR
REPLACE INTO `item_mods` VALUES (27989, 68, 27); --sombra mittens -- EVA
REPLACE INTO `item_mods` VALUES (27989, 31, 26); --sombra mittens -- MEVA
REPLACE INTO `item_mods` VALUES (27989, 30, 7); --sombra mittens -- MACC
REPLACE INTO `item_mods` VALUES (27989, 384, 400); --sombra mittens -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27989, 170, 3); --sombra mittens -- FASTCAST
REPLACE INTO `item_mods` VALUES (27989, 29, 2); --sombra mittens -- MDEF
-- Srivatsa
REPLACE INTO `item_mods` VALUES (26403, 416, 5); --srivatsa -- NULL_PHYSICAL_DAMAGE
REPLACE INTO `item_mods` VALUES (26403, 476, 5); --srivatsa -- NULL_MAGICAL_DAMAGE
-- Stinger Helm
REPLACE INTO `item_mods` VALUES (26731,1,110);    -- DEF: 110
REPLACE INTO `item_mods` VALUES (26731,2,38);     -- HP: 38
REPLACE INTO `item_mods` VALUES (26731,8,25);     -- STR: 25
REPLACE INTO `item_mods` VALUES (26731,9,16);     -- DEX: 16
REPLACE INTO `item_mods` VALUES (26731,10,16);    -- VIT: 16
REPLACE INTO `item_mods` VALUES (26731,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (26731,12,16);    -- INT: 16
REPLACE INTO `item_mods` VALUES (26731,13,16);    -- MND: 16
REPLACE INTO `item_mods` VALUES (26731,14,16);    -- CHR: 16
REPLACE INTO `item_mods` VALUES (26731,25,19);    -- ACC: 19
REPLACE INTO `item_mods` VALUES (26731,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (26731,31,53);    -- MEVA: 53
REPLACE INTO `item_mods` VALUES (26731,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (26731,384,900); -- HASTE_GEAR: 900
-- Sulevia's Cuisses
REPLACE INTO `item_mods` VALUES (25858,1,125);    -- DEF: 125
REPLACE INTO `item_mods` VALUES (25858,2,50);     -- HP: 50
REPLACE INTO `item_mods` VALUES (25858,5,50);     -- MP: 50
REPLACE INTO `item_mods` VALUES (25858,8,39);     -- STR: 39
REPLACE INTO `item_mods` VALUES (25858,10,25);    -- VIT: 25
REPLACE INTO `item_mods` VALUES (25858,11,14);    -- AGI: 14
REPLACE INTO `item_mods` VALUES (25858,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25858,13,12);    -- MND: 12
REPLACE INTO `item_mods` VALUES (25858,14,10);    -- CHR: 10
REPLACE INTO `item_mods` VALUES (25858,25,27);    -- ACC: 27
REPLACE INTO `item_mods` VALUES (25858,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25858,23,31);    -- ATT: 31
REPLACE INTO `item_mods` VALUES (25858,31,75);    -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25858,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25858,160,-500); -- DMG: -500
REPLACE INTO `item_mods` VALUES (25858,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25858,302,2);    -- TRIPLE_ATTACK: 2
-- Sulevia's Cuisses +1
REPLACE INTO `item_mods` VALUES (25859,1,130);    -- DEF: 130
REPLACE INTO `item_mods` VALUES (25859,2,50);     -- HP: 50
REPLACE INTO `item_mods` VALUES (25859,5,50);     -- MP: 50
REPLACE INTO `item_mods` VALUES (25859,8,44);     -- STR: 44
REPLACE INTO `item_mods` VALUES (25859,10,30);    -- VIT: 30
REPLACE INTO `item_mods` VALUES (25859,11,14);    -- AGI: 14
REPLACE INTO `item_mods` VALUES (25859,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25859,13,17);    -- MND: 17
REPLACE INTO `item_mods` VALUES (25859,14,15);    -- CHR: 15
REPLACE INTO `item_mods` VALUES (25859,25,39);    -- ACC: 39
REPLACE INTO `item_mods` VALUES (25859,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25859,23,43);    -- ATT: 43
REPLACE INTO `item_mods` VALUES (25859,31,75);    -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25859,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25859,160,-600); -- DMG: -600
REPLACE INTO `item_mods` VALUES (25859,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25859,302,3);    -- TRIPLE_ATTACK: 3
-- Sulevia's Cuisses +2
REPLACE INTO `item_mods` VALUES (25879,1,135);    -- DEF: 135
REPLACE INTO `item_mods` VALUES (25879,2,50);     -- HP: 50
REPLACE INTO `item_mods` VALUES (25879,5,50);     -- MP: 50
REPLACE INTO `item_mods` VALUES (25879,8,47);     -- STR: 47
REPLACE INTO `item_mods` VALUES (25879,10,33);    -- VIT: 33
REPLACE INTO `item_mods` VALUES (25879,11,14);    -- AGI: 14
REPLACE INTO `item_mods` VALUES (25879,12,24);    -- INT: 24
REPLACE INTO `item_mods` VALUES (25879,13,20);    -- MND: 20
REPLACE INTO `item_mods` VALUES (25879,14,18);    -- CHR: 18
REPLACE INTO `item_mods` VALUES (25879,25,45);    -- ACC: 45
REPLACE INTO `item_mods` VALUES (25879,29,2);     -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25879,23,49);    -- ATT: 49
REPLACE INTO `item_mods` VALUES (25879,31,75);    -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25879,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25879,160,-700); -- DMG: -700
REPLACE INTO `item_mods` VALUES (25879,384,200);  -- HASTE_GEAR: 200
REPLACE INTO `item_mods` VALUES (25879,302,4);    -- TRIPLE_ATTACK: 4
-- Sulevia's Gauntlets
REPLACE INTO `item_mods` VALUES (25800,1,101);    -- DEF: 101
REPLACE INTO `item_mods` VALUES (25800,2,30);     -- HP: 30
REPLACE INTO `item_mods` VALUES (25800,5,30);     -- MP: 30
REPLACE INTO `item_mods` VALUES (25800,8,15);     -- STR: 15
REPLACE INTO `item_mods` VALUES (25800,9,26);     -- DEX: 26
REPLACE INTO `item_mods` VALUES (25800,10,37);    -- VIT: 37
REPLACE INTO `item_mods` VALUES (25800,12,6);    -- INT: 6
REPLACE INTO `item_mods` VALUES (25800,13,24);    -- MND: 24
REPLACE INTO `item_mods` VALUES (25800,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (25800,23,29);    -- ATT: 29
REPLACE INTO `item_mods` VALUES (25800,25,25);    -- ACC: 25
REPLACE INTO `item_mods` VALUES (25800,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25800,31,37);    -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25800,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25800,160,-300); -- DMG: -300
REPLACE INTO `item_mods` VALUES (25800,288,3);   -- DOUBLE_ATTACK: 3
REPLACE INTO `item_mods` VALUES (25800,384,300);  -- HASTE_GEAR: 300
-- Sulevia's Gauntlets +1
REPLACE INTO `item_mods` VALUES (25801,1,106);    -- DEF: 106
REPLACE INTO `item_mods` VALUES (25801,2,30);     -- HP: 30
REPLACE INTO `item_mods` VALUES (25801,5,30);     -- MP: 30
REPLACE INTO `item_mods` VALUES (25801,8,20);     -- STR: 20
REPLACE INTO `item_mods` VALUES (25801,9,31);     -- DEX: 31
REPLACE INTO `item_mods` VALUES (25801,10,42);    -- VIT: 42
REPLACE INTO `item_mods` VALUES (25801,12,6);    -- INT: 6
REPLACE INTO `item_mods` VALUES (25801,13,29);    -- MND: 29
REPLACE INTO `item_mods` VALUES (25801,14,24);    -- CHR: 24
REPLACE INTO `item_mods` VALUES (25801,23,41);    -- ATT: 41
REPLACE INTO `item_mods` VALUES (25801,25,37);    -- ACC: 37
REPLACE INTO `item_mods` VALUES (25801,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25801,31,37);    -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25801,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25801,160,-400); -- DMG: -400
REPLACE INTO `item_mods` VALUES (25801,288,5);   -- DOUBLE_ATTACK: 5
REPLACE INTO `item_mods` VALUES (25801,384,300);  -- HASTE_GEAR: 300
-- Sulevia's Gauntlets +2	
REPLACE INTO `item_mods` VALUES (25828,1,111);    -- DEF: 111
REPLACE INTO `item_mods` VALUES (25828,2,30);     -- HP: 30
REPLACE INTO `item_mods` VALUES (25828,5,30);     -- MP: 30
REPLACE INTO `item_mods` VALUES (25828,8,23);     -- STR: 23
REPLACE INTO `item_mods` VALUES (25828,9,34);     -- DEX: 34
REPLACE INTO `item_mods` VALUES (25828,10,45);    -- VIT: 45
REPLACE INTO `item_mods` VALUES (25828,12,6);    -- INT: 6
REPLACE INTO `item_mods` VALUES (25828,13,32);    -- MND: 32
REPLACE INTO `item_mods` VALUES (25828,14,27);    -- CHR: 27
REPLACE INTO `item_mods` VALUES (25828,23,47);    -- ATT: 47
REPLACE INTO `item_mods` VALUES (25828,25,43);    -- ACC: 43
REPLACE INTO `item_mods` VALUES (25828,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25828,31,37);    -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25828,68,16);    -- EVA: 16
REPLACE INTO `item_mods` VALUES (25828,160,-500); -- DMG: -500
REPLACE INTO `item_mods` VALUES (25828,288,6);   -- DOUBLE_ATTACK: 6
REPLACE INTO `item_mods` VALUES (25828,384,300);  -- HASTE_GEAR: 300
-- Sulevia's Leggings
REPLACE INTO `item_mods` VALUES (25925,1,83);    -- DEF: 83
REPLACE INTO `item_mods` VALUES (25925,2,20);    -- HP: 20
REPLACE INTO `item_mods` VALUES (25925,5,20);    -- MP: 20
REPLACE INTO `item_mods` VALUES (25925,8,21);    -- STR: 21
REPLACE INTO `item_mods` VALUES (25925,9,11);    -- DEX: 11
REPLACE INTO `item_mods` VALUES (25925,10,21);   -- VIT: 21
REPLACE INTO `item_mods` VALUES (25925,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25925,13,10);    -- MND: 10
REPLACE INTO `item_mods` VALUES (25925,14,24);   -- CHR: 24
REPLACE INTO `item_mods` VALUES (25925,25,24);   -- ACC: 24
REPLACE INTO `item_mods` VALUES (25925,23,28);   -- ATT: 28
REPLACE INTO `item_mods` VALUES (25925,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25925,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25925,68,44);   -- EVA: 44
REPLACE INTO `item_mods` VALUES (25925,160,-400); -- DMG: -200
REPLACE INTO `item_mods` VALUES (25925,840,5); -- ALL_WSDMG_ALL_HITS: 5
REPLACE INTO `item_mods` VALUES (25925,384,100); -- HASTE_GEAR: 100
-- Sulevia's Leggings +1
REPLACE INTO `item_mods` VALUES (25926,1,88);    -- DEF: 88
REPLACE INTO `item_mods` VALUES (25926,2,20);    -- HP: 20
REPLACE INTO `item_mods` VALUES (25926,5,20);    -- MP: 20
REPLACE INTO `item_mods` VALUES (25926,8,26);    -- STR: 26
REPLACE INTO `item_mods` VALUES (25926,9,16);    -- DEX: 16
REPLACE INTO `item_mods` VALUES (25926,10,26);   -- VIT: 26
REPLACE INTO `item_mods` VALUES (25926,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25926,13,15);    -- MND: 15
REPLACE INTO `item_mods` VALUES (25926,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (25926,25,36);   -- ACC: 36
REPLACE INTO `item_mods` VALUES (25926,23,40);   -- ATT: 40
REPLACE INTO `item_mods` VALUES (25926,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25926,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25926,68,44);   -- EVA: 44
REPLACE INTO `item_mods` VALUES (25926,160,-300); -- DMG: -300
REPLACE INTO `item_mods` VALUES (25926,840,6); -- ALL_WSDMG_ALL_HITS: 6
REPLACE INTO `item_mods` VALUES (25926,384,100); -- HASTE_GEAR: 100
-- Sulevia's Leggings +2
REPLACE INTO `item_mods` VALUES (25946,1,93);    -- DEF: 93
REPLACE INTO `item_mods` VALUES (25946,2,20);    -- HP: 20
REPLACE INTO `item_mods` VALUES (25946,5,20);    -- MP: 20
REPLACE INTO `item_mods` VALUES (25946,8,29);    -- STR: 29
REPLACE INTO `item_mods` VALUES (25946,9,19);    -- DEX: 19
REPLACE INTO `item_mods` VALUES (25946,10,29);   -- VIT: 29
REPLACE INTO `item_mods` VALUES (25946,11,26);   -- AGI: 26
REPLACE INTO `item_mods` VALUES (25946,13,18);    -- MND: 18
REPLACE INTO `item_mods` VALUES (25946,14,32);   -- CHR: 32
REPLACE INTO `item_mods` VALUES (25946,25,42);   -- ACC: 42
REPLACE INTO `item_mods` VALUES (25946,23,46);   -- ATT: 46
REPLACE INTO `item_mods` VALUES (25946,29,1);    -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25946,31,75);   -- MEVA: 75
REPLACE INTO `item_mods` VALUES (25946,68,44);   -- EVA: 44
REPLACE INTO `item_mods` VALUES (25946,160,-400); -- DMG: -400
REPLACE INTO `item_mods` VALUES (25946,840,7); -- ALL_WSDMG_ALL_HITS: 7
REPLACE INTO `item_mods` VALUES (25946,384,100); -- HASTE_GEAR: 100
-- Sulevias Mask
REPLACE INTO `item_mods` VALUES (25659,1,113);    -- DEF: 113
REPLACE INTO `item_mods` VALUES (25659,2,40);     -- HP: 40
REPLACE INTO `item_mods` VALUES (25659,5,40);     -- MP: 40
REPLACE INTO `item_mods` VALUES (25659,8,25);     -- STR: 25
REPLACE INTO `item_mods` VALUES (25659,9,11);     -- DEX: 11
REPLACE INTO `item_mods` VALUES (25659,10,32);    -- VIT: 32
REPLACE INTO `item_mods` VALUES (25659,11,12);    -- AGI: 12
REPLACE INTO `item_mods` VALUES (25659,12,11);    -- INT: 11
REPLACE INTO `item_mods` VALUES (25659,13,14);    -- MND: 14
REPLACE INTO `item_mods` VALUES (25659,14,14);    -- CHR: 14
REPLACE INTO `item_mods` VALUES (25659,23,30);    -- ATT: 30
REPLACE INTO `item_mods` VALUES (25659,25,26);    -- ACC: 26
REPLACE INTO `item_mods` VALUES (25659,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25659,31,43);    -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25659,68,27);    -- EVA: 27
REPLACE INTO `item_mods` VALUES (25659,73,5);    -- STORETP: 5
REPLACE INTO `item_mods` VALUES (25659,160,-400); -- DMG: -400
REPLACE INTO `item_mods` VALUES (25659,384,300);  -- HASTE_GEAR: 300
-- Sulevias Mask +1
REPLACE INTO `item_mods` VALUES (25660,1,118);    -- DEF: 118
REPLACE INTO `item_mods` VALUES (25660,2,40);     -- HP: 40
REPLACE INTO `item_mods` VALUES (25660,5,40);     -- MP: 40
REPLACE INTO `item_mods` VALUES (25660,8,30);     -- STR: 30
REPLACE INTO `item_mods` VALUES (25660,9,16);     -- DEX: 16
REPLACE INTO `item_mods` VALUES (25660,10,37);    -- VIT: 37
REPLACE INTO `item_mods` VALUES (25660,11,12);    -- AGI: 12
REPLACE INTO `item_mods` VALUES (25660,12,11);    -- INT: 11
REPLACE INTO `item_mods` VALUES (25660,13,19);    -- MND: 19
REPLACE INTO `item_mods` VALUES (25660,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (25660,23,42);    -- ATT: 42
REPLACE INTO `item_mods` VALUES (25660,25,38);    -- ACC: 38
REPLACE INTO `item_mods` VALUES (25660,29,1);     -- MDEF: 1
REPLACE INTO `item_mods` VALUES (25660,31,43);    -- MEVA: 43
REPLACE INTO `item_mods` VALUES (25660,68,27);    -- EVA: 27
REPLACE INTO `item_mods` VALUES (25660,73,8);    -- STORETP: 8
REPLACE INTO `item_mods` VALUES (25660,160,-500); -- DMG: -500
REPLACE INTO `item_mods` VALUES (25660,384,300);  -- HASTE_GEAR: 300
-- Sulevia's Platemail
REPLACE INTO `item_mods` VALUES (25745,1,143);    -- DEF: 143
REPLACE INTO `item_mods` VALUES (25745,2,70);     -- HP: 70
REPLACE INTO `item_mods` VALUES (25745,5,70);     -- MP: 70
REPLACE INTO `item_mods` VALUES (25745,8,33);     -- STR: 33
REPLACE INTO `item_mods` VALUES (25745,9,16);     -- DEX: 16
REPLACE INTO `item_mods` VALUES (25745,10,33);    -- VIT: 33
REPLACE INTO `item_mods` VALUES (25745,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (25745,12,16);    -- INT: 16
REPLACE INTO `item_mods` VALUES (25745,13,19);    -- MND: 19
REPLACE INTO `item_mods` VALUES (25745,14,19);    -- CHR: 19
REPLACE INTO `item_mods` VALUES (25745,23,32);    -- ATT: 32
REPLACE INTO `item_mods` VALUES (25745,25,28);    -- ACC: 28
REPLACE INTO `item_mods` VALUES (25745,29,3);     -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25745,31,59);    -- MEVA: 59
REPLACE INTO `item_mods` VALUES (25745,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (25745,175,5);    -- SKILLCHAINDMG: 5
REPLACE INTO `item_mods` VALUES (25745,160,-700); -- DMG: -700
REPLACE INTO `item_mods` VALUES (25745,384,100);  -- HASTE_GEAR: 100
-- Sulevia's Platemail +1
REPLACE INTO `item_mods` VALUES (25746,1,148);    -- DEF: 148
REPLACE INTO `item_mods` VALUES (25746,2,70);     -- HP: 70
REPLACE INTO `item_mods` VALUES (25746,5,70);     -- MP: 70
REPLACE INTO `item_mods` VALUES (25746,8,38);     -- STR: 38
REPLACE INTO `item_mods` VALUES (25746,9,21);     -- DEX: 21
REPLACE INTO `item_mods` VALUES (25746,10,38);    -- VIT: 38
REPLACE INTO `item_mods` VALUES (25746,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (25746,12,16);    -- INT: 16
REPLACE INTO `item_mods` VALUES (25746,13,24);    -- MND: 24
REPLACE INTO `item_mods` VALUES (25746,14,24);    -- CHR: 24
REPLACE INTO `item_mods` VALUES (25746,23,44);    -- ATT: 44
REPLACE INTO `item_mods` VALUES (25746,25,40);    -- ACC: 40
REPLACE INTO `item_mods` VALUES (25746,29,3);     -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25746,31,59);    -- MEVA: 59
REPLACE INTO `item_mods` VALUES (25746,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (25746,175,6);    -- SKILLCHAINDMG: 6
REPLACE INTO `item_mods` VALUES (25746,160,-800); -- DMG: -800
REPLACE INTO `item_mods` VALUES (25746,384,100);  -- HASTE_GEAR: 100
-- Sulevia's Platemail +2
REPLACE INTO `item_mods` VALUES (25790,1,153);    -- DEF: 153
REPLACE INTO `item_mods` VALUES (25790,2,70);     -- HP: 70
REPLACE INTO `item_mods` VALUES (25790,5,70);     -- MP: 70
REPLACE INTO `item_mods` VALUES (25790,8,41);     -- STR: 41
REPLACE INTO `item_mods` VALUES (25790,9,24);     -- DEX: 24
REPLACE INTO `item_mods` VALUES (25790,10,41);    -- VIT: 41
REPLACE INTO `item_mods` VALUES (25790,11,16);    -- AGI: 16
REPLACE INTO `item_mods` VALUES (25790,12,16);    -- INT: 16
REPLACE INTO `item_mods` VALUES (25790,13,27);    -- MND: 27
REPLACE INTO `item_mods` VALUES (25790,14,27);    -- CHR: 27
REPLACE INTO `item_mods` VALUES (25790,23,50);    -- ATT: 50
REPLACE INTO `item_mods` VALUES (25790,25,46);    -- ACC: 46
REPLACE INTO `item_mods` VALUES (25790,29,3);     -- MDEF: 3
REPLACE INTO `item_mods` VALUES (25790,31,59);    -- MEVA: 59
REPLACE INTO `item_mods` VALUES (25790,68,36);    -- EVA: 36
REPLACE INTO `item_mods` VALUES (25790,175,7);    -- SKILLCHAINDMG: 7
REPLACE INTO `item_mods` VALUES (25790,160,-900); -- DMG: -900
REPLACE INTO `item_mods` VALUES (25790,384,100);  -- HASTE_GEAR: 100
-- Sweller's harness
REPLACE INTO `item_mods` VALUES (26958, 384, 400);  -- HASTE_GEAR: 4%
REPLACE INTO `item_mods` VALUES (26958, 291, 5);  -- COUNTER: 5
REPLACE INTO `item_mods` VALUES (26958, 107, 20);  -- GUARD: 20
REPLACE INTO `item_mods` VALUES (26958, 68, 52);  -- EVA: 52
REPLACE INTO `item_mods` VALUES (26958, 31, 53);  -- MEVA: 53
REPLACE INTO `item_mods` VALUES (26958, 29, 4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (26958, 23, 25);  -- ATT: 25
REPLACE INTO `item_mods` VALUES (26958, 14, 24);  -- CHR: 24
REPLACE INTO `item_mods` VALUES (26958, 13, 24);  -- MND: 24
REPLACE INTO `item_mods` VALUES (26958, 12, 24);  -- INT: 24
REPLACE INTO `item_mods` VALUES (26958, 11, 25);  -- AGI: 25
REPLACE INTO `item_mods` VALUES (26958, 10, 21);  -- VIT: 21
REPLACE INTO `item_mods` VALUES (26958, 9, 25);  -- DEX: 25
REPLACE INTO `item_mods` VALUES (26958, 8, 37);  -- STR: 37
REPLACE INTO `item_mods` VALUES (26958, 2, 59);  -- HP: 59
REPLACE INTO `item_mods` VALUES (26958, 1, 129);  -- DEF: 129
-- Tali'ah Crackows +2
REPLACE INTO `item_mods` VALUES (25952,1,70);    -- DEF: 70
REPLACE INTO `item_mods` VALUES (25952,2,15);    -- HP: 15
REPLACE INTO `item_mods` VALUES (25952,5,20);    -- MP: 20
REPLACE INTO `item_mods` VALUES (25952,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (25952,9,35);    -- DEX: 35
REPLACE INTO `item_mods` VALUES (25952,10,23);   -- VIT: 23
REPLACE INTO `item_mods` VALUES (25952,11,46);   -- AGI: 46
REPLACE INTO `item_mods` VALUES (25952,13,11);   -- MND: 11
REPLACE INTO `item_mods` VALUES (25952,14,26);   -- CHR: 26
REPLACE INTO `item_mods` VALUES (25952,25,42);   -- ACC: 42
REPLACE INTO `item_mods` VALUES (25952,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25952,30,42);   -- MACC: 42
REPLACE INTO `item_mods` VALUES (25952,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25952,68,60);   -- EVA: 60
REPLACE INTO `item_mods` VALUES (25952,384,400); -- HASTE_GEAR: 400
REPLACE INTO `item_mods_pet` VALUES (25952,25,42, 0); -- PET ACC: 46
REPLACE INTO `item_mods_pet` VALUES (25952,26,42, 0); --  PET RACC: 46
REPLACE INTO `item_mods_pet` VALUES (25952,30,42, 0); --  PET MACC: 46
REPLACE INTO `item_mods_pet` VALUES (25952,384,700, 0); --  PET HASTE_GEAR
-- Tali'ah Gages +2
REPLACE INTO `item_mods` VALUES (25834,1,88); -- DEF: 88
REPLACE INTO `item_mods` VALUES (25834,2,27);  -- HP: 27
REPLACE INTO `item_mods` VALUES (25834,5,20);  -- MP: 20
REPLACE INTO `item_mods` VALUES (25834,8,16);  -- STR: 16
REPLACE INTO `item_mods` VALUES (25834,9,50);  -- DEX: 50
REPLACE INTO `item_mods` VALUES (25834,10,44); -- VIT: 44
REPLACE INTO `item_mods` VALUES (25834,11,11); -- AGI: 11
REPLACE INTO `item_mods` VALUES (25834,12,14); -- INT: 14
REPLACE INTO `item_mods` VALUES (25834,13,26); -- MND: 26
REPLACE INTO `item_mods` VALUES (25834,14,19); -- CHR: 19
REPLACE INTO `item_mods` VALUES (25834,25,43); -- ACC: 43
REPLACE INTO `item_mods` VALUES (25834,29,2);  -- MDEF: 2
REPLACE INTO `item_mods` VALUES (25834,30,43); -- MACC: 43
REPLACE INTO `item_mods` VALUES (25834,31,37); -- MEVA: 37
REPLACE INTO `item_mods` VALUES (25834,68,19); -- EVA: 19
REPLACE INTO `item_mods` VALUES (25834,165,8);   -- CRITHITRATE: 8
REPLACE INTO `item_mods` VALUES (25834,384,500); -- HASTE_GEAR: 500
REPLACE INTO `item_mods_pet` VALUES (25834,25,43, 0); -- PET ACC: 46
REPLACE INTO `item_mods_pet` VALUES (25834,26,43, 0); --  PET RACC: 46
REPLACE INTO `item_mods_pet` VALUES (25834,30,43, 0); --  PET MACC: 46
-- Tali'ah Manteel +2	
REPLACE INTO `item_mods` VALUES (25796,1,129); -- DEF: 129
REPLACE INTO `item_mods` VALUES (25796,2,70);  -- HP: 70
REPLACE INTO `item_mods` VALUES (25796,5,73);  -- MP: 73
REPLACE INTO `item_mods` VALUES (25796,8,28);  -- STR: 28
REPLACE INTO `item_mods` VALUES (25796,9,45);  -- DEX: 45
REPLACE INTO `item_mods` VALUES (25796,10,37); -- VIT: 37
REPLACE INTO `item_mods` VALUES (25796,11,33); -- AGI: 33
REPLACE INTO `item_mods` VALUES (25796,12,21); -- INT: 21
REPLACE INTO `item_mods` VALUES (25796,13,20); -- MND: 20
REPLACE INTO `item_mods` VALUES (25796,14,21); -- CHR: 21
REPLACE INTO `item_mods` VALUES (25796,25,46); -- ACC: 46
REPLACE INTO `item_mods` VALUES (25796,29,6);  -- MDEF: 6
REPLACE INTO `item_mods` VALUES (25796,30,46); -- MACC: 46
REPLACE INTO `item_mods` VALUES (25796,31,64); -- MEVA: 64
REPLACE INTO `item_mods` VALUES (25796,68,38); -- EVA: 38
REPLACE INTO `item_mods` VALUES (25796,302,6);  -- TRIPLE_ATTACK: 6
REPLACE INTO `item_mods` VALUES (25796,384,400); -- HASTE_GEAR: 400
REPLACE INTO `item_mods_pet` VALUES (25796,25,46, 0); -- PET_ACC: 46
REPLACE INTO `item_mods_pet` VALUES (25796,26,46, 0); --  PET_RACC: 46
REPLACE INTO `item_mods_pet` VALUES (25796,30,46, 0); --  PET_MACC: 46
-- Tali'ah Seraweels +2
REPLACE INTO `item_mods` VALUES (25885,1,110);   -- DEF: 110
REPLACE INTO `item_mods` VALUES (25885,2,57);    -- HP: 57
REPLACE INTO `item_mods` VALUES (25885,5,53);    -- MP: 53
REPLACE INTO `item_mods` VALUES (25885,8,33);    -- STR: 33
REPLACE INTO `item_mods` VALUES (25885,9,11);     -- DEX: 11
REPLACE INTO `item_mods` VALUES (25885,10,30);   -- VIT: 30
REPLACE INTO `item_mods` VALUES (25885,11,34);   -- AGI: 34
REPLACE INTO `item_mods` VALUES (25885,12,29);   -- INT: 29
REPLACE INTO `item_mods` VALUES (25885,13,15);   -- MND: 15
REPLACE INTO `item_mods` VALUES (25885,14,10);   -- CHR: 10
REPLACE INTO `item_mods` VALUES (25885,25,45);   -- ACC: 45
REPLACE INTO `item_mods` VALUES (25885,29,5);    -- MDEF: 5
REPLACE INTO `item_mods` VALUES (25885,30,45);   -- MACC: 45
REPLACE INTO `item_mods` VALUES (25885,31,69);   -- MEVA: 69
REPLACE INTO `item_mods` VALUES (25885,68,24);   -- EVA: 24
REPLACE INTO `item_mods` VALUES (25885,384,600); -- HASTE_GEAR: 600
REPLACE INTO `item_mods_pet` VALUES (25885,25,45, 0); -- PET_ACC: 46
REPLACE INTO `item_mods_pet` VALUES (25885,26,45, 0); --  PET_RACC: 45
REPLACE INTO `item_mods_pet` VALUES (25885,30,45, 0); --  PET_MACC: 45
REPLACE INTO `item_mods_pet` VALUES (25885,160,-500, 0); --  PET_DMG: -5%
-- Tatena. Gote
REPLACE INTO `item_mods` VALUES (27148, 1, 103);   -- def
REPLACE INTO `item_mods` VALUES (27148, 2, 27);   -- hp
REPLACE INTO `item_mods` VALUES (27148, 8, 8);   -- str
REPLACE INTO `item_mods` VALUES (27148, 9, 39);   -- DEX
REPLACE INTO `item_mods` VALUES (27148, 10, 32);   -- vit
REPLACE INTO `item_mods` VALUES (27148, 11, 7);   -- agi
REPLACE INTO `item_mods` VALUES (27148, 12, 6);   -- int
REPLACE INTO `item_mods` VALUES (27148, 13, 23);   -- mnd
REPLACE INTO `item_mods` VALUES (27148, 14, 16);   -- chr
REPLACE INTO `item_mods` VALUES (27148, 25, 20);   -- ACC
REPLACE INTO `item_mods` VALUES (27148, 68, 24);   -- eva
REPLACE INTO `item_mods` VALUES (27148, 31, 32);   -- meva
REPLACE INTO `item_mods` VALUES (27148, 29, 1);   -- mdef
REPLACE INTO `item_mods` VALUES (27148, 384, 400);   -- haste
REPLACE INTO `item_mods` VALUES (27148, 306, 5);   -- zanshin
-- Tatena. Gote +1
REPLACE INTO `item_mods` VALUES (27149, 1, 104);   -- def
REPLACE INTO `item_mods` VALUES (27149, 2, 27);   -- hp
REPLACE INTO `item_mods` VALUES (27149, 8, 8);   -- str
REPLACE INTO `item_mods` VALUES (27149, 9, 40);   -- DEX
REPLACE INTO `item_mods` VALUES (27149, 10, 32);   -- vit
REPLACE INTO `item_mods` VALUES (27149, 11, 7);   -- agi
REPLACE INTO `item_mods` VALUES (27149, 12, 6);   -- int
REPLACE INTO `item_mods` VALUES (27149, 13, 23);   -- mnd
REPLACE INTO `item_mods` VALUES (27149, 14, 16);   -- chr
REPLACE INTO `item_mods` VALUES (27149, 25, 21);   -- ACC
REPLACE INTO `item_mods` VALUES (27149, 68, 24);   -- eva
REPLACE INTO `item_mods` VALUES (27149, 31, 32);   -- meva
REPLACE INTO `item_mods` VALUES (27149, 29, 1);   -- mdef
REPLACE INTO `item_mods` VALUES (27149, 384, 400);   -- haste
REPLACE INTO `item_mods` VALUES (27149, 306, 6);   -- zanshin
-- Tatenashi haidate
REPLACE INTO `item_mods` VALUES (25855, 1, 129); -- tatenashi haidate  -- def
REPLACE INTO `item_mods` VALUES (25855, 2, 50); -- tatenashi haidate  -- hp
REPLACE INTO `item_mods` VALUES (25855, 8, 44); -- tatenashi haidate  -- str
REPLACE INTO `item_mods` VALUES (25855, 10, 25); -- tatenashi haidate  -- vit
REPLACE INTO `item_mods` VALUES (25855, 11, 15); -- tatenashi haidate  -- agi
REPLACE INTO `item_mods` VALUES (25855, 12, 23); -- tatenashi haidate  -- int
REPLACE INTO `item_mods` VALUES (25855, 13, 12); -- tatenashi haidate  -- mnd
REPLACE INTO `item_mods` VALUES (25855, 14, 10); -- tatenashi haidate  -- chr
REPLACE INTO `item_mods` VALUES (25855, 23, 30); -- tatenashi haidate  -- att
REPLACE INTO `item_mods` VALUES (25855, 68, 24); -- tatenashi haidate  -- eva
REPLACE INTO `item_mods` VALUES (25855, 31, 80); -- tatenashi haidate  -- meva
REPLACE INTO `item_mods` VALUES (25855, 29, 3); -- tatenashi haidate  -- mdef
REPLACE INTO `item_mods` VALUES (25855, 384, 500); -- tatenashi haidate  -- haste
REPLACE INTO `item_mods` VALUES (25855, 306, 5); -- tatenashi haidate  -- zanshin
-- Tatenashi haidate +1
REPLACE INTO `item_mods` VALUES (25856, 1, 130); -- tatenashi haidate +1 -- def
REPLACE INTO `item_mods` VALUES (25856, 2, 50); -- tatenashi haidate  +1 -- hp
REPLACE INTO `item_mods` VALUES (25856, 8, 45); -- tatenashi haidate  +1 -- str
REPLACE INTO `item_mods` VALUES (25856, 10, 25); -- tatenashi haidate  +1 -- vit
REPLACE INTO `item_mods` VALUES (25856, 11, 15); -- tatenashi haidate  +1 -- agi
REPLACE INTO `item_mods` VALUES (25856, 12, 23); -- tatenashi haidate  +1 -- int
REPLACE INTO `item_mods` VALUES (25856, 13, 12); -- tatenashi haidate  +1 -- mnd
REPLACE INTO `item_mods` VALUES (25856, 14, 10); -- tatenashi haidate  +1 -- chr
REPLACE INTO `item_mods` VALUES (25856, 23, 31); -- tatenashi haidate  +1 -- att
REPLACE INTO `item_mods` VALUES (25856, 68, 24); -- tatenashi haidate  +1 -- eva
REPLACE INTO `item_mods` VALUES (25856, 31, 80); -- tatenashi haidate  +1 -- meva
REPLACE INTO `item_mods` VALUES (25856, 29, 3); -- tatenashi haidate  +1 -- mdef
REPLACE INTO `item_mods` VALUES (25856, 384, 500); -- tatenashi haidate  +1 -- haste
REPLACE INTO `item_mods` VALUES (25856, 306, 6); -- tatenashi haidate  +1 -- zanshin
-- Tatena. Haramaki
REPLACE INTO `item_mods` VALUES (25732, 1, 136);   -- def
REPLACE INTO `item_mods` VALUES (25732, 2, 66);   -- hp
REPLACE INTO `item_mods` VALUES (25732, 8, 28);   -- str
REPLACE INTO `item_mods` VALUES (25732, 9, 24);   -- DEX
REPLACE INTO `item_mods` VALUES (25732, 10, 28);   -- vit
REPLACE INTO `item_mods` VALUES (25732, 11, 19);   -- agi
REPLACE INTO `item_mods` VALUES (25732, 12, 19);   -- int
REPLACE INTO `item_mods` VALUES (25732, 13, 19);   -- mnd
REPLACE INTO `item_mods` VALUES (25732, 14, 19);   -- chr
REPLACE INTO `item_mods` VALUES (25732, 25, 34);   -- ACC
REPLACE INTO `item_mods` VALUES (25732, 23, 34);   -- att
REPLACE INTO `item_mods` VALUES (25732, 68, 44);   -- eva
REPLACE INTO `item_mods` VALUES (25732, 31, 59);   -- meva
REPLACE INTO `item_mods` VALUES (25732, 29, 4);   -- mdef
REPLACE INTO `item_mods` VALUES (25732, 384, 300);   -- haste
REPLACE INTO `item_mods` VALUES (25732, 306, 7);   -- zanshin
REPLACE INTO `item_mods` VALUES (25732, 165, 5);   -- CRITHITRATE
-- Tatena. Haramaki +1
REPLACE INTO `item_mods` VALUES (25733, 1, 137);   -- def
REPLACE INTO `item_mods` VALUES (25733, 2, 66);   -- hp
REPLACE INTO `item_mods` VALUES (25733, 8, 28);   -- str
REPLACE INTO `item_mods` VALUES (25733, 9, 24);   -- DEX
REPLACE INTO `item_mods` VALUES (25733, 10, 28);   -- vit
REPLACE INTO `item_mods` VALUES (25733, 11, 19);   -- agi
REPLACE INTO `item_mods` VALUES (25733, 12, 19);   -- int
REPLACE INTO `item_mods` VALUES (25733, 13, 19);   -- mnd
REPLACE INTO `item_mods` VALUES (25733, 14, 19);   -- chr
REPLACE INTO `item_mods` VALUES (25733, 25, 35);   -- ACC
REPLACE INTO `item_mods` VALUES (25733, 23, 35);   -- att
REPLACE INTO `item_mods` VALUES (25733, 68, 44);   -- eva
REPLACE INTO `item_mods` VALUES (25733, 31, 59);   -- meva
REPLACE INTO `item_mods` VALUES (25733, 29, 4);   -- mdef
REPLACE INTO `item_mods` VALUES (25733, 384, 300);   -- haste
REPLACE INTO `item_mods` VALUES (25733, 306, 8);   -- zanshin
REPLACE INTO `item_mods` VALUES (25733, 165, 6);   -- CRITHITRATE
-- Tatena. Sune
REPLACE INTO `item_mods` VALUES (25923, 1, 85);   -- def
REPLACE INTO `item_mods` VALUES (25923, 2, 15);   -- hp
REPLACE INTO `item_mods` VALUES (25923, 8, 16);   -- str
REPLACE INTO `item_mods` VALUES (25923, 9, 19);   -- DEX
REPLACE INTO `item_mods` VALUES (25923, 10, 16);   -- vit
REPLACE INTO `item_mods` VALUES (25923, 11, 31);   -- agi
REPLACE INTO `item_mods` VALUES (25923, 13, 5);   -- mnd
REPLACE INTO `item_mods` VALUES (25923, 14, 19);   -- chr
REPLACE INTO `item_mods` VALUES (25923, 68, 75);   -- eva
REPLACE INTO `item_mods` VALUES (25923, 31, 80);   -- meva
REPLACE INTO `item_mods` VALUES (25923, 29, 2);   -- mdef
REPLACE INTO `item_mods` VALUES (25923, 384, 300);   -- haste
REPLACE INTO `item_mods` VALUES (25923, 306, 5);   -- zanshin
-- Tatena. Sune +1
REPLACE INTO `item_mods` VALUES (25924, 1, 86);   -- def
REPLACE INTO `item_mods` VALUES (25924, 2, 15);   -- hp
REPLACE INTO `item_mods` VALUES (25924, 8, 16);   -- str
REPLACE INTO `item_mods` VALUES (25924, 9, 19);   -- DEX
REPLACE INTO `item_mods` VALUES (25924, 10, 16);   -- vit
REPLACE INTO `item_mods` VALUES (25924, 11, 32);   -- agi
REPLACE INTO `item_mods` VALUES (25924, 13, 5);   -- mnd
REPLACE INTO `item_mods` VALUES (25924, 14, 19);   -- chr
REPLACE INTO `item_mods` VALUES (25924, 68, 76);   -- eva
REPLACE INTO `item_mods` VALUES (25924, 31, 80);   -- meva
REPLACE INTO `item_mods` VALUES (25924, 29, 2);   -- mdef
REPLACE INTO `item_mods` VALUES (25924, 384, 300);   -- haste
REPLACE INTO `item_mods` VALUES (25924, 306, 6);   -- zanshin
-- Thorfinn shield 
REPLACE INTO `item_mods` VALUES (27633, 1, 13);   -- def
REPLACE INTO `item_mods` VALUES (27633, 8, 2);   -- str
REPLACE INTO `item_mods` VALUES (27633, 23, 18);   -- ATT
-- Thorfinn shield +1
REPLACE INTO `item_mods` VALUES (27634, 1, 14);   -- def
REPLACE INTO `item_mods` VALUES (27634, 8, 3);   -- str
REPLACE INTO `item_mods` VALUES (27634, 23, 19);   -- ATT
REPLACE INTO `item_mods` VALUES (27634, 288, 1);   -- DOUBLE_ATTACK
-- Tlahtlamah Glasses
REPLACE INTO `item_mods` VALUES (25608, 1, 1); --tlahtlamah glasses -- DEF
REPLACE INTO `item_mods` VALUES (25608, 127, 1); --tlahtlamah glasses -- FISH
-- Turms Harness
REPLACE INTO `item_mods` VALUES (26543, 1, 145); --turms harness -- DEF
REPLACE INTO `item_mods` VALUES (26543, 2, 114); --turms harness -- HP
REPLACE INTO `item_mods` VALUES (26543, 8, 25); --turms harness -- STR
REPLACE INTO `item_mods` VALUES (26543, 9, 42); --turms harness -- DEX
REPLACE INTO `item_mods` VALUES (26543, 10, 24); --turms harness -- VIT
REPLACE INTO `item_mods` VALUES (26543, 11, 39); --turms harness -- AGI
REPLACE INTO `item_mods` VALUES (26543, 12, 23); --turms harness -- INT
REPLACE INTO `item_mods` VALUES (26543, 13, 23); --turms harness -- MND
REPLACE INTO `item_mods` VALUES (26543, 14, 29); --turms harness -- CHR
REPLACE INTO `item_mods` VALUES (26543, 25, 42); --turms harness -- ACC
REPLACE INTO `item_mods` VALUES (26543, 68, 88); --turms harness -- EVA
REPLACE INTO `item_mods` VALUES (26543, 31, 118); --turms harness -- MEVA
REPLACE INTO `item_mods` VALUES (26543, 29, 8); --turms harness -- MDEF
REPLACE INTO `item_mods` VALUES (26543, 384, 400); --turms harness -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26543, 73, 9); --turms harness -- STORETP
REPLACE INTO `item_mods` VALUES (26543, 370, 8); --turms harness -- REGEN
-- Turms Harness +1
REPLACE INTO `item_mods` VALUES (26544, 1, 155); --turms harness +1 -- DEF
REPLACE INTO `item_mods` VALUES (26544, 2, 129); --turms harness +1 -- HP
REPLACE INTO `item_mods` VALUES (26544, 8, 25); --turms harness +1 -- STR
REPLACE INTO `item_mods` VALUES (26544, 9, 47); --turms harness +1 -- DEX
REPLACE INTO `item_mods` VALUES (26544, 10, 24); --turms harness +1 -- VIT
REPLACE INTO `item_mods` VALUES (26544, 11, 44); --turms harness +1 -- AGI
REPLACE INTO `item_mods` VALUES (26544, 12, 23); --turms harness +1 -- INT
REPLACE INTO `item_mods` VALUES (26544, 13, 23); --turms harness +1 -- MND
REPLACE INTO `item_mods` VALUES (26544, 14, 29); --turms harness +1 -- CHR
REPLACE INTO `item_mods` VALUES (26544, 25, 52); --turms harness +1 -- ACC
REPLACE INTO `item_mods` VALUES (26544, 68, 98); --turms harness +1 -- EVA
REPLACE INTO `item_mods` VALUES (26544, 31, 128); --turms harness +1 -- MEVA
REPLACE INTO `item_mods` VALUES (26544, 29, 9); --turms harness +1 -- MDEF
REPLACE INTO `item_mods` VALUES (26544, 384, 400); --turms harness +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26544, 73, 12); --turms harness +1 -- STORETP
REPLACE INTO `item_mods` VALUES (26544, 370, 9); --turms harness +1 -- REGEN
-- Turms Leggings
REPLACE INTO `item_mods` VALUES (25974, 1, 85); --turms leggings -- DEF
REPLACE INTO `item_mods` VALUES (25974, 2, 61); --turms leggings -- HP
REPLACE INTO `item_mods` VALUES (25974, 8, 14); --turms leggings -- STR
REPLACE INTO `item_mods` VALUES (25974, 9, 34); --turms leggings -- DEX
REPLACE INTO `item_mods` VALUES (25974, 10, 12); --turms leggings -- VIT
REPLACE INTO `item_mods` VALUES (25974, 11, 48); --turms leggings -- AGI
REPLACE INTO `item_mods` VALUES (25974, 13, 12); --turms leggings -- MND
REPLACE INTO `item_mods` VALUES (25974, 14, 38); --turms leggings -- CHR
REPLACE INTO `item_mods` VALUES (25974, 25, 38); --turms leggings -- ACC
REPLACE INTO `item_mods` VALUES (25974, 68, 109); --turms leggings -- EVA
REPLACE INTO `item_mods` VALUES (25974, 31, 137); --turms leggings -- MEVA
REPLACE INTO `item_mods` VALUES (25974, 29, 6); --turms leggings -- MDEF
REPLACE INTO `item_mods` VALUES (25974, 384, 3); --turms leggings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25974, 963, 4); --turms leggings -- INQUARTATA
REPLACE INTO `item_mods` VALUES (25974, 370, 4); --turms leggings -- REGEN
-- Turms Leggings +1
REPLACE INTO `item_mods` VALUES (25975, 1, 95); --turms leggings +1 -- DEF
REPLACE INTO `item_mods` VALUES (25975, 2, 76); --turms leggings +1 -- HP
REPLACE INTO `item_mods` VALUES (25975, 8, 14); --turms leggings +1 -- STR
REPLACE INTO `item_mods` VALUES (25975, 9, 39); --turms leggings +1 -- DEX
REPLACE INTO `item_mods` VALUES (25975, 10, 12); --turms leggings +1 -- VIT
REPLACE INTO `item_mods` VALUES (25975, 11, 53); --turms leggings +1 -- AGI
REPLACE INTO `item_mods` VALUES (25975, 13, 12); --turms leggings +1 -- MND
REPLACE INTO `item_mods` VALUES (25975, 14, 38); --turms leggings +1 -- CHR
REPLACE INTO `item_mods` VALUES (25975, 25, 48); --turms leggings +1 -- ACC
REPLACE INTO `item_mods` VALUES (25975, 68, 119); --turms leggings +1 -- EVA
REPLACE INTO `item_mods` VALUES (25975, 31, 147); --turms leggings +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25975, 29, 7); --turms leggings +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25975, 384, 300); --turms leggings +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25975, 963, 5); --turms leggings +1 -- INQUARTATA
REPLACE INTO `item_mods` VALUES (25975, 370, 5); --turms leggings +1 -- REGEN
-- Turms Mittens
REPLACE INTO `item_mods` VALUES (25994, 1, 103); --turms mittens -- DEF
REPLACE INTO `item_mods` VALUES (25994, 2, 59); --turms mittens -- HP
REPLACE INTO `item_mods` VALUES (25994, 8, 12); --turms mittens -- STR
REPLACE INTO `item_mods` VALUES (25994, 9, 46); --turms mittens -- DEX
REPLACE INTO `item_mods` VALUES (25994, 10, 32); --turms mittens -- VIT
REPLACE INTO `item_mods` VALUES (25994, 12, 15); --turms mittens -- INT
REPLACE INTO `item_mods` VALUES (25994, 13, 30); --turms mittens -- MND
REPLACE INTO `item_mods` VALUES (25994, 14, 23); --turms mittens -- CHR
REPLACE INTO `item_mods` VALUES (25994, 25, 39); --turms mittens -- ACC
REPLACE INTO `item_mods` VALUES (25994, 68, 70); --turms mittens -- EVA
REPLACE INTO `item_mods` VALUES (25994, 31, 91); --turms mittens -- MEVA
REPLACE INTO `item_mods` VALUES (25994, 29, 4); --turms mittens -- MDEF
REPLACE INTO `item_mods` VALUES (25994, 384, 400); --turms mittens -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25994, 370, 5); --turms mittens -- REGEN
REPLACE INTO `item_mods` VALUES (25994, 1135, 75); --turms mittens -- PARRY_HP_RECOVERY
-- Turms Mittens +1
REPLACE INTO `item_mods` VALUES (25995, 1, 113); --turms mittens +1 -- DEF
REPLACE INTO `item_mods` VALUES (25995, 2, 74); --turms mittens +1 -- HP
REPLACE INTO `item_mods` VALUES (25995, 8, 12); --turms mittens +1 -- STR
REPLACE INTO `item_mods` VALUES (25995, 9, 51); --turms mittens +1 -- DEX
REPLACE INTO `item_mods` VALUES (25995, 10, 32); --turms mittens +1 -- VIT
REPLACE INTO `item_mods` VALUES (25995, 11, 5); --turms mittens +1 -- AGI
REPLACE INTO `item_mods` VALUES (25995, 12, 15); --turms mittens +1 -- INT
REPLACE INTO `item_mods` VALUES (25995, 13, 30); --turms mittens +1 -- MND
REPLACE INTO `item_mods` VALUES (25995, 14, 23); --turms mittens +1 -- CHR
REPLACE INTO `item_mods` VALUES (25995, 25, 49); --turms mittens +1 -- ACC
REPLACE INTO `item_mods` VALUES (25995, 68, 80); --turms mittens +1 -- EVA
REPLACE INTO `item_mods` VALUES (25995, 31, 101); --turms mittens +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25995, 29, 5); --turms mittens +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25995, 384, 400); --turms mittens +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25995, 370, 6); --turms mittens +1 -- REGEN
REPLACE INTO `item_mods` VALUES (25995, 1135, 100); --turms mittens +1 -- PARRY_HP_RECOVERY
-- Turms Subligar
REPLACE INTO `item_mods` VALUES (25907, 1, 127); --turms subligar -- DEF
REPLACE INTO `item_mods` VALUES (25907, 2, 107); --turms subligar -- HP
REPLACE INTO `item_mods` VALUES (25907, 8, 30); --turms subligar -- STR
REPLACE INTO `item_mods` VALUES (25907, 10, 16); --turms subligar -- VIT
REPLACE INTO `item_mods` VALUES (25907, 11, 32); --turms subligar -- AGI
REPLACE INTO `item_mods` VALUES (25907, 12, 30); --turms subligar -- INT
REPLACE INTO `item_mods` VALUES (25907, 13, 17); --turms subligar -- MND
REPLACE INTO `item_mods` VALUES (25907, 14, 17); --turms subligar -- CHR
REPLACE INTO `item_mods` VALUES (25907, 25, 41); --turms subligar -- ACC
REPLACE INTO `item_mods` VALUES (25907, 68, 74); --turms subligar -- EVA
REPLACE INTO `item_mods` VALUES (25907, 31, 137); --turms subligar -- MEVA
REPLACE INTO `item_mods` VALUES (25907, 29, 8); --turms subligar -- MDEF
REPLACE INTO `item_mods` VALUES (25907, 384, 900); --turms subligar -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25907, 370, 7); --turms subligar -- REGEN
REPLACE INTO `item_mods` VALUES (25907, 165, 6); --turms subligar -- CRITHITRATE
-- Turms Subligar +1
REPLACE INTO `item_mods` VALUES (25908, 1, 137); --turms subligar +1 -- DEF
REPLACE INTO `item_mods` VALUES (25908, 2, 122); --turms subligar +1 -- HP
REPLACE INTO `item_mods` VALUES (25908, 8, 30); --turms subligar +1 -- STR
REPLACE INTO `item_mods` VALUES (25908, 9, 5); --turms subligar +1 -- DEX
REPLACE INTO `item_mods` VALUES (25908, 10, 16); --turms subligar +1 -- VIT
REPLACE INTO `item_mods` VALUES (25908, 11, 37); --turms subligar +1 -- AGI
REPLACE INTO `item_mods` VALUES (25908, 12, 30); --turms subligar +1 -- INT
REPLACE INTO `item_mods` VALUES (25908, 13, 17); --turms subligar +1 -- MND
REPLACE INTO `item_mods` VALUES (25908, 14, 17); --turms subligar +1 -- CHR
REPLACE INTO `item_mods` VALUES (25908, 25, 51); --turms subligar +1 -- ACC
REPLACE INTO `item_mods` VALUES (25908, 68, 84); --turms subligar +1 -- EVA
REPLACE INTO `item_mods` VALUES (25908, 31, 147); --turms subligar +1 -- MEVA
REPLACE INTO `item_mods` VALUES (25908, 29, 9); --turms subligar +1 -- MDEF
REPLACE INTO `item_mods` VALUES (25908, 384, 900); --turms subligar +1 -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (25908, 370, 8); --turms subligar +1 -- REGEN
REPLACE INTO `item_mods` VALUES (25908, 165, 8); --turms subligar +1 -- CRITHITRATE
-- vanya cuffs
REPLACE INTO `item_mods` VALUES (27103, 167, 300); --vanya cuffs -- HASTE_MAGIC
REPLACE INTO `item_mods` VALUES (27103, 119, 15); --vanya cuffs -- SINGING
REPLACE INTO `item_mods` VALUES (27103, 68, 22); --vanya cuffs -- EVA
REPLACE INTO `item_mods` VALUES (27103, 31, 37); --vanya cuffs -- MEVA
REPLACE INTO `item_mods` VALUES (27103, 29, 3); --vanya cuffs -- MDEF
REPLACE INTO `item_mods` VALUES (27103, 14, 28); --vanya cuffs -- CHR
REPLACE INTO `item_mods` VALUES (27103, 13, 33); --vanya cuffs -- MND
REPLACE INTO `item_mods` VALUES (27103, 12, 19); --vanya cuffs -- INT
REPLACE INTO `item_mods` VALUES (27103, 11, 5); --vanya cuffs -- AGI
REPLACE INTO `item_mods` VALUES (27103, 10, 25); --vanya cuffs -- VIT
REPLACE INTO `item_mods` VALUES (27103, 9, 28); --vanya cuffs -- DEX
REPLACE INTO `item_mods` VALUES (27103, 8, 6); --vanya cuffs -- STR
REPLACE INTO `item_mods` VALUES (27103, 5, 44); --vanya cuffs -- MP
REPLACE INTO `item_mods` VALUES (27103, 2, 22); --vanya cuffs -- HP
REPLACE INTO `item_mods` VALUES (27103, 1, 86); --vanya cuffs -- DEF
-- vanya hood
REPLACE INTO `item_mods` VALUES (26797, 384, 600); --vanya hood -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26797, 374, 10); --vanya hood -- CURE_POTENCY
REPLACE INTO `item_mods` VALUES (26797, 296, 6); --vanya hood -- CONSERVE_MP
REPLACE INTO `item_mods` VALUES (26797, 163, -200); --vanya hood -- DMGMAGIC
REPLACE INTO `item_mods` VALUES (26797, 68, 36); --vanya hood -- EVA
REPLACE INTO `item_mods` VALUES (26797, 31, 75); --vanya hood -- MEVA
REPLACE INTO `item_mods` VALUES (26797, 29, 5); --vanya hood -- MDEF
REPLACE INTO `item_mods` VALUES (26797, 14, 27); --vanya hood -- CHR
REPLACE INTO `item_mods` VALUES (26797, 13, 27); --vanya hood -- MND
REPLACE INTO `item_mods` VALUES (26797, 12, 23); --vanya hood -- INT
REPLACE INTO `item_mods` VALUES (26797, 11, 18); --vanya hood -- AGI
REPLACE INTO `item_mods` VALUES (26797, 10, 18); --vanya hood -- VIT
REPLACE INTO `item_mods` VALUES (26797, 9, 18); --vanya hood -- DEX
REPLACE INTO `item_mods` VALUES (26797, 8, 18); --vanya hood -- STR
REPLACE INTO `item_mods` VALUES (26797, 5, 32); --vanya hood -- MP
REPLACE INTO `item_mods` VALUES (26797, 2, 36); --vanya hood -- HP
REPLACE INTO `item_mods` VALUES (26797, 1, 99); --vanya hood -- DEF
-- vanya robe
REPLACE INTO `item_mods` VALUES (26953, 384, 300); --vanya robe -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26953, 160, -100); --vanya robe -- DMG
REPLACE INTO `item_mods` VALUES (26953, 114, 20); --vanya robe -- ENFEEBLE
REPLACE INTO `item_mods` VALUES (26953, 111, 20); --vanya robe -- DIVINE
REPLACE INTO `item_mods` VALUES (26953, 68, 41); --vanya robe -- EVA
REPLACE INTO `item_mods` VALUES (26953, 31, 80); --vanya robe -- MEVA
REPLACE INTO `item_mods` VALUES (26953, 30, 21); --vanya robe -- MACC
REPLACE INTO `item_mods` VALUES (26953, 29, 6); --vanya robe -- MDEF
REPLACE INTO `item_mods` VALUES (26953, 14, 36); --vanya robe -- CHR
REPLACE INTO `item_mods` VALUES (26953, 13, 36); --vanya robe -- MND
REPLACE INTO `item_mods` VALUES (26953, 12, 31); --vanya robe -- INT
REPLACE INTO `item_mods` VALUES (26953, 11, 23); --vanya robe -- AGI
REPLACE INTO `item_mods` VALUES (26953, 10, 23); --vanya robe -- VIT
REPLACE INTO `item_mods` VALUES (26953, 9, 23); --vanya robe -- DEX
REPLACE INTO `item_mods` VALUES (26953, 8, 23); --vanya robe -- STR
REPLACE INTO `item_mods` VALUES (26953, 5, 59); --vanya robe -- MP
REPLACE INTO `item_mods` VALUES (26953, 2, 54); --vanya robe -- HP
REPLACE INTO `item_mods` VALUES (26953, 1, 127); --vanya robe -- DEF
-- vanya slops
REPLACE INTO `item_mods` VALUES (27288, 384, 500); --vanya slops -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27288, 296, 6); --vanya slops -- CONSERVE_MP
REPLACE INTO `item_mods` VALUES (27288, 68, 27); --vanya slops -- EVA
REPLACE INTO `item_mods` VALUES (27288, 31, 107); --vanya slops -- MEVA
REPLACE INTO `item_mods` VALUES (27288, 30, 20); --vanya slops -- MACC
REPLACE INTO `item_mods` VALUES (27288, 29, 6); --vanya slops -- MDEF
REPLACE INTO `item_mods` VALUES (27288, 14, 29); --vanya slops -- CHR
REPLACE INTO `item_mods` VALUES (27288, 13, 34); --vanya slops -- MND
REPLACE INTO `item_mods` VALUES (27288, 12, 44); --vanya slops -- INT
REPLACE INTO `item_mods` VALUES (27288, 11, 17); --vanya slops -- AGI
REPLACE INTO `item_mods` VALUES (27288, 10, 12); --vanya slops -- VIT
REPLACE INTO `item_mods` VALUES (27288, 8, 25); --vanya slops -- STR
REPLACE INTO `item_mods` VALUES (27288, 5, 29); --vanya slops -- MP
REPLACE INTO `item_mods` VALUES (27288, 2, 43); --vanya slops -- HP
REPLACE INTO `item_mods` VALUES (27288, 1, 106); --vanya slops -- DEF
-- Vitiation chapeau +3
REPLACE INTO `item_mods` VALUES (23402,840,6);   -- ALL_WSDMG_ALL_HITS: 6
-- Vitiation gloves +3
REPLACE INTO `item_mods` VALUES (23536,1,103);    -- DEF: 103
REPLACE INTO `item_mods` VALUES (23536,2,42);    -- HP: 42
REPLACE INTO `item_mods` VALUES (23536,5,64);    -- MP: 64
REPLACE INTO `item_mods` VALUES (23536,8,16);    -- STR: 16
REPLACE INTO `item_mods` VALUES (23536,9,38);    -- DEX: 38
REPLACE INTO `item_mods` VALUES (23536,10,35);   -- VIT: 35
REPLACE INTO `item_mods` VALUES (23536,11,15);   -- AGI: 15
REPLACE INTO `item_mods` VALUES (23536,12,32);   -- INT: 32
REPLACE INTO `item_mods` VALUES (23536,13,46);   -- MND: 46
REPLACE INTO `item_mods` VALUES (23536,14,29);   -- CHR: 29
REPLACE INTO `item_mods` VALUES (23536,23,63);   -- ATT: 63
REPLACE INTO `item_mods` VALUES (23536,25,38);   -- ACC: 38
REPLACE INTO `item_mods` VALUES (23536,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23536,30,38);   -- MACC: 38
REPLACE INTO `item_mods` VALUES (23536,31,57);   -- MEVA: 57
REPLACE INTO `item_mods` VALUES (23536,68,42);   -- EVA: 42
REPLACE INTO `item_mods` VALUES (23536,113,24);  -- ENHANCE: 24
REPLACE INTO `item_mods` VALUES (23536,384,300); -- HASTE_GEAR: 3%
-- TODO: Gain magic effect +30
-- Vitiation tabard +3
REPLACE INTO `item_mods` VALUES (23469,1,146);   -- DEF: 146
REPLACE INTO `item_mods` VALUES (23469,2,74);    -- HP: 74
REPLACE INTO `item_mods` VALUES (23469,5,99);    -- MP: 99
REPLACE INTO `item_mods` VALUES (23469,8,31);    -- STR: 31
REPLACE INTO `item_mods` VALUES (23469,9,31);    -- DEX: 31
REPLACE INTO `item_mods` VALUES (23469,10,31);   -- VIT: 31
REPLACE INTO `item_mods` VALUES (23469,11,31);   -- AGI: 31
REPLACE INTO `item_mods` VALUES (23469,12,39);   -- INT: 39
REPLACE INTO `item_mods` VALUES (23469,13,45);   -- MND: 45
REPLACE INTO `item_mods` VALUES (23469,14,39);   -- CHR: 39
REPLACE INTO `item_mods` VALUES (23469,23,50);   -- ATT: 50
REPLACE INTO `item_mods` VALUES (23469,25,40);   -- ACC: 40
REPLACE INTO `item_mods` VALUES (23469,29,8);    -- MDEF: 8
REPLACE INTO `item_mods` VALUES (23469,30,40);   -- MACC: 40
REPLACE INTO `item_mods` VALUES (23469,31,100);   -- MEVA: 100
REPLACE INTO `item_mods` VALUES (23469,68,61);   -- EVA: 61
REPLACE INTO `item_mods` VALUES (23469,112,23);  -- HEALING: 23
REPLACE INTO `item_mods` VALUES (23469,113,23);  -- ENHANCE: 23
REPLACE INTO `item_mods` VALUES (23469,170,15);  -- FASTCAST: 15
REPLACE INTO `item_mods` VALUES (23469,384,300); -- HASTE_GEAR: 3%
REPLACE INTO `item_mods` VALUES (23469,890,15);  -- ENH_MAGIC_DURATION: 15
-- Vitiation tights +3
REPLACE INTO `item_mods` VALUES (23603, 1, 129); --vitiation tights +3 -- DEF
REPLACE INTO `item_mods` VALUES (23603, 2, 63); --vitiation tights +3 -- HP
REPLACE INTO `item_mods` VALUES (23603, 5, 49); --vitiation tights +3 -- MP
REPLACE INTO `item_mods` VALUES (23603, 8, 35); --vitiation tights +3 -- STR
REPLACE INTO `item_mods` VALUES (23603, 9, 22); --vitiation tights +3 -- DEX
REPLACE INTO `item_mods` VALUES (23603, 10, 22); --vitiation tights +3 -- VIT
REPLACE INTO `item_mods` VALUES (23603, 11, 27); --vitiation tights +3 -- AGI
REPLACE INTO `item_mods` VALUES (23603, 12, 44); --vitiation tights +3 -- INT
REPLACE INTO `item_mods` VALUES (23603, 13, 34); --vitiation tights +3 -- MND
REPLACE INTO `item_mods` VALUES (23603, 14, 29); --vitiation tights +3 -- CHR
REPLACE INTO `item_mods` VALUES (23603, 25, 39); --vitiation tights +3 -- ACC
REPLACE INTO `item_mods` VALUES (23603, 23, 64); --vitiation tights +3 -- ATT
REPLACE INTO `item_mods` VALUES (23603, 30, 39); --vitiation tights +3 -- MACC
REPLACE INTO `item_mods` VALUES (23603, 68, 47); --vitiation tights +3 -- EVA
REPLACE INTO `item_mods` VALUES (23603, 31, 127); --vitiation tights +3 -- MEVA
REPLACE INTO `item_mods` VALUES (23603, 29, 8); --vitiation tights +3 -- MDEF
REPLACE INTO `item_mods` VALUES (23603, 115, 23); --vitiation tights +3 -- ELEM
REPLACE INTO `item_mods` VALUES (23603, 344, 30); --vitiation tights +3 -- SPIKES_DMG
REPLACE INTO `item_mods` VALUES (23603, 161, -500); --vitiation tights +3 -- DMGPHYS
REPLACE INTO `item_mods` VALUES (23603, 384, 500); --vitiation tights +3 -- HASTE_GEAR
-- Vrikodara Jupon
REPLACE INTO `item_mods` VALUES (26969,161,-300); -- DMGPHYS
-- Wildheitdiechlings 
REPLACE INTO `item_mods` VALUES (27225, 1, 126); --wildheitdiechlings -- DEF
REPLACE INTO `item_mods` VALUES (27225, 2, 50); --wildheitdiechlings -- HP
REPLACE INTO `item_mods` VALUES (27225, 5, 40); --wildheitdiechlings -- MP
REPLACE INTO `item_mods` VALUES (27225, 8, 33); --wildheitdiechlings -- STR
REPLACE INTO `item_mods` VALUES (27225, 10, 25); --wildheitdiechlings -- VIT
REPLACE INTO `item_mods` VALUES (27225, 11, 15); --wildheitdiechlings -- AGI
REPLACE INTO `item_mods` VALUES (27225, 12, 26); --wildheitdiechlings -- INT
REPLACE INTO `item_mods` VALUES (27225, 13, 16); --wildheitdiechlings -- MND
REPLACE INTO `item_mods` VALUES (27225, 14, 12); --wildheitdiechlings -- CHR
REPLACE INTO `item_mods` VALUES (27225, 23, 11); --wildheitdiechlings -- ATT
REPLACE INTO `item_mods` VALUES (27225, 68, 22); --wildheitdiechlings -- EVA
REPLACE INTO `item_mods` VALUES (27225, 31, 75); --wildheitdiechlings -- MEVA
REPLACE INTO `item_mods` VALUES (27225, 29, 3); --wildheitdiechlings -- MDEF
REPLACE INTO `item_mods` VALUES (27225, 384, 500); --wildheitdiechlings -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (27225, 288, 2); --wildheitdiechlings -- DOUBLE_ATTACK
-- Wildheitschaller 
REPLACE INTO `item_mods` VALUES (26723, 1, 114); --wildheitschaller -- DEF
REPLACE INTO `item_mods` VALUES (26723, 2, 38); --wildheitschaller -- HP
REPLACE INTO `item_mods` VALUES (26723, 5, 53); --wildheitschaller -- MP
REPLACE INTO `item_mods` VALUES (26723, 8, 27); --wildheitschaller -- STR
REPLACE INTO `item_mods` VALUES (26723, 9, 23); --wildheitschaller -- DEX
REPLACE INTO `item_mods` VALUES (26723, 10, 25); --wildheitschaller -- VIT
REPLACE INTO `item_mods` VALUES (26723, 11, 22); --wildheitschaller -- AGI
REPLACE INTO `item_mods` VALUES (26723, 12, 21); --wildheitschaller -- INT
REPLACE INTO `item_mods` VALUES (26723, 13, 21); --wildheitschaller -- MND
REPLACE INTO `item_mods` VALUES (26723, 14, 21); --wildheitschaller -- CHR
REPLACE INTO `item_mods` VALUES (26723, 25, 11); --wildheitschaller -- ACC
REPLACE INTO `item_mods` VALUES (26723, 68, 33); --wildheitschaller -- EVA
REPLACE INTO `item_mods` VALUES (26723, 31, 43); --wildheitschaller -- MEVA
REPLACE INTO `item_mods` VALUES (26723, 29, 2); --wildheitschaller -- MDEF
REPLACE INTO `item_mods` VALUES (26723, 384, 700); --wildheitschaller -- HASTE_GEAR
REPLACE INTO `item_mods` VALUES (26723, 73, 5); --wildheitschaller -- STORETP
-- Ynglinga Sallet
REPLACE INTO `item_mods` VALUES (25656, 1, 118); --ynglinga sallet -- DEF
REPLACE INTO `item_mods` VALUES (25656, 2, 43); --ynglinga sallet -- HP
REPLACE INTO `item_mods` VALUES (25656, 8, 28); --ynglinga sallet -- STR
REPLACE INTO `item_mods` VALUES (25656, 9, 21); --ynglinga sallet -- DEX
REPLACE INTO `item_mods` VALUES (25656, 10, 27); --ynglinga sallet -- VIT
REPLACE INTO `item_mods` VALUES (25656, 11, 19); --ynglinga sallet -- AGI
REPLACE INTO `item_mods` VALUES (25656, 12, 15); --ynglinga sallet -- INT
REPLACE INTO `item_mods` VALUES (25656, 13, 15); --ynglinga sallet -- MND
REPLACE INTO `item_mods` VALUES (25656, 14, 15); --ynglinga sallet -- CHR
REPLACE INTO `item_mods` VALUES (25656, 25, 45); --ynglinga sallet -- ACC
REPLACE INTO `item_mods` VALUES (25656, 29, 2); --ynglinga sallet -- MDEF
REPLACE INTO `item_mods` VALUES (25656, 31, 48); --ynglinga sallet -- MEVA
REPLACE INTO `item_mods` VALUES (25656, 48, 20); --ynglinga sallet -- WSACC
REPLACE INTO `item_mods` VALUES (25656, 68, 36); --ynglinga sallet -- EVA
REPLACE INTO `item_mods` VALUES (25656, 161, -300); --ynglinga sallet -- DMGPHYS
REPLACE INTO `item_mods` VALUES (25656, 384, 700); --ynglinga sallet -- HASTE_GEAR
-- Zendik Robe
REPLACE INTO `item_mods` VALUES (25728, 1, 136); --zendik robe -- DEF
REPLACE INTO `item_mods` VALUES (25728, 2, 57); --zendik robe -- HP
REPLACE INTO `item_mods` VALUES (25728, 5, 61); --zendik robe -- MP
REPLACE INTO `item_mods` VALUES (25728, 8, 24); --zendik robe -- STR
REPLACE INTO `item_mods` VALUES (25728, 9, 20); --zendik robe -- DEX
REPLACE INTO `item_mods` VALUES (25728, 10, 20); --zendik robe -- VIT
REPLACE INTO `item_mods` VALUES (25728, 11, 20); --zendik robe -- AGI
REPLACE INTO `item_mods` VALUES (25728, 12, 38); --zendik robe -- INT
REPLACE INTO `item_mods` VALUES (25728, 13, 38); --zendik robe -- MND
REPLACE INTO `item_mods` VALUES (25728, 14, 32); --zendik robe -- CHR
REPLACE INTO `item_mods` VALUES (25728, 30, 45); --zendik robe -- MACC
REPLACE INTO `item_mods` VALUES (25728, 27, -13); --zendik robe -- ENMITY
REPLACE INTO `item_mods` VALUES (25728, 29, 7); --zendik robe -- MDEF
REPLACE INTO `item_mods` VALUES (25728, 31, 86); --zendik robe -- MEVA
REPLACE INTO `item_mods` VALUES (25728, 68, 41); --zendik robe -- EVA
REPLACE INTO `item_mods` VALUES (25728, 170, 13); --zendik robe -- FASTCAST
REPLACE INTO `item_mods` VALUES (25728, 384, 400); --zendik robe -- HASTE_GEAR

----------- Nih added ----------

-- Escha Ru'Aun Weapon Mods

-- Aizushintogo (NIN)
REPLACE INTO `item_mods` VALUES (20979,25,15);   -- ACC: 15
REPLACE INTO `item_mods` VALUES (20979,68,22);   -- EVA: 22
REPLACE INTO `item_mods` VALUES (20979,259,5);   -- DUAL_WIELD: 5
-- TODO: "Utsusemi" spellcasting time -7% 
-- TODO: Attack Based on Utsusemi Shadows
-- Akademos (SCH)
REPLACE INTO `item_mods` VALUES (21150,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (21150,13,12);   -- MND: 12
REPLACE INTO `item_mods` VALUES (21150,30,10);   -- MACC: 10
REPLACE INTO `item_mods` VALUES (21150,28,38);   -- MATT: 38
REPLACE INTO `item_mods` VALUES (21150,311,217); -- MAGIC_DAMAGE: 217
REPLACE INTO `item_mods` VALUES (21150,487,10);  -- MAG_BURST_BONUS: 10
REPLACE INTO `item_mods` VALUES (21150,565,2);   -- DAY_NUKE_BONUS: 2 
REPLACE INTO `item_mods` VALUES (21150,566,2);   -- IRIDESCENCE: 2 (Weather Bonus)
REPLACE INTO `item_mods` VALUES (21150,369,1);   -- REFRESH: 1
-- Bidenhander (RUN)
REPLACE INTO `item_mods` VALUES (21698,2,130);   -- HP: 130
REPLACE INTO `item_mods` VALUES (21698,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (21698,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (21698,1009,3);  -- LIEMENT: 3
REPLACE INTO `item_mods` VALUES (21698,160,-512);-- DMG: -5%
-- Compensator (COR)
REPLACE INTO `item_mods` VALUES (21482,26,10);   -- RACC: 10
REPLACE INTO `item_mods` VALUES (21482,24,10);   -- RATT: 10
REPLACE INTO `item_mods` VALUES (21482,365,10);  -- SNAP_SHOT: 10
REPLACE INTO `item_mods` VALUES (21482,882,20);  -- PHANTOM_DURATION: 20
REPLACE INTO `item_mods` VALUES (21482,999,10);  -- TRIPLE_SHOT_RATE: 10
-- Deathbane (DRK)
REPLACE INTO `item_mods` VALUES (20892,23,20);   -- ATT: 20
REPLACE INTO `item_mods` VALUES (20892,73,3);    -- STORETP: 3
REPLACE INTO `item_mods` VALUES (20892,288,4);   -- DOUBLE_ATTACK: 4
REPLACE INTO `item_mods` VALUES (20892,840,5);   -- ALL_WSDMG_ALL_HITS: 5
-- Emissary (RDM)
REPLACE INTO `item_mods` VALUES (20702,25,15);   -- ACC: 15
REPLACE INTO `item_mods` VALUES (20702,28,14);   -- MATT: 14
REPLACE INTO `item_mods` VALUES (20702,311,130); -- MAGIC_DAMAGE: 130
REPLACE INTO `item_mods` VALUES (20702,170,10);  -- FASTCAST: 10
REPLACE INTO `item_mods` VALUES (20702,161,-308);-- DMGPHYS: -3%
REPLACE INTO `item_mods` VALUES (20702,164,-308);-- DMGRANGE: -3%
-- Enchufla (DNC)
REPLACE INTO `item_mods` VALUES (20597,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20597,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20597,68,22);   -- EVA: 22
REPLACE INTO `item_mods` VALUES (20597,259,4);   -- DUAL_WIELD: 4
REPLACE INTO `item_mods` VALUES (20597,491,10);  -- WALTZ_POTENCY: 10
REPLACE INTO `item_mods` VALUES (20597,497,-2);  -- WALTZ_DELAY -2
-- Esipritus (SMN)
REPLACE INTO `item_mods` VALUES (21149,5,88);    -- MP: 88
REPLACE INTO `item_mods` VALUES (21149,541,2);   -- BP_DELAY_II: 2
REPLACE INTO `item_mods_pet` VALUES (21149,30,15,1);  -- Avatar - MACC: 15
REPLACE INTO `item_mods_pet` VALUES (21149,28,120,1); -- Avatar MATT: 120
REPLACE INTO `item_mods_pet` VALUES (21149,126,3,1);  -- Avatar - BP_DAMAGE: 3
-- Hammerfists (MNK)
REPLACE INTO `item_mods` VALUES (20519,2,150);   -- HP: 150
REPLACE INTO `item_mods` VALUES (20519,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20519,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20519,173,5);   -- MARTIAL_ARTS: 5
REPLACE INTO `item_mods` VALUES (20519,291,3);   -- COUNTER: 3
-- Ichigohitofuri (SAM)
REPLACE INTO `item_mods` VALUES (21027,25,15);   -- ACC: 15
REPLACE INTO `item_mods` VALUES (21027,73,10);   -- STORETP: 10
REPLACE INTO `item_mods` VALUES (21027,508,10);  -- THIRD_EYE_COUNTER_RATE: 10
-- TODO Need new Mod 'Zanshin Double Attack Rate': 10
-- Instigator (WAR)
REPLACE INTO `item_mods` VALUES (20845,23,15);   -- ATT: 15
REPLACE INTO `item_mods` VALUES (20845,73,6);    -- STORETP: 6
REPLACE INTO `item_mods` VALUES (20845,954,20);  -- BERSERK_DURATION: 20
REPLACE INTO `item_mods` VALUES (20845,955,20);  -- AGGRESSOR_DURATION: 20
-- Iris (BLU)
REPLACE INTO `item_mods` VALUES (20701,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20701,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20701,28,14);   -- MATT: 14
REPLACE INTO `item_mods` VALUES (20701,311,108); -- MAGIC_DAMAGE: 108
REPLACE INTO `item_mods` VALUES (20701,122,15);  -- BLUE: 15
REPLACE INTO `item_mods` VALUES (20701,1140,25); -- ENHANCES_CHAIN_AFFINITY: 25
-- TODO: Need New Mod 'Blue magic spellcasting time': -7%
-- Kali (BRD)
REPLACE INTO `item_mods` VALUES (20599,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20599,30,10);   -- MACC: 10
REPLACE INTO `item_mods` VALUES (20599,28,14);   -- MATT: 14
REPLACE INTO `item_mods` VALUES (20599,311,108); -- MAGIC_DAMAGE: 108
REPLACE INTO `item_mods` VALUES (20599,170,7);   -- FASTCAST: 7
REPLACE INTO `item_mods` VALUES (20599,119,10);  -- SINGING: 10
REPLACE INTO `item_mods` VALUES (20599,454,5);   -- SONG_DURATION_BONUS: 5
-- Lathi (BLM)
REPLACE INTO `item_mods` VALUES (21151,12,12);   -- INT: 12
REPLACE INTO `item_mods` VALUES (21151,13,12);   -- MND: 12
REPLACE INTO `item_mods` VALUES (21151,28,48);   -- MATT: 48
REPLACE INTO `item_mods` VALUES (21151,311,232); -- MAGIC_DAMAGE: 232
REPLACE INTO `item_mods` VALUES (21151,27,-10);  -- ENMITY: -10
REPLACE INTO `item_mods` VALUES (21151,369,1);   -- REFRESH: 1
-- Midnights (PUP)
REPLACE INTO `item_mods` VALUES (20520,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20520,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20520,504,2);   -- MANEUVER_BONUS: 2 
REPLACE INTO `item_mods` VALUES (20520,505,40);  -- OVERLOAD_THRESH: 40
-- Nixxer (PLD)
REPLACE INTO `item_mods` VALUES (20700,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20700,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20700,485,2);   -- SHIELD_MASTERY_TP: 2
REPLACE INTO `item_mods` VALUES (20700,518,3);   -- SHIELDBLOCKRATE: 3
REPLACE INTO `item_mods` VALUES (20700,161,-615);-- DMGPHYS: -6%
REPLACE INTO `item_mods` VALUES (20700,164,-615);-- DMGRANGE: -6%
-- Queller Rod (WHM)
REPLACE INTO `item_mods` VALUES (21084,12,6);    -- INT: 6
REPLACE INTO `item_mods` VALUES (21084,13,6);    -- MND: 6
REPLACE INTO `item_mods` VALUES (21084,30,15);   -- MACC: 15
REPLACE INTO `item_mods` VALUES (21084,28,16);   -- MATT: 16
REPLACE INTO `item_mods` VALUES (21084,311,124); -- MAGIC_DAMAGE: 124
REPLACE INTO `item_mods` VALUES (21084,27,-10);  -- ENMITY: -10
REPLACE INTO `item_mods` VALUES (21084,260,2);   -- CURE_POTENCY_II: 2
REPLACE INTO `item_mods` VALUES (21084,369,1);   -- REFRESH: 1
-- Rhomphaia (DRG)
REPLACE INTO `item_mods` VALUES (20937,23,20);   -- ATT: 20
REPLACE INTO `item_mods` VALUES (20937,233,10);  -- DRAGON_KILLER: 10
REPLACE INTO `item_mods` VALUES (20937,288,7);   -- DOUBLE_ATTACK: 7
REPLACE INTO `item_mods` VALUES (20937,361,50);  -- JUMP_TP_BONUS: 50
-- Shijo (THF)
REPLACE INTO `item_mods` VALUES (20598,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20598,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20598,68,22);   -- EVA: 22
REPLACE INTO `item_mods` VALUES (20598,165,4);   -- CRITHITRATE: 4
REPLACE INTO `item_mods` VALUES (20598,421,5);   -- CRIT_DMG_INCREASE: 5
-- TODO: Additional Effect: Flee (On Hit Mobs >i119 2-3%)
-- Skullrender (BST)
REPLACE INTO `item_mods` VALUES (20797,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (20797,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (20797,1157,15); -- ENHANCES_SPUR: 15
REPLACE INTO `item_mods_pet` VALUES (20797,384,820,0); -- pet HASTE_GEAR: 8%
REPLACE INTO `item_mods_pet` VALUES (20797,288,5,0);   -- DOUBLE_ATTACK: 5%
-- Solstice (GEO)
REPLACE INTO `item_mods` VALUES (21085,12,6);    -- INT: 6
REPLACE INTO `item_mods` VALUES (21085,13,6);    -- MND: 6
REPLACE INTO `item_mods` VALUES (21085,30,15);   -- MACC: 15
REPLACE INTO `item_mods` VALUES (21085,28,31);   -- MATT: 31
REPLACE INTO `item_mods` VALUES (21085,311,124); -- MAGIC_DAMAGE: 124
REPLACE INTO `item_mods` VALUES (21085,124,5);   -- HANDBELL_SKILL: 5
REPLACE INTO `item_mods` VALUES (21085,296,6);   -- CONSERVE_MP: 6
REPLACE INTO `item_mods` VALUES (21085,960,15);  -- INDI_DURATION: 15
-- Vijaya Bow (RNG)
REPLACE INTO `item_mods` VALUES (21215,26,20);   -- RACC: 20
REPLACE INTO `item_mods` VALUES (21215,73,7);    -- STORETP: 7
REPLACE INTO `item_mods` VALUES (21215,314,15);  -- SHARPSHOT: 15
-- TODO: Need New Mod 'Double Shot Damage': +8

-- Walk of Echos +1 Adds
-- Moros Crossbow +1
REPLACE INTO `item_mods` VALUES (21478,24, 18); -- RATT: 18
REPLACE INTO `item_mods` VALUES (21478,73, 6);  -- STORETP: 6
REPLACE INTO `item_mods` VALUES (21478,1053,4); -- TRUE_SHOT_EFFECT: 4
-- Smilodon Mask +1
REPLACE INTO `item_mods` VALUES (26701, 1, 97);  -- DEF: 97
REPLACE INTO `item_mods` VALUES (26701, 2, 34);  -- HP: 34
REPLACE INTO `item_mods` VALUES (26701, 5, 23); -- MP: 23
REPLACE INTO `item_mods` VALUES (26701, 8, 20); -- STR: 20
REPLACE INTO `item_mods` VALUES (26701, 9, 21); -- DEX: 21
REPLACE INTO `item_mods` VALUES (26701, 10, 20); -- VIT: 20
REPLACE INTO `item_mods` VALUES (26701, 11, 21); -- AGI: 21
REPLACE INTO `item_mods` VALUES (26701, 12, 17); -- INT: 17
REPLACE INTO `item_mods` VALUES (26701, 13, 17); -- MND: 17
REPLACE INTO `item_mods` VALUES (26701, 14, 19);  -- CHR: 19
REPLACE INTO `item_mods` VALUES (26701, 68, 41);  -- EVA: 41
REPLACE INTO `item_mods` VALUES (26701, 31, 52); -- MEVA: 52
REPLACE INTO `item_mods` VALUES (26701, 29, 2);  -- MDEF: 2
REPLACE INTO `item_mods` VALUES (26701, 384, 820); -- HASTE_GEAR: 8%
REPLACE INTO `item_mods` VALUES (26701, 107, 10); -- GUARD: 10
REPLACE INTO `item_mods` VALUES (26701, 291, 3);  -- COUNTER: 3
REPLACE INTO `item_mods` VALUES (26701, 370, 1);  -- REGEN: 1
-- -- Theias Hairpin
REPLACE INTO `item_mods` VALUES (26699, 9, 24);  -- DEX: 24
REPLACE INTO `item_mods` VALUES (26699, 11, 24); -- AGI:24
REPLACE INTO `item_mods` VALUES (26699, 25, 20); -- ACC: 20
REPLACE INTO `item_mods` VALUES (26699, 68, 20); -- EVA: 20
REPLACE INTO `item_mods` VALUES (26699, 162,-410); -- DMGBREATH: -4%
-- Alrunas Gloves
REPLACE INTO `item_mods` VALUES (28005,162,-308); -- DMGBREATH: -300
-- Thrift Gloves +1
REPLACE INTO `item_mods` VALUES (28000, 1, 86); -- DEF: 86
REPLACE INTO `item_mods` VALUES (28000, 2, 23); -- HP: 23
REPLACE INTO `item_mods` VALUES (28000, 5, 99); -- MP: 99
REPLACE INTO `item_mods` VALUES (28000, 8, 11); -- STR: 11
REPLACE INTO `item_mods` VALUES (28000, 9, 34); -- DEX: 34
REPLACE INTO `item_mods` VALUES (28000, 10, 31); -- VIT: 31
REPLACE INTO `item_mods` VALUES (28000, 11, 4); -- AGI: 4
REPLACE INTO `item_mods` VALUES (28000, 12, 12); -- INT: 12
REPLACE INTO `item_mods` VALUES (28000, 13, 29); -- MND: 29
REPLACE INTO `item_mods` VALUES (28000, 14, 17);  -- CHR: 17
REPLACE INTO `item_mods` VALUES (28000, 30, 15); -- MACC: 15
REPLACE INTO `item_mods` VALUES (28000, 27, -10); -- ENMITY: -10
REPLACE INTO `item_mods` VALUES (28000, 29, 1);  -- MDEF: 1
REPLACE INTO `item_mods` VALUES (28000, 31, 36); -- MEVA:36
REPLACE INTO `item_mods` VALUES (28000, 68, 23);  -- EVA: 23
REPLACE INTO `item_mods` VALUES (28000, 296, 4); -- CONSERVE_MP: 4
REPLACE INTO `item_mods` VALUES (28000, 384, 512); -- HASTE_GEAR: 5%
-- Sasuke Tekko +1
REPLACE INTO `item_mods` VALUES (28001, 1, 87); -- DEF: 87
REPLACE INTO `item_mods` VALUES (28001, 2, 43); -- HP: 43
REPLACE INTO `item_mods` VALUES (28001, 8,  9); -- STR: 9
REPLACE INTO `item_mods` VALUES (28001, 9, 33); -- DEX: 33
REPLACE INTO `item_mods` VALUES (28001, 10, 27); -- VIT: 27
REPLACE INTO `item_mods` VALUES (28001, 11, 15); -- AGI: 15
REPLACE INTO `item_mods` VALUES (28001, 12, 9); -- INT: 9
REPLACE INTO `item_mods` VALUES (28001, 13, 27); -- MND: 27
REPLACE INTO `item_mods` VALUES (28001, 14, 16);  -- CHR: 16
REPLACE INTO `item_mods` VALUES (28001, 25, 23);   -- ACC: 23
REPLACE INTO `item_mods` VALUES (28001, 29, 1);  -- MDEF: 1
REPLACE INTO `item_mods` VALUES (28001, 31, 26); -- MEVA: 26
REPLACE INTO `item_mods` VALUES (28001, 68, 20);  -- EVA: 20
REPLACE INTO `item_mods` VALUES (28001, 421, 2); -- CRIT_DMG_INCREASE: 2
REPLACE INTO `item_mods` VALUES (28001, 384, 512); -- HASTE_GEAR: 5%
-- Fugacity Beret +1
REPLACE INTO `item_mods` VALUES (26695, 1, 98); -- DEF: 98
REPLACE INTO `item_mods` VALUES (26695, 2, 34); -- HP: 34
REPLACE INTO `item_mods` VALUES (26695, 5, 23); -- MP: 23
REPLACE INTO `item_mods` VALUES (26695, 8, 20); -- STR: 20
REPLACE INTO `item_mods` VALUES (26695, 9, 18); -- DEX: 18
REPLACE INTO `item_mods` VALUES (26695, 10, 14); -- VIT: 14
REPLACE INTO `item_mods` VALUES (26695, 11, 24); -- AGI: 24
REPLACE INTO `item_mods` VALUES (26695, 12, 20); -- INT: 20
REPLACE INTO `item_mods` VALUES (26695, 13, 14); -- MND: 14
REPLACE INTO `item_mods` VALUES (26695, 14, 16);  -- CHR: 16
REPLACE INTO `item_mods` VALUES (26695, 28, 6);  -- MATT: 6
REPLACE INTO `item_mods` VALUES (26695, 29, 2);  -- MDEF: 2
REPLACE INTO `item_mods` VALUES (26695, 31, 52); -- MEVA:52
REPLACE INTO `item_mods` VALUES (26695, 68, 53);  -- EVA: 53
REPLACE INTO `item_mods` VALUES (26695, 160,-205); -- DMG: -2%
REPLACE INTO `item_mods` VALUES (26695, 384, 820); -- HASTE_GEAR: 8%
-- Wukongs Hakama +1
REPLACE INTO `item_mods` VALUES (28143, 1, 113); -- DEF: 113
REPLACE INTO `item_mods` VALUES (28143, 2, 45); -- HP: 45
REPLACE INTO `item_mods` VALUES (28143, 8, 34); -- STR: 34
REPLACE INTO `item_mods` VALUES (28143, 10, 13); -- VIT: 13
REPLACE INTO `item_mods` VALUES (28143, 11, 21); -- AGI: 21
REPLACE INTO `item_mods` VALUES (28143, 12, 31); -- INT: 31
REPLACE INTO `item_mods` VALUES (28143, 13, 17); -- MND: 17
REPLACE INTO `item_mods` VALUES (28143, 14, 9);  -- CHR: 9
REPLACE INTO `item_mods` VALUES (28143, 25, 20); -- ACC: 20
REPLACE INTO `item_mods` VALUES (28143, 29, 3);  -- MDEF: 3
REPLACE INTO `item_mods` VALUES (28143, 31, 62); -- MEVA: 62
REPLACE INTO `item_mods` VALUES (28143, 68, 31);  -- EVA: 31
REPLACE INTO `item_mods` VALUES (28143, 27, 3); -- ENMITY: 3
REPLACE INTO `item_mods` VALUES (28143, 168, 10); -- SPELLINTERRUPT: 10
REPLACE INTO `item_mods` VALUES (28143, 384, 615); -- HASTE_GEAR: 6%
-- Seraph Mittens +1
REPLACE INTO `item_mods` VALUES (28003, 1, 80); -- DEF: 80
REPLACE INTO `item_mods` VALUES (28003, 2, 21); -- HP: 21
REPLACE INTO `item_mods` VALUES (28003, 5, 14); -- MP: 14
REPLACE INTO `item_mods` VALUES (28003, 8, 6); -- STR: 6
REPLACE INTO `item_mods` VALUES (28003, 9, 27); -- DEX: 27
REPLACE INTO `item_mods` VALUES (28003, 10, 24); -- VIT: 24
REPLACE INTO `item_mods` VALUES (28003, 11, 4); -- AGI: 4
REPLACE INTO `item_mods` VALUES (28003, 12, 18); -- INT: 18
REPLACE INTO `item_mods` VALUES (28003, 13, 32); -- MND: 32
REPLACE INTO `item_mods` VALUES (28003, 14, 18); -- CHR: 18
REPLACE INTO `item_mods` VALUES (28003, 15, 25); -- FIRE_MEVA: +25
REPLACE INTO `item_mods` VALUES (28003, 16,-25); -- ICE_MEVA: -25
REPLACE INTO `item_mods` VALUES (28003, 17, 25); -- WIND_MEVA: +25
REPLACE INTO `item_mods` VALUES (28003, 18,-25); -- EARTH_MEVA: -25
REPLACE INTO `item_mods` VALUES (28003, 19, 25); -- THUNDER_MEVA: +25
REPLACE INTO `item_mods` VALUES (28003, 20,-25); -- WATER_MEVA: -25
REPLACE INTO `item_mods` VALUES (28003, 21, 50); -- LIGHT_MEVA: +50
REPLACE INTO `item_mods` VALUES (28003, 22,-50); -- DARK_MEVA: -50
REPLACE INTO `item_mods` VALUES (28003, 27, -8); -- ENMITY: -8
REPLACE INTO `item_mods` VALUES (28003, 29, 3);  -- MDEF: 3
REPLACE INTO `item_mods` VALUES (28003, 31, 36); -- MEVA: 36
REPLACE INTO `item_mods` VALUES (28003, 68, 20);  -- EVA: 20
REPLACE INTO `item_mods` VALUES (28003, 384, 308); -- HASTE_GEAR: 3%
-- Slither Gloves +1
REPLACE INTO `item_mods` VALUES (28002, 1, 87); -- DEF: 87
REPLACE INTO `item_mods` VALUES (28002, 2, 23); -- HP: 23
REPLACE INTO `item_mods` VALUES (28002, 5, 8); -- MP: 8
REPLACE INTO `item_mods` VALUES (28002, 8, 7); -- STR: 7
REPLACE INTO `item_mods` VALUES (28002, 9, 34); -- DEX: 34
REPLACE INTO `item_mods` VALUES (28002, 10, 26); -- VIT: 26
REPLACE INTO `item_mods` VALUES (28002, 11, 7); -- AGI: 7
REPLACE INTO `item_mods` VALUES (28002, 12, 11); -- INT: 11
REPLACE INTO `item_mods` VALUES (28002, 13, 29); -- MND: 29
REPLACE INTO `item_mods` VALUES (28002, 14, 17);  -- CHR: 17
REPLACE INTO `item_mods` VALUES (28002, 23, 12);  -- ATT: 12
REPLACE INTO `item_mods` VALUES (28002, 24, 12);  -- RATT: 12
REPLACE INTO `item_mods` VALUES (28002, 289, 5); -- SUBTLE_BLOW: 5
REPLACE INTO `item_mods` VALUES (28002, 29, 2);  -- MDEF: 2
REPLACE INTO `item_mods` VALUES (28002, 31, 26); -- MEVA: 26
REPLACE INTO `item_mods` VALUES (28002, 68, 38);  -- EVA: 38
REPLACE INTO `item_mods` VALUES (28002, 491, 5); -- WALTZ_POTENCY: 5
REPLACE INTO `item_mods` VALUES (28002, 384, 410); -- HASTE_GEAR: 4%
-- Accord Hat +1
REPLACE INTO `item_mods` VALUES (26697, 1, 92); -- DEF: 92
REPLACE INTO `item_mods` VALUES (26697, 2, 34); -- HP: 34
REPLACE INTO `item_mods` VALUES (26697, 5, 51); -- MP: 51
REPLACE INTO `item_mods` VALUES (26697, 8, 13); -- STR: 13
REPLACE INTO `item_mods` VALUES (26697, 9, 13); -- DEX: 13
REPLACE INTO `item_mods` VALUES (26697, 10, 13); -- VIT: 13
REPLACE INTO `item_mods` VALUES (26697, 11, 13); -- AGI: 13
REPLACE INTO `item_mods` VALUES (26697, 12, 18); -- INT: 18
REPLACE INTO `item_mods` VALUES (26697, 13, 18); -- MND: 18
REPLACE INTO `item_mods` VALUES (26697, 14, 18);  -- CHR: 18
REPLACE INTO `item_mods` VALUES (26697, 68, 34);  -- EVA: 34
REPLACE INTO `item_mods` VALUES (26697, 31, 72); -- MEVA: 72
REPLACE INTO `item_mods` VALUES (26697, 29, 5);  -- MDEF: 5
REPLACE INTO `item_mods` VALUES (26697, 384, 615); -- HASTE_GEAR: 6%
REPLACE INTO `item_mods` VALUES (26697, 357, 9); -- BP_DELAY: -9
REPLACE INTO `item_mods` VALUES (26697, 371,-1); -- AVATAR_PERPETUATION -1
-- Medbs Gauntlets +1
REPLACE INTO `item_mods` VALUES (28004, 1, 98); -- DEF: 98
REPLACE INTO `item_mods` VALUES (28004, 2, 28); -- HP: 28
REPLACE INTO `item_mods` VALUES (28004, 5, 25); -- MP: 25
REPLACE INTO `item_mods` VALUES (28004, 8, 9); -- STR: 9
REPLACE INTO `item_mods` VALUES (28004, 9, 28); -- DEX: 28
REPLACE INTO `item_mods` VALUES (28004, 10, 32); -- VIT: 32
REPLACE INTO `item_mods` VALUES (28004, 12, 8); -- INT: 8
REPLACE INTO `item_mods` VALUES (28004, 13, 29); -- MND: 29
REPLACE INTO `item_mods` VALUES (28004, 14, 18);  -- CHR: 18
REPLACE INTO `item_mods` VALUES (28004, 23, 19);  -- ATT: 19
REPLACE INTO `item_mods` VALUES (28004, 68, 20);  -- EVA: 20
REPLACE INTO `item_mods` VALUES (28004, 31, 26); -- MEVA: 26
REPLACE INTO `item_mods` VALUES (28004, 29, 4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (28004, 384, 410); -- HASTE_GEAR: 4%
-- Mirador Trousers +1
REPLACE INTO `item_mods` VALUES (28145, 1, 110); -- DEF: 110
REPLACE INTO `item_mods` VALUES (28145, 2, 45); -- HP: 45
REPLACE INTO `item_mods` VALUES (28145, 8, 30); -- STR: 30
REPLACE INTO `item_mods` VALUES (28145, 10, 16); -- VIT: 16
REPLACE INTO `item_mods` VALUES (28145, 11, 21); -- AGI: 21
REPLACE INTO `item_mods` VALUES (28145, 12, 29); -- INT: 29
REPLACE INTO `item_mods` VALUES (28145, 13, 17); -- MND: 17
REPLACE INTO `item_mods` VALUES (28145, 14, 11); -- CHR: 11
REPLACE INTO `item_mods` VALUES (28145, 26, 18); -- RACC: 18
REPLACE INTO `item_mods` VALUES (28145, 29, 4);  -- MDEF: 4
REPLACE INTO `item_mods` VALUES (28145, 31, 67); -- MEVA: 67
REPLACE INTO `item_mods` VALUES (28145, 68, 36);  -- EVA: 36
REPLACE INTO `item_mods` VALUES (28145, 27, -5); -- ENMITY: -5
REPLACE INTO `item_mods` VALUES (28145, 314,15);  -- SHARPSHOT: 15
REPLACE INTO `item_mods` VALUES (28145, 384, 615); -- HASTE_GEAR: 6%
-- Chersos Helm +1
REPLACE INTO `item_mods` VALUES (26698,161,-410); -- DMGPHYS: -4%
REPLACE INTO `item_mods` VALUES (26698,164,-410); -- DMGRANGE: -4%
REPLACE INTO `item_mods` VALUES (26698,384,820);  -- HASTE_GEAR: 8%
-- Hidalgo Slops +1
REPLACE INTO `item_mods` VALUES (28146, 1, 104); -- DEF: 104
REPLACE INTO `item_mods` VALUES (28146, 2, 41); -- HP: 41
REPLACE INTO `item_mods` VALUES (28146, 5, 29); -- MP: 29
REPLACE INTO `item_mods` VALUES (28146, 8, 24); -- STR: 24
REPLACE INTO `item_mods` VALUES (28146, 10, 12); -- VIT: 12
REPLACE INTO `item_mods` VALUES (28146, 11, 17); -- AGI: 17
REPLACE INTO `item_mods` VALUES (28146, 12, 33); -- INT: 33
REPLACE INTO `item_mods` VALUES (28146, 13, 26); -- MND: 26
REPLACE INTO `item_mods` VALUES (28146, 14, 21); -- CHR: 21
REPLACE INTO `item_mods` VALUES (28146, 29, 5);  -- MDEF: 5
REPLACE INTO `item_mods` VALUES (28146, 31, 104); -- MEVA: 104
REPLACE INTO `item_mods` VALUES (28146, 68, 26);  -- EVA: 26
REPLACE INTO `item_mods` VALUES (28146,114, 15);  -- ENFEEBLE: 15
REPLACE INTO `item_mods` VALUES (28146,122, 10);  -- BLUE: 10
REPLACE INTO `item_mods` VALUES (28146,384,205); -- HASTE_GEAR: 2%
-- Nomkahpa Mittens +1
REPLACE INTO `item_mods` VALUES (28007, 1, 79); -- DEF: 79
REPLACE INTO `item_mods` VALUES (28007, 2, 23); -- HP: 23
REPLACE INTO `item_mods` VALUES (28007, 8, 14); -- STR: 14
REPLACE INTO `item_mods` VALUES (28007, 9, 34); -- DEX: 34
REPLACE INTO `item_mods` VALUES (28007, 10, 31); -- VIT: 31
REPLACE INTO `item_mods` VALUES (28007, 11, 4); -- AGI: 4
REPLACE INTO `item_mods` VALUES (28007, 12, 12); -- INT: 12
REPLACE INTO `item_mods` VALUES (28007, 13, 29); -- MND: 29
REPLACE INTO `item_mods` VALUES (28007, 14, 17);  -- CHR: 17
REPLACE INTO `item_mods` VALUES (28007, 23, 15);  -- ATT: 15
REPLACE INTO `item_mods` VALUES (28007, 68, 23);  -- EVA: 23
REPLACE INTO `item_mods` VALUES (28007, 31, 36); -- MEVA: 36
REPLACE INTO `item_mods` VALUES (28007, 29, 1);  -- MDEF: 1
REPLACE INTO `item_mods` VALUES (28007, 384, 615); -- HASTE_GEAR: 6%
REPLACE INTO `item_mods` VALUES (28007, 288, 3); -- DOUBLE_ATTACK: 3
-- Thuellaic Ecu +1
REPLACE INTO `item_mods` VALUES (27630,1,64);     -- DEF: 64
REPLACE INTO `item_mods` VALUES (27630,2,21);    -- HP: 21
REPLACE INTO `item_mods` VALUES (27630,5,29);  	 -- MP: 29
REPLACE INTO `item_mods` VALUES (27630,30,10);   -- MACC: 10
REPLACE INTO `item_mods` VALUES (27630,28,10);   -- MATT: 10
REPLACE INTO `item_mods` VALUES (27630,68,10);    -- EVA: 10
REPLACE INTO `item_mods` VALUES (27630,384,205);  -- HASTE_GEAR: 2%
REPLACE INTO `item_mods` VALUES (27630,109,101); -- SHIELD: 101
REPLACE INTO `item_mods` VALUES (27630,296,4);   -- CONSERVE_MP
-- Weathering Shield +1
REPLACE INTO `item_mods` VALUES (27629,1,74);      -- DEF: 74
REPLACE INTO `item_mods` VALUES (27629,15,-10);    -- FIRE_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,16,-10);    -- ICE_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,17,-10);    -- WIND_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,18,-10);    -- EARTH_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,19,-10);    -- THUNDER_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,20,-10);    -- WATER_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,21,-10);    -- LIGHT_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,22,-10);    -- DARK_MEVA: -10
REPLACE INTO `item_mods` VALUES (27629,109,106);   -- SHIELD: 106
REPLACE INTO `item_mods` VALUES (27629,161,-1024); -- DMGPHYS: -10%
REPLACE INTO `item_mods` VALUES (27629,164,-1024); -- DMGRANGE: -10%
REPLACE INTO `item_mods` VALUES (27629,163,-2560); -- DMGMAGIC: -25%
-- Dilettantes Grip +1
REPLACE INTO `item_mods` VALUES (21365,2,40); -- HP: 40
REPLACE INTO `item_mods` VALUES (21365,23,6); -- ATT: 6
REPLACE INTO `item_mods` VALUES (21365,25,6); -- ACC: 6
REPLACE INTO `item_mods` VALUES (21365,288,1); -- DOUBLE_ATTACK: 1
-- Hasty Pinion +1
REPLACE INTO `item_mods` VALUES (21363,25,10);   -- ACC: 10
REPLACE INTO `item_mods` VALUES (21363,23,10);   -- ATT: 10
REPLACE INTO `item_mods` VALUES (21363,73,-3);   -- STORETP: -3
REPLACE INTO `item_mods` VALUES (21363,384,205); -- HASTE_GEAR: 2%
-- Leisure Musk +1
REPLACE INTO `item_mods` VALUES (21360,30,3); -- MACC: 3
REPLACE INTO `item_mods` VALUES (21360,27,-4); -- ENMITY: -4
REPLACE INTO `item_mods` VALUES (21360,68,-10); -- EVA: -10
-- Ombre Tathlum +1
REPLACE INTO `item_mods` VALUES (21362,5,30);  -- MP: 120
REPLACE INTO `item_mods` VALUES (21362,12,6);  -- INT: 6
REPLACE INTO `item_mods` VALUES (21362,30,3);  -- MACC: 3
REPLACE INTO `item_mods` VALUES (21362,296,4); -- CONSERVE_MP: 4
-- Quartz Tathlum +1
REPLACE INTO `item_mods` VALUES (21359,5,15);  -- MP: 15
REPLACE INTO `item_mods` VALUES (21359,13,4); -- MND: 4
REPLACE INTO `item_mods` VALUES (21359,114,4); -- ENFEEBLE: 4
-- Pixie Hairpin +1
REPLACE INTO `item_mods` VALUES (26696,2,-35); -- HP: -35
REPLACE INTO `item_mods` VALUES (26696,5,120);  -- MP: 120
REPLACE INTO `item_mods` VALUES (26696,12,27);  -- INT: 27
REPLACE INTO `item_mods` VALUES (26696,39,28);  -- DARK_MAB: 28
-- Ardor Pendant
REPLACE INTO `item_mods` VALUES (11614,1075,5); -- BREATH_DAMAGE_DEALT: 5
-- Ardor Pendant +1
REPLACE INTO `item_mods` VALUES (28355,1075,10); -- BREATH_DAMAGE_DEALT: 10

-- Nih Fixes to Newer Mods
-- Glassblowers Belt
REPLACE INTO `item_mods` VALUES (10816,1075,5); -- BREATH_DAMAGE_DEALT: 5
-- Mavi Tathlum
REPLACE INTO `item_mods` VALUES (19255,1075,5); -- BREATH_DMG_DEALT: 5
-- Luhlaza Keffiyeh
REPLACE INTO `item_mods` VALUES (26654,1075,18); -- BREATH_DMG_DEALT: 18
-- Luhlaza Keffiyeh +1
REPLACE INTO `item_mods` VALUES (26655,1075,20); -- BREATH_DMG_DEALT: 20
-- Impatiens
REPLACE INTO `item_mods` VALUES (19761,909,3);   -- QUICK_MAGIC: 3
-- Gerdr Belt
REPLACE INTO `item_mods` VALUES (26360,9,5);   -- DEX: 5
REPLACE INTO `item_mods` VALUES (26360,11,5);  -- AGI: 5
REPLACE INTO `item_mods` VALUES (26360,74,5);  -- STORETP: 5
REPLACE INTO `item_mods` VALUES (26360,165,3); -- CRITHITRATE: 3
REPLACE INTO `item_mods` VALUES (26360,259,3); -- DUAL_WIELD: 3
-- Kunimune
REPLACE INTO `item_mods` VALUES (21034,164,-410);-- DMGRANGE: -4%
-- Kunimune +1
REPLACE INTO `item_mods` VALUES (21035,164,-512);-- DMGRANGE: -5%
-- Malfeasance
REPLACE INTO `item_mods` VALUES (20754,255,15);  -- DEATHRES: 15
-- Malfeasance +1
REPLACE INTO `item_mods` VALUES (20755,255,16);  -- DEATHRES: 16
-- Predatrice
REPLACE INTO `item_mods` VALUES (20730,5,30);    -- MP: 30
REPLACE INTO `item_mods` VALUES (20730,311,50);  -- MAGIC_DAMAGE: 50
REPLACE INTO `item_mods` VALUES (20730,233,5);   -- DRAGON_KILLER: 5
-- Venery bow
REPLACE INTO `item_mods` VALUES (22118,944,5); -- CONSERVE_TP: 5
REPLACE INTO `item_mods` VALUES (22118,175,5); -- SKILLCHAINDMG: 5
-- Tizona DMG TO MP Added Effect #16
-- Tizona 75
REPLACE INTO `item_mods` VALUES (19006,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19006,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19006,501,10); -- ITEM_ADDEFFECT_CHANCE: 10
-- Tizona 80
REPLACE INTO `item_mods` VALUES (19075,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19075,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19075,501,15); -- ITEM_ADDEFFECT_CHANCE: 15
-- Tizona 85
REPLACE INTO `item_mods` VALUES (19095,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19095,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19095,501,20); -- ITEM_ADDEFFECT_CHANCE: 20
-- Tizona 90
REPLACE INTO `item_mods` VALUES (19627,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19627,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19627,501,25); -- ITEM_ADDEFFECT_CHANCE: 25
-- Tizona 95
REPLACE INTO `item_mods` VALUES (19725,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19725,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19725,501,25); -- ITEM_ADDEFFECT_CHANCE: 25
-- Tizona 99
REPLACE INTO `item_mods` VALUES (19834,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19834,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19834,501,30); -- ITEM_ADDEFFECT_CHANCE: 30
-- Tizona 99 II
REPLACE INTO `item_mods` VALUES (19963,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (19963,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (19963,501,30); -- ITEM_ADDEFFECT_CHANCE: 30
-- Tizona i119
REPLACE INTO `item_mods` VALUES (20651,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (20651,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (20651,501,30); -- ITEM_ADDEFFECT_CHANCE: 30
-- Tizona i119 II
REPLACE INTO `item_mods` VALUES (20652,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (20652,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (20652,501,30); -- ITEM_ADDEFFECT_CHANCE: 30
-- Tizona i119 III
REPLACE INTO `item_mods` VALUES (20688,431,16);   -- ITEM_ADDEFFECT_TYPE: DMG_TO_MP
REPLACE INTO `item_mods` VALUES (20688,499,22);  -- ITEM_SUBEFFECT: 22
REPLACE INTO `item_mods` VALUES (20688,501,30); -- ITEM_ADDEFFECT_CHANCE: 30
