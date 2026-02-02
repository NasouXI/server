-- Set Max HP/MP of Mobs in Sky 2.0

-- Seiryu-Escha
-- NOTE: spell lists for Seiryu-Escha are defined in Lua (231)
UPDATE mob_groups SET HP = "90000", MP = "50000", minLevel = "95", maxLevel = "95" WHERE name = "Seiryu-Escha";

-- Suzaku-Escha
UPDATE mob_groups SET HP = "90000", MP = "50000", minLevel = "95", maxLevel = "95" WHERE name = "Suzaku-Escha";

-- Byakko-Escha
UPDATE `mob_groups` SET `dropid`='3990', `HP`='90000', `MP`='50000', `minLevel` = "95", `maxLevel`='95' WHERE  `groupid` = "78" AND `zoneid` = "289";
UPDATE `mob_pools` SET `spellList`='999', `skill_list_id`='5017' WHERE  `poolid`=5690;
INSERT INTO `mob_skills` VALUES (2207,1606,'disorienting_waul',1,20.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (1680,984,'predatory_glare',4,10.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (1681,17,'crossthrash',4,15.0,2000,1500,4,0,0,1,0,0,0);
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,274,1,255); -- Sleepga II
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,357,1,255); -- Slowga
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,359,1,255); -- Silencega
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,360,1,255); -- Dispelga
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,361,1,255); -- Blindga
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,362,1,255); -- Bindga
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,365,1,255); -- Breakga
INSERT INTO `mob_spell_lists` VALUES ('Byakko',999,366,1,255); -- Graviga
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,270);
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,271);
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,273);
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,1680);     -- Predatory Glare
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,1681);     -- Crossthrash
INSERT INTO `mob_skill_lists` VALUES ('Byakko',5017,2207);     -- Disorienting Waul

-- Genbu-Escha
UPDATE `mob_groups` SET `dropid`='3991', `HP`='90000', `MP`='50000', `minLevel` = "95", `maxLevel`='95' WHERE `groupid` = "79" AND `zoneid` = "289";
UPDATE `mob_pools` SET `spellList`='998', `skill_list_id`='5018' WHERE  `poolid`=5695;
INSERT INTO `mob_spell_lists` VALUES ('Genbu',998,172,1,255);  -- Water 4
INSERT INTO `mob_spell_lists` VALUES ('Genbu',998,201,1,255);  -- Waterga III
INSERT INTO `mob_spell_lists` VALUES ('Genbu',998,214,1,255);  -- Flood
INSERT INTO `mob_spell_lists` VALUES ('Genbu',998,503,1,255);  -- Impact
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,806);     -- Tortoise Stomp
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,807);     -- Harden Shell
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,809);     -- Aqua Breath
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,2360);    -- Wind Shear (ZNM)
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,1790);    -- Gates of Hades
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,355);     -- Earth Pounder
INSERT INTO `mob_skill_lists` VALUES ('Genbu',5018,2060);    -- Brainjack (charm)
-- Kirin-Escha
UPDATE mob_groups SET HP = "150000", MP = "50000", minLevel = "100", maxLevel = "100" WHERE `groupid` = "82" AND `zoneid` = "289";
-- Kouryu
UPDATE mob_groups SET HP = "100000", MP = "50000", minLevel = "100", maxLevel = "100" WHERE `groupid` = "84" AND `zoneid` = "289";

-- rename Sky 2.0 God Pets
UPDATE mob_spawn_points SET mobname = "Byakko_Pet" WHERE `mobid` = "17961580" AND `groupid` = "78";
UPDATE mob_spawn_points SET mobname = "Genbu_Pet" WHERE `mobid` = "17961583" AND `groupid` = "79";
UPDATE mob_spawn_points SET mobname = "Seiryu_Pet" WHERE `mobid` = "17961586" AND `groupid` = "80";
UPDATE mob_spawn_points SET mobname = "Suzaku_Pet" WHERE `mobid` = "17961589" AND `groupid` = "81";

-- Reduce gil drops from Shadow Dragons in Escha Zi'Tah
UPDATE mob_family_mods SET value = "500" WHERE familyid = "87" and modid = "54";

-- Set Escha mobs to aggro
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "4652"; -- Eschan_Snapweed
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "4848"; -- Eschan_Puk
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "4849"; -- Eschan_Opo-Opo
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5349"; -- Eschan_Coeurl
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5350"; -- Eschan_Dhalmel
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5365"; -- Eschan_Yztarg
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5429"; -- Eschan_Jewelweed
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5538"; -- Eschan_Worm
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5539"; -- Eschan_Wasp
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5540"; -- Eschan_Goobbue
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5541"; -- Eschan_Shadow_Dragon
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5542"; -- Eschan_Tarichuk
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5543"; -- Eschan_Mosquito
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6317"; -- Eschan_Crawler
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6406"; -- Eschan_Obdella
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6446"; -- Eschan_Vulture
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6482"; -- Eschan_Corse
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6553"; -- Eschan_Warrior
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6569"; -- Eschan_Sorcerer
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6591"; -- Eschan_Weapon
-- UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5637"; -- Eschan_Bugard
UPDATE `mob_pools` SET aggro = "0" WHERE poolid = "5620"; -- Eschan_Limule
UPDATE `mob_pools` SET aggro = "0" WHERE poolid = "5621"; -- Eschan_Murex
UPDATE `mob_pools` SET aggro = "0" WHERE poolid = "5622"; -- Eschan_Amoeban
UPDATE `mob_pools` SET aggro = "0" WHERE poolid = "5623"; -- Eschan_Clionid
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5625"; -- Eschan_Zdei
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5626"; -- Eschan_Phuabo
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5627"; -- Eschan_Ghrah
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5628"; -- Eschan_Xzomit
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5629"; -- Eschan_Hpemde
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5630"; -- Eschan_Euvhi
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5632"; -- Eschan_Porxie
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5650"; -- Eschan_Gargouille
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5651"; -- Eschan_Ilaerns_Wynav
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5652"; -- Eschan_Ilaerns_Euvhi
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "5653"; -- Eschan_Ilaerns_Spirit
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6228"; -- Eschan_Ilaern_rng
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6223"; -- Eschan_Ilaern_thf
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6221"; -- Eschan_Ilaern_blm
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6231"; -- Eschan_Ilaern_drg
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6218"; -- Eschan_Ilaern_war
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6220"; -- Eschan_Ilaern_whm
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6219"; -- Eschan_Ilaern_mnk
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6226"; -- Eschan_Ilaern_bst
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6224"; -- Eschan_Ilaern_pld
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6225"; -- Eschan_Ilaern_drk
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6222"; -- Eschan_Ilaern_rdm
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6229"; -- Eschan_Ilaern_sam
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6232"; -- Eschan_Ilaern_smn
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6227"; -- Eschan_Ilaern_brd
UPDATE `mob_pools` SET aggro = "1" WHERE poolid = "6230"; -- Eschan_Ilaern_nin

# Create drop list for Beitetsu Beads and add to Escha mobs
INSERT INTO mob_droplist VALUES (3988,0,0,1000,6392,220); -- Bead pouches on Escha NQ Mobs

-- Escha Zi'Tah EXP Camps
UPDATE `mob_groups` SET dropid = "3988", minLevel = "74", maxLevel = "78" WHERE name = "Eschan_Vulture";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "74", maxLevel = "78" WHERE name = "Eschan_Warrior";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "74", maxLevel = "78" WHERE name = "Eschan_Corse";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "74", maxLevel = "78" WHERE name = "Eschan_Sorcerer";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "78", maxLevel = "82" WHERE name = "Eschan_Wasp";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "78", maxLevel = "82" WHERE name = "Eschan_Snapweed";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "78", maxLevel = "82" WHERE name = "Eschan_Goobbue";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Puk";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Shadow_Dragon";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Tarichuk";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Bugard";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Opo-Opo";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "82", maxLevel = "86" WHERE name = "Eschan_Yztarg";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Mosquito";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Jewelweed";

-- Escha RuAun
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Zdei";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_rng";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_thf";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_blm";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaerns_Wynav";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_drg";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Phuabo";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_war";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Yovra";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_whm";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_mnk";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_bst";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaerns_Euvhi";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Euvhi";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Clionid";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Hpemde";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_pld";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Amoeban";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_drk";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Xzomit";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_rdm";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Murex";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_sam";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_smn";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaerns_Spirit";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ghrah";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Limule";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Gargouille";
UPDATE `mob_groups` SET dropid = "3975", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Porxie";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_brd";
UPDATE `mob_groups` SET dropid = "3988", minLevel = "80", maxLevel = "84" WHERE name = "Eschan_Ilaern_nin";
