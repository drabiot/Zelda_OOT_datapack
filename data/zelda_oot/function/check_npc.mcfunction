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

execute as @a[tag=confirm_twin_pound_click] positioned -421.46 6.5 -22.72 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -421.46 6.5 -22.72 \
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

#Twin Inside Shop
execute as @e[type=interaction,tag=twin_inside_shop_click,nbt={interaction:{}}] run tag @a add twin_inside_shop_click
execute as @a[tag=twin_inside_shop_click] run kill @e[type=minecraft:interaction,tag=twin_inside_shop_click]
execute as @a[tag=twin_inside_shop_click] run tag @a add confirm_twin_inside_shop_click
execute as @a[tag=confirm_twin_inside_shop_click] at @e[tag=twin_inside_shop_click,limit=1] \
    run summon minecraft:interaction -396 -7 -36 {width:1f,height:2f,response:true,Tags:["twin_inside_shop_click"]}

execute as @a[tag=confirm_twin_inside_shop_click] positioned -396 -5 -34 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -396 -5 -34 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["twin_inside_shop_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,1.5f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"This shop...It sells things you can get in the forest for free! Tee hee!\n\nDo you know how to use the "},\
	{text:"Deku Shield",color:"red"},{text:"? Tee hee! When you get the shield, equip it and press {right click}"}]}

execute if entity @a[tag=confirm_twin_inside_shop_click] as @e[type=text_display,tag=twin_inside_shop_dialogue] run schedule function zelda_oot:kill_dialogue 130t
execute as @a[tag=confirm_twin_inside_shop_click] run tag @a remove twin_inside_shop_click
execute as @a[tag=confirm_twin_inside_shop_click] run tag @a remove confirm_twin_inside_shop_click

#Twin Inside House
execute as @e[type=interaction,tag=twin_inside_house_click,nbt={interaction:{}}] run tag @a add twin_inside_house_click
execute as @a[tag=twin_inside_house_click] run kill @e[type=minecraft:interaction,tag=twin_inside_house_click]
execute as @a[tag=twin_inside_house_click] run tag @a add confirm_twin_inside_house_click
execute as @a[tag=confirm_twin_inside_house_click] at @e[tag=twin_inside_house_click,limit=1] \
    run summon minecraft:interaction -388.19 -6.50 18.21 {width:1f,height:1f,response:true,Tags:["twin_inside_house_click"]}

execute as @a[tag=confirm_twin_inside_house_click] positioned -387 -5 19 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -387 -5 19 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["twin_inside_house_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,3.5f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"My sister took some Rupees and went shopping at the store that has a red roof. Tee hee!\n\nSpeaking of "},\
	{text:"Rupees",color:"red"},{text:", a "},{text:"green",color:"green"},{text:" one is worth one, a "},\
	{text:"blue",color:"blue"},{text:" one is worth five and a "},{text:"red",color:"red"},{text:" one is worth twenty. Hee hee!"}]}

execute if entity @a[tag=confirm_twin_inside_house_click] as @e[type=text_display,tag=twin_inside_house_dialogue] run schedule function zelda_oot:kill_dialogue 200t
execute as @a[tag=confirm_twin_inside_house_click] run tag @a remove twin_inside_house_click
execute as @a[tag=confirm_twin_inside_house_click] run tag @a remove confirm_twin_inside_house_click

#Know-it-all Brother Attack
execute as @e[type=interaction,tag=know_it_all_brother_attack_click,nbt={interaction:{}}] run tag @a add know_it_all_brother_attack_click
execute as @a[tag=know_it_all_brother_attack_click] run kill @e[type=minecraft:interaction,tag=know_it_all_brother_attack_click]
execute as @a[tag=know_it_all_brother_attack_click] run tag @a add confirm_know_it_all_brother_attack_click
execute as @a[tag=confirm_know_it_all_brother_attack_click] at @e[tag=know_it_all_brother_attack_click,limit=1] \
    run summon minecraft:interaction -443.73 10.00 20.07 {width:1f,height:2f,response:true,Tags:["know_it_all_brother_attack_click"]}

execute as @a[tag=confirm_know_it_all_brother_attack_click] positioned -443 11 17 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -443 11 17 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["know_it_all_brother_attack_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-0.7f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"Hey, let's work on some moves!\n\nTo "},\
	{text:"jump sideways",color:"red"},{text:", press {"},{text:"right/left",color:"blue"},{text:"} 2 times. To do a "},{text:"backflip",color:"red"},{text:" , press {"},{text:"backward",color:"blue"},{text:"} 2 times. To do a "},\
	{text:"roll attack",color:"red"},{text:", press {"},{text:"forward",color:"blue"},{text:"} 2 times. While you roll, you can avoid damage.\n\nYou can use your movement on the stone next to me, so let's practice!"}]}

execute if entity @a[tag=confirm_know_it_all_brother_attack_click] as @e[type=text_display,tag=know_it_all_brother_attack_dialogue] run schedule function zelda_oot:kill_dialogue 300t
execute as @a[tag=confirm_know_it_all_brother_attack_click] run tag @a remove know_it_all_brother_attack_click
execute as @a[tag=confirm_know_it_all_brother_attack_click] run tag @a remove confirm_know_it_all_brother_attack_click

#Know-it-all Brother Rock
execute as @e[type=interaction,tag=know_it_all_brother_rock_click,nbt={interaction:{}}] run tag @a add know_it_all_brother_rock_click
execute as @a[tag=know_it_all_brother_rock_click] run kill @e[type=minecraft:interaction,tag=know_it_all_brother_rock_click]
execute as @a[tag=know_it_all_brother_rock_click] run tag @a add confirm_know_it_all_brother_rock_click
execute as @a[tag=confirm_know_it_all_brother_rock_click] at @e[tag=know_it_all_brother_rock_click,limit=1] \
    run summon minecraft:interaction -431 5 -29.2 {width:2f,height:1f,response:true,Tags:["know_it_all_brother_rock_click"]}

execute as @a[tag=confirm_know_it_all_brother_rock_click] positioned -429 6 -31 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -429 6 -31 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["know_it_all_brother_rock_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-0.2f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"{"},{text:"Right Click",color:"blue"},{text:"} by the stone, pick it up! {"},{text:"Right Click",color:"blue"},\
	{text:"} by the stone, pick it up!\n\nMean old "},{text:"Mido",color:"red"},{text:"...he made me pick up the rocks in front of his house."}]}

execute if entity @a[tag=confirm_know_it_all_brother_rock_click] as @e[type=text_display,tag=know_it_all_brother_rock_dialogue] run schedule function zelda_oot:kill_dialogue 150t
execute as @a[tag=confirm_know_it_all_brother_rock_click] run tag @a remove know_it_all_brother_rock_click
execute as @a[tag=confirm_know_it_all_brother_rock_click] run tag @a remove confirm_know_it_all_brother_rock_click

#Know-it-all Brother Grass
execute as @e[type=interaction,tag=know_it_all_brother_grass_click,nbt={interaction:{}}] run tag @a add know_it_all_brother_grass_click
execute as @a[tag=know_it_all_brother_grass_click] run kill @e[type=minecraft:interaction,tag=know_it_all_brother_grass_click]
execute as @a[tag=know_it_all_brother_grass_click] run tag @a add confirm_know_it_all_brother_grass_click
execute as @a[tag=confirm_know_it_all_brother_grass_click] at @e[tag=know_it_all_brother_grass_click,limit=1] \
    run summon minecraft:interaction -404 5 3.8 {width:2f,height:1f,response:true,Tags:["know_it_all_brother_grass_click"]}

execute as @a[tag=confirm_know_it_all_brother_grass_click] positioned -402 6 4 unless entity @e[type=text_display,tag=npc_display,distance=..2] \
	run execute as @a[] at @s rotated as @s rotated ~ 0 positioned -402 6 4 \
	run summon text_display ^ ^ ^ \
	{CustomName:'"npc_display"',Tags:["know_it_all_brother_grass_dialogue","npc_display"],\
	transformation:{translation:[0f,0f,0f],right_rotation:[0f,-3f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]},\
	text:[{text:"That meanie, "},{text:"Mido",color:"red"},{text:", made me cut the grass at Saria's house. Mido told Saria he would do it so she would like him, but I'm the one doing all the work!\n"},\
	{text:"\nYou and "},{text:"Saria",color:"red"},{text:" are close friends, so will you help me cut the grass? I'll let you keep anything that you find while cutting it."}]}

execute if entity @a[tag=confirm_know_it_all_brother_grass_click] as @e[type=text_display,tag=know_it_all_brother_grass_dialogue] run schedule function zelda_oot:kill_dialogue 250t
execute as @a[tag=confirm_know_it_all_brother_grass_click] run tag @a remove know_it_all_brother_grass_click
execute as @a[tag=confirm_know_it_all_brother_grass_click] run tag @a remove confirm_know_it_all_brother_grass_click
