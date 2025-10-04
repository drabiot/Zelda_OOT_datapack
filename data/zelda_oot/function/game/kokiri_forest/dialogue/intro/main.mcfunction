# 1. Set everyone in spectator mode
function zelda_oot:game/kokiri_forest/dialogue/spec_mod

# 2. Init the cinematic
tag @a add intro_dialogue_1

# 3. Clean Screen
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t
schedule function zelda_oot:game/kokiri_forest/dialogue/space 1t

# 4. Dialogue part1 20 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part1 20t

# 5. Dialogue part2 40 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part2 60t

# 6. Teleportation part3 48 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part3 108t

# 7. Dialogue part4 44 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part4 152t

# 8. Dialogue part5 24 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part5 176t

# 9. Teleportation part6 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part6 236t

# 10. Dialogue part7 44 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/part7 280t

# 11. Teleportation partend 60 ticks
schedule function zelda_oot:game/kokiri_forest/dialogue/intro/partend 340t
