effect give @a blindness 2 1 true

#Entrance
execute positioned -529 16 -57 if entity @p[distance=..2.5] run tp @p -432.0 17 -63
execute positioned -530 16 -57 if entity @p[distance=..2.5] run tp @p -432.0 17 -63

#Door Room 1 North
execute positioned -529 16 -82 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -530 16 -82 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 2 South
execute positioned -506 16 -57 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -507 16 -57 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 3 West
execute positioned -519 16 -92 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -519 16 -93 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 4 South
execute positioned -483 16 -80 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -484 16 -80 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 5 East
execute positioned -471 16 -115 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -471 16 -116 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 6 East
execute positioned -471 16 -138 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -471 16 -139 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 6 North
execute positioned -484 16 -151 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -483 16 -151 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 6 West
execute positioned -519 16 -138 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -519 16 -139 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Door Room 6 South
execute positioned -506 16 -126 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0
execute positioned -507 16 -126 if entity @p[distance=..2.5] run tp @p -432.0 17 -63 0 0

#Bridge
execute positioned -556 9 -24 if entity @p[distance=..2.5] run tp @p -471 3 -25.0
execute positioned -556 9 -25 if entity @p[distance=..2.5] run tp @p -471 3 -25.0

function zelda_oot:game/kokiri_forest/unloader/unload_maze
function zelda_oot:game/kokiri_forest/loader/load_kokiri_forest
function zelda_oot:game/kokiri_forest/loader/kokiri_forest_tag