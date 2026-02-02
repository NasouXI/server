UPDATE `mob_groups` SET `minLevel` = "82", `maxLevel` = "82" WHERE `name` = "Qnxzomit" AND `zoneid` = "33";
UPDATE `mob_groups` SET `minLevel` = "92", `maxLevel` = "92" WHERE `name` = "Jailer_of_Hope" AND `zoneid` = "33";
UPDATE `mob_groups` SET `minLevel` = "92", `maxLevel` = "92" WHERE `name` = "Jailer_of_Justice" AND `zoneid` = "33";
UPDATE `mob_groups` SET `minLevel` = "92", `maxLevel` = "92" WHERE `name` = "Jailer_of_Prudence" AND `zoneid` = "33";
UPDATE `mob_groups` SET `minLevel` = "95", `maxLevel` = "95" WHERE `name` = "Jailer_of_Love" AND `zoneid` = "33";
UPDATE `mob_groups` SET `minLevel` = "100", `maxLevel` = "100" WHERE `name` = "Absolute_Virtue" AND `zoneid` = "33";

UPDATE mob_groups SET HP=5000 WHERE groupid = 51 AND `name` = 'Qnxzomit';
UPDATE mob_groups SET HP=90000 WHERE groupid = 49 AND `name` = 'Jailer_of_Hope';
UPDATE mob_groups SET HP=90000 WHERE groupid = 50 AND `name` = 'Jailer_of_Justice';
UPDATE mob_groups SET HP=50000 WHERE groupid = 52 AND `name` = 'Jailer_of_Prudence';
UPDATE mob_groups SET HP=125000 WHERE groupid = 53 AND `name` = 'Jailer_of_Love';
UPDATE mob_groups SET HP=150000 WHERE groupid = 56 AND `name` = 'Absolute_Virtue';
-- Renaming the second Jailer of Prudence is required for module functionality
UPDATE mob_spawn_points SET mobname = 'Jailer_of_Prudence_2' WHERE `mobid` =16912847;