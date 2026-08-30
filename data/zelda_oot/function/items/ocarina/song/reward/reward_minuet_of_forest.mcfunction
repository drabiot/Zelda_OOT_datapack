execute if entity @a[advancements={zelda_oot:song/minuet_of_forest=false}] run return run kill @e[type=armor_stand,tag=inexistant_dummy_tag]

tag @a add in_song

#Link playing music
execute as @a[tag=playing_ocarina] at @s run summon minecraft:block_display ~ ~2 ~ {Tags:["ocarina_display","link_face_display"],transformation:{translation:[-0.5f,-0.5f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute as @e[tag=link_face_display] at @s run tp @s ~ ~1 ~ facing entity @e[tag=link_display,distance=..6,limit=1,sort=nearest] eyes
gamemode spectator @a[tag=playing_ocarina]
spectate @e[type=block_display,tag=ocarina_display,limit=1,sort=nearest]

#Destroy play button
execute as @a run kill @e[type=item_display,tag=ocarina_display]
execute as @a run kill @e[type=interaction,tag=ocarina_display]

execute as @a at @s run playsound minecraft:custom.minuet_of_forest master @a ~ ~ ~ 1 1

tag @a add warp_minuet_of_forest
schedule function zelda_oot:items/ocarina/song/reward/warping_init 50t
