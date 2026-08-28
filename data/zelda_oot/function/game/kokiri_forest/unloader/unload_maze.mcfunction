#Destroy Grass
execute positioned -493 11 -59 run kill @e[type=minecraft:falling_block,distance=..25]
execute positioned -517 15 -116 run kill @e[type=minecraft:falling_block,distance=..25]

#Bullseye Challenge
kill @e[type=silverfish,tag=bullseye]
kill @e[type=ghast,tag=target]


scoreboard players set @a bullseye 0