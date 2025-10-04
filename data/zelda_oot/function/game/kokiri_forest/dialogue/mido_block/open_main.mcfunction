# 1. Block loop
tag @a add dialogue

# 2. Stop Player
attribute @a[limit=1] minecraft:jump_strength base set 0
attribute @a[limit=1] minecraft:movement_speed base set 0

# 3. Dialogue part1
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_part1 1t

# 4. Dialogue part2 50 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_part2 50t

# 5. Dialogue part3 20 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_part3 70t

# 6. Dialogue part4 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_part4 110t

# 7. Dialogue part5 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/open_part5 150t

# 8. Free Player
schedule function zelda_oot:game/kokiri_forest/dialogue/free_player 150t

# 9. Open the way
schedule function zelda_oot:game/kokiri_forest/way_to_deku_tree/open_way 150t

# 10. Add tag to exit the dialogue loop
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/add_tag 150t
schedule function zelda_oot:game/kokiri_forest/dialogue/remove_dialogue_tag 150t

