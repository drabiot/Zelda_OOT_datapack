execute as @a[scores={player_health=..0,max_health=4..}] run kill @s
execute as @a[scores={player_health=..0}] run scoreboard players operation @s player_health = @s max_health
