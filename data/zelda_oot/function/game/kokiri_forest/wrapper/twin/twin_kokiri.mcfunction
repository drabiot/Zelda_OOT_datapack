execute positioned -385 -7 11 if entity @p[distance=..0.5] run tp @p ~-0.5 ~12 ~-3.5

function zelda_oot:game/kokiri_forest/loader/load_houses
function zelda_oot:game/kokiri_forest/loader/load_kokiri_forest

#Remove NPC
#Twin Inside House
execute as @e[type=item_display,tag=twin_inside_house_display] run function zelda_oot_mob:twins/remove/this
execute positioned -388.19 -6.50 18.21 run kill @e[type=interaction,tag=twin_inside_house_click]