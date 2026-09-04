execute positioned -461 10 3 if entity @p[distance=..1.5] run tp @p -464 -4 3

function zelda_oot:game/kokiri_forest/unloader/unload_kokiri_forest

#Load NPC
#Know-it-all Brother sitting 1
execute positioned -471.43 -3.30 3.45 rotated 630.25 0 run function zelda_oot:know_it_all_brother/summon {args: {}}
execute positioned -471.43 -3.30 3.45 as @e[type=minecraft:item_display,tag=zelda_oot.know_it_all_brother.root,tag=!know_it_all_brother_sitting_1_display,distance=..3.5,sort=nearest,limit=1] run tag @s add know_it_all_brother_sitting_1_display
execute as @e[tag=know_it_all_brother_sitting_1_display,limit=1,sort=nearest] run function zelda_oot:know_it_all_brother/animations/idle_sit1/play

summon interaction -471.43 -3.30 3.45 {width:1f,height:1f,response:true,Tags:["know_it_all_brother_sitting_1_click"]}

#Know-it-all Brother sitting 2
execute positioned -468.31 -3.30 6.19 rotated 1314.04 0 run function zelda_oot:know_it_all_brother/summon {args: {}}
execute positioned -468.31 -3.30 6.19 as @e[type=minecraft:item_display,tag=zelda_oot.know_it_all_brother.root,tag=!know_it_all_brother_sitting_2_display,distance=..3.5,sort=nearest,limit=1] run tag @s add know_it_all_brother_sitting_2_display
execute as @e[tag=know_it_all_brother_sitting_2_display,limit=1,sort=nearest] run function zelda_oot:know_it_all_brother/animations/idle_sit2/play

summon interaction -468.31 -3.30 6.19 {width:1f,height:1f,response:true,Tags:["know_it_all_brother_sitting_2_click"]}

#Know-it-all Brother standing
execute positioned -464.24 -4.00 5.20 rotated 1575.27 0 run function zelda_oot:know_it_all_brother/summon {args: {}}
execute positioned -464.24 -4.00 5.20 as @e[type=minecraft:item_display,tag=zelda_oot.know_it_all_brother.root,tag=!know_it_all_brother_standing_display,distance=..3.5,sort=nearest,limit=1] run tag @s add know_it_all_brother_standing_display
execute as @e[tag=know_it_all_brother_standing_display,limit=1,sort=nearest] run function zelda_oot:know_it_all_brother/animations/idle2/play

summon interaction -464.24 -4.00 5.20 {width:1f,height:1f,response:true,Tags:["know_it_all_brother_standing_click"]}
