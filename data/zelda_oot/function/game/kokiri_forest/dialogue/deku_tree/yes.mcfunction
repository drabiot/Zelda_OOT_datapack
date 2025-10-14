tag @a add deku_tree_yes

scoreboard players set @a[scores={deku_tree_yes=1..}] deku_tree_yes 0
scoreboard players set @a[scores={deku_tree_no=1..}] deku_tree_no 0

tag @a remove deku_tree_dialogue_maybe
tag @a remove deku_tree_dialogue_2
tag @a add deku_tree_dialogue_3
tag @a remove deku_tree_dialogue_no

tag @a remove deku_tree_again

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/enter1 10t
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/open_animation 15t

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/enter2 40t

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/reset_yes 70t