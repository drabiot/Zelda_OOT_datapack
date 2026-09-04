execute positioned -385 5 9 if entity @p[distance=..1.5] run tp @p -385 -7 12

function zelda_oot:game/kokiri_forest/unloader/unload_kokiri_forest


#Load NPC
#Twin Inside House
execute positioned -388.19 -6.30 18.21 rotated 594.69 0 run function zelda_oot:twins/summon {args: {}}
execute positioned -388.19 -6.30 18.21 as @e[type=minecraft:item_display,tag=zelda_oot.twins.root,tag=!twin_inside_house_display,distance=..3.5,sort=nearest,limit=1] run tag @s add twin_inside_house_display
execute as @e[tag=twin_inside_house_display,limit=1,sort=nearest] run function zelda_oot:twins/animations/idle_sit2/play

summon interaction -388.19 -6.30 18.21 {width:1f,height:1f,response:true,Tags:["twin_inside_house_click"]}