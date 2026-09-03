tag @e[type=minecraft:acacia_boat] add spinning_boat

execute as @a[tag=in_spin_attack,tag=!spinning] at @s run ride @s mount @e[type=minecraft:acacia_boat,tag=rotator_vehicle,distance=..1,limit=1]

tag @a[tag=in_spin_attack,tag=!spinning] add spinning



execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/spin_attack/stop_spinning 20t
execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/spin_attack/spin_attack_cooldown 150t

tag @a[tag=in_spin_attack] remove in_spin_attack
