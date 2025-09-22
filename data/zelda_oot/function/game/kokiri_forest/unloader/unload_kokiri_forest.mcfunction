#Destroy Grass
execute positioned -428 5 -18 run kill @e[type=minecraft:falling_block,distance=..25]

#Remove Green Rupees
execute positioned -418 4.5 -29 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]
execute positioned -439 4.5 -7 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]
