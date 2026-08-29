tellraw @a {"text":"Datapack : Zelda OOT loaded","color":"yellow"}
gamerule minecraft:show_advancement_messages false

#Add Motion
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add is_swimming dummy
scoreboard players set @a is_swimming 0

scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak_prev dummy

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

#Add Bullseye Challenge
scoreboard objectives add bullseye dummy
scoreboard objectives add time_hurt dummy


scoreboard objectives add backup dummy
scoreboard players add deku_stick backup 0

scoreboard objectives add deku_tree_yes trigger
scoreboard objectives add deku_tree_no trigger

#Add Ocarina Note
scoreboard objectives add ocarina_note dummy
scoreboard players set @a ocarina_note -1
scoreboard objectives add song_storm dummy
scoreboard players set @a song_storm 0
scoreboard objectives add zelda_lullaby dummy
scoreboard players set @a zelda_lullaby 0
