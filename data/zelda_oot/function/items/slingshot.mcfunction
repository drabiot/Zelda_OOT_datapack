advancement revoke @s only zelda_oot:admin/slingshot

execute as @s[tag=!busy] if score @s deku_seed_bullet matches 1.. run clear @s tripwire_hook 1
playsound minecraft:item.trident.throw master @s[tag=!busy] ~ ~ ~ 1 1
execute as @s[tag=!busy] at @s run summon minecraft:arrow ^ ^2 ^ {pickup:0b, Tags:["motion_projectile"]}

tag @s add busy

schedule function zelda_oot:game/busy 2t