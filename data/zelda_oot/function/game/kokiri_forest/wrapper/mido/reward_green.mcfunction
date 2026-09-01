execute if entity @a[tag=!mido_reward_green] run function zelda_oot:items/rupees/green_rupees_reward
execute if entity @a[tag=!mido_reward_green] run summon armor_stand -434 -6.5 -36 {CustomName:"rupees",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:lime_concrete}}}
tag @a add mido_reward_green
