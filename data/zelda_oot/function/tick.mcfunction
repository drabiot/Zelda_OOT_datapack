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