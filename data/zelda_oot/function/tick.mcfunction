#Sneak
execute as @a if score @s sneak_time > @s sneak_prev run tag @s add is_sneak
execute as @a unless score @s sneak_time > @s sneak_prev run tag @s remove is_sneak

scoreboard players operation @a sneak_prev = @a sneak_time

attribute @a[tag=is_sneak,tag=!dev,tag=!dialogue,tag=!kokiri_shop,limit=1] camera_distance base set 0
attribute @a[tag=is_sneak,tag=!dev,tag=!dialogue,tag=!kokiri_shop,limit=1] scale base set 0.5
attribute @a[tag=is_sneak,tag=!dev,tag=!dialogue,tag=!kokiri_shop,limit=1] jump_strength base set 0

attribute @a[tag=!is_sneak,tag=!dialogue,tag=!kokiri_shop,limit=1] camera_distance base reset
attribute @a[tag=!is_sneak,tag=!dialogue,tag=!kokiri_shop,limit=1] scale base reset
attribute @a[tag=!is_sneak,tag=!dialogue,tag=!kokiri_shop,limit=1] jump_strength base reset

attribute @a[tag=!dev,tag=kokiri_shop,limit=1] jump_strength base set 0

#Randomizer
scoreboard players add @a random 1
execute if score @p random matches 10 run scoreboard players set @a random 0

tag @e[type=armor_stand, tag=decay] add decay_pending
scoreboard players set @e[type=armor_stand, tag=decay] decayTimer 100
tag @e[type=armor_stand, tag=decay] remove decay

scoreboard players remove @e[type=armor_stand,tag=decay_pending] decayTimer 1

execute as @e[type=armor_stand, tag=decay_pending] if score @s decayTimer matches 0 run kill @s

#Kill drop item
execute as @e[type=item,nbt={Item:{id:"minecraft:firefly_bush"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_sign"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run function zelda_oot:game/breakable/pot_reward

scoreboard players enable @a deku_tree_yes
scoreboard players enable @a deku_tree_no
