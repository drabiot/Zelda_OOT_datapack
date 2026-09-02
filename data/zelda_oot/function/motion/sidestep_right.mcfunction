execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/right,predicate=zelda_oot:movement/sneak,tag=!sneak_held_right,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_pressed_now_right
execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/right,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_held_right
execute as @a[tag=sneak_held_right] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held_right

execute as @a[tag=sneak_pressed_now_right,tag=sidestep_right_ready] run tag @s add sidestep_right_double_tap

#Sound Effect
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 0 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 1 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 2 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 3 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 4 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 5 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 6 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 7 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 8 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 9 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 10 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 11 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 12 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 13 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 14 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=sidestep_right_double_tap] at @s if score @s random matches 15 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1

execute as @a[tag=sidestep_right_double_tap] at @s run function player_motion:api/sidestep_right
execute as @a[tag=sidestep_right_double_tap] run tag @s remove sidestep_right_ready
execute as @a[tag=sidestep_right_double_tap] run tag @s add in_sidestep_right
execute as @a[tag=sneak_held_right] run schedule function zelda_oot:motion/late_sidestep_right 10t

execute as @a[tag=sneak_pressed_now_right,tag=!sidestep_right_ready,tag=!sidestep_right_double_tap] run tag @s add sidestep_right_ready
execute as @a[tag=sneak_pressed_now_right,tag=!sidestep_right_ready,tag=!sidestep_right_double_tap] run function zelda_oot:motion/reset_sidestep_right

execute as @a[tag=sneak_pressed_now_right] run tag @s remove sneak_pressed_now_right
execute as @a[tag=sidestep_right_double_tap] run tag @s remove sidestep_right_double_tap
