execute if entity @a[tag=!mido_reward_blue_2] run function zelda_oot:items/rupees/blue_rupees_reward
execute if entity @a[tag=!mido_reward_blue_2] run summon item_display -437 -5.5 -39 {CustomName:"rupees",Tags:["no_gravity","decay","item_chest"],item:{id:"minecraft:blue_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},Glowing:1b}
tag @a add mido_reward_blue_2
execute positioned -437 -7 -39 if entity @a[tag=mido_reward_blue_2] run setblock ~ ~ ~ minecraft:waxed_copper_golem_statue[facing=east] replace
