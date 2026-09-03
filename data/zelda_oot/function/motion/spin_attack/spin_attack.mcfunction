tag @a[tag=!spin_cooldown,tag=!spinning] add in_spin_attack

tag @a[tag=in_spin_attack,tag=!spinning] add spin_cooldown

scoreboard players set @a[tag=in_spin_attack] spin_timer 20

execute as @a[tag=in_spin_attack,tag=!spinning] at @s rotated as @s unless entity @e[type=minecraft:acacia_boat,distance=..5] run summon minecraft:acacia_boat ~ ~ ~ {Tags:["rotator_vehicle","new_boat"],NoGravity:1b,Rotation:[0.0f,0.0f],Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute as @a[tag=in_spin_attack,tag=!spinning] at @s rotated as @s run tp @e[type=minecraft:acacia_boat,tag=new_boat] ~ ~ ~ ~ ~
tag @e[tag=new_boat] remove new_boat

schedule function zelda_oot:motion/spin_attack/spinning 4t 
