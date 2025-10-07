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

tellraw @a {"text":"Welcome!\nClick the item for informations\nSneak Click it to buy it"}

#Right Shop Part
summon armor_stand -391.3 -5.5 -40 {CustomName:"deku_shield",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[180f,0f],equipment:{head:{id:shield}}}
summon armor_stand -392 -5 -40 {CustomName:"deku_nut_5",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:pitcher_pod}}}
summon armor_stand -391 -6 -39 {CustomName:"deku_nut_10",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:pitcher_pod}}}
summon armor_stand -391 -5 -39 {CustomName:"deku_stick",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:stick}}}

summon interaction -392 -5.5 -40 {width:0.8f,height:1f,response:true,Tags:["deku_shield_click"]}
summon interaction -392 -4 -40 {width:0.8f,height:1f,response:true,Tags:["deku_nut_5_click"]}
summon interaction -391 -5.5 -39 {width:0.8f,height:1f,response:true,Tags:["deku_nut_10_click"]}
summon interaction -391 -4 -39 {width:0.8f,height:1f,response:true,Tags:["deku_stick_click"]}

#Left SHop Part
summon armor_stand -394 -6 -40 {CustomName:"deku_seed",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:beetroot_seeds}}}
summon armor_stand -394 -5 -40 {CustomName:"arrow_10",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:arrow}}}
summon armor_stand -395 -6 -39 {CustomName:"arrow_30",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:arrow}}}
summon armor_stand -395 -5 -39 {CustomName:"heart_shop",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[0f,0f],equipment:{head:{id:beetroot}}}

summon interaction -394 -5.5 -40 {width:0.8f,height:1f,response:true,Tags:["deku_seed_click"]}
summon interaction -394 -4 -40 {width:0.8f,height:1f,response:true,Tags:["arrow_10_click"]}
summon interaction -395 -5.5 -39 {width:0.8f,height:1f,response:true,Tags:["arrow_30_click"]}
summon interaction -395 -4 -39 {width:0.8f,height:1f,response:true,Tags:["heart_click"]}