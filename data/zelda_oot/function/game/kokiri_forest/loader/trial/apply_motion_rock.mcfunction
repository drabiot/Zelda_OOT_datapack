execute as @e[type=armor_stand,name=rock,tag=motion_rock] at @s run tp @e[type=armor_stand,name=rock] ^ ^ ^0.2

#Add damage
execute as @a at @s if entity @e[type=armor_stand,name=rock,distance=..3] run damage @s 1
execute as @a at @s if entity @e[type=armor_stand,name=rock,distance=..3] run tp @s -446 10 36 -90 0
