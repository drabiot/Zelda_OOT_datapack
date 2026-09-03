tellraw @a {"text":"Datapack : Zelda OOT loaded","color":"yellow"}
gamerule minecraft:show_advancement_messages false

#Add Movement Key Binds
scoreboard objectives add roll_input dummy
scoreboard objectives add backflip_input dummy
scoreboard objectives add sidestep_input dummy

#Add Health
scoreboard objectives add max_health dummy
scoreboard objectives add player_health dummy

#Add Motion
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 0
scoreboard players set $strength player_motion.api.launch -10000

scoreboard objectives add roll dummy
scoreboard players set @a roll 0

scoreboard objectives add is_rolling dummy
scoreboard players set @a is_rolling 0

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

scoreboard objectives add spin_timer dummy
scoreboard objectives add spin_shatter dummy


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
scoreboard objectives add saria_song dummy
scoreboard players set @a saria_song 0
scoreboard objectives add song_of_time dummy
scoreboard players set @a song_of_time 0
scoreboard objectives add sun_song dummy
scoreboard players set @a sun_song 0
scoreboard objectives add saria_song dummy
scoreboard players set @a saria_song 0
scoreboard objectives add epona_song dummy
scoreboard players set @a epona_song 0

scoreboard objectives add minuet_of_forest dummy
scoreboard players set @a minuet_of_forest 0
scoreboard objectives add bolero_of_fire dummy
scoreboard players set @a bolero_of_fire 0
scoreboard objectives add serenade_of_water dummy
scoreboard players set @a serenade_of_water 0
scoreboard objectives add requiem_of_spirit dummy
scoreboard players set @a requiem_of_spirit 0
scoreboard objectives add nocturne_of_shadow dummy
scoreboard players set @a nocturne_of_shadow 0
scoreboard objectives add prelude_of_light dummy
scoreboard players set @a prelude_of_light 0
