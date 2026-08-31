#Reset Health
scoreboard players set @a max_health 12
scoreboard players set @a player_health 12

#Basic Reset
function zelda_oot:scoreboard/wallet/reset_wallet
function zelda_oot:scoreboard/deku_nut/reset_deku_nut
function zelda_oot:scoreboard/deku_stick/reset_deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/reset_deku_seed_bullet

kill @e[type=armor_stand]
kill @e[type=falling_block]

advancement revoke @a everything
advancement grant @a only zelda_oot:song/song_root
advancement grant @a only zelda_oot:song/classic
advancement grant @a only zelda_oot:song/warp

#advancement grant drabiot until zelda_oot:kokiri_forest/kokiri_forest_root
#advancement grant drabiot until zelda_oot:hyrule/hyrule_root

#Init Structures
function zelda_oot:game/kokiri_forest/way_to_deku_tree/close_way
function zelda_oot:game/kokiri_forest/dialogue/deku_tree/animation/m1

#Reset First dialogue
tag @a remove way_to_deku_tree

#Reset Deku Tree
tag @a remove deku_tree_again
tag @a remove deku_tree_d_finish

#Init Reward's Tag
tag @a add mido_reward_blue_1
tag @a add mido_reward_blue_2
tag @a add mido_reward_green
tag @a add mido_reward_heart

#Remove Advancement
tag @a remove bullseye_challenge

#Spawn Kokiri's Forest Hearts
summon armor_stand -410 12.1 9 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
summon armor_stand -407 11.1 11 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}
summon armor_stand -413 11.1 12 {CustomName:"heart",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:beetroot}}}

#Spawn Kokiri's Forest Blue Rupees
summon armor_stand -420 9.5 -14 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -436 7.5 -43 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -389 -7.5 -41 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}

#Spawn Kokiri's Trial Blue Rupees
summon armor_stand -457 9.5 37 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
summon armor_stand -447 9.5 48 {CustomName:"rupees",Tags:["blue"],Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,equipment:{head:{id:blue_concrete}}}
