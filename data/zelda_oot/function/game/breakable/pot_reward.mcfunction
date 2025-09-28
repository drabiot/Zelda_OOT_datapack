execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run kill @s

#Give by the loot table

#0      Nothing
#1-2    Heart
execute at @s if score @p random matches 1..2 run summon armor_stand ~ ~-1 ~ {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
#3-9    Rupee
execute at @s if score @p random matches 3..9 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
