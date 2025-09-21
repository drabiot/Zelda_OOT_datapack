#Destroy Grass
execute positioned -428 5 -18 run kill @e[type=minecraft:falling_block,distance=..25]

#Kill Hearts
execute positioned -410 13 11 run kill @e[type=armor_stand,name=heart,distance=..10]