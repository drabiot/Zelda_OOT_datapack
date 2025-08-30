tellraw @a {"text":"Datapack : Zelda OOT loaded","color":"yellow"}
gamerule announceAdvancements false

#Add Motion
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

#Add quantity
scoreboard objectives add quantity dummy

#Add Rupees
function zelda_oot:scoreboard/wallet/wallet

#Add Item Limits
function zelda_oot:scoreboard/deku_nut/deku_nut
function zelda_oot:scoreboard/deku_stick/deku_stick
function zelda_oot:scoreboard/deku_seed_bullet/deku_seed_bullet
