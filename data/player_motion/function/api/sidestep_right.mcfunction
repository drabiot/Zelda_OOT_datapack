#> player_motion:api/sidestep_right
# Launches the player in the input direction
execute if entity @s[type=!player] run return fail
execute on vehicle run return fail

scoreboard players set $function_called player_motion.internal.dummy 1
tag @s add player_motion.launch

execute store result storage player_motion:math strength double 0.0001 run scoreboard players get $strength player_motion.api.launch
execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/looking_to_vertical_xyz with storage player_motion:math

execute store result score $out player_motion.internal.motion.x run data get storage player_motion:math motion[0] 8000
execute store result score $out player_motion.internal.motion.z run data get storage player_motion:math motion[2] 8000

scoreboard players operation @s player_motion.internal.motion.x += $out player_motion.internal.motion.x
scoreboard players operation @s player_motion.internal.motion.z += $out player_motion.internal.motion.z

# Force a constant vertical launch, ignoring look direction
scoreboard players set @s player_motion.internal.motion.y 2500