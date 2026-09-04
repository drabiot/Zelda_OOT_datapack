#Destroy Grass
execute positioned -428 5 -18 run kill @e[type=minecraft:falling_block,distance=..25]

#Remove Green Rupees
execute positioned -418 4.5 -29 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]
execute positioned -439 4.5 -7 run kill @e[type=armor_stand,name=rupees,tag=green,distance=..5]

#Remove NPC
#Fado
execute as @e[type=item_display,tag=fado_display] run function zelda_oot_mob:fado/remove/this
execute positioned -420 10 -13 run kill @e[type=interaction,tag=fado_click]

#Twin Shop
execute as @e[type=item_display,tag=twin_shop_display] run function zelda_oot_mob:twins/remove/this
execute positioned -393 8 -26.0 run kill @e[type=interaction,tag=twin_shop_click]

#Twin Door
execute as @e[type=item_display,tag=twin_door_display] run function zelda_oot_mob:twins/remove/this
execute positioned -448.36 6.00 -16.41 run kill @e[type=interaction,tag=twin_door_click]

#Twin Pound
execute as @e[type=item_display,tag=twin_pound_display] run function zelda_oot_mob:twins/remove/this
execute positioned -419.64 5.00 -22.27 run kill @e[type=interaction,tag=twin_pound_click]

#Know-it-all Brother Attack
execute as @e[type=item_display,tag=know_it_all_brother_attack_display] run function zelda_oot_mob:know_it_all_brother/remove/this
execute positioned -443.73 10.00 20.07 run kill @e[type=interaction,tag=know_it_all_brother_attack_click]

#Know-it-all Brother Rock
execute as @e[type=item_display,tag=know_it_all_brother_rock_display] run function zelda_oot_mob:know_it_all_brother/remove/this
execute positioned -431 5 -30 run kill @e[type=interaction,tag=know_it_all_brother_rock_click]

#Know-it-all Brother Grass
execute as @e[type=item_display,tag=know_it_all_brother_grass_display] run function zelda_oot_mob:know_it_all_brother/remove/this
execute positioned -404 5 3.8 run kill @e[type=interaction,tag=know_it_all_brother_grass_click]

kill @e[type=interaction,tag=blocked]
