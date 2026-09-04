execute if entity @a[tag=!mido_reward_green] run function zelda_oot:items/rupees/green_rupees_reward
execute if entity @a[tag=!mido_reward_green] run summon item_display -434 -5.5 -36 {CustomName:"rupees",Tags:["no_gravity","decay","item_chest"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},Glowing:1b}
tag @a add mido_reward_green
execute positioned -434 -7 -36 if entity @a[tag=mido_reward_green] run setblock ~ ~ ~ minecraft:waxed_copper_golem_statue[facing=west] replace
