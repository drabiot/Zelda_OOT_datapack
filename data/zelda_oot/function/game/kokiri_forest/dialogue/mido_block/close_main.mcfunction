# 1. Block loop
tag @a add dialogue

# 2. Stop Player
attribute @a[limit=1] minecraft:jump_strength base set 0
attribute @a[limit=1] minecraft:movement_speed base set 0

# 3. Dialogue part1
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/close_part1 1t

# 4. Dialogue part2 50 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/close_part2 50t

# 5. Dialogue part3 50 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/close_part3 100t

# 6. Dialogue part4 50 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/mido_block/close_part4 150t

# 7. Free Player
schedule function zelda_oot:game/kokiri_forest/dialogue/free_player 150t