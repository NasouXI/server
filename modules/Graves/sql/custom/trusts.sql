--
--  Morimar 
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3160); -- vehement_resolution anim 2335
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3161); -- camaraderie_of_the_crevasse anim 2336
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3162); -- into_the_light anim 2337
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3163); -- arduous_decision anim 2338
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3164); -- 12_blades_of_remorse anim 2339

UPDATE mob_pools SET skill_list_id = 4000 WHERE poolid = 5990; -- 5990

UPDATE mob_skills SET mob_anim_id = 2335 WHERE mob_skill_id = 3160;
UPDATE mob_skills SET mob_anim_id = 2336 WHERE mob_skill_id = 3161;
UPDATE mob_skills SET mob_anim_id = 2337 WHERE mob_skill_id = 3162;
UPDATE mob_skills SET mob_anim_id = 2338 WHERE mob_skill_id = 3163;
UPDATE mob_skills SET mob_anim_id = 2339 WHERE mob_skill_id = 3164;

--
--  Halver
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,116);
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,123);
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,129);
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,114);  -- Raiden Thrust
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,120);  -- Impulse Drive

--
-- Lion II
--
REPLACE INTO mob_skills VALUES (2891, 2029, 'grapeshot', 4, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 3, 2, 0);
REPLACE INTO mob_skills VALUES (2892, 2030, 'pirate_pummel', 0, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 9, 0, 0);
REPLACE INTO mob_skills VALUES (2893, 2031, 'powder_keg', 4, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 5, 1, 0);
REPLACE INTO mob_skills VALUES (2894, 2032, 'walk_the_plank', 1, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 11, 0, 0);

INSERT INTO mob_skill_lists VALUES ('TRUST_Lion_II',1124,2891);
INSERT INTO mob_skill_lists VALUES ('TRUST_Lion_II',1124,2892);
INSERT INTO mob_skill_lists VALUES ('TRUST_Lion_II',1124,2893);
INSERT INTO mob_skill_lists VALUES ('TRUST_Lion_II',1124,2894);

--
-- Tenzen II
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Tenzen_II', 1129, 1397);

--
-- Iroha I & II
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3732); -- amatsu_fuga
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3733); -- amatsu_kyori
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3734); -- amatsu_hanadoki
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3735); -- amatsu_choun
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3736); -- amatsu_gachirin
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3737); -- amatsu_suien

INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3732); -- amatsu_fuga
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3733); -- amatsu_kyori
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3734); -- amatsu_hanadoki
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3735); -- amatsu_choun
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3736); -- amatsu_gachirin
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3737); -- amatsu_suien
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3738); -- rise_from_ashes

INSERT INTO mob_spell_lists VALUES ('TRUST_Iroha', 410, 205, 99, 255);
UPDATE mob_skills SET mob_anim_id = 2541, primary_sc = 11, secondary_sc = 13 WHERE mob_skill_id = 3737;
UPDATE mob_skills SET mob_anim_id = 2540, primary_sc = 7 WHERE mob_skill_id = 3733;
UPDATE mob_skills SET mob_anim_id = 2539, primary_sc = 13, secondary_sc = 12 WHERE mob_skill_id = 3736;
UPDATE mob_skills SET mob_anim_id = 2538, primary_sc = 11 WHERE mob_skill_id = 3735;
UPDATE mob_skills SET mob_anim_id = 2537, primary_sc = 5, secondary_sc = 8 WHERE mob_skill_id = 3734;
UPDATE mob_skills SET mob_anim_id = 2536, primary_sc = 8 WHERE mob_skill_id = 3732;
UPDATE mob_skills SET mob_anim_id = 2564, mob_skill_aoe = 1, mob_skill_distance = 10.0, mob_valid_targets = 3, mob_skill_flag = 128 WHERE mob_skill_id = 3738;

--
-- Curilla
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Curilla', 1017, 42);
INSERT INTO mob_skill_lists VALUES ('TRUST_Curilla', 1017, 45);
INSERT INTO mob_skill_lists VALUES ('TRUST_Curilla', 1017, 32);

-- 
-- Ajido
--
INSERT INTO mob_spell_lists VALUES ('TRUST_Ajido-Marujido', 316, 235, 50, 255);
INSERT INTO mob_spell_lists VALUES ('TRUST_Ajido-Marujido', 316, 237, 50, 255);
INSERT INTO mob_spell_lists VALUES ('TRUST_Ajido-Marujido', 316, 239, 50, 255)

--
-- Trion
--
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3193;
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3194;
UPDATE `mob_skills` SET `mob_skill_id`=3193, `mob_anim_id`=669, `mob_skill_name`='royal_bash', `mob_skill_aoe`=2, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=4, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3193;
UPDATE `mob_skills` SET `mob_skill_id`=3194, `mob_anim_id`=670, `mob_skill_name`='royal_savior', `mob_skill_aoe`=1, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=1, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3194;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=34 WHERE `skill_list_id`=1020 AND `mob_skill_id`=34;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=35 WHERE `skill_list_id`=1020 AND `mob_skill_id`=35;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=42 WHERE `skill_list_id`=1020 AND `mob_skill_id`=42;

--
-- Iron Eater
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 81);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 82);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 84);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 85);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 86);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 87);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 89);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 90);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 91);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 92);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iron_Eater', 1032, 93);


--
-- Semih Lafihna
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Semih_Lafihna', 1055, 202);
INSERT INTO mob_skill_lists VALUES ('TRUST_Semih_Lafihna', 1055, 203);

--
--  Koru Moru
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Koru-Moru', 1067, 173);

--
-- Arciela II
--
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,43,7,255); -- protect
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,44,27,255); -- protect_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,45,47,255); -- protect_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,46,63,255); -- protect_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,47,77,255); -- protect_v
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,48,17,255); -- shell
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,51,68,255); -- shell_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,49,37,255); -- shell_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,50,57,255); -- shell_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,52,76,255); -- shell_v

INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2448); -- Ascension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2449); -- Descension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2450); -- Expunge Magic
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2451); -- harmonic displacement
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2452); -- sight unseen
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2453); -- darkest hour
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2454); -- unceasing dread
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2455); -- dignified awe
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2456); -- naakuals vengance

UPDATE mob_skills SET mob_anim_id = 2448 WHERE mob_skill_id = 3697; -- Ascension
UPDATE mob_skills SET mob_anim_id = 2449 WHERE mob_skill_id = 3698; -- Descension
UPDATE mob_skills SET mob_anim_id = 2450, primary_sc =  6, secondary_sc =  4 WHERE mob_skill_id = 3699; -- Expunge Magic Disctortion 6 / Scission 4
UPDATE mob_skills SET mob_anim_id = 2451, primary_sc = 11, secondary_sc =  5 WHERE mob_skill_id = 3700; -- harmonic displacement Fusion 11 / Reverberation 5
UPDATE mob_skills SET mob_anim_id = 2452, primary_sc =  9, secondary_sc =  3 WHERE mob_skill_id = 3701; -- sight unseen Gravitation 9 / Liquification 3
UPDATE mob_skills SET mob_anim_id = 2453, primary_sc = 12, secondary_sc =  2 WHERE mob_skill_id = 3702; -- darkest hour Fragmentation 12 / Compression 2
UPDATE mob_skills SET mob_anim_id = 2454 WHERE mob_skill_id = 3703; -- unceasing dread -- adds Paralyze
UPDATE mob_skills SET mob_anim_id = 2455 WHERE mob_skill_id = 3704; -- dignified awe -- Adds Amnesia
UPDATE mob_skills SET mob_anim_id = 2456, primary_sc = 13, secondary_sc = 11 WHERE mob_skill_id = 3705; -- naakuals vengance Light 13 / Fusion 11 -- Recovers Own HP & MP Fully 5 Minute Cool down

--
-- Joachim
--
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 394, 99, 255);	-- valor_minuet
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 395, 99, 255);	-- valor_minuet_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 396, 99, 255);	-- valor_minuet_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 397, 99, 255);	-- valor_minuet_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 398, 99, 255);	-- valor_minuet_v
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 417, 99, 255);	-- honor march
UPDATE spell_list SET name = 'honor_march', jobs = 0x00000000000000000063000000000000000000000000 WHERE spellid = 417;

--
--  Elvira
--
UPDATE mob_pools SET mJob = 17 WHERE poolid = "1198" AND `name` = 'Elivira';
UPDATE mob_pools SET mJob = 17 WHERE poolid = "5941" AND `name` = 'Elivira';

DELETE FROM mob_skill_lists WHERE skill_list_id = "1056";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,1201);  -- Coronach (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,212);   -- Slug Shot (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,214);   -- Heavy Shot (Elivira)
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Elivira',1056,209);   -- Split Shot (Elivira)
update mob_skills set primary_sc = 14 where mob_skill_id = 1201; -- made where Coronach can WS
update mob_skills set secondary_sc = 12 where mob_skill_id = 1201; -- made where Coronach can WS


--
--  Metsui P
-- 
DELETE FROM mob_skill_lists WHERE skill_list_id = "1148";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,128); -- Blade: Rin
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,129); -- Blade: Retsu
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,133); -- Blade: Ei
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,134); -- Blade: Jin
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,135); -- Blade: Ten
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,136); -- Blade: Ku
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,141); -- Blade: Shun
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,138); -- Blade: Kamu

UPDATE mob_pools SET sJob = "4" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET mJob = "13" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET skill_list_id = "1148" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';
UPDATE mob_pools SET spellList = "455" WHERE poolid = "5943" AND name = 'lhu_mhakaracca';

INSERT INTO `mob_pools` VALUES (6003,'matsui-p','Matsui-P',153,0x0000310c00000000000000000000000000000000,13,4,1,240,100,0,0,0,0,0,0,32,0,3,0,0,435,0,0,1148,355,1,15);
INSERT INTO spell_list VALUES (1003, 'matsui-p', 0x01010101010101010101010101010101010101010101, 8, 0, 7, 0, 1, 0, 0, 2000, 240000, 0, 0, 939, 1500, 0, 0, 1.00, 0, 0, 0, 0, 0, NULL);
INSERT INTO `mob_skills` VALUES (128,151,'blade_rin',0,0.0,7.0,2000,0,4,0,0,0,1,0,0);
INSERT INTO `mob_skills` VALUES (129,152,'blade_retsu',0,0.0,7.0,2000,0,4,0,0,0,4,0,0);
INSERT INTO `mob_skills` VALUES (133,156,'blade_ei',0,0.0,7.0,2000,0,4,0,0,0,2,0,0);
INSERT INTO `mob_skills` VALUES (135,158,'blade_ten',0,0.0,7.0,2000,0,4,0,0,0,9,0,0);
INSERT INTO `mob_skills` VALUES (138,162,'blade_kamu',0,0.0,7.0,2000,0,4,0,0,0,12,2,0);
INSERT INTO `mob_skills` VALUES (141,164,'blade_shun',0,0.0,7.0,2000,0,4,0,0,0,11,8,0);
INSERT INTO `mob_skills` VALUES (140,163,'blade_hi',0,0.0,7.0,2000,0,4,0,0,0,14,9,0);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Matsui-P',1148,140); -- Blade Hi
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "435";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,144,26,255); -- Fire
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,149,34,255); -- Blizzard
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,154,18,255); -- Aero
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,159,1,255);  -- Stone
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,164,42,255); -- Thunder
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,169,10,255); -- Water
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,245,24,255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,247,50,255); -- Aspir
--INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,252,90,255); -- Stun
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,235,25,255); -- Burn
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,508,83,255); -- Yurin Ichi target
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,319,78,255); -- Aisha Ichi target
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,507,85,255); -- Myoshu Ichi target
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,509,93,255); -- Kakka Ichi self
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,410,88,255); -- Migawari Ichi self
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,320,15,255); -- Katon: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,321,40,255); -- Katon: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,322,75,255); -- Katon: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,323,15,255); -- Hyoton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,324,40,255); -- Hyoton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,325,75,255); -- Hyoton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,326,15,255); -- Huton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,327,40,255); -- Huton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,328,75,255); -- Huton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,329,15,255); -- Doton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,330,40,255); -- Doton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,331,75,255); -- Doton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,332,15,255); -- Raiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,333,40,255); -- Raiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,334,75,255); -- Raiton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,335,15,255); -- Suiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,336,40,255); -- Suiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,337,75,255); -- Suiton: San
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,338,12,255); -- Utsusemi: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,339,37,255); -- Utsusemi: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Matsui-P',435,340,99,255); -- Utsusemi: San


--
-- Selhteus
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1508); -- Luminous Lance
-- INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1509); -- Rejuvination removed so we could control time of use
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Selh_teus',1094,1510); -- Revelation
UPDATE mob_pools SET sJob = 12, skill_list_id = 1094, name = 'selh_teus' WHERE poolid = 5979;

--
--  Zeid
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,983); -- abyssal strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,982); -- Abyssal drain
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,981); -- Ground Strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Zeid',1021,980); -- Freeze bite
--
--  AAMR
--
UPDATE mob_pools SET mJob = 1, sJob = 13, spellList = 405, name = 'aamr' WHERE poolid = 5994;

--
--  Lhe Lhangavo
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,11); -- ascetics_fury
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,14); -- victory_smite
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,1033); -- Dragon Kick
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lhe_Lhangavo',1079,1034); -- Asuran Fists

--
-- Ullegore
-- 
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3624); -- memento_mori
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3625); -- silence_seal
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3626); -- envoutement
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Ullegore',1102,3627); -- bored_to_tears
UPDATE mob_pools SET sJob = 8 WHERE poolid = 5987 and name = 'ullegore';
UPDATE mob_groups SET MP = 5000 WHERE groupid = 73 and name = 'Ullegore';

--
-- Maximilian
--
UPDATE mob_pools SET sJob = "13" WHERE poolid = "5975" AND `name` = 'maximilian';

DELETE FROM mob_skill_lists WHERE skill_list_id = "1090";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,32);  -- Fast Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,40);  -- Vorpal Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Maximilian',1090,41);  -- Swift Blade

DELETE FROM `mob_spell_lists` WHERE spell_list_id = "388";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Maximilian',388,338,12,255);       -- Utsusemi: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Maximilian',388,339,37,255);       -- Utsusemi: Ni

--
--  Mayakov
--
UPDATE mob_pools SET sJob = 1 WHERE poolid = "5966" AND `name` = 'mayakov'; 
DELETE FROM mob_skill_lists WHERE skill_list_id = "1081";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,41); -- Swift Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,40);  -- Vorpal Blade
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mayakov',1081,42);  -- Savage Blade

--
-- Leonoyne
--
UPDATE mob_pools SET mJob = 8, sJob = 4 WHERE poolid = 5974 AND name = 'leonoyne';
DELETE FROM mob_skill_lists WHERE skill_list_id = "1089";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,60); -- Resolution
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,56); -- Ground Strike
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,55); -- Spinning Slash
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Leonoyne',1089,58); -- Herculean Strike

DELETE FROM `mob_spell_lists` WHERE spell_list_id = "387";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,144,9,255);  -- Fire
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,145,34,255); -- Fire II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,146,59,255); -- Fire III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,149,20,255); -- Blizzard
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,150,46,255); -- Blizzard II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,151,66,255); -- Blizzard III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,154,9,255);  -- Aero
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,155,34,255); -- Aero II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,156,59,255); -- Aero III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,159,1,255);  -- Stone 
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,160,26,255); -- Stone II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,161,51,255); -- Stone III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,164,21,255); -- Thunder
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,165,46,255); -- Thunder II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,166,66,255); -- Thunder III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,169,5,255);  -- Water
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,170,30,255); -- Water II
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,171,55,255); -- Water III
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,245,12,255); -- Drain
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,247,25,255); -- Aspir
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,266,43,255); -- Absorb-STR
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Leonoyne',387,242,61,255); -- Absorb-ACC

--
-- Ygnas 
---
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 53, 19, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 54, 28, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 7, 6, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 8, 11, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 9, 21, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 10, 41, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ygnas', 411, 11, 61, 255);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Ygnas', 1113, 2979);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Ygnas', 1113, 2980);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Ygnas', 1113, 2981);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Ygnas', 1113, 2982);

--
--Ferreous Coffin
--
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 125, 7, 255); -- protectra
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 126, 27, 255); -- protectra_ii
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 127, 47, 255); -- protectra_iii
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 128, 63, 255); -- protectra_iv
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 129, 75, 255); -- protectra_v
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 130, 17, 255); -- shellra
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 131, 37, 255); -- shellra_ii
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 132, 57, 255); -- shellra_iii
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 133, 68, 255); -- shellra_iv
INSERT INTO mob_spell_lists VALUES('TRUST_Ferreous_Coffin', 356, 134, 75, 255); -- shellra_v

--
-- Prishe
--
UPDATE mob_pools SET mJob = 20, sJob = 5 WHERE poolid = 5913 AND name = 'prishe';
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,99,41,255);  -- sandstorm (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,113,42,255); -- rainstorm (42~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,114,43,255); -- windstorm (43~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,115,44,255); -- firestorm (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,116,45,255); -- hailstorm (45~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,117,46,255); -- thunderstorm (46~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,118,47,255); -- voidstorm (47~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,119,48,255); -- aurorastorm (48~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,278,18,255); -- geohelix (18~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,279,20,255); -- hydrohelix (20~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,280,22,255); -- anemohelix (22~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,281,24,255); -- pyrohelix (24~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,282,26,255); -- cryohelix (26~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,283,28,255); -- ionohelix (28~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,284,30,255); -- noctohelix (30~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,285,32,255); -- luminohelix (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,53,32,255); -- blink (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,54,32,255); -- stoneskin (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,55,32,255); -- aquaveil (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,106,41,255);-- PHALANX (41~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,287,32,255); -- KLIMAFORM MACC+ (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,495,32,255); -- ADLOQUIUM (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,109,41,255); -- REFRESH (32~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,108,21,255);-- REGEN (21~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,110,44,255);-- REGEN_II (44~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,111,66,255);-- REGEN_III (66~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,477,86,255);-- REGEN_IV (86~255)
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Prishe',325,504,99,255);-- REGEN_V (1~255)

--
-- August
--
UPDATE `mob_skills` SET `mob_anim_id` = 2461 WHERE `mob_skill_id` = 3652; -- (Timer: 3min) daybreak
UPDATE `mob_skills` SET `mob_anim_id` = 2462 WHERE `mob_skill_id` = 3653; -- tartaric_sigil
UPDATE `mob_skills` SET `mob_skill_name` = "null_field", `mob_anim_id` = 2463 WHERE `mob_skill_id` = 3654; -- null_field
UPDATE `mob_skills` SET `mob_anim_id` = 2464 WHERE `mob_skill_id` = 3655; -- alabaster_burst
UPDATE `mob_skills` SET `mob_anim_id` = 2465 WHERE `mob_skill_id` = 3656; -- (daybreak) noble_frenzy
UPDATE `mob_skills` SET `mob_anim_id` = 2466 WHERE `mob_skill_id` = 3657; -- (daybreak) fulminous_fury
UPDATE `mob_skills` SET `mob_skill_name` = "no_quarter", `mob_anim_id` = 2467 WHERE `mob_skill_id` = 3658; -- (daybreak) no_quarter
DELETE FROM `mob_skill_lists` WHERE skill_list_id = "1099";
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3653);
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3654);
INSERT INTO `mob_skill_lists` VALUES ('August_Skills',1099,3655);

--
-- Mumor_II
--
INSERT INTO `mob_skills` VALUES (3638, 2038, 'lovely_miracle_waltz',  0, 0.0,7.0, 2000, 0, 4, 0, 0, 0,  3, 4, 8);
INSERT INTO `mob_skills` VALUES (3640, 2040, 'super_crusher_jig',     0, 0.0,7.0, 2000, 0, 4, 0, 0, 0,  9, 5, 0);
INSERT INTO `mob_skills` VALUES (3639, 2039, 'neo_crystal_jig',       0, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 11, 1, 0);
INSERT INTO `mob_skills` VALUES (4108, 2042, 'eternal_vana_illusion', 0, 0.0,7.0, 2000, 0, 4, 0, 0, 0, 11, 0, 0);
INSERT INTO `mob_skills` VALUES (4110, 2592, 'shining_summer_samba',  0, 0.0,7.0, 2000, 0, 4, 0, 0, 0,  3, 1, 0);
INSERT INTO `mob_skills` VALUES (4111, 2041, 'final_eternal_heart',   1,10.0,7.0, 2000, 0, 4, 0, 0, 0, 12, 0, 0); 

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,3638); -- Lovely Miracle Waltz 
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,3640); -- Super Crusher Jig 
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,3639); -- Neo Crystal Jig
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,4108); -- Eternal Vana Illusion
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,4110); -- Shining Epilogue 
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Mumor_II',1130,2904); -- Final Eternal Heart
UPDATE mob_pools SET spellList = 424 WHERE poolid = 5946 AND name = 'mumor';

--
-- king_of_hearts
INSERT INTO `mob_skill_lists` VALUES ('TRUST_King_of_Hearts',1104,3250); -- Double Down
INSERT INTO `mob_skill_lists` VALUES ('TRUST_King_of_Hearts',1104,3251); -- Bludgeon
INSERT INTO `mob_skill_lists` VALUES ('TRUST_King_of_Hearts',1104,3252); -- Deal Out

--
-- Ingrid
--
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "333";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 2, 11, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 3, 21, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 4, 41, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 5, 61, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 6, 80, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 7, 16, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 8, 31, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 9, 51, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 10, 71, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 11, 91, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 14, 6, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 15, 9, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 16, 14, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 17, 19, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 18, 39, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 19, 34, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 20, 29, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 43, 7, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 44, 27, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 45, 47, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 46, 63, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 47, 76, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 48, 17, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 49, 37, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 50, 57, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 51, 68, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 52, 76, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 54, 28, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 57, 40, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 125, 7, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 126, 27, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 127, 47, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 128, 63, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 129, 75, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 130, 17, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 131, 37, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 132, 57, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 133, 68, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 134, 75, 255);
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Ingrid', 333, 143, 32, 255);

--
-- Gilgamesh
--
DELETE FROM mob_skill_lists WHERE skill_list_id = "1053";
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3434); -- Tachi Kamai
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3435); -- Iainuki
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3436); -- Tachi Gotem
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Gilgamesh',1053,3437); -- Tachi Kasha

--
-- Lady Lilith
--
DELETE FROM mob_skill_lists WHERE skill_list_id = "5019";
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "422";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4205";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4206";
DELETE FROM `mob_skills` WHERE mob_skill_id = "4207";

--
--Gessho
--
DELETE FROM `mob_spell_lists` WHERE spell_list_id = "330";
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,344,23,255); -- Hojo: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,345,48,255); -- Hojo: NI
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,347,19,255); -- Kurayami: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,348,44,255); -- Kurayami: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,320,15,255); -- Katon: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,321,40,255); -- Katon: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,323,15,255); -- Hyoton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,324,40,255); -- Hyoton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,326,15,255); -- Huton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,327,40,255); -- Huton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,329,15,255); -- Doton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,330,40,255); -- Doton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,332,15,255); -- Raiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,333,40,255); -- Raiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,335,15,255); -- Suiton: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,336,40,255); -- Suiton: Ni
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,338,12,255); -- Utsusemi: Ichi
INSERT INTO `mob_spell_lists` VALUES ('TRUST_Gessho',330,339,37,255); -- Utsusemi: Ni

























