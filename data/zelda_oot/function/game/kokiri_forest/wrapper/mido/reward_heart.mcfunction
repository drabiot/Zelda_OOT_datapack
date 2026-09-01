execute if entity @a[tag=!mido_reward_heart] run function zelda_oot:items/heart/heart_reward
execute if entity @a[tag=!mido_reward_heart] run summon armor_stand -434 -7 -39 {CustomName:"heart",Tags:["decay"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
tag @a add mido_reward_heart
