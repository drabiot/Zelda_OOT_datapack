tag @a remove deku_tree_no
tag @a remove deku_tree_yes
tag @a remove deku_tree_dialogue_maybe
tag @a remove deku_tree_dialogue_no
tag @a remove dialogue
tag @a remove deku_tree_dialogue_3
tag @a[tag=!deku_tree_again] add deku_tree_again

scoreboard players set @a[scores={deku_tree_yes=1..}] deku_tree_yes 0
scoreboard players set @a[scores={deku_tree_no=1..}] deku_tree_no 0

tp @a @e[type=mannequin,name=player,limit=1]
tp @e[type=mannequin,name=player] ~ ~-100 ~
kill @e[type=mannequin,name=player]
function zelda_oot:game/kokiri_forest/dialogue/adv_mod
function zelda_oot:game/kokiri_forest/dialogue/clear_chat