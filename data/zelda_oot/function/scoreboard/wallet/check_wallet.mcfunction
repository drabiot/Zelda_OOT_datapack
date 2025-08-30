#Check the right amount of Rupees
execute as @a if score @s wallet > max wallet_max run scoreboard players remove @s wallet 1