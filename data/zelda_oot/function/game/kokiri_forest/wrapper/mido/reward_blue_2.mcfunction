execute if entity @a[tag=!mido_reward_blue_2] run function zelda_oot:items/rupees/blue_rupees_reward
execute if entity @a[tag=!mido_reward_blue_2] run summon armor_stand -437 -6.5 -39 {CustomName:"rupees",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
tag @a add mido_reward_blue_2
