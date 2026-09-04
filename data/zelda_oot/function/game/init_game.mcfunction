#Reset Health
scoreboard players set @a max_health 12
scoreboard players set @a player_health 12

#Basic Reset
function zelda_oot:scoreboard/wallet/reset_wallet
function zelda_oot:scoreboard/deku_nut/reset_deku_nut
function zelda_oot:scoreboard/deku_stick/reset_deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/reset_deku_seed_bullet

kill @e[type=armor_stand]
kill @e[type=item_display]
kill @e[type=block_display]
kill @e[type=text_display]
kill @e[type=falling_block]

advancement revoke @a everything
advancement grant @a only zelda_oot:song/song_root
advancement grant @a only zelda_oot:song/classic
advancement grant @a only zelda_oot:song/warp

#advancement grant drabiot until zelda_oot:kokiri_forest/kokiri_forest_root
#advancement grant drabiot until zelda_oot:hyrule/hyrule_root

#Init Structures
place template zelda_oot:kokiri/deku_tree/kokiri_exit_close -471 3 -28

function zelda_oot:game/kokiri_forest/way_to_deku_tree/close_way
function zelda_oot:game/kokiri_forest/dialogue/deku_tree/animation/m1

#Set default movement keys
tag @a add roll_press
tag @a add backflip_press
tag @a add sidestep_press

#Reset First dialogue
tag @a remove way_to_deku_tree

#Init Reward's Tag
tag @a remove mido_reward_blue_1
tag @a remove mido_reward_blue_2
tag @a remove mido_reward_green
tag @a remove mido_reward_heart
execute positioned -437 -7 -36 if entity @a[tag=!mido_reward_blue_1] run setblock ~ ~ ~ minecraft:trapped_chest[facing=east] replace
execute positioned -437 -7 -39 if entity @a[tag=!mido_reward_blue_2] run setblock ~ ~ ~ minecraft:trapped_chest[facing=east] replace
execute positioned -434 -7 -36 if entity @a[tag=!mido_reward_green] run setblock ~ ~ ~ minecraft:trapped_chest[facing=west] replace
execute positioned -434 -7 -39 if entity @a[tag=!mido_reward_heart] run setblock ~ ~ ~ minecraft:trapped_chest[facing=west] replace

execute positioned -437 -7 -36 if entity @a[tag=!mido_reward_blue_1] run setblock ~ ~-1 ~ minecraft:air replace
execute positioned -437 -7 -39 if entity @a[tag=!mido_reward_blue_2] run setblock ~ ~-1 ~ minecraft:air replace
execute positioned -434 -7 -36 if entity @a[tag=!mido_reward_green] run setblock ~ ~-1 ~ minecraft:air replace
execute positioned -434 -7 -39 if entity @a[tag=!mido_reward_heart] run setblock ~ ~-1 ~ minecraft:air replace
execute positioned -437 -7 -36 if entity @a[tag=!mido_reward_blue_1] run setblock ~ ~-1 ~ minecraft:mud_bricks replace
execute positioned -437 -7 -39 if entity @a[tag=!mido_reward_blue_2] run setblock ~ ~-1 ~ minecraft:mud_bricks replace
execute positioned -434 -7 -36 if entity @a[tag=!mido_reward_green] run setblock ~ ~-1 ~ minecraft:mud_bricks replace
execute positioned -434 -7 -39 if entity @a[tag=!mido_reward_heart] run setblock ~ ~-1 ~ minecraft:mud_bricks replace

execute positioned -430 12 60 run setblock ~ ~ ~ minecraft:trapped_chest replace
execute positioned -430 12 60 run setblock ~ ~-1 ~ minecraft:air replace
execute positioned -430 12 60 run setblock ~ ~-1 ~ minecraft:stripped_oak_wood replace

tag @a remove break_sign_training_area

#Reset Deku Tree
tag @a remove deku_tree_again
tag @a remove deku_tree_d_finish

#Remove Advancement
tag @a remove bullseye_challenge

#Remove challenge
tag @a remove succeed_skull_kid_duet

#Spawn Kokiri's Forest Hearts
summon item_display -410 13.5 9 {CustomName:"heart",item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -407 12.5 11 {CustomName:"heart",item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -413 12.5 12 {CustomName:"heart",item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#Spawn Kokiri's Forest Blue Rupees
summon item_display -420 10.5 -15 {CustomName:"rupees",Tags:["blue"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -436 8.5 -43 {CustomName:"rupees",Tags:["blue"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -389 -6.5 -41 {CustomName:"rupees",Tags:["blue"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

summon item_display -448 20 16 {CustomName:"rupees",Tags:["blue","no_gravity","training_area"],transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -448 20 16 {CustomName:"rupees",Tags:["green","no_gravity","training_area"],transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -448 20 16 {CustomName:"rupees",Tags:["green","no_gravity","training_area"],transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}



#Spawn Kokiri's Trial Blue Rupees
summon item_display -457 10.5 37 {CustomName:"rupees",Tags:["blue"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
summon item_display -447 10.5 48 {CustomName:"rupees",Tags:["blue"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}