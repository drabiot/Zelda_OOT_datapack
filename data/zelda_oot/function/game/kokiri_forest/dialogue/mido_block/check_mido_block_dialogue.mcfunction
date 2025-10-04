execute positioned -372 5 -11 if entity @a[distance=0..6,tag=!dialogue,tag=!way_to_deku_tree,advancements={zelda_oot:kokiri_forest/kokiri_sword=true}] if entity @a[distance=0..6,tag=!dialogue,tag=!way_to_deku_tree,advancements={zelda_oot:kokiri_forest/deku_shield=true}] run function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_main

execute positioned -372 5 -11 if entity @a[distance=0..6,tag=!dialogue,tag=!way_to_deku_tree] run function zelda_oot:game/kokiri_forest/dialogue/mido_block/close_main

execute positioned -372 5 -11 if entity @a[distance=7..15,tag=dialogue] run function zelda_oot:game/kokiri_forest/dialogue/remove_dialogue_tag
