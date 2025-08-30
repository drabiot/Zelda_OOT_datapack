#Check for used Deku Nut
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:pitcher_pod", components:{"minecraft:item_name":"Deku Nut"}}}] at @s run function zelda_oot:items/deku_nut

#Check for inventory Items
function zelda_oot:scoreboard/wallet/check_wallet
function zelda_oot:scoreboard/deku_nut/check_deku_nut
function zelda_oot:scoreboard/deku_stick/check_deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/check_deku_seed_bullet

#Check for bath behavior
function zelda_oot:game/swim_event

#Extinguish Deku Stick on fire if player swimming
execute as @a at @s if score @s is_swimming matches 1 run schedule function zelda_oot:items/clear_torch 1t
execute as @a at @s if score @s is_swimming matches 1 run schedule function zelda_oot:items/reset_deku_stick 1t

#Reset Torch if dropped
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:torch", components:{"minecraft:item_name":"Deku Stick on fire"}}}] at @s run function zelda_oot:items/reset_deku_stick
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:torch", components:{"minecraft:item_name":"Deku Stick on fire"}}}] at @s run kill @s
