execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/left,predicate=zelda_oot:movement/sneak,tag=!sneak_held_left,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_pressed_now_left
execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/left,predicate=zelda_oot:movement/sneak,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add sneak_held_left
execute as @a[tag=sneak_held_left] at @s unless predicate zelda_oot:movement/sneak run tag @s remove sneak_held_left

execute as @a[tag=sneak_pressed_now_left,tag=sidestep_left_ready] run tag @s add sidestep_left_double_tap
execute as @a[tag=sidestep_left_double_tap] at @s run function player_motion:api/sidestep_left
execute as @a[tag=sidestep_left_double_tap] run tag @s remove sidestep_left_ready
execute as @a[tag=sidestep_left_double_tap] run tag @s add in_sidestep_left
execute as @a[tag=sneak_held_left] run schedule function zelda_oot:motion/late_sidestep_left 10t

execute as @a[tag=sneak_pressed_now_left,tag=!sidestep_left_ready,tag=!sidestep_left_double_tap] run tag @s add sidestep_left_ready
execute as @a[tag=sneak_pressed_now_left,tag=!sidestep_left_ready,tag=!sidestep_left_double_tap] run function zelda_oot:motion/reset_sidestep_left

execute as @a[tag=sneak_pressed_now_left] run tag @s remove sneak_pressed_now_left
execute as @a[tag=sidestep_left_double_tap] run tag @s remove sidestep_left_double_tap
