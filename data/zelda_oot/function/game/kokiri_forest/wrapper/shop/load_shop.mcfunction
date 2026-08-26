tag @a add kokiri_shop

scoreboard objectives add kokiri_shop dummy

scoreboard players set deku_nut_5 kokiri_shop 15
scoreboard players set deku_nut_10 kokiri_shop 30
scoreboard players set deku_shield kokiri_shop 40
scoreboard players set deku_stick kokiri_shop 10
scoreboard players set deku_seed kokiri_shop 30
scoreboard players set arrow_10 kokiri_shop 0
scoreboard players set arrow_30 kokiri_shop 0
scoreboard players set heart_shop kokiri_shop 10

tellraw @a {"text":"Welcome!"}

#Right Shop Part
execute positioned -392 -5 -40.0 rotated 180 0 run summon item_display ~ ~ ~ {CustomName:'{"text":"deku_shield"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:shield",count:1,components:{"minecraft:custom_data":{deku_shield:1b},"minecraft:custom_model_data":{strings:["deku_shield"]}}}}
summon item_display -392 -4 -40.0 {CustomName:"deku_nut_5",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],},item:{id:"minecraft:pitcher_pod",count:1}}
summon item_display -391 -5 -39.0 {CustomName:"deku_nut_10",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:pitcher_pod",count:1}}
summon item_display -391 -4 -39.0 {CustomName:"deku_stick",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:stick",count:1}}

summon interaction -392 -5.2 -40 {width:0.5f,height:0.5f,response:true,Tags:["deku_shield_click"]}
summon interaction -392 -4.2 -40 {width:0.5f,height:0.5f,response:true,Tags:["deku_nut_5_click"]}
summon interaction -391 -5.2 -39 {width:0.5f,height:0.5f,response:true,Tags:["deku_nut_10_click"]}
summon interaction -391 -4.2 -39 {width:0.5f,height:0.5f,response:true,Tags:["deku_stick_click"]}

#Left SHop Part
summon item_display -394 -5 -40.0 {CustomName:"deku_seed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],},item:{id:"minecraft:beetroot_seeds",count:1}}
summon item_display -394 -4 -40.0 {CustomName:"arrow_10",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],},item:{id:"minecraft:arrow",count:1}}
summon item_display -395 -5 -39.0 {CustomName:"arrow_30",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],},item:{id:"minecraft:arrow",count:1}}
summon item_display -395 -4 -39.0 {CustomName:"heart_shop",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f],},item:{id:"minecraft:beetroot",count:1}}

summon interaction -394 -5.2 -40 {width:0.5f,height:0.5f,response:true,Tags:["deku_seed_click"]}
summon interaction -394 -4.2 -40 {width:0.5f,height:0.5f,response:true,Tags:["arrow_10_click"]}
summon interaction -395 -5.2 -39 {width:0.5f,height:0.5f,response:true,Tags:["arrow_30_click"]}
summon interaction -395 -4.2 -39 {width:0.5f,height:0.5f,response:true,Tags:["heart_click"]}