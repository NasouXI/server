
UPDATE mob_spawn_points SET pos_X = -478.338, pos_y = -0.152,  pos_z = 764.157,  pos_rot = 85  WHERE mobid = 17572221; -- Voidwrought
UPDATE mob_spawn_points SET pos_X = -273.751, pos_y = -40.202, pos_z = -725.477, pos_rot = 136 WHERE mobid = 17117891; -- Gaunab
UPDATE mob_spawn_points SET pos_X = -273.087, pos_y = 0.3,     pos_z = -914.407, pos_rot = 103 WHERE mobid = 16793943; -- Bismarck
UPDATE mob_spawn_points SET pos_X = -223.851, pos_y = -1.589,  pos_z = -495.487, pos_rot = 109 WHERE mobid = 17289664; -- Sabotender_Campeador
UPDATE mob_spawn_points SET pos_X = -193.038, pos_y = -0.657,  pos_z = 191.900,  pos_rot = 193 WHERE mobid = 17584429; -- Mellonia
UPDATE mob_spawn_points SET pos_X = -169.770, pos_y = -2.170,  pos_z = 331.823,  pos_rot = 73  WHERE mobid = 17289670; -- Sabotender_Campeador
UPDATE mob_spawn_points SET pos_X = -133.110, pos_y = -0.428,  pos_z = 377.231,  pos_rot = 96  WHERE mobid = 17584430; -- Mellonia
UPDATE mob_spawn_points SET pos_X = -124.764, pos_y = 7.634,   pos_z = -365.576, pos_rot = 217 WHERE mobid = 17555774; -- Hahava
UPDATE mob_spawn_points SET pos_X = -118.258, pos_y = 0.3,     pos_z = -624.814, pos_rot = 93  WHERE mobid = 16793954; -- Bismarck
UPDATE mob_spawn_points SET pos_X = -6.279,   pos_y = 20.00,   pos_z = 159.098,  pos_rot = 233 WHERE mobid = 17588708; -- Ogbunabali
UPDATE mob_spawn_points SET pos_X = 36.197,   pos_y = -10.904, pos_z = 436.593,  pos_rot = 2   WHERE mobid = 17580342; -- Lorbulcrud
UPDATE mob_spawn_points SET pos_X = 43.825,   pos_y = -12.00,  pos_z = 281.384,  pos_rot = 114 WHERE mobid = 17252817; -- Rw_Nw_Prt_M_Hrw
UPDATE mob_spawn_points SET pos_X = 73.656,   pos_y = -0.000,  pos_z = -205.806, pos_rot = 192 WHERE mobid = 17629649; -- Malleator_Maurok
UPDATE mob_spawn_points SET pos_X = 75.799,   pos_y = -20.168, pos_z = 247.353,  pos_rot = 89  WHERE mobid = 17293650; -- Kaggen
UPDATE mob_spawn_points SET pos_X = 80.351,   pos_y = 31.494,  pos_z = 326.033,  pos_rot = 83  WHERE mobid = 17269128; -- Goji
UPDATE mob_spawn_points SET pos_X = 178.939,  pos_y = -20.521, pos_z = -312.068, pos_rot = 30  WHERE mobid = 17109720; -- Cottus
UPDATE mob_spawn_points SET pos_X = 208.212,  pos_y = 14.9838, pos_z = -680.000, pos_rot = 124 WHERE mobid = 17256919; -- Smierc
UPDATE mob_spawn_points SET pos_X = 240.951,  pos_y = -24.265, pos_z = 565.048,  pos_rot = 72  WHERE mobid = 17252818; -- Rw_Nw_Prt_M_Hrw
UPDATE mob_spawn_points SET pos_X = 245.318,  pos_y = -0.294,  pos_z = -641.355, pos_rot = 247 WHERE mobid = 17215957; -- Bhishani
UPDATE mob_spawn_points SET pos_X = 279.958,  pos_y = -0.040,  pos_z = 563.950,  pos_rot = 130 WHERE mobid = 17113827; -- Kholomodumo
UPDATE mob_spawn_points SET pos_X = 281.265,  pos_y = -60.000, pos_z = 364.232,  pos_rot = 192 WHERE mobid = 17109718; -- Cottus
UPDATE mob_spawn_points SET pos_X = 281.302,  pos_y = 4.6,     pos_z = 219.454,  pos_rot = 71  WHERE mobid = 17281500; -- Holy_Moly
UPDATE mob_spawn_points SET pos_X = 365.333,  pos_y = 20.686,  pos_z = 224.015,  pos_rot = 110 WHERE mobid = 16806258; -- Fjalar
UPDATE mob_spawn_points SET pos_X = 403.066,  pos_y = -1.251,  pos_z = -236.960, pos_rot = 104 WHERE mobid = 17215956; -- Bhishani
UPDATE mob_spawn_points SET pos_X = 439.332,  pos_y = -50.110, pos_z = 325.739,  pos_rot = 58  WHERE mobid = 17109719; -- Cottus
UPDATE mob_spawn_points SET pos_X = 446.041,  pos_y = 19.737,  pos_z = -199.369, pos_rot = 125 WHERE mobid = 16806254; -- Fjalar
UPDATE mob_spawn_points SET pos_X = 562.442,  pos_y = -10.519, pos_z = 606.098,  pos_rot = 116 WHERE mobid = 17138409; -- Ushumgal
UPDATE mob_spawn_points SET pos_X = 200.167,  pos_y = -24.028, pos_z = -164.006, pos_rot = 198 WHERE mobid = 17256920; -- Smierc



                           


UPDATE mob_pools SET roamflag = 0 WHERE name =  'Agathos'AND poolid =  4701;

INSERT INTO `mob_skills` VALUES (2511,1775,'corpse_breath',4,20.0,7.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (2825,1985,'louring_skies',1,20.0,7.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO mob_skill_lists VALUES ('Gwynn_ap_Nudd', 40000, 2511);
INSERT INTO mob_skill_lists VALUES ('Gwynn_ap_Nudd', 40000, 2825);
UPDATE mob_pools SET skill_list_id = 30000 WHERE name = 'Gwynn_ap_Nudd';
UPDATE mob_pools SET skill_list_id = 30000 WHERE name = 'Gwynn_Ap_Nudd';


