#Save excat number of Deku Nut
execute store result score @a[limit=1] deku_nut run clear @a[limit=1] minecraft:pitcher_pod 0

#Check the right amount of Deku Nut
execute as @a if score @s deku_nut > max deku_nut run clear @s minecraft:pitcher_pod 1
