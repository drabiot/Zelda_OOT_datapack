execute as @a run kill @e[type=block_display,tag=link_face_display]

execute as @a[tag=playing_ocarina] run execute as @e[type=item_display,tag=link_display] run function zelda_oot:link/remove/this
execute as @a at @s run tp ~ ~-2.7 ~
execute as @a run tag @s remove already_playing
execute as @a run tag @s remove playing_ocarina

gamemode adventure @a[gamemode=spectator]
gamemode creative @a[tag=dev]
tag @a remove in_song