scoreboard players set @a is_swimming 0
execute as @a at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s is_swimming 1
