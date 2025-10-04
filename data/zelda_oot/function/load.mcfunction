tellraw @a {"text":"Datapack : Zelda OOT loaded","color":"yellow"}
gamerule announceAdvancements false

#Add Motion
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add is_swimming dummy
scoreboard players set @a is_swimming 0

#Add quantity
scoreboard objectives add quantity dummy

#Add random
scoreboard objectives add random dummy
scoreboard players set @a random 0

#Add temporary item
scoreboard objectives add decayTimer dummy

#Add Rupees
function zelda_oot:scoreboard/wallet/wallet

#Add Item Limits
function zelda_oot:scoreboard/deku_nut/deku_nut
function zelda_oot:scoreboard/deku_stick/deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/deku_seed_bullet

scoreboard objectives add backup dummy
scoreboard players add deku_stick backup 0

scoreboard objectives add deku_tree_yes trigger
scoreboard objectives add deku_tree_no trigger
