execute as @a run kill @e[type=block_display,tag=link_face_display]
execute as @a run kill @e[type=interaction,tag=warping_click]
execute as @a run kill @e[type=text_display,tag=warping_text]

execute as @a[tag=playing_ocarina] run execute as @e[type=item_display,tag=link_display] run function zelda_oot:link/remove/this
execute as @a[tag=in_song] at @s run tp ~ ~-2.7 ~
execute as @a run tag @s remove already_playing
execute as @a run tag @s remove playing_ocarina

gamemode adventure @a[gamemode=spectator]
gamemode creative @a[tag=dev]
stopsound @a[tag=in_warp]
tag @a remove in_song
tag @a remove in_warp
tag @a remove warp_minuet_of_forest
tag @a remove warp_bolero_of_fire
tag @a remove warp_serenade_of_water
tag @a remove warp_requiem_of_spirit
tag @a remove warp_nocturne_of_shadow
tag @a remove warp_prelude_of_light
