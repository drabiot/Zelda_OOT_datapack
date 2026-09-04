execute if entity @a[tag=!mido_reward_heart] run function zelda_oot:items/heart/heart_reward
execute if entity @a[tag=!mido_reward_heart] run summon item_display -434 -5.5 -39 {CustomName:"false_heart",Tags:["no_gravity","decay","item_chest"],item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},Glowing:1b}
tag @a add mido_reward_heart
execute positioned -434 -7 -39 if entity @a[tag=mido_reward_heart] run setblock ~ ~ ~ minecraft:waxed_copper_golem_statue[facing=west] replace
