execute as @e[type=spectral_arrow,tag=deku_seeds,nbt={inGround:1b}] at @s run particle ash ~ ~ ~ 0.2 0.2 0.2 0.1 100
execute if entity @e[type=spectral_arrow,tag=deku_seeds,nbt={inGround:1b}] as @a at @s run playsound minecraft:item.trident.hit master @s ~ ~ ~ 5 2
execute as @e[type=spectral_arrow,tag=deku_seeds,nbt={inGround:1b}] run kill @s

execute as @e[type=spectral_arrow,tag=deku_seeds,tag=!has_display] at @s run function zelda_oot:items/seeds/new_arrow
execute as @e[type=item_display,tag=seed_display] at @s unless entity @e[type=spectral_arrow,tag=has_display,distance=..1] run kill @s