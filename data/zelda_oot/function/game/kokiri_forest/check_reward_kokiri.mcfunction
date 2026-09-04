execute positioned -447 10 12 as @a[tag=in_backflip] if entity @s[distance=..5,tag=in_backflip] run tp @e[type=item_display,tag=training_area,tag=blue] @s
execute positioned -447 10 12 as @a[tag=in_sidestep_left] if entity @s[distance=..5,tag=in_sidestep_left] run tp @e[type=item_display,tag=training_area,tag=green] @s
execute positioned -447 10 12 as @a[tag=in_sidestep_right] if entity @s[distance=..5,tag=in_sidestep_right] run tp @e[type=item_display,tag=training_area,tag=green] @s

execute positioned -442 10 6 if block ~ ~ ~ air run execute if entity @a[tag=!break_sign_training_area] run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["blue", "decay"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
execute positioned -442 10 6 if block ~ ~ ~ air run execute if entity @a[tag=!break_sign_training_area] run tag @a add break_sign_training_area
execute positioned -442 10 6 if block ~ ~ ~ air run execute if entity @a[tag=!break_sign_training_area] run tag @a add break_sign_training_area