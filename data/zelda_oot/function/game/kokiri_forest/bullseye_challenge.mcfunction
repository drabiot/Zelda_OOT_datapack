#Check score
execute as @e[type=silverfish,tag=bullseye] store result score @s time_hurt run data get entity @s HurtTime
execute as @e[type=silverfish,tag=bullseye,scores={time_hurt=2..}] run scoreboard players add @p[tag=!bullseye_challenge] bullseye 1

	#Juice
	execute as @e[type=silverfish,tag=bullseye,scores={time_hurt=2..}] run execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
	execute as @e[type=silverfish,tag=bullseye,scores={time_hurt=2..}] at @s run summon minecraft:text_display -489 ~1 ~ {Tags:["score_pop","new_pop"],text:[{"text":"100","color":"green","bold":true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},billboard:"vertical"}

execute as @e[type=silverfish,tag=bullseye,scores={time_hurt=2..}] run data modify entity @s HurtTime set value 0s

execute as @e[type=ghast,tag=target] store result score @s time_hurt run data get entity @s HurtTime
execute as @e[type=ghast,tag=target,scores={time_hurt=2..}] run scoreboard players set @p bullseye 0

	#Juice
	execute as @e[type=ghast,tag=target,scores={time_hurt=2..}] run execute as @a at @s run playsound minecraft:block.copper_bulb.turn_off master @s ~ ~ ~ 50 0
	execute as @e[type=ghast,tag=target,scores={time_hurt=2..}] at @s run summon minecraft:text_display -489 ~1 ~ {Tags:["score_pop","new_pop"],text:[{"text":"30","color":"yellow","bold":true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},billboard:"vertical"}

execute as @e[type=ghast,tag=target,scores={time_hurt=2..}] run data modify entity @s HurtTime set value 0s

#Text
execute as @e[tag=new_pop] run scoreboard players set @s time_hurt 20
tag @e[tag=new_pop] remove new_pop
execute as @e[tag=score_pop] run scoreboard players remove @s time_hurt 1
execute as @e[tag=score_pop,scores={time_hurt=..0}] run kill @s
execute as @e[tag=score_pop] at @s run tp @s ~ ~0.05 ~

#Finish score
execute if score @p bullseye matches 3.. run tag @a add bullseye_challenge

#Grant Reward & Advancement
execute if score @p bullseye matches 3.. run function zelda_oot:scoreboard/deku_seed_bullet/deku_seed_bullet_lvlup
execute if score @p bullseye matches 3.. run execute if entity @a[tag=bullseye_challenge,advancements={zelda_oot:hyrule/bullet_bag1=true}] run advancement grant @p only zelda_oot:hyrule/bullet_bag2
execute if score @p bullseye matches 3.. run execute if entity @a[tag=bullseye_challenge,advancements={zelda_oot:hyrule/bullet_bag1=false,zelda_oot:hyrule/bullet_bag2=false}] run advancement grant @p only zelda_oot:hyrule/bullet_bag1
execute if score @p bullseye matches 3.. run execute run scoreboard players set @a bullseye 0


