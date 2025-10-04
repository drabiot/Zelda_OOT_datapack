tp @a[tag=deku_tree_dialogue_1] -333.06 6.37 -29.77 915.87 17.55
tp @a[tag=deku_tree_dialogue_2] -334.54 4.32 -30.71 963.48 -13.63
tp @a[tag=deku_tree_dialogue_3] -299.31 2.07 -42.92 939.25 -13.87

tp @a[tag=deku_tree_dialogue_no] -304.59 5.54 -12.19 529.61 -1.76

tp @a[tag=deku_tree_dialogue_maybe] -303.65 3.75 -48.78 602.29 -38.34

execute positioned -294 2 -54 as @a[scores={deku_tree_yes=1..},tag=!deku_tree_no,tag=dialogue,distance=..50] run function zelda_oot:game/kokiri_forest/dialogue/deku_tree/yes
execute positioned -294 2 -54 as @a[scores={deku_tree_no=1..},tag=!deku_tree_yes,tag=dialogue,distance=..50] run function zelda_oot:game/kokiri_forest/dialogue/deku_tree/no

execute positioned -294 2 -54 as @a[scores={deku_tree_yes=1..},tag=dialogue,distance=50..] run trigger deku_tree_yes set 0
execute positioned -294 2 -54 as @a[scores={deku_tree_yes=1..},tag=dialogue,distance=50..] run trigger deku_tree_no set 0

execute positioned -336 5 -34 if entity @a[distance=..4,tag=!dialogue,tag=!deku_tree_again,tag=!deku_tree_d_finish] run function zelda_oot:game/kokiri_forest/dialogue/deku_tree/main
execute positioned -294 2 -54 if entity @a[distance=..3,tag=!dialogue,tag=deku_tree_again,tag=!deku_tree_d_finish] run function zelda_oot:game/kokiri_forest/dialogue/deku_tree/maybe