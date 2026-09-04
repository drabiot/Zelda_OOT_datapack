function zelda_oot:items/ocarina/song/song_of_storm
function zelda_oot:items/ocarina/song/zelda_lullaby
function zelda_oot:items/ocarina/song/saria_song
function zelda_oot:items/ocarina/song/song_of_time
function zelda_oot:items/ocarina/song/sun_song
function zelda_oot:items/ocarina/song/epona_song
function zelda_oot:items/ocarina/song/minuet_of_forest
function zelda_oot:items/ocarina/song/bolero_of_fire
function zelda_oot:items/ocarina/song/serenade_of_water
function zelda_oot:items/ocarina/song/requiem_of_spirit
function zelda_oot:items/ocarina/song/nocturne_of_shadow
function zelda_oot:items/ocarina/song/prelude_of_light

execute positioned -495 11 -60 as @a[tag=phase1_skull_kid,tag=!succeed_skull_kid_duet,distance=..5] at @s run function zelda_oot:items/ocarina/song/skull_kid/phase1_skull_kid with storage zelda_oot:macro input
execute positioned -495 11 -60 as @a[tag=phase2_skull_kid,tag=!succeed_skull_kid_duet,distance=..5] at @s run function zelda_oot:items/ocarina/song/skull_kid/phase2_skull_kid with storage zelda_oot:macro input
execute positioned -495 11 -60 as @a[tag=phase3_skull_kid,tag=!succeed_skull_kid_duet,distance=..5] at @s run function zelda_oot:items/ocarina/song/skull_kid/phase3_skull_kid with storage zelda_oot:macro input
