#Double sneak + backward to backflip
execute as @a[tag=backflip_sneak,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backward,predicate=zelda_oot:movement/sneak,tag=!sneak_held_backflip,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_pressed_now_backflip] run tag @s add sneak_pressed_now_backflip
execute as @a[tag=backflip_sneak,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backward,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_held_backflip] run tag @s add sneak_held_backflip
execute as @a[tag=sneak_held_backflip] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held_backflip

#Double backward to backflip
execute as @a[tag=backflip_press,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backward,tag=!backward_held_backflip,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_pressed_now_backflip] run tag @s add sneak_pressed_now_backflip
execute as @a[tag=backflip_press,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backward,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!backward_held_backflip] run tag @s add backward_held_backflip
execute as @a[tag=backward_held_backflip] at @s unless predicate zelda_oot:movement/backward run tag @s remove backward_held_backflip

execute as @a[tag=sneak_pressed_now_backflip,tag=backflip_ready] run tag @s add backflip_double_tap

#Sound Effect
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 0 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 1 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 2 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 3 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 4 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 5 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 6 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 7 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 8 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 9 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 10 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 11 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 12 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 13 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 14 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=backflip_double_tap] at @s if score @s random matches 15 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1

execute as @a[tag=backflip_double_tap] at @s run function player_motion:api/backflip
execute as @a[tag=backflip_double_tap] run tag @s remove backflip_ready
execute as @a[tag=backflip_double_tap] run tag @s add in_backflip

execute as @a[tag=sneak_pressed_now_backflip] run schedule function zelda_oot:motion/backflip/late_backflip 10t

execute as @a[tag=sneak_pressed_now_backflip,tag=!backflip_ready,tag=!backflip_double_tap] run tag @s add backflip_ready
execute as @a[tag=sneak_pressed_now_backflip,tag=!backflip_ready,tag=!backflip_double_tap] run function zelda_oot:motion/backflip/reset_backflip

execute as @a[tag=sneak_pressed_now_backflip] run tag @s remove sneak_pressed_now_backflip
execute as @a[tag=backflip_double_tap] run tag @s remove backflip_double_tap