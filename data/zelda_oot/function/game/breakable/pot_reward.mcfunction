#Pot have predetermines loot
#Know-it-All brother House loot
execute positioned -468 -4 0 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..5] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
#Link's House loot
execute positioned -431 -7 30 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#Twin's House loot
execute positioned -384 -7 14 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
execute positioned -384 -7 18 as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}, distance=0..2] run execute at @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["blue", "decay"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#Kill drop item
execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run kill @s
