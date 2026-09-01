execute as @a[predicate=zelda_oot:movement/forward,predicate=zelda_oot:movement/sneak,tag=!sneak_held,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_pressed_now
execute as @a[predicate=zelda_oot:movement/forward,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_held
execute as @a[tag=sneak_held] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held

execute as @a[tag=sneak_pressed_now,tag=roll_ready] run tag @s add roll_double_tap
execute as @a[tag=roll_double_tap] at @s run function player_motion:api/roll
execute as @a[tag=roll_double_tap] run tag @s remove roll_ready
execute as @a[tag=roll_double_tap] run tag @s add in_roll
execute as @a[tag=sneak_held] run schedule function zelda_oot:motion/late_roll 10t

execute as @a[tag=sneak_pressed_now,tag=!roll_ready,tag=!roll_double_tap] run tag @s add roll_ready
execute as @a[tag=sneak_pressed_now,tag=!roll_ready,tag=!roll_double_tap] run function zelda_oot:motion/reset_roll

execute as @a[tag=sneak_pressed_now] run tag @s remove sneak_pressed_now
execute as @a[tag=roll_double_tap] run tag @s remove roll_double_tap
