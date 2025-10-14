tag @a add dialogue

execute as @a[tag=dialogue] at @s run summon mannequin ~-4 ~ ~2 {hidden_layers:[cape],CustomName:[{text:player}],Rotation:[-115f,0f],attributes:[{id:"minecraft:scale",base:0.9}],profile:{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjliMzdlYWJkM2RmNTI4ZGU4MWM1ZTZlZTEyMDkyMjgxOWE1MmRmMDNlM2ZjZWI0YWZmY2FiZDc3MGI0MWY0NCJ9fX0="}]}}

tag @a add deku_tree_dialogue_maybe

gamemode spectator @a

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part9 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part10 60t