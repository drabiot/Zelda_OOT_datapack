execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/right,predicate=zelda_oot:movement/sneak,tag=!sneak_held_right,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_pressed_now_right
execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/right,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_held_right
execute as @a[tag=sneak_held_right] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held_right

execute as @a[tag=sneak_pressed_now_right,tag=sidestep_right_ready] run tag @s add sidestep_right_double_tap
execute as @a[tag=sidestep_right_double_tap] at @s run function player_motion:api/sidestep_right
execute as @a[tag=sidestep_right_double_tap] run tag @s remove sidestep_right_ready
execute as @a[tag=sidestep_right_double_tap] run tag @s add in_sidestep_right
execute as @a[tag=sneak_held_right] run schedule function zelda_oot:motion/late_sidestep_right 10t

execute as @a[tag=sneak_pressed_now_right,tag=!sidestep_right_ready,tag=!sidestep_right_double_tap] run tag @s add sidestep_right_ready
execute as @a[tag=sneak_pressed_now_right,tag=!sidestep_right_ready,tag=!sidestep_right_double_tap] run function zelda_oot:motion/reset_sidestep_right

execute as @a[tag=sneak_pressed_now_right] run tag @s remove sneak_pressed_now_right
execute as @a[tag=sidestep_right_double_tap] run tag @s remove sidestep_right_double_tap
