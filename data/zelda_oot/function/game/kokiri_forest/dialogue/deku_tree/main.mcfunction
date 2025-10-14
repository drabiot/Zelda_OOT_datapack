# 1. Block loop
tag @a add dialogue
scoreboard players set @a[scores={deku_tree_yes=1..}] deku_tree_yes 0
scoreboard players set @a[scores={deku_tree_no=1..}] deku_tree_no 0

# 2. First Scene
summon mannequin -332 5 -36 {hidden_layers:[cape],CustomName:[{text:player}],Rotation:[-115f,0f],attributes:[{id:"minecraft:scale",base:0.9}],profile:{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjliMzdlYWJkM2RmNTI4ZGU4MWM1ZTZlZTEyMDkyMjgxOWE1MmRmMDNlM2ZjZWI0YWZmY2FiZDc3MGI0MWY0NCJ9fX0="}]}}
gamemode spectator @a
tag @a add deku_tree_dialogue_1

# 3. Dialogue part1
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part1 1t

# 4. Dialogue part2 80 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part2 80t

# 5. Dialogue part3 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part3 120t

# 6. Dialogue part4 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part4 160t

# 7. Dialogue part5 80 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part5 240t

# 8. Dialogue part6 100 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part6 340t

# 9. Dialogue part7 140 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part7 480t

# 10. Dialogue part8 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part8 520t

# 11. Dialogue part9 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part9 580t

# 12. Dialogue part 10 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part10 640t
