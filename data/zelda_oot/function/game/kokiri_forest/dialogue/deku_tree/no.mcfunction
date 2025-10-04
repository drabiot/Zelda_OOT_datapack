tag @a add deku_tree_no

scoreboard players set @a[scores={deku_tree_yes=1..}] deku_tree_yes 0
scoreboard players set @a[scores={deku_tree_no=1..}] deku_tree_no 0

tag @a remove deku_tree_dialogue_maybe
tag @a remove deku_tree_dialogue_2
tag @a remove deku_tree_dialogue_3
tag @a add deku_tree_dialogue_no

tellraw @a {"text":"Perhaps you do not yet have confidence in your abilities... Return to the Kokiri Forest to learn the skills of combat..."}

schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/reset_no 30t