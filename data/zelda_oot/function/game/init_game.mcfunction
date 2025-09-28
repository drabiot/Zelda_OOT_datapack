#Basic Reset
function zelda_oot:scoreboard/wallet/reset_wallet
function zelda_oot:scoreboard/deku_nut/reset_deku_nut
function zelda_oot:scoreboard/deku_stick/reset_deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/reset_deku_seed_bullet

kill @e[type=armor_stand]
kill @e[type=falling_block]

advancement revoke @a everything

#Init Reward's Tag
tag @a add mido_reward_blue_1
tag @a add mido_reward_blue_2
tag @a add mido_reward_green
tag @a add mido_reward_heart

#Spawn Kokiri's Forest Hearts
summon armor_stand -410 12 9 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
summon armor_stand -407 11 11 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
summon armor_stand -413 11 12 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}

#Spawn Kokiri's Forest Blue Rupees
summon armor_stand -420 9.5 -14 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -436 7.5 -43 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -389 -7.5 -41 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}

#Spawn Kokiri's Trial Blue Rupees
summon armor_stand -457 9.5 37 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -447 9.5 48 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
