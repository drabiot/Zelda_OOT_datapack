kill @e[type=block_display]

summon armor_stand -430.0 11.5 49.0 {CustomName:"rock",Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b}
execute as @e[type=armor_stand,name=rock] at @s run tp @s ~ ~ ~ ~-90 ~

summon block_display -432 10 47 {block_state:{Name:"minecraft:packed_mud"},transformation:{scale:[4f,4f,4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f]}}

function zelda_oot:game/kokiri_forest/loader/trial/left