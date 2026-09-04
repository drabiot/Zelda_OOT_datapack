#Basic drop
#0-5    Nothing
#6-7   Rupee
execute if score @p random matches 6..7 run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#8-9    Heart
execute if score @p random matches 8..9 run summon item_display ~ ~0.5 ~ {CustomName:"heart",Tags:["decay"],item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
#Special drop

#10      Flex drop
#Do the test
execute if score @p random matches 10 run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#11-12   Magic
#Do the test
execute if score @p random matches 11..12 run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#13-14   Bullet
execute if score @p[advancements={zelda_oot:kokiri_forest/fairy_slingshot=true}] random matches 13..14 run return run summon item_display ~ ~0.5 ~ {CustomName:"deku_seeds",Tags:["decay"],item:{id:"minecraft:beetroot_seeds",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}
execute if score @p random matches 13..14 run summon item_display ~ ~0.5 ~ {CustomName:"heart",Tags:["decay"],item:{id:"minecraft:beetroot",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

#15      Bomb
#Do the test
execute if score @p random matches 15 run summon item_display ~ ~0.5 ~ {CustomName:"rupees",Tags:["green", "decay"],item:{id:"minecraft:lime_concrete",count:1},transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]}}

