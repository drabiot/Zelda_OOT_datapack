#Double sneak + forward to roll
execute as @a[tag=roll_sneak,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/forward,predicate=zelda_oot:movement/sneak,tag=!sneak_held_roll,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_pressed_now_roll] run tag @s add sneak_pressed_now_roll
execute as @a[tag=roll_sneak,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/forward,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_held_roll] run tag @s add sneak_held_roll
execute as @a[tag=sneak_held_roll] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held_roll

#Double forward to roll
execute as @a[tag=roll_press,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/forward,tag=!forward_held_roll,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!sneak_pressed_now_roll] run tag @s add sneak_pressed_now_roll
execute as @a[tag=roll_press,predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/forward,tag=!in_roll,tag=!in_backflip,tag=!in_sidestep_left,tag=!in_sidestep_right,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!forward_held_roll] run tag @s add forward_held_roll
execute as @a[tag=forward_held_roll] at @s unless predicate zelda_oot:movement/forward run tag @s remove forward_held_roll

execute as @a[tag=sneak_pressed_now_roll,tag=roll_ready] run tag @s add roll_double_tap

#Sound Effect
execute as @a[tag=roll_double_tap] at @s run playsound minecraft:custom.link_roll ambient @a ~ ~ ~ 1 1

execute as @a[tag=roll_double_tap] at @s if score @s random matches 0 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 1 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 2 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 3 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 4 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 5 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 6 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 7 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 8 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 9 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 10 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 11 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 12 run playsound minecraft:custom.younglink_attack1 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 13 run playsound minecraft:custom.younglink_attack2 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 14 run playsound minecraft:custom.younglink_attack3 player @a ~ ~ ~ 1 1
execute as @a[tag=roll_double_tap] at @s if score @s random matches 15 run playsound minecraft:custom.younglink_attack4 player @a ~ ~ ~ 1 1

execute as @a[tag=roll_double_tap] at @s run function player_motion:api/roll
execute as @a[tag=roll_double_tap] run tag @s remove roll_ready
execute as @a[tag=roll_double_tap] run tag @s add in_roll

execute as @a[tag=sneak_pressed_now_roll] run schedule function zelda_oot:motion/roll/late_roll 10t

execute as @a[tag=sneak_pressed_now_roll,tag=!roll_ready,tag=!roll_double_tap] run tag @s add roll_ready
execute as @a[tag=sneak_pressed_now_roll,tag=!roll_ready,tag=!roll_double_tap] run function zelda_oot:motion/roll/reset_roll

execute as @a[tag=sneak_pressed_now_roll] run tag @s remove sneak_pressed_now_roll
execute as @a[tag=roll_double_tap] run tag @s remove roll_double_tap