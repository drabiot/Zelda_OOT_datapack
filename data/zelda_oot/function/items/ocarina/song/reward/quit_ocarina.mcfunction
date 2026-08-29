execute as @a run kill @e[type=item_display,tag=ocarina_display]
execute as @a run kill @e[type=interaction,tag=ocarina_display]
execute as @a at @s run tp ~ ~-0.6 ~
execute as @a run tag @s remove already_playing
execute as @a run tag @s remove playing_ocarina