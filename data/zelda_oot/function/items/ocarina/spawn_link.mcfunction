#Try Right
execute at @s rotated as @s rotated ~ 0 positioned ^1.8 ^ ^2.5 if block ~ ~ ~ air if block ~ ~1 ~ air rotated ~120 0 run function zelda_oot:link/summon {args: {}}
execute at @s as @e[type=minecraft:item_display,tag=zelda_oot.link.root,tag=!link_display,distance=..3.5,sort=nearest,limit=1] run tag @s add link_display
execute if entity @e[tag=link_display,distance=..3.5] run return 1

#Try Left
execute at @s rotated as @s rotated ~ 0 positioned ^-1.8 ^ ^2.5 if block ~ ~ ~ air if block ~ ~1 ~ air rotated ~240 0 run function zelda_oot:link/summon {args: {}}
execute at @s as @e[type=minecraft:item_display,tag=zelda_oot.link.root,tag=!link_display,distance=..3.5,sort=nearest,limit=1] run tag @s add link_display
execute if entity @e[tag=link_display,distance=..3.5] run return 1

# Both Blocked
execute at @s rotated as @s rotated ~ 0 positioned ^1.8 ^ ^2.5 rotated ~180 0 run function zelda_oot:link/summon {args: {}}
execute at @s as @e[type=minecraft:item_display,tag=zelda_oot.link.root,tag=!link_display,distance=..3.5,sort=nearest,limit=1] run tag @s add link_display