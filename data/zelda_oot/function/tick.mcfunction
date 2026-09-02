#Prevent lightning damage
execute at @e[type=lightning_bolt] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace fire

effect give drabiot minecraft:saturation infinite 1 true
effect give drabiot minecraft:instant_health infinite 10 true
experience set @a 0 levels

#Deny glowing effect to all entities that don't have the allow_glow tag
effect clear @e[type=!item_display,type=!arrow,type=!spectral_arrow,type=!marker,type=!text_display,type=!block_display,tag=!allow_glow] minecraft:glowing

#Movement
execute as @a[nbt={OnGround:1b},tag=in_backflip] at @s run tag @s remove in_backflip

function zelda_oot:motion/backflip
function zelda_oot:motion/roll
function zelda_oot:motion/sidestep_left
function zelda_oot:motion/sidestep_right

execute as @a[tag=in_roll] at @s anchored eyes positioned ^ ^ ^0.8 unless block ~ ~ ~ minecraft:air \
	unless block ~ ~ ~ #minecraft:flowers unless block ~ ~ ~ #minecraft:replaceable \
	unless block ~ ~ ~ #minecraft:wool_carpets unless block ~ ~ ~ #minecraft:buttons \
	unless block ~ ~ ~ minecraft:moss_carpet unless block ~ ~ ~ #minecraft:features_cannot_replace \
	run function player_motion:api/hurt_roll


#Spinning
execute as @e[type=minecraft:acacia_boat,tag=rotator_vehicle,tag=spinning_boat] at @s run tp @s ~ ~ ~ ~27.5 ~
execute as @a[tag=spinning] run scoreboard players remove @s spin_timer 1
execute as @a[tag=spinning,scores={spin_timer=..0}] at @s run ride @s dismount
execute as @a[tag=spinning,scores={spin_timer=..0}] at @s run kill @e[type=minecraft:acacia_boat,tag=rotator_vehicle,tag=spinning_boat,distance=..2]
tag @a[tag=spinning,scores={spin_timer=..0}] remove spinning
#Sneak
execute as @a if score @s sneak_time > @s sneak_prev run tag @s add is_sneak
execute as @a unless score @s sneak_time > @s sneak_prev run tag @s remove is_sneak

scoreboard players operation @a sneak_prev = @a sneak_time

attribute @a[nbt={OnGround:1b},tag=is_sneak,tag=!dev,tag=!dialogue,tag=!kokiri_shop,limit=1] jump_strength base set 0
attribute @a[tag=!is_sneak,tag=!dialogue,tag=!kokiri_shop,limit=1] jump_strength base reset

attribute @a[tag=!dev,tag=kokiri_shop,limit=1] jump_strength base set 0

#Crawling Mechanics
execute as @a[nbt={OnGround:1b},tag=is_sneak,tag=!dialogue,tag=!dev] at @s unless entity @e[type=shulker,distance=..1] run summon shulker ~ ~1 ~ {NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Peek:0b,Tags:["crawl"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if entity @a[tag=!is_sneak] run tp @e[type=minecraft:shulker, tag=crawl] ~ ~-1000 ~
execute as @a[tag=is_sneak] at @s run tp @e[type=shulker,tag=crawl,distance=1.2..] ~ ~-1000 ~
execute as @a[tag=is_sneak] at @s run kill @e[type=shulker,tag=crawl,distance=1.2..]

#Randomizer
scoreboard players add @a random 1
execute if score @p random matches 16 run scoreboard players set @a random 0

tag @e[type=armor_stand, tag=decay] add decay_pending
scoreboard players set @e[type=armor_stand, tag=decay] decayTimer 100
tag @e[type=armor_stand, tag=decay] remove decay

scoreboard players remove @e[type=armor_stand,tag=decay_pending] decayTimer 1

execute as @e[type=armor_stand, tag=decay_pending] if score @s decayTimer matches 0 run kill @s

#Kill drop item
execute as @e[type=item,nbt={Item:{id:"minecraft:firefly_bush"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_sign"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}] run function zelda_oot:game/breakable/pot_reward

scoreboard players enable @a deku_tree_yes
scoreboard players enable @a deku_tree_no

#Ocarina Mechanics
title @a[tag=playing_ocarina] actionbar {"text":"Sneak to stop playing the Ocarina","color":"gray","italic":true}
execute as @a[tag=playing_ocarina,tag=!in_song,tag=!in_warp] if entity @s[tag=playing_ocarina,tag=is_sneak,tag=!in_song,tag=!in_warp] run kill @e[type=item_display,tag=ocarina_display]
execute as @a[tag=playing_ocarina,tag=!in_song,tag=!in_warp] if entity @s[tag=playing_ocarina,tag=is_sneak,tag=!in_song,tag=!in_warp] run kill @e[type=interaction,tag=ocarina_display]
execute as @a[tag=playing_ocarina,tag=!in_song,tag=!in_warp] if entity @s[tag=playing_ocarina,tag=is_sneak,tag=!in_song,tag=!in_warp] run execute as @e[type=item_display,tag=link_display] run function zelda_oot:link/remove/this
execute as @a[tag=playing_ocarina,tag=!in_song,tag=!in_warp] if entity @s[tag=playing_ocarina,tag=!in_song,tag=!in_warp] run tag @s remove already_playing
execute as @a[tag=playing_ocarina,tag=!in_song,tag=!in_warp] if entity @s[tag=playing_ocarina,tag=is_sneak,tag=!in_song,tag=!in_warp] run tag @s remove playing_ocarina
execute as @a[tag=playing_ocarina] if entity @s[tag=in_song] run spectate @e[type=block_display,tag=ocarina_display,limit=1,sort=nearest]
execute as @a[tag=playing_ocarina] if entity @s[tag=in_warp] run ride @s mount @e[type=block_display,tag=ocarina_display,limit=1,sort=nearest]
