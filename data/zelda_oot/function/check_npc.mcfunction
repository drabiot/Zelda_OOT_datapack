#Fado
execute as @e[type=interaction,tag=fado_click,nbt={interaction:{}}] run tag @a add fado_click
execute as @a[tag=fado_click] run kill @e[type=minecraft:interaction,tag=fado_click]
execute as @a[tag=fado_click] run tag @a add confirm_fado_click
execute as @a[tag=confirm_fado_click] at @e[tag=fado_click,limit=1] \
    run summon minecraft:interaction -420.45 10.06 -14 {width:1f,height:2f,response:true,Tags:["fado_click"]}

execute as @a[tag=confirm_fado_click] positioned -419.73 10.32 -16.01 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -419.73 10.32 -16.01 \
	run summon text_display ^ ^ ^ \
	{CustomName:{"text":"npc_display"},Tags:["fado_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0.3826834f,0f,1f],scale:[1f,1f,1f]},\
	text:"Hee hee hee! You came all the way up here? You're a real man!\n\nLook! Isn't this view pretty? Change your viewpoint, so you can look around the forest."}


execute if entity @a[tag=confirm_fado_click] as @e[type=text_display,tag=fado_dialogue] run schedule function zelda_oot:kill_dialogue 150t
execute as @a[tag=confirm_fado_click] run tag @a remove fado_click
execute as @a[tag=confirm_fado_click] run tag @a remove confirm_fado_click