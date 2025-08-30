#Save excat number of Deku Stick
execute store result score @a[limit=1] deku_stick run clear @a[limit=1] minecraft:stick 0

#Check the right amount of Deku Stick
execute as @a if score @s deku_stick > max deku_stick run clear @s minecraft:stick 1
