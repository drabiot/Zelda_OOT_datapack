#Check for Deku Nut
#/give @p minecraft:pitcher_pod[minecraft:item_name="Deku Nut"] 64
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:pitcher_pod", components:{"minecraft:item_name":"Deku Nut"}}}] at @s run function zelda_oot:items/deku_nut
