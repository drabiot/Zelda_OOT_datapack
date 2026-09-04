execute positioned -393 -6 -40 run kill @e[type=item_display,distance=..5]

execute positioned -393 -7 -38 run kill @e[type=interaction,distance=..10]

tag @a remove kokiri_shop

#Remove NPC
#Twin Inside Shop
execute as @e[type=item_display,tag=twin_inside_shop_display] run function zelda_oot_mob:twins/remove/this
execute positioned -396.13 -7.00 -35.77 run kill @e[type=interaction,tag=twin_inside_shop_click]

#Kokiri Shopkeeper
execute as @e[type=item_display,tag=kokiri_shopkeeper_display] run function zelda_oot_mob:kokiri_shopkeeper/remove/this
execute positioned -393 -6.5 -39 run kill @e[type=interaction,tag=kokiri_shopkeeper_click]