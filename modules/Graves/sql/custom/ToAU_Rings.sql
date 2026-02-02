DELETE FROM item_latents WHERE itemId = 15807; -- delete latents from Balrahns ring
DELETE FROM item_latents WHERE itemId = 15808; -- delete latents from Ulthalams ring
DELETE FROM item_latents WHERE itemId = 15809; -- delete latents from Jalzahns ring

INSERT INTO item_mods VALUES (15807, 12,  4); -- Balrahns ring
INSERT INTO item_mods VALUES (15807, 13,  4); -- Balrahns ring
INSERT INTO item_mods VALUES (15807, 14,  4); -- Balrahns ring
INSERT INTO item_mods VALUES (15807, 369, 1); -- Balrahns ring
INSERT INTO item_mods VALUES (15808, 8,   4); -- Ulthalams ring
INSERT INTO item_mods VALUES (15808, 9,   4); -- Ulthalams ring
INSERT INTO item_mods VALUES (15808, 370, 1); -- Ulthalams ring
INSERT INTO item_mods VALUES (15809, 11,  6); -- Jalzahns ring
INSERT INTO item_mods VALUES (15809, 365, 1); -- Jalzahns ring