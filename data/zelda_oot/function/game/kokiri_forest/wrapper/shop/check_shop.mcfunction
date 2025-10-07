#Check First Buy
execute as @e[type=interaction,tag=deku_shield_click] on target run tag @a add deku_shield_click
execute as @e[type=interaction,tag=deku_nut_5_click] on target run tag @a add deku_nut_5_click
execute as @e[type=interaction,tag=deku_nut_10_click] on target run tag @a add deku_nut_10_click
execute as @e[type=interaction,tag=deku_stick_click] on target run tag @a add deku_stick_click

execute as @e[type=interaction,tag=deku_seed_click] on target run tag @a add deku_seed_click
execute as @e[type=interaction,tag=arrow_10_click] on target run tag @a add arrow_10_click
execute as @e[type=interaction,tag=arrow_30_click] on target run tag @a add arrow_30_click
execute as @e[type=interaction,tag=heart_click] on target run tag @a add heart_click


#Punch Remove Interaction
execute as @a[tag=deku_shield_click] run kill @e[type=minecraft:interaction,tag=deku_shield_click]
execute as @a[tag=deku_nut_5_click] run kill @e[type=minecraft:interaction,tag=deku_nut_5_click]
execute as @a[tag=deku_nut_10_click] run kill @e[type=minecraft:interaction,tag=deku_nut_10_click]
execute as @a[tag=deku_stick_click] run kill @e[type=minecraft:interaction,tag=deku_stick_click]

execute as @a[tag=deku_seed_click] run kill @e[type=minecraft:interaction,tag=deku_seed_click]
execute as @a[tag=arrow_10_click] run kill @e[type=minecraft:interaction,tag=arrow_10_click]
execute as @a[tag=arrow_30_click] run kill @e[type=minecraft:interaction,tag=arrow_30_click]
execute as @a[tag=heart_click] run kill @e[type=minecraft:interaction,tag=heart_click]


#Remove Tag & Add confirmation Tag
execute as @a[tag=deku_shield_click] run tag @a add confirm_deku_shield_click
execute as @a[tag=deku_nut_5_click] run tag @a add confirm_deku_nut_5_click
execute as @a[tag=deku_nut_10_click] run tag @a add confirm_deku_nut_10_click
execute as @a[tag=deku_stick_click] run tag @a add confirm_deku_stick_click

execute as @a[tag=confirm_deku_shield_click] run tag @a remove deku_shield_click
execute as @a[tag=confirm_deku_nut_5_click] run tag @a remove deku_nut_5_click
execute as @a[tag=confirm_deku_nut_10_click] run tag @a remove deku_nut_10_click
execute as @a[tag=confirm_deku_stick_click] run tag @a remove deku_stick_click


execute as @a[tag=deku_seed_click] run tag @a add confirm_deku_seed_click
execute as @a[tag=arrow_10_click] run tag @a add confirm_arrow_10_click
execute as @a[tag=arrow_30_click] run tag @a add confirm_arrow_30_click
execute as @a[tag=heart_click] run tag @a add confirm_heart_click

execute as @a[tag=confirm_deku_seed_click] run tag @a remove deku_seed_click
execute as @a[tag=confirm_arrow_10_click] run tag @a remove arrow_10_click
execute as @a[tag=confirm_arrow_30_click] run tag @a remove arrow_30_click
execute as @a[tag=confirm_heart_click] run tag @a remove heart_click


#Replace Interaction
execute as @a[tag=confirm_deku_shield_click] run summon interaction -392 -5.5 -40 {width:0.8f,height:1f,response:true,Tags:["deku_shield_click"]}
execute as @a[tag=confirm_deku_nut_5_click] run summon interaction -392 -4 -40 {width:0.8f,height:1f,response:true,Tags:["deku_nut_5_click"]}
execute as @a[tag=confirm_deku_nut_10_click] run summon interaction -391 -5.5 -39 {width:0.8f,height:1f,response:true,Tags:["deku_nut_10_click"]}
execute as @a[tag=confirm_deku_stick_click] run summon interaction -391 -4 -39 {width:0.8f,height:1f,response:true,Tags:["deku_stick_click"]}

execute as @a[tag=confirm_deku_seed_click] run summon interaction -394 -5.5 -40 {width:0.8f,height:1f,response:true,Tags:["deku_seed_click"]}
execute as @a[tag=confirm_arrow_10_click] run summon interaction -394 -4 -40 {width:0.8f,height:1f,response:true,Tags:["arrow_10_click"]}
execute as @a[tag=confirm_arrow_30_click] run summon interaction -395 -5.5 -39 {width:0.8f,height:1f,response:true,Tags:["arrow_30_click"]}
execute as @a[tag=confirm_heart_click] run summon interaction -395 -4 -39 {width:0.8f,height:1f,response:true,Tags:["heart_click"]}


#Information message
execute as @a[tag=!is_sneak,tag=confirm_deku_shield_click] run tellraw @s [{"text":"Deku Shield: 40 Rupees\n","color":"red"},{"text":"Once equipped, you can defend.\nIf set on fire, it will burn\n","color":"white"}]
execute as @a[tag=!is_sneak,tag=confirm_deku_nut_5_click] run tellraw @s [{"text":"Deku Nut (5): 15 Rupees\n","color":"red"},{"text":"A nut harvested from the Deku Tree.\n","color":"white"},{"text":"It explodes with a blinding flash if throwns.\n","color":"white"}]
execute as @a[tag=!is_sneak,tag=confirm_deku_nut_10_click] run tellraw @s [{"text":"Deku Nut (10): 30 Rupees\n","color":"red"},{"text":"A nut harvested from the Deku Tree.\n","color":"white"},{"text":"It explodes with a blinding flash if throwns.\n","color":"white"}]
execute as @a[tag=!is_sneak,tag=confirm_deku_stick_click] run tellraw @s [{"text":"Deku Stick (1): 10 Rupees\n","color":"red"},{"text":"A long stick taken from the Deku Tree.\n","italic":false,"color":"white"},{"text":"It can be swung, or lit and used as a torch.\n","italic":false,"color":"white"}]

execute as @a[tag=!is_sneak,tag=confirm_deku_seed_click] run tellraw @s [{"text":"Deku Seeds: 30 Rupees\n","color":"red"},{"text":"They serve as bullet for your slingshot\n",color:"white"}]
execute as @a[tag=!is_sneak,tag=confirm_arrow_10_click] run tellraw @s [{"text":"Arrows (5): 0 Rupees\n","color":"red"},{"text":"You need a bow to buy arrows\n",color:"white"}]
execute as @a[tag=!is_sneak,tag=confirm_arrow_30_click] run tellraw @s [{"text":"Arrows (10): 0 Rupees\n","color":"red"},{"text":"You need a bow to buy arrows\n",color:"white"}]
execute as @a[tag=!is_sneak,tag=confirm_heart_click] run tellraw @s [{"text":"Heart: 10 Rupees\n","color":"red"},{"text":"Restore small portion of your life\n",color:"white"}]


#Buy
execute as @a[tag=is_sneak,tag=confirm_deku_shield_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_shield
execute as @a[tag=is_sneak,tag=confirm_deku_nut_5_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_nut_5
execute as @a[tag=is_sneak,tag=confirm_deku_nut_10_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_nut_10
execute as @a[tag=is_sneak,tag=confirm_deku_stick_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_stick

execute as @a[tag=is_sneak,tag=confirm_deku_seed_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_seed
execute as @a[tag=is_sneak,tag=confirm_arrow_10_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/arrow_10
execute as @a[tag=is_sneak,tag=confirm_arrow_30_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/arrow_30
execute as @a[tag=is_sneak,tag=confirm_heart_click] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/heart


execute as @a[tag=confirm_deku_shield_click] run tag @a remove confirm_deku_shield_click
execute as @a[tag=confirm_deku_nut_5_click] run tag @a remove confirm_deku_nut_5_click
execute as @a[tag=confirm_deku_nut_10_click] run tag @a remove confirm_deku_nut_10_click
execute as @a[tag=confirm_deku_stick_click] run tag @a remove confirm_deku_stick_click

execute as @a[tag=confirm_deku_seed_click] run tag @a remove confirm_deku_seed_click
execute as @a[tag=confirm_arrow_10_click] run tag @a remove confirm_arrow_10_click
execute as @a[tag=confirm_arrow_30_click] run tag @a remove confirm_arrow_30_click
execute as @a[tag=confirm_heart_click] run tag @a remove confirm_heart_click
