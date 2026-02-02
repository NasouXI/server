# beitetsu parcel (gives escha beads)
UPDATE item_usable SET animation = "117" WHERE itemId = "6392";
# add escha_pouch to db (gives escha beads)
INSERT INTO item_usable VALUES (6392,'bead_pouch',1,1,117,0,0,0,0,0);
INSERT INTO `item_equipment` VALUES (26490,'ark_shield',1,0,4194303,674,5,0,2,0,0);
INSERT INTO `item_basic` VALUES (26490,0,'ark_shield','ark_shield',1,63552,0,0,0);