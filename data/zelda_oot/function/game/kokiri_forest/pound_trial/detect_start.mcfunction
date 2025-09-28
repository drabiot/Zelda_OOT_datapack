execute positioned -402 5 -21 if entity @p[distance=..2, tag=!trial_pound_finished] run tag @a add trial_pound_1
execute positioned -408 5 -21 if entity @p[distance=..2, tag=trial_pound_1, tag=!trial_pound_finished] run tag @a add trial_pound_2
execute positioned -408 5 -21 if entity @p[distance=..2, tag=trial_pound_3, tag=!trial_pound_finished] run tag @a add trial_pound_2
execute positioned -414 5 -21 if entity @p[distance=..2, tag=!trial_pound_finished] run tag @a add trial_pound_3

execute as @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3,tag=!trial_pound_finished] at @s run summon armor_stand ~ ~ ~ {CustomName:"rupees",Tags:["blue","decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
execute as @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3] run tag @a add trial_pound_finished
execute if entity @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3] run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag

execute if score @a[limit=1] is_swimming matches 1 run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag

execute positioned -408 5 -21 if entity @p[distance=8..] run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag