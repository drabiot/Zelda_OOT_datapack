#Save excat number of Deku Nut
execute store result score @a[limit=1] deku_seed_bullet run clear @a[limit=1] minecraft:tripwire_hook 0

#Check the right amount of Deku Nut
execute as @a if score @s deku_seed_bullet > max deku_seed_bullet run clear @s minecraft:tripwire_hook 1
