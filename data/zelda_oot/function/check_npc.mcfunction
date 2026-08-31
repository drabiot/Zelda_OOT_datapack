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

#Twin Shop
execute as @e[type=interaction,tag=twin_shop_click,nbt={interaction:{}}] run tag @a add twin_shop_click
execute as @a[tag=twin_shop_click] run kill @e[type=minecraft:interaction,tag=twin_shop_click]
execute as @a[tag=twin_shop_click] run tag @a add confirm_twin_shop_click
execute as @a[tag=confirm_twin_shop_click] at @e[tag=twin_shop_click,limit=1] \
    run summon minecraft:interaction -393 8 -26.0 {width:1f,height:1f,response:true,Tags:["twin_shop_click"]}

execute as @a[tag=confirm_twin_shop_click] positioned -394 10 -27 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -394 10 -27 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["twin_shop_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0.2f,0.2f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"Yes, yes! That's how you use a fairy!\n\n It's so great that you finally have a "},{text:"fairy",color:blue},{text:" partner!"}]}

execute if entity @a[tag=confirm_twin_shop_click] as @e[type=text_display,tag=twin_shop_dialogue] run schedule function zelda_oot:kill_dialogue 100t
execute as @a[tag=confirm_twin_shop_click] run tag @a remove twin_shop_click
execute as @a[tag=confirm_twin_shop_click] run tag @a remove confirm_twin_shop_click

#Twin Door
execute as @e[type=interaction,tag=twin_door_click,nbt={interaction:{}}] run tag @a add twin_door_click
execute as @a[tag=twin_door_click] run kill @e[type=minecraft:interaction,tag=twin_door_click]
execute as @a[tag=twin_door_click] run tag @a add confirm_twin_door_click
execute as @a[tag=confirm_twin_door_click] at @e[tag=twin_door_click,limit=1] \
    run summon minecraft:interaction -448.36 6.00 -16.41 {width:1f,height:2f,response:true,Tags:["twin_door_click"]}

execute as @a[tag=confirm_twin_door_click] positioned -451 9.00 -20 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -451 9.00 -20 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["twin_door_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0.3826834f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"Oh, a "},{text:"fairy",color:blue},{text:" finally came to you! Now you have a lot to learn!\n\nThe best place to go to learn some new skills is in the "},\
	{text:"Forest Training Center",color:green},{text:". It's on the hill just above here."}]}

execute if entity @a[tag=confirm_twin_door_click] as @e[type=text_display,tag=twin_door_dialogue] run schedule function zelda_oot:kill_dialogue 150t
execute as @a[tag=confirm_twin_door_click] run tag @a remove twin_door_click
execute as @a[tag=confirm_twin_door_click] run tag @a remove confirm_twin_door_click

#Twin Pound
execute as @e[type=interaction,tag=twin_pound_click,nbt={interaction:{}}] run tag @a add twin_pound_click
execute as @a[tag=twin_pound_click] run kill @e[type=minecraft:interaction,tag=twin_pound_click]
execute as @a[tag=twin_pound_click] run tag @a add confirm_twin_pound_click
execute as @a[tag=confirm_twin_pound_click] at @e[tag=twin_pound_click,limit=1] \
    run summon minecraft:interaction -419.64 5.00 -22.27 {width:1f,height:2f,response:true,Tags:["twin_pound_click"]}

execute as @a[tag=confirm_twin_pound_click] positioned -421.46 7.00 -22.72 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -421.46 7.00 -22.72 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["twin_pound_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0.2f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"Oh, you have a "},{text:"fairy",color:blue},{text:" now?! That's great, Link!\n\nWhat? You've been called by the "},\
	{text:"Great Deku Tree",color:"red"},{text:"? What an honor! He may give you a special gift! Tee hee! That's because the "},\
	{text:"Great Deku Tree",color:"red"},{text:" is our father, the forest guardian, and he gave life to all of us Kokiri!\n\n\nI wonder if the "},\
	{text:"Great Deku Tree",color:"red"},{text:" gave life to everything in the forest, I mean in addition to us Kokiri?"}]}

execute if entity @a[tag=confirm_twin_pound_click] as @e[type=text_display,tag=twin_pound_dialogue] run schedule function zelda_oot:kill_dialogue 300t
execute as @a[tag=confirm_twin_pound_click] run tag @a remove twin_pound_click
execute as @a[tag=confirm_twin_pound_click] run tag @a remove confirm_twin_pound_click

