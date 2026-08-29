effect give @a blindness 2 1 true
execute positioned -433 17 -69 if entity @p[distance=..2.5] run tp @p -529.0 16 -65
execute positioned -432 17 -69 if entity @p[distance=..2.5] run tp @p -529.0 16 -65

function zelda_oot:game/kokiri_forest/loader/load_maze
function zelda_oot:game/kokiri_forest/unloader/unload_kokiri_forest
function zelda_oot:game/kokiri_forest/loader/lost_woods_tag