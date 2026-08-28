#Basic drop
#0-5    Nothing
#6-7   Rupee
execute if score @p random matches 6..7 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

#8-9    Heart
execute if score @p random matches 8..9 run summon armor_stand ~ ~-0.9 ~ {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}

#Special drop

#10      Flex drop
#Do the test
execute if score @p random matches 10 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

#11-12   Magic
#Do the test
execute if score @p random matches 11..12 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

#13-14   Bullet
execute if score @p[advancements={zelda_oot:kokiri_forest/fairy_slingshot=true}] random matches 13..14 run return run summon armor_stand ~ ~-0.9 ~ {CustomName:"deku_seeds",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot_seeds}}}
execute if score @p random matches 13..14 run summon armor_stand ~ ~-0.9 ~ {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}

#15      Bomb
#Do the test
execute if score @p random matches 15 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}

