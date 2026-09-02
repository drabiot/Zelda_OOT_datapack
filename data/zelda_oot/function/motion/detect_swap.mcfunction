#Reset the Swaping
advancement revoke @s only zelda_oot:admin/detect_swap

#Prevent the Swaping
item replace entity @s enderchest.26 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s enderchest.26
item replace entity @s enderchest.26 with air

#Action when swaping
function zelda_oot:motion/spin_attack
