#summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
#summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["blue", "decay"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

execute as @e[type=item_display,name=rupees] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=item_display,tag=!no_gravity,name=rupees] at @s if block ~ ~-0.3 ~ minecraft:air run tp @s ~ ~-0.05 ~
