execute as @e[type=arrow,tag=deku_seeds,nbt={inGround:1b}] at @s run particle ash ~ ~ ~ 0.2 0.2 0.2 0.1 100
execute if entity @e[type=arrow,tag=deku_seeds,nbt={inGround:1b}] as @a at @s run playsound minecraft:item.trident.hit master @s ~ ~ ~ 5 2
execute as @e[type=arrow,tag=deku_seeds,nbt={inGround:1b}] run kill @s