execute if block -432 11 61 minecraft:air run setblock -432 11 61 minecraft:short_dry_grass replace

schedule function zelda_oot:game/kokiri_forest/loader/grass/grass3_tall 40t

#0-4    Rupees
execute if score @p random matches 0..4 run summon armor_stand -432 11 60 {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
#5-9    if Amo give Amo
execute if score @p random matches 5..9 run execute if entity @a[tag=slingshot_possess] run function zelda_oot:scoreboard/deku_seed_bullet/give_amo
#5-9    if not Amo give Rupees
execute if score @p random matches 5..9 run execute if entity @a[tag=!slingshot_possess] run summon armor_stand -432 11 60 {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}