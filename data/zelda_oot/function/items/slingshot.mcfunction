advancement revoke @s only zelda_oot:admin/slingshot

execute as @s[tag=!busy] if score @s deku_seed_bullet matches 1 run tag @s add out_amo
execute as @s[tag=!busy] if score @s deku_seed_bullet matches 2.. run tag @s remove out_amo

execute as @s[tag=!busy, tag=!out_amo] if score @s deku_seed_bullet matches 1.. run clear @s tripwire_hook 1
playsound minecraft:item.trident.throw master @s[tag=!busy, tag=!out_amo] ~ ~ ~ 1 1
execute as @s[tag=!busy, tag=!out_amo] at @s run summon minecraft:arrow ^0.5 ^1 ^0.5 {pickup:0b, Tags:["motion_projectile"]}

tag @s add busy

schedule function zelda_oot:game/busy 3t