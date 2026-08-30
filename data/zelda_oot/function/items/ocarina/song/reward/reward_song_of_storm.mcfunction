execute if entity @a[advancements={zelda_oot:song/song_of_storm=false}] run return run kill @e[type=armor_stand,tag=inexistant_dummy_tag]

#Link playing music
execute as @a[tag=playing_ocarina] at @s run summon minecraft:block_display ~ ~2 ~ {Tags:["ocarina_display","link_face_display"],transformation:{translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute as @e[tag=link_face_display] at @s run tp @s ~ ~1 ~ facing entity @e[tag=link_display,distance=..6,limit=1,sort=nearest] eyes
gamemode spectator @a[tag=playing_ocarina]
spectate @e[type=block_display,tag=ocarina_display,limit=1,sort=nearest]

#Destroy play button
execute as @a run kill @e[type=item_display,tag=ocarina_display]
execute as @a run kill @e[type=interaction,tag=ocarina_display]

schedule function zelda_oot:items/ocarina/song/reward/quit_ocarina 50t

say Song of Storm Played
