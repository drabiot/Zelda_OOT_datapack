execute as @e[type=block_display,tag=ocarina_display,tag=link_face_display] at @s run tp @e[type=block_display,tag=ocarina_display,tag=link_face_display] ~ ~-1 ~

gamemode adventure @a[gamemode=spectator]
gamemode creative @a[tag=dev]
tag @a remove in_song
tag @a add in_warp

#Add warping question
execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ^-1.3 ^-1.8 ^0 \
	{CustomName:{"text":"warping_no"},Tags:["warping_no","warping_text"],text:{text:"No",color:"green",bold:true},billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}

execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ^1.3 ^-1.8 ^0 \
	{CustomName:{"text":"warping_yes"},Tags:["warping_yes","warping_text"],text:{text:"OK",color:"green",bold:true},billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}

#Minuet of Forest
execute as @a[tag=playing_ocarina,tag=warp_minuet_of_forest] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_minuet_of_forest","warping_text"],text:{text:"Warp to the Sacred Forest Meadow?",color:"green",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}
#Bolero of Fire
execute as @a[tag=playing_ocarina,tag=warp_bolero_of_fire] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_bolero_of_fire","warping_text"],text:{text:"Warp to the Death Mountain Crater?",color:"red",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}
#Serenade of Water
execute as @a[tag=playing_ocarina,tag=warp_serenade_of_water] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_serenade_of_water","warping_text"],text:{text:"Warp to Lake Hylia?",color:"blue",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}
#Requiem of Spirit
execute as @a[tag=playing_ocarina,tag=warp_requiem_of_spirit] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_requiem_of_spirit","warping_text"],text:{text:"Warp to the Desert Colossus?",color:"yellow",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}
#Nocturne of Shadow
execute as @a[tag=playing_ocarina,tag=warp_nocturne_of_shadow] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_nocturne_of_shadow","warping_text"],text:{text:"Warp to the graveyard?",color:"#FF55FF",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}
#Prelude of Light
execute as @a[tag=playing_ocarina,tag=warp_prelude_of_light] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 \
	run summon text_display ~ ~-1 ~ \
	{Tags:["question_prelude_of_light","warping_text"],text:{text:"Warp to the graveyard?",color:"#44a5e1",bold:true},\
	billboard:"center",alignment:"center",see_through:0b,shadow:1b,default_background:0b}

#Interactions
execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 rotated ~180 0 \
	run summon interaction ^1.3 ^-1.8 ^0 \
	{width:2.5f,height:1.0f,response:true,Tags:["warping_no_click","warping_click"]}
execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 rotated ~180 0 \
	run summon interaction ^-1.3 ^-1.8 ^0 \
	{width:2.5f,height:1.0f,response:true,Tags:["warping_yes_click","warping_click"]}
