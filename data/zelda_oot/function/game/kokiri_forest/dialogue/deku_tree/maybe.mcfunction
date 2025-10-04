tag @a add dialogue

execute as @a[tag=dialogue] at @s run summon mannequin ~-4 ~ ~2 {hidden_layers:[cape],CustomName:[{text:player}],Rotation:[-105f,-25f]}

tag @a add deku_tree_dialogue_maybe

gamemode spectator @a

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part9 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part10 60t