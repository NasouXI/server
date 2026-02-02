-- Run this after the new oupire and fomors sql to clean up 
-- where they was all sharing same lists

DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "460";
DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "461";
DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "462";
DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "463";
DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "464";
DELETE FROM `mob_spell_lists` WHERE  `spell_list_id`= "465";

-- Nepionic_Soulflayer (460)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,151,1,60); -- blizzard_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,166,1,60); -- thunder_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,180,1,60); -- blizzaga_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,191,1,60); -- stonega_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,195,1,60); -- thundaga_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,201,1,60); -- waterga_iii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,212,1,60); -- burst (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,214,1,60); -- flood (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,231,1,60); -- bio_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,238,1,60); -- rasp (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,250,1,60); -- ice_spikes (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,252,1,60); -- stun (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,253,1,60); -- sleep (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,259,1,60); -- sleep_ii (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,273,1,60); -- sleepga (1~60)
INSERT INTO `mob_spell_lists` VALUES ('Nepionic_Soulflayer',460,274,1,60); -- sleepga_ii (1~60)

-- Bombast (461)
INSERT INTO `mob_spell_lists` VALUES ('Bombast',461,235,1,255); -- burn (1~255)

-- Goblin_Wolfman (462)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,245,10,255); -- drain (10~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,247,20,255); -- aspir (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,252,20,255); -- stun (20~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,266,43,255); -- absorb-str (43~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,267,41,255); -- absorb-dex (41~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,268,35,255); -- absorb-vit (35~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,269,37,255); -- absorb-agi (37~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,270,39,255); -- absorb-int (39~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,271,31,255); -- absorb-mnd (31~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,272,33,255); -- absorb-chr (33~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Wolfman',462,275,45,255); -- absorb-tp (45~255)

-- Goblin_Collector (463)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,21,45,255); -- holy (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,35,45,255); -- diaga_iii (45~255)
INSERT INTO `mob_spell_lists` VALUES ('Goblin_Collector',463,40,45,255); -- banishga_iii (45~255)

-- Shikaree_X (464)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,320,1,255); -- katon_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,323,1,255); -- hyoton_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,326,1,255); -- huton_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,329,1,255); -- doton_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,332,1,255); -- raiton_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,335,1,255); -- suiton_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,338,1,255); -- utsusemi_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,344,1,255); -- hojo_ichi (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_X',464,347,1,255); -- kurayami_ichi (1~255)

-- Shikaree_Y (465)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,144,1,255); -- fire (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,149,1,255); -- blizzard (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,154,1,255); -- aero (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,159,1,255); -- stone (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,164,1,255); -- thunder (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,169,1,255); -- water (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,220,1,255); -- poison (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,225,1,255); -- poisonga (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,245,1,255); -- drain (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,247,1,255); -- aspir (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,266,1,255); -- absorb-str (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,267,1,255); -- absorb-dex (1~255)
INSERT INTO `mob_spell_lists` VALUES ('Shikaree_Y',465,275,1,255); -- absorb-tp (1~255)