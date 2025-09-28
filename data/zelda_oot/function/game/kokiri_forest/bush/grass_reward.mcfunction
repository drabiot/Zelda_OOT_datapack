
#0      Nothing
#1-2    Heart
execute if score @p random matches 1..2 run summon armor_stand ~ ~-1 ~ {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
#3-9    Rupee
execute if score @p random matches 3..9 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
