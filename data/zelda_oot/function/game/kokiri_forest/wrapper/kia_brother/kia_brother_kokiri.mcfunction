execute positioned -463 -4 3 if entity @p[distance=..0.5] run tp @p ~3.5 ~14 ~0.5

function zelda_oot:game/kokiri_forest/loader/load_houses
function zelda_oot:game/kokiri_forest/loader/load_kokiri_forest

#Remove NPC
#Know-it-all Brother sitting 1
execute as @e[type=item_display,tag=know_it_all_brother_sitting_1_display] run function zelda_oot:know_it_all_brother/remove/this
execute positioned -471.43 -3.30 3.45 run kill @e[type=interaction,tag=know_it_all_brother_sitting_1_click]

#Know-it-all Brother sitting 2
execute as @e[type=item_display,tag=know_it_all_brother_sitting_2_display] run function zelda_oot:know_it_all_brother/remove/this
execute positioned -468.31 -3.30 6.19 run kill @e[type=interaction,tag=know_it_all_brother_sitting_2_click]

#Know-it-all Brother standing
execute as @e[type=item_display,tag=know_it_all_brother_standing_display] run function zelda_oot:know_it_all_brother/remove/this
execute positioned -464.24 -4.00 5.20 run kill @e[type=interaction,tag=know_it_all_brother_standing_click]
