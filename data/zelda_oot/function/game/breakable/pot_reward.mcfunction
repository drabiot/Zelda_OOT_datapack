#Pot have predetermines loot
#Know-it-All brother House loot
execute positioned -468 -4 0 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..5] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

#Link's House loot
execute positioned -431 -7 30 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

#Twin's House loot
execute positioned -384 -7 14 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
execute positioned -384 -7 18 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["blue", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}

#Kill drop item
execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run kill @s
