-- 1 = Transfixion
-- 2 = Compression
-- 3 = Liquefaction
-- 4 = Scission
-- 5 = Reverberation
-- 6 = Detonation
-- 7 = Induration
-- 8 = Impaction
-- 9 = Gravitation
-- 10 = Distortion
-- 11 = Fusion
-- 12 = Fragmentation
-- 13 = Light
-- 14 = Darkness
--              Mob Skill Chain Update
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 6 WHERE mob_skill_name = 'debonair_rush';
UPDATE mob_skills SET primary_sc = 9, secondary_sc = 5 WHERE mob_skill_name = 'lunar_revolution';
UPDATE mob_skills SET primary_sc = 13, secondary_sc = 12 WHERE mob_skill_name = 'iridal_pierce';
UPDATE mob_skills SET primary_sc = 14, secondary_sc = 12 WHERE mob_skill_name = 'amatsu_tsukikage';
UPDATE mob_skills SET primary_sc = 9, secondary_sc = 3 WHERE mob_skill_name = 'darkest_hour';
UPDATE mob_skills SET secondary_sc = 0 WHERE mob_skill_name = 'magic_mortar';
UPDATE mob_skills SET primary_sc = 13, secondary_sc = 10 WHERE mob_skill_name = 'walk_the_plank';
UPDATE mob_skills SET primary_sc = 3 WHERE mob_skill_name = 'amatsu_choun';
UPDATE mob_skills SET primary_sc = 11, secondary_sc = 0 WHERE mob_skill_name = 'amatsu_suien';
UPDATE mob_skills SET primary_sc = 13, secondary_sc = 11, tertiary_sc = 8 WHERE mob_skill_name = 'blade_shun';
UPDATE mob_skills SET primary_sc = 6 WHERE mob_skill_name = 'gust_slash';
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 6, tertiary_sc = 8 WHERE mob_skill_name = 'aeolian_edge';
UPDATE mob_skills SET primary_sc = 12, secondary_sc = 4 WHERE mob_skill_name = 'savage_blade';
UPDATE mob_skills SET primary_sc = 7, secondary_sc = 5 WHERE mob_skill_name = 'raging_rush';
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 6, tertiary_sc = 8 WHERE mob_skill_name = 'fell_cleave';
UPDATE mob_skills SET primary_sc = 7, secondary_sc = 6 WHERE mob_skill_name = 'blade_to';
UPDATE mob_skills SET primary_sc = 8, secondary_sc = 6 WHERE mob_skill_name = 'blade_jin';
UPDATE mob_skills SET secondary_sc = 1 WHERE mob_skill_name = 'blade_ku,';
UPDATE mob_skills SET primary_sc = 11, secondary_sc = 8 WHERE mob_skill_name = 'pirate_pummel';
UPDATE mob_skills SET primary_sc = 12, secondary_sc = 2 WHERE mob_skill_name = 'sight_unseen';
UPDATE mob_skills SET primary_sc = 8, secondary_sc = 7 WHERE mob_skill_name = 'nullifying_dropkick';
UPDATE mob_skills SET secondary_sc = 0 WHERE mob_skill_name = 'judgment';
UPDATE mob_skills SET primary_sc = 10 WHERE mob_skill_name = 'expunge_magic';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'vorpal_blade';
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 5 WHERE mob_skill_name = 'spinning_scythe';
UPDATE mob_skills SET primary_sc = 11, secondary_sc = 2 WHERE mob_skill_name = 'powder_keg';
UPDATE mob_skills SET secondary_sc = 6, tertiary_sc = 1 WHERE mob_skill_name = 'sidewinder';
UPDATE mob_skills SET primary_sc = 5, secondary_sc = 1 WHERE mob_skill_name = 'grapeshot';
UPDATE mob_skills SET primary_sc = 0, secondary_sc = 0 WHERE mob_skill_name = 'bomb_toss';
UPDATE mob_skills SET primary_sc = 8, secondary_sc = 1 WHERE mob_skill_name = 'howling_fist';
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 1 WHERE mob_skill_name = 'vorpal_scythe';
UPDATE mob_skills SET primary_sc = 8, secondary_sc = 1 WHERE mob_skill_name = 'raiden_thrust';
UPDATE mob_skills SET primary_sc = 8, secondary_sc = 1 WHERE mob_skill_name = 'skewer';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'fast_blade';
UPDATE mob_skills SET primary_sc = 10, secondary_sc = 3 WHERE mob_skill_name = 'barbed_crescent';
UPDATE mob_skills SET primary_sc = 2, secondary_sc = 5 WHERE mob_skill_name = 'dimensional_death';
-- bst
UPDATE mob_skills SET primary_sc = 6 WHERE mob_skill_name = 'head_butt';
UPDATE mob_skills SET primary_sc = 1 WHERE mob_skill_name = 'wild_oats';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'leaf_dagger';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'foot_kick';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'whirl_claws';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'big_scissors';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'lamb_chop';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'sheep_charge';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'razor_fang';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'claw_cyclone';
-- UPDATE mob_skills SET primary_sc = 10, secondary_sc = 6 WHERE mob_skill_name = 'crossthrash';
UPDATE mob_skills SET primary_sc = 2 WHERE mob_skill_name = 'somersault';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'tail_blow';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'blockhead';
UPDATE mob_skills SET primary_sc = 12 WHERE mob_skill_name = 'brain_crush';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'nimble_snap';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'cyclotail';
UPDATE mob_skills SET primary_sc = 2 WHERE mob_skill_name = 'frogkick';
UPDATE mob_skills SET primary_sc = 6 WHERE mob_skill_name = 'mandibular_bite';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'power_attack';
UPDATE mob_skills SET primary_sc = 6 WHERE mob_skill_name = 'rhino_attack';
UPDATE mob_skills SET primary_sc = 3 WHERE mob_skill_name = 'double_claw';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'grapple';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'spinning_top';
UPDATE mob_skills SET primary_sc = 1 WHERE mob_skill_name = 'recoil_dive';
UPDATE mob_skills SET primary_sc = 9, secondary_sc = 3 WHERE mob_skill_name = 'wing_slap';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'beak_lunge';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'sudden_lunge';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'spiral_spin';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'back_heel';
UPDATE mob_skills SET primary_sc = 12 WHERE mob_skill_name = 'hoof_volley';
UPDATE mob_skills SET primary_sc = 3 WHERE mob_skill_name = 'scythe_tail';
UPDATE mob_skills SET primary_sc = 7 WHERE mob_skill_name = 'ripper_fang';
UPDATE mob_skills SET primary_sc = 14, secondary_sc = 9 WHERE mob_skill_name = 'chomp_rush';
UPDATE mob_skills SET primary_sc = 5 WHERE mob_skill_name = 'fluid_toss';
UPDATE mob_skills SET primary_sc = 1, secondary_sc = 12 WHERE mob_skill_name = 'fluid_spread';
UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'tickling_tendrils';
UPDATE mob_skills SET primary_sc = 7 WHERE mob_skill_name = 'sweeping_gouge';
-- UPDATE mob_skills SET primary_sc = 8 WHERE mob_skill_name = 'disembowel';
-- UPDATE mob_skills SET primary_sc = 11, secondary_sc = 8 WHERE mob_skill_name = 'extirpating_salvo';
UPDATE mob_skills SET primary_sc = 9, secondary_sc = 4 WHERE mob_skill_name = 'mega_scissors';
UPDATE mob_skills SET primary_sc = 11, secondary_sc = 5 WHERE mob_skill_name = 'swooping_frenzy';
UPDATE mob_skills SET primary_sc = 13, secondary_sc = 10 WHERE mob_skill_name = 'pentapeck';
UPDATE mob_skills SET primary_sc = 4 WHERE mob_skill_name = 'sensilla_blades';
UPDATE mob_skills SET primary_sc = 10, secondary_sc = 6 WHERE mob_skill_name = 'tegmina_buffet';
UPDATE mob_skills SET primary_sc = 1 WHERE mob_skill_name = 'sickle_slash';
UPDATE mob_skills SET primary_sc = 1 WHERE mob_skill_name = 'pecking_flurry';
-- UPDATE mob_skills SET primary_sc = 11, secondary_sc = 4 WHERE mob_skill_name = 'rhinowrecker';
-- aoe
UPDATE mob_skills SET mob_skill_aoe = 1, mob_skill_aoe_radius = 5 WHERE mob_skill_name = 'walk_the_plank';
UPDATE mob_skills SET mob_skill_aoe = 4, mob_skill_aoe_radius = 5 WHERE mob_skill_name = 'grapeshot';
UPDATE mob_skills SET mob_skill_aoe = 4, mob_skill_aoe_radius = 5 WHERE mob_skill_name = 'powder_keg';
UPDATE spell_list SET AOE = 1 WHERE name = 'meteor';
UPDATE spell_list SET AOE = 1 WHERE name = 'meteor_ii';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'meteor_strike';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'geocrush';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'grand_fall';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'wind_blade';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'heavenly_strike';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'thunderstorm';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'holy_mist';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'level_X_holy';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'lunar_bay';
UPDATE pet_skills SET pet_skill_aoe = 1, pet_skill_distance = 10.0 WHERE pet_skill_name = 'night_terror';

