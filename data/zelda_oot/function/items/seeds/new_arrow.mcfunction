tag @s add has_display

summon minecraft:item_display ~ ~ ~ {Tags:["seed_display"],billboard:"fixed",item:{id:"minecraft:bamboo_button",count:1}}
execute as @e[type=item_display,tag=seed_display,tag=!mounted,distance=..0.1,limit=1,sort=nearest] at @s run function zelda_oot:items/seeds/mount_arrow