#Hover
execute as @a if predicate zelda_oot:ocarina/warping_yes run \
    data merge entity @e[type=text_display,tag=warping_yes,limit=1] {text:{text:"🡆OK",color:"green",bold:true}}

execute as @a unless predicate zelda_oot:ocarina/warping_yes run \
    data merge entity @e[type=text_display,tag=warping_yes,limit=1] {text:{text:"OK",color:"green",bold:true}}

execute as @a if predicate zelda_oot:ocarina/warping_no run \
    data merge entity @e[type=text_display,tag=warping_no,limit=1] {text:{text:"🡆No",color:"green",bold:true}}

execute as @a unless predicate zelda_oot:ocarina/warping_no run \
    data merge entity @e[type=text_display,tag=warping_no,limit=1] {text:{text:"No",color:"green",bold:true}}

#Add No Interaction
execute as @e[type=interaction,tag=warping_no_click,nbt={interaction:{}}] run tag @a add warping_no_click
execute as @a[tag=warping_no_click] run kill @e[type=minecraft:interaction,tag=warping_no_click]
execute as @a[tag=warping_no_click] run tag @a add confirm_warping_no_click
execute as @a[tag=confirm_warping_no_click] at @e[tag=ocarina_note_middle,limit=1] \
    run execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 rotated ~180 0 run \
	summon interaction ^-1.3 ^-1.8 ^0 \
	{width:2.5f,height:1.0f,response:true,Tags:["warping_no_click","warping_click"]}

execute as @a[tag=confirm_warping_no_click] at @s run tp @s ~ ~-1.3 ~
execute as @a[tag=confirm_warping_no_click] run function zelda_oot:items/ocarina/song/reward/quit_ocarina
execute as @a[tag=confirm_warping_no_click] run tag @a remove warping_no_click
execute as @a[tag=confirm_warping_no_click] run tag @a remove confirm_warping_no_click

#Add Yes Interaction
execute as @e[type=interaction,tag=warping_yes_click,nbt={interaction:{}}] run tag @a add warping_yes_click
execute as @a[tag=warping_yes_click] run kill @e[type=minecraft:interaction,tag=warping_yes_click]
execute as @a[tag=warping_yes_click] run tag @a add confirm_warping_yes_click
execute as @a[tag=confirm_warping_yes_click] at @e[tag=ocarina_note_middle,limit=1] \
    run execute as @a[tag=playing_ocarina] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^2 rotated ~180 0 run \
	summon interaction ^1.3 ^-1.8 ^0 \
	{width:2.5f,height:1.0f,response:true,Tags:["warping_yes_click","warping_click"]}

execute as @a[tag=confirm_warping_yes_click] run function zelda_oot:game/unload_all

execute as @a[tag=confirm_warping_yes_click,tag=warp_minuet_of_forest] run tp @s -426.48 -6.50 33.30 -179.22 3.58
execute as @a[tag=confirm_warping_yes_click,tag=warp_minuet_of_forest] run function zelda_oot:game/kokiri_forest/loader/load_houses

execute as @a[tag=confirm_warping_yes_click,tag=warp_bolero_of_fire] run tp @s -436.52 -56.00 -7.43 -180.66 0.22

execute as @a[tag=confirm_warping_yes_click,tag=warp_serenade_of_water] run tp @s -436.77 -58.00 -13.57 449.76 -9.25

execute as @a[tag=confirm_warping_yes_click,tag=warp_requiem_of_spirit] run tp @s -442.56 -59.00 -19.64 900.62 1.30

execute as @a[tag=confirm_warping_yes_click,tag=warp_nocturne_of_shadow] run tp @s -435.48 -59.00 -20.40 1126.71 -2.42

execute as @a[tag=confirm_warping_yes_click,tag=warp_prelude_of_light] run tp @s -442.60 -59.00 -12.78 901.70 41.12

execute as @a[tag=confirm_warping_yes_click] run function zelda_oot:items/ocarina/song/reward/quit_ocarina
execute as @a[tag=confirm_warping_yes_click] run tag @a remove warping_yes_click
execute as @a[tag=confirm_warping_yes_click] run tag @a remove confirm_warping_yes_click

