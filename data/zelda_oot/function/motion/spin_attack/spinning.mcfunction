tag @e[type=minecraft:acacia_boat] add spinning_boat

execute as @a[tag=in_spin_attack,tag=!spinning] at @s run ride @s mount @e[type=minecraft:acacia_boat,tag=rotator_vehicle,distance=..1,limit=1]

tag @a[tag=in_spin_attack,tag=!spinning] add spinning

#Sound Effect
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 0 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 1 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 2 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 3 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 4 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 5 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 6 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 7 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 8 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 9 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 10 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 11 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 12 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 13 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 14 run playsound minecraft:custom.younglink_strongattack1 player @a ~ ~ ~ 1 1
execute as @a[tag=in_spin_attack,tag=spinning] at @s if score @s random matches 15 run playsound minecraft:custom.younglink_strongattack2 player @a ~ ~ ~ 1 1

execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/spin_attack/stop_spinning 20t
execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/spin_attack/spin_attack_cooldown 150t

tag @a[tag=in_spin_attack] remove in_spin_attack
