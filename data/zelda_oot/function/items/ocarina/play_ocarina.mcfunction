advancement revoke @s only zelda_oot:admin/ocarina

execute if entity @a[tag=dialogue] run return run kill @e[type=armor_stand,tag=inexistant_dummy_tag]
execute if entity @a[tag=kokiri_shop] run return run kill @e[type=armor_stand,tag=inexistant_dummy_tag]

#Quit if the player is already playing the ocarina
execute as @a[tag=playing_ocarina] run return run kill @e[tag=inexistant_dummy_tag]


#Sit down the player
execute as @a[tag=!busy,nbt={OnGround:true}] run tag @a add playing_ocarina
execute as @a[tag=playing_ocarina] at @s run summon item_display ~ ~0.6 ~ {view_range:0f,NoGravity:1b,Tags:["ocarina_display"]}
ride @p[tag=playing_ocarina] mount @e[tag=ocarina_display,limit=1]

#Reset the song progress
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s song_storm 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s zelda_lullaby 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s saria_song 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s song_of_time 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s sun_song 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s epona_song 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s minuet_of_forest 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s bolero_of_fire 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s serenade_of_water 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s requiem_of_spirit 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s nocturne_of_shadow 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s prelude_of_light 0
execute as @a[tag=playing_ocarina,tag=!already_playing] run scoreboard players set @s ocarina_note -1

#Add the Key in front of the player
#Center
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon item_display ~ ~1.5 ~ \
	{CustomName:{"text":"middle"},billboard:"center", \
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
	NoGravity:1b,Tags:["ocarina_display","ocarina_note_middle"], \
	item:{id:"minecraft:pointed_dripstone",count:1,components:{"minecraft:custom_data":{middle:1b}, \
	"minecraft:custom_model_data":{strings:["middle"]}}}}

execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon interaction ~ ~1.4 ~ \
	{width:0.3f,height:0.3f,response:true,Tags:["ocarina_center_click","ocarina_display"]}

#Up
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon item_display ~ ~2 ~ \
	{CustomName:{"text":"up"},billboard:"center", \
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
	NoGravity:1b,Tags:["ocarina_display","ocarina_note_up"], \
	item:{id:"minecraft:pointed_dripstone",count:1,components:{"minecraft:custom_data":{up:1b}, \
	"minecraft:custom_model_data":{strings:["up"]}}}}

execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon interaction ~ ~1.9 ~ \
	{width:0.3f,height:0.3f,response:true,Tags:["ocarina_up_click","ocarina_display"]}

#Down
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon item_display ~ ~1 ~ \
	{CustomName:{"text":"down"},billboard:"center", \
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
	NoGravity:1b,Tags:["ocarina_display","ocarina_note_down"], \
	item:{id:"minecraft:pointed_dripstone",count:1,components:{"minecraft:custom_data":{down:1b}, \
	"minecraft:custom_model_data":{strings:["down"]}}}}

execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon interaction ~ ~0.9 ~ \
	{width:0.3f,height:0.3f,response:true,Tags:["ocarina_down_click","ocarina_display"]}

#Left
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
    run summon item_display ^0.5 ^1.5 ^0 \
    {CustomName:{"text":"left"},billboard:"center", \
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
    NoGravity:1b,Tags:["ocarina_display","ocarina_note_left"], \
    item:{id:"minecraft:pointed_dripstone",count:1,components:{"minecraft:custom_data":{left:1b}, \
    "minecraft:custom_model_data":{strings:["left"]}}}}

execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon interaction ^0.5 ^1.4 ^0 \
	{width:0.3f,height:0.3f,response:true,Tags:["ocarina_left_click","ocarina_display"]}

#Right
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
    run summon item_display ^-0.5 ^1.5 ^0 \
    {CustomName:{"text":"right"},billboard:"center", \
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
    NoGravity:1b,Tags:["ocarina_display","ocarina_note_right"], \
    item:{id:"minecraft:pointed_dripstone",count:1,components:{"minecraft:custom_data":{right:1b}, \
    "minecraft:custom_model_data":{strings:["right"]}}}}

execute as @a[tag=playing_ocarina,tag=!already_playing] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1.5 \
	run summon interaction ^-0.5 ^1.4 ^0 \
	{width:0.3f,height:0.3f,response:true,Tags:["ocarina_right_click","ocarina_display"]}

#Summon Link next to the player and start his ocarina animation
execute as @a[tag=playing_ocarina,tag=!already_playing] run function zelda_oot:items/ocarina/spawn_link
execute as @a[tag=playing_ocarina,tag=!already_playing] at @s run execute as @e[tag=link_display,distance=..4,limit=1,sort=nearest] run function zelda_oot:link/animations/ocarina_idle/play

#Add tag to ensure that we are not creating the ocarina display again and again
execute as @a[tag=playing_ocarina] run tag @a add already_playing



tag @s add busy
schedule function zelda_oot:game/busy 3t

