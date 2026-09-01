execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backflip,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!is_sneak] at @s run function player_motion:api/backflip

execute as @a[predicate=!zelda_oot:movement/tight,predicate=zelda_oot:movement/backflip,tag=!in_roll,tag=!in_backflip,tag=!dev,tag=!is_swimming,tag=!dialogue,tag=!playing_ocarina,tag=!is_sneak] run tag @s add in_backflip
