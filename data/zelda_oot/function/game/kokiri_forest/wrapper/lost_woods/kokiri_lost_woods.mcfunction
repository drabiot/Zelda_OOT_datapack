effect give @a blindness 2 1 true

#Lost Woods
execute positioned -433 17 -69 if entity @p[distance=..2.5] run tp @p -529.0 16 -65
execute positioned -432 17 -69 if entity @p[distance=..2.5] run tp @p -529.0 16 -65

#Bridge
execute positioned -477 3 -25 if entity @p[distance=..2.5] run tp @p -560 9 -24.0
execute positioned -477 3 -26 if entity @p[distance=..2.5] run tp @p -560 9 -24.0


function zelda_oot:game/kokiri_forest/loader/load_maze
function zelda_oot:game/kokiri_forest/unloader/unload_kokiri_forest
execute positioned -560 9 -24.0 if entity @p[distance=2.5..] run function zelda_oot:game/kokiri_forest/loader/lost_woods_tag