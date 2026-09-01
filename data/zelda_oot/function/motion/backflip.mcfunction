execute as @a[predicate=zelda_oot:movement/backflip,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] at @s run function player_motion:api/backflip

execute as @a[predicate=zelda_oot:movement/backflip,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina] run tag @s add in_backflip
