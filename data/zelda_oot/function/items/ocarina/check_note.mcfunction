#Glow Effect
#Center
execute as @a if predicate zelda_oot:ocarina/ocarina_center run \
	data merge entity @e[type=item_display,name=middle,limit=1] {Glowing:1b}

execute as @a unless predicate zelda_oot:ocarina/ocarina_center run \
	data merge entity @e[type=item_display,name=middle,limit=1] {Glowing:0b}

#Up
execute as @a if predicate zelda_oot:ocarina/ocarina_up run \
	data merge entity @e[type=item_display,name=up,limit=1] {Glowing:1b}

execute as @a unless predicate zelda_oot:ocarina/ocarina_up run \
	data merge entity @e[type=item_display,name=up,limit=1] {Glowing:0b}

#Down
execute as @a if predicate zelda_oot:ocarina/ocarina_down run \
	data merge entity @e[type=item_display,name=down,limit=1] {Glowing:1b}

execute as @a unless predicate zelda_oot:ocarina/ocarina_down run \
	data merge entity @e[type=item_display,name=down,limit=1] {Glowing:0b}

#Left
execute as @a if predicate zelda_oot:ocarina/ocarina_left run \
	data merge entity @e[type=item_display,name=left,limit=1] {Glowing:1b}

execute as @a unless predicate zelda_oot:ocarina/ocarina_left run \
	data merge entity @e[type=item_display,name=left,limit=1] {Glowing:0b}

#Right
execute as @a if predicate zelda_oot:ocarina/ocarina_right run \
	data merge entity @e[type=item_display,name=right,limit=1] {Glowing:1b}

execute as @a unless predicate zelda_oot:ocarina/ocarina_right run \
	data merge entity @e[type=item_display,name=right,limit=1] {Glowing:0b}

#Add Interaction for each Note

#Center
execute as @e[type=interaction,tag=ocarina_center_click,nbt={interaction:{}}] run tag @a add ocarina_center_click
execute as @a[tag=ocarina_center_click] run kill @e[type=minecraft:interaction,tag=ocarina_center_click]
execute as @a[tag=ocarina_center_click] run tag @a add confirm_ocarina_center_click
execute as @a[tag=confirm_ocarina_center_click] at @e[tag=ocarina_note_middle,limit=1] \
    run summon interaction ~ ~-0.1 ~ {width:0.3f,height:0.3f,response:true,Tags:["ocarina_center_click","ocarina_display"]}

execute as @a[tag=confirm_ocarina_center_click] run say Center Clicked
execute as @a[tag=confirm_ocarina_center_click] as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 5 1.0
execute as @a[tag=confirm_ocarina_center_click] run tag @a remove ocarina_center_click
execute as @a[tag=confirm_ocarina_center_click] run tag @a remove confirm_ocarina_center_click

#Up
execute as @e[type=interaction,tag=ocarina_up_click,nbt={interaction:{}}] run tag @a add ocarina_up_click
execute as @a[tag=ocarina_up_click] run kill @e[type=minecraft:interaction,tag=ocarina_up_click]
execute as @a[tag=ocarina_up_click] run tag @a add confirm_ocarina_up_click
execute as @a[tag=confirm_ocarina_up_click] at @e[tag=ocarina_note_up,limit=1] \
    run summon interaction ~ ~-0.1 ~ {width:0.3f,height:0.3f,response:true,Tags:["ocarina_up_click","ocarina_display"]}

execute as @a[tag=confirm_ocarina_up_click] run say Up Clicked
execute as @a[tag=confirm_ocarina_up_click] as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 5 1.19
execute as @a[tag=confirm_ocarina_up_click] run tag @a remove ocarina_up_click
execute as @a[tag=confirm_ocarina_up_click] run tag @a remove confirm_ocarina_up_click

#Down
execute as @e[type=interaction,tag=ocarina_down_click,nbt={interaction:{}}] run tag @a add ocarina_down_click
execute as @a[tag=ocarina_down_click] run kill @e[type=minecraft:interaction,tag=ocarina_down_click]
execute as @a[tag=ocarina_down_click] run tag @a add confirm_ocarina_down_click
execute as @a[tag=confirm_ocarina_down_click] at @e[tag=ocarina_note_down,limit=1] \
    run summon interaction ~ ~-0.1 ~ {width:0.3f,height:0.3f,response:true,Tags:["ocarina_down_click","ocarina_display"]}

execute as @a[tag=confirm_ocarina_down_click] run say Down Clicked
execute as @a[tag=confirm_ocarina_down_click] as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 5 0.75
execute as @a[tag=confirm_ocarina_down_click] run tag @a remove ocarina_down_click
execute as @a[tag=confirm_ocarina_down_click] run tag @a remove confirm_ocarina_down_click

#Left
execute as @e[type=interaction,tag=ocarina_left_click,nbt={interaction:{}}] run tag @a add ocarina_left_click
execute as @a[tag=ocarina_left_click] run kill @e[type=minecraft:interaction,tag=ocarina_left_click]
execute as @a[tag=ocarina_left_click] run tag @a add confirm_ocarina_left_click
execute as @a[tag=confirm_ocarina_left_click] at @e[tag=ocarina_note_left,limit=1] \
    run summon interaction ~ ~-0.1 ~ {width:0.3f,height:0.3f,response:true,Tags:["ocarina_left_click","ocarina_display"]}

execute as @a[tag=confirm_ocarina_left_click] run say Left Clicked
execute as @a[tag=confirm_ocarina_left_click] as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 5 0.84
execute as @a[tag=confirm_ocarina_left_click] run tag @a remove ocarina_left_click
execute as @a[tag=confirm_ocarina_left_click] run tag @a remove confirm_ocarina_left_click

#Right
execute as @e[type=interaction,tag=ocarina_right_click,nbt={interaction:{}}] run tag @a add ocarina_right_click
execute as @a[tag=ocarina_right_click] run kill @e[type=minecraft:interaction,tag=ocarina_right_click]
execute as @a[tag=ocarina_right_click] run tag @a add confirm_ocarina_right_click
execute as @a[tag=confirm_ocarina_right_click] at @e[tag=ocarina_note_right,limit=1] \
    run summon interaction ~ ~-0.1 ~ {width:0.3f,height:0.3f,response:true,Tags:["ocarina_right_click","ocarina_display"]}

execute as @a[tag=confirm_ocarina_right_click] run say Right Clicked
execute as @a[tag=confirm_ocarina_right_click] as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 5 1.7
execute as @a[tag=confirm_ocarina_right_click] run tag @a remove ocarina_right_click
execute as @a[tag=confirm_ocarina_right_click] run tag @a remove confirm_ocarina_right_click