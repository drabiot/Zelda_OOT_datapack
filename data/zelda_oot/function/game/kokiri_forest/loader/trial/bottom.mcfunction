execute as @e[type=armor_stand,name=rock] at @s run tp @s ~ ~ ~ ~-90 ~

function zelda_oot:game/kokiri_forest/loader/trial/add_motion
schedule function zelda_oot:game/kokiri_forest/loader/trial/remove_motion 60t

data modify entity @e[type=block_display,limit=1] transformation.translation set value [-12.5f,0.0f,-12.5f]
data modify entity @e[type=block_display,limit=1] interpolation_duration set value 60

execute if entity @a[tag=trial_kokiri] run schedule function zelda_oot:game/kokiri_forest/loader/trial/right 70t