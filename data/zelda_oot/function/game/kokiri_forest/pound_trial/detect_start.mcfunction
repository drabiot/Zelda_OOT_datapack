execute positioned -402 5 -21 if entity @p[distance=..2, tag=!trial_pound_finished] run tag @a add trial_pound_1
execute positioned -408 5 -21 if entity @p[distance=..2, tag=trial_pound_1, tag=!trial_pound_finished] run tag @a add trial_pound_2
execute positioned -408 5 -21 if entity @p[distance=..2, tag=trial_pound_3, tag=!trial_pound_finished] run tag @a add trial_pound_2
execute positioned -414 5 -21 if entity @p[distance=..2, tag=!trial_pound_finished] run tag @a add trial_pound_3

execute as @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3,tag=!trial_pound_finished] at @s run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["blue", "decay"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
execute as @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3] run tag @a add trial_pound_finished
execute if entity @a[tag=trial_pound_1,tag=trial_pound_2,tag=trial_pound_3] run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag

execute if score @a[limit=1] is_swimming matches 1 run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag

execute positioned -408 5 -21 if entity @p[distance=8..] run function zelda_oot:game/kokiri_forest/pound_trial/remove_tag