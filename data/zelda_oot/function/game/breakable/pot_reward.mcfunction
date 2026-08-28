execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run kill @s

#Give by the loot table

#0-15    Rupee
execute at @s if score @p random matches 0..15 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
