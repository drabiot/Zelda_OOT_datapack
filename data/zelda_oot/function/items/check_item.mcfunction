#Check for Deku Nut
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:pitcher_pod", components:{"minecraft:item_name":"Deku Nut"}}}] at @s run function zelda_oot:items/deku_nut

function zelda_oot:scoreboard/wallet/check_wallet
function zelda_oot:scoreboard/deku_nut/check_deku_nut
function zelda_oot:scoreboard/deku_stick/check_deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/check_deku_seed_bullet

#/give @s minecraft:tripwire_hook[consumable={consume_seconds:999999999}] 64
