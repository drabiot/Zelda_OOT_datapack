setblock ~ ~ ~ air
playsound block.stone.break master @a ~ ~ ~ 1 1

#Give by the loot table

#0-1    Nothing
#2-5    Heart
execute if score @p random matches 2..5 run summon armor_stand ~ ~-1 ~ {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
#6-7    Bullet if Pouch
execute if score @p random matches 6..7 run execute if entity @a[tag=slingshot_possess] run function zelda_oot:scoreboard/deku_seed_bullet/give_amo
#8      Bomb if Pouch
#execute if score @p random matches 8 run execute if entity @a[tag=bomb_possess] run 
#9      Green Rupee
execute if score @p random matches 9 run summon armor_stand ~ ~-0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}