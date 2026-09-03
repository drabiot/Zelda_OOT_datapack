execute if entity @a[predicate=zelda_oot:movement/tight] run return run kill @e[type=armor_stand,tag=inexistant_dummy]

tag @a[tag=!spin_cooldown,tag=!spinning] add in_spin_attack

tag @a[tag=in_spin_attack,tag=!spinning] add spin_cooldown

scoreboard players set @a[tag=in_spin_attack] spin_timer 20

execute as @a[tag=in_spin_attack,tag=!spinning] at @s rotated as @s unless entity @e[type=minecraft:acacia_boat,distance=..5] run summon minecraft:acacia_boat ~ ~ ~ {Tags:["rotator_vehicle","new_boat"],NoGravity:1b,Rotation:[0.0f,0.0f],Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute as @a[tag=in_spin_attack,tag=!spinning] at @s rotated as @s run tp @e[type=minecraft:acacia_boat,tag=new_boat] ~ ~ ~ ~ ~
tag @e[tag=new_boat] remove new_boat

schedule function zelda_oot:motion/spin_attack/spinning 4t

#Breakable damage
execute as @a[tag=in_spin_attack,tag=!spinning] at @s store success score @s spin_shatter run fill ~-2 ~0 ~-2 ~2 ~0 ~2 minecraft:air replace minecraft:bush
execute as @a[tag=in_spin_attack,tag=!spinning] at @s if score @s spin_shatter matches 1 run playsound minecraft:block.sweet_berry_bush.break player @a ~ ~ ~ 1 1

execute as @a[tag=in_spin_attack,tag=!spinning] at @s store success score @s spin_shatter run fill ~-2 ~0 ~-2 ~2 ~0 ~2 minecraft:air replace minecraft:spruce_sign
execute as @a[tag=in_spin_attack,tag=!spinning] at @s if score @s spin_shatter matches 1 run playsound minecraft:block.wood.break player @a ~ ~ ~ 1 1

execute as @a[tag=in_spin_attack,tag=!spinning] at @s store success score @s spin_shatter run fill ~-2 ~0 ~-2 ~2 ~0 ~2 minecraft:air replace minecraft:firefly_bush
execute as @a[tag=in_spin_attack,tag=!spinning] at @s if score @s spin_shatter matches 1 run playsound minecraft:block.sweet_berry_bush.break player @a ~ ~ ~ 1 1


