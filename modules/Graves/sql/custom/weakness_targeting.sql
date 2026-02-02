-- Modify and add mods to these items to trigger mobster weakness listeners
# Seiryu in sky 2.0
UPDATE item_equipment SET `MId` = "23" WHERE `itemId` = "18163" and `name` = "zephyr"; -- Correct this MId
UPDATE item_mods SET `value`= "2" WHERE `itemId` = "18163" and `modId` = "431"; -- Change from add. dmg to debuff
INSERT into item_mods VALUES (18163,26,100); -- RACC: 100
INSERT into item_mods VALUES (18163,499,11); -- ITEM_SUBEFFECT: 11
INSERT into item_mods VALUES (18163,501,100); -- ITEM_ADDEFFECT_CHANCE: 100
INSERT into item_mods VALUES (18163,951,16); -- ITEM_ADDEFFECT_STATUS: 16 Amnesia
INSERT into item_mods VALUES (18163,952,100); -- ITEM_ADDEFFECT_POWER: 100
INSERT into item_mods VALUES (18163,953,5); -- ITEM_ADDEFFECT_DURATION: 5
