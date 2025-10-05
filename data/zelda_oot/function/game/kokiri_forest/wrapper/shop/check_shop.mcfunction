#Check First Buy
execute as @e[type=interaction,tag=deku_shield_click] on attacker run tag @a add deku_shield_click
execute as @e[type=interaction,tag=deku_nut_5_click] on attacker run tag @a add deku_nut_5_click
execute as @e[type=interaction,tag=deku_nut_10_click] on attacker run tag @a add deku_nut_10_click
execute as @e[type=interaction,tag=deku_stick_click] on attacker run tag @a add deku_stick_click

execute as @e[type=interaction,tag=deku_seed_click] on attacker run tag @a add deku_seed_click
execute as @e[type=interaction,tag=arrow_10_click] on attacker run tag @a add arrow_10_click
execute as @e[type=interaction,tag=arrow_30_click] on attacker run tag @a add arrow_30_click
execute as @e[type=interaction,tag=heart_click] on attacker run tag @a add heart_click


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
execute as @a[tag=confirm_deku_shield_click] run summon interaction -392 -6 -40 {width:0.8f,height:1f,response:true,Tags:["deku_shield_click"]}
execute as @a[tag=confirm_deku_nut_5_click] run summon interaction -392 -4.5 -40 {width:0.8f,height:1f,response:true,Tags:["deku_nut_5_click"]}
execute as @a[tag=confirm_deku_nut_10_click] run summon interaction -391 -6 -39 {width:0.8f,height:1f,response:true,Tags:["deku_nut_10_click"]}
execute as @a[tag=confirm_deku_stick_click] run summon interaction -391 -4.5 -39 {width:0.8f,height:1f,response:true,Tags:["deku_stick_click"]}

execute as @a[tag=confirm_deku_seed_click] run summon interaction -394 -6 -40 {width:0.8f,height:1f,response:true,Tags:["deku_seed_click"]}
execute as @a[tag=confirm_arrow_10_click] run summon interaction -394 -4.5 -40 {width:0.8f,height:1f,response:true,Tags:["arrow_10_click"]}
execute as @a[tag=confirm_arrow_30_click] run summon interaction -395 -6 -39 {width:0.8f,height:1f,response:true,Tags:["arrow_30_click"]}
execute as @a[tag=confirm_heart_click] run summon interaction -395 -4.5 -39 {width:0.8f,height:1f,response:true,Tags:["heart_click"]}


#Confirmation message
execute as @a[tag=confirm_deku_shield_click] run tellraw @s [{"text":"Deku Shield: 40 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger deku_shield add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_deku_nut_5_click] run tellraw @s [{"text":"Deku Nut(5): 15 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger deku_nut_5 add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_deku_nut_10_click] run tellraw @s [{"text":"Deku Nut(10): 30 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger deku_nut_10 add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_deku_stick_click] run tellraw @s [{"text":"Deku Stick: 10 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger deku_stick_shop add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]

execute as @a[tag=confirm_deku_seed_click] run tellraw @s [{"text":"Deku Seeds: 30 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger deku_seed_shop add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_arrow_10_click] run tellraw @s [{"text":"Arrows(5): 0 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger arrow_10 add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_arrow_30_click] run tellraw @s [{"text":"Arrows(10): 0 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger arrow_30 add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]
execute as @a[tag=confirm_heart_click] run tellraw @s [{"text":"Heart: 10 Rupees\n","color":"white"},{"text":"     Buy","color":"green","click_event":{"action":"run_command","command":"trigger heart_shop add 1"}},{"text":"\n"},{"text":"     Don't Buy","color":"green"}]


execute as @a[tag=confirm_deku_shield_click] run tag @a remove confirm_deku_shield_click
execute as @a[tag=confirm_deku_nut_5_click] run tag @a remove confirm_deku_nut_5_click
execute as @a[tag=confirm_deku_nut_10_click] run tag @a remove confirm_deku_nut_10_click
execute as @a[tag=confirm_deku_stick_click] run tag @a remove confirm_deku_stick_click

execute as @a[tag=confirm_deku_seed_click] run tag @a remove confirm_deku_seed_click
execute as @a[tag=confirm_arrow_10_click] run tag @a remove confirm_arrow_10_click
execute as @a[tag=confirm_arrow_30_click] run tag @a remove confirm_arrow_30_click
execute as @a[tag=confirm_heart_click] run tag @a remove confirm_heart_click


#Finally Buy
execute positioned -294 2 -54 as @a[scores={deku_shield=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_shield
execute positioned -294 2 -54 as @a[scores={deku_nut_5=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_nut_5
execute positioned -294 2 -54 as @a[scores={deku_nut_10=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_nut_10
execute positioned -294 2 -54 as @a[scores={deku_stick_shop=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_stick

execute positioned -294 2 -54 as @a[scores={deku_seed_shop=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/deku_seed
execute positioned -294 2 -54 as @a[scores={arrow_10=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/arrow_10
execute positioned -294 2 -54 as @a[scores={arrow_30=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/arrow_30
execute positioned -294 2 -54 as @a[scores={heart_shop=1..}] run function zelda_oot:game/kokiri_forest/wrapper/shop/buy/heart


execute positioned -294 2 -54 as @a[scores={deku_shield=1..}] run trigger deku_shield set 0
execute positioned -294 2 -54 as @a[scores={deku_nut_5=1..}] run trigger deku_nut_5 set 0
execute positioned -294 2 -54 as @a[scores={deku_nut_10=1..}] run trigger deku_nut_10 set 0
execute positioned -294 2 -54 as @a[scores={deku_stick_shop=1..}] run trigger deku_stick_shop set 0

execute positioned -294 2 -54 as @a[scores={deku_seed_shop=1..}] run trigger deku_seed_shop set 0
execute positioned -294 2 -54 as @a[scores={arrow_10=1..}] run trigger arrow_10 set 0
execute positioned -294 2 -54 as @a[scores={arrow_30=1..}] run trigger arrow_30 set 0
execute positioned -294 2 -54 as @a[scores={heart_shop=1..}] run trigger heart_shop set 0
