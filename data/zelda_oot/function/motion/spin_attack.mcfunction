tag @a[tag=!spin_cooldown,tag=!spinning] add in_spin_attack

tag @a[tag=in_spin_attack,tag=!spinning] add spin_cooldown

execute as @a[tag=in_spin_attack,tag=!spinning] at @s run say Spin Attack

tag @a[tag=in_spin_attack,tag=!spinning] add spinning

execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/stop_spinning 20t
execute as @a[tag=in_spin_attack,tag=spinning] at @s run schedule function zelda_oot:motion/spin_attack_cooldown 150t

tag @a[tag=in_spin_attack] remove in_spin_attack
