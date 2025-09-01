# 1. Set everyone in spectator mode
function zelda_oot:game/kokiri_forest/dialogue/spec_mod

# 2. Init the cinematic
tag @a add deku_tree_dialogue_1

# 3. Clean Screen
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t

# 4. Dialogue part1 20 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part1 20t

# 5. Dialogue part2 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part2 60t

# 7. Teleportation part3 48 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part3 108t

# 8. Dialogue part4 44 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part4 152t

# 9. Dialogue part5 24 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part5 176t

# 10. Teleportation part6 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part6 236t

# 11. Dialogue part7 44 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part7 280t

# 12. Teleportation partend 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/partend 340t
