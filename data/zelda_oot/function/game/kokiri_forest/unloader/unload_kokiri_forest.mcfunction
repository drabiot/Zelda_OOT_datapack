#Destroy Grass
execute positioned -428 5 -18 run kill @e[type=minecraft:falling_block,distance=..25]

#Remove Green Rupees
execute positioned -418 4.5 -29 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]
execute positioned -439 4.5 -7 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]

#Remove NPC
#Fado
execute as @e[type=item_display,tag=fado_display] run function zelda_oot:fado/remove/this
execute positioned -420 10 -13 run kill @e[type=interaction,tag=fado_click]

#Twin Shop
execute as @e[type=item_display,tag=twin_shop_display] run function zelda_oot:twins/remove/this
execute positioned -393 8 -26.0 run kill @e[type=interaction,tag=twin_shop_click]

#Twin Door
execute as @e[type=item_display,tag=twin_door_display] run function zelda_oot:twins/remove/this
execute positioned -448.36 6.00 -16.41 run kill @e[type=interaction,tag=twin_door_click]

#Twin Pound
execute as @e[type=item_display,tag=twin_pound_display] run function zelda_oot:twins/remove/this
execute positioned -419.64 5.00 -22.27 run kill @e[type=interaction,tag=twin_pound_click]


kill @e[type=interaction,tag=blocked]
